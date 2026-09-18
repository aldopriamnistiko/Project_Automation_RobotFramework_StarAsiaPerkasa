*** Settings ***
Library    AppiumLibrary

*** Variables ***
${APPIUM_SERVER}    http://127.0.0.1:4723
${DEVICE_UDID}     192.168.1.26:5577
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
