*** Settings ***
Library    AppiumLibrary

*** Variables ***
${APPIUM_SERVER}    http://127.0.0.1:4723
${DEVICE_UDID}     10.147.17.242:5577
${APP_PACKAGE}     com.ppa_ops.superdev
${APP_ACTIVITY}    com.ppa_ops.superdev/com.ppa_ops.MainActivity

*** Keywords ***
Open Android Application

    Open Application
    ...    ${APPIUM_SERVER}
    ...    platformName=Android
    ...    automationName=UiAutomator2
    ...    deviceName=Android
    ...    udid=${DEVICE_UDID}
    ...    appPackage=${APP_PACKAGE}
    ...    appActivity=${APP_ACTIVITY}

    Sleep    5s
# Realistic Typing
#     [Arguments]    ${locator}    ${text}

#     Click Element    ${locator}

#     @{chars}=    Split String To Characters    ${text}

#     FOR           ${char}       IN         @{chars}
#          Press Keys    ${locator}    ${char}
#     # Sleep         0.1s
#     ENDs
 

    # [Teardown]    Close Application

Normalize Text
    [Arguments]    ${text}

    IF    $text is None
        RETURN    ${EMPTY}
    END

    # Non-breaking space → normal space
    ${text}=    Replace String    ${text}    \u00A0    ${SPACE}

    # Tab / newline / carriage return → space
    ${text}=    Replace String Using Regexp    ${text}    [\t\n\r]+    ${SPACE}

    # Multiple spaces → single space
    ${text}=    Replace String Using Regexp    ${text}    \s+    ${SPACE}

    # Trim whitespace
    ${text}=    Strip String    ${text}

    RETURN    ${text}

Click Radio By Question
    [Arguments]    ${question}    ${answer}

    ${xpath}=    Set Variable    //android.widget.TextView[@text="${question}"]/following-sibling::android.view.ViewGroup[@content-desc="${answer}"]

    Log To Console    CLICK RADIO: ${question} -> ${answer}

    Wait Until Element Is Visible    ${xpath}    20s
    Click Element    ${xpath}