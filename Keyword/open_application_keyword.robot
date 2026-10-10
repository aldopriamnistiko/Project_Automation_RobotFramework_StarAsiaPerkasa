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

Click Option By Question
    [Arguments]    ${question}    ${answer}

    ${answer}=    Strip String    ${answer}

    Log To Console    CLICK RADIO: ${question} -> ${answer}

    IF    '${answer}' == 'Tunda'
        ${xpath}=    Set Variable    ${radio_P2H_Tunda}

    ELSE IF    '${answer}' == 'Setuju'
        ${xpath}=    Set Variable    ${radio_P2H_Setuju}

    ELSE IF    '${answer}' == 'Tolak'
        ${xpath}=    Set Variable    ${radio_P2H_Tidak}

    ELSE
        Fail    Persetujuan tidak dikenali: [${answer}]
    END

    Log To Console    XPATH RADIO = ${xpath}

    Wait Until Element Is Visible    ${xpath}    20s
    Click Element    ${xpath}

    Log To Console    RADIO BERHASIL DIKLIK = ${answer}

Click option
    [Arguments]    ${question}    ${answer}

    ${xpath}=    Set Variable    //android.view.ViewGroup[@content-desc="${answer}"]

    Log To Console    CLICK KETERANGAN REJECT: ${question} -> ${answer}

    Wait Until Element Is Visible    ${xpath}    20s
    Click Element    ${xpath}

Click Element Value
    [Arguments]    ${text}
    ${locator}=    Set Variable    xpath=(//*[@text="${text}"])[1]
    Wait Until Element Is Visible    ${locator}    10s
    Click Element    ${locator}

Swipe UP
    Swipe
    ...    start_x=500
    ...    start_y=1500
    ...    end_x=500
    ...    end_y=500


Swipe Down
    Swipe
    ...    start_x=500
    ...    start_y=500
    ...    end_x=500
    ...    end_y=1500
    
Swipe From Element Position
    [Arguments]    ${locator}

    Wait Until Element Is Visible    ${locator}    10s

    ${location}=    Get Element Location    ${locator}

    ${x}=    Get From Dictionary    ${location}    x
    ${y}=    Get From Dictionary    ${location}    y

    Log To Console    ELEMENT POSITION = ${x}, ${y}

    Swipe
    ...    start_x=${x}
    ...    start_y=${y}
    ...    end_x=500
    ...    end_y=1600
    ...    duration=1000

# UNTUK VERIFY VALUE DATA SATU PER SATU
# Verify user Induksi
#     ${ui_name}=    Get Text    ${verify_user_Induksi_karyawan}

#     ${ui_name}=          Normalize Text    ${ui_name}
#     ${expected_name}=    Normalize Text    ${nama_user_login}

#     Log To Console    ===== FINAL DEBUG =====
#     ${debug_ui}=          Set Variable    UI NAME      : [${ui_name}]
#     ${debug_expected}=    Set Variable    EXPECTED NAME: [${expected_name}]
#     Log To Console    ${debug_ui}
#     Log To Console    ${debug_expected}

#     ${is_match}=    Run Keyword And Return Status
#     ...    Should Be Equal As Strings
#     ...    ${ui_name}
#     ...    ${expected_name}
#     ...    ignore_case=True

#     IF    ${is_match}
#         Log To Console    PASS - NAME MATCH
#         Log    NAME MATCH: ${ui_name}
#         Sleep    1s
#     ELSE
#         ${debug_fail}=    Set Variable    FAIL - UI: [${ui_name}] | EXPECTED: [${expected_name}]
#         Log To Console    ${debug_fail}
#         Capture Page Screenshot
#         Fail    Name mismatch! UI=[${ui_name}] vs EXPECTED=[${expected_name}]
#     END
# Verify NRP Induksi
#     ${ui_nrp}=    Get Text    ${verify_NRP_Induksi_Karyawan}

#     ${ui_nrp}=          Normalize Text    ${ui_nrp}
#     ${expected_nrp}=    Normalize Text    ${nrp}

#     Log To Console    ===== FINAL DEBUG =====
#     ${debug_ui}=          Set Variable    UI NAME      : [${ui_nrp}]
#     ${debug_expected}=    Set Variable    EXPECTED NAME: [${expected_nrp}]
#     Log To Console    ${debug_ui}
#     Log To Console    ${debug_expected}

#     ${is_match}=    Run Keyword And Return Status
#     ...    Should Be Equal As Strings
#     ...    ${ui_nrp}
#     ...    ${expected_nrp}
#     ...    ignore_case=True

#     IF    ${is_match}
#         Log To Console    PASS - NAME MATCH
#         Log    NAME MATCH: ${ui_nrp}
#         Sleep    1s
#     ELSE
#         ${debug_fail}=    Set Variable    FAIL - UI: [${ui_nrp}] | EXPECTED: [${expected_nrp}]
#         Log To Console    ${debug_fail}
#         Capture Page Screenshot
#         Fail    Name mismatch! UI=[${ui_nrp}] vs EXPECTED=[${expected_nrp}]
#     END
# Verify tgl induksi
# Verify Match Value with Excel
#     [Arguments]    ${locator}    ${expected}    ${field_name}

#     ${ui_value}=    Get Text    ${locator}

#     ${ui_value}=          Normalize Text    ${ui_value}
#     ${expected_value}=    Normalize Text    ${expected}

#     Log To Console    ===== VERIFY ${field_name} =====
#     Log To Console    UI ${field_name}       : [${ui_value}]
#     Log To Console    EXPECTED ${field_name} : [${expected_value}]

#     ${is_match}=    Run Keyword And Return Status
#     ...    Should Be Equal As Strings
#     ...    ${ui_value}
#     ...    ${expected_value}
#     ...    ignore_case=True

#     IF    ${is_match}
#         Log To Console    PASS - ${field_name} MATCH
#         # Log    ${field_name} MATCH: ${ui_value}
#     ELSE
#         Log To Console    FAIL - UI: [${ui_value}] | EXPECTED: [${expected_value}]
#         Capture Page Screenshot
#         Fail    ${field_name} mismatch! UI=[${ui_value}] vs EXPECTED=[${expected_value}]
#     END
    
Verify Match Value with Excel
    [Arguments]    ${locator}    ${expected}    ${field_name}

    ${ui_value}=    Get Text    ${locator}

    ${ui_value}=          Normalize Text    ${ui_value}
    ${expected_value}=    Normalize Text    ${expected}

    Log To Console    ===== VERIFY ${field_name} =====
    Log To Console    UI ${field_name} : [${ui_value}]
    Log To Console    EXPECTED ${field_name} : [${expected_value}]

    ${is_match}=    Run Keyword And Return Status
    ...    Should Be Equal As Strings
    ...    ${ui_value}
    ...    ${expected_value}
    ...    ignore_case=True

    IF    ${is_match}
        Log To Console    PASS - ${field_name} MATCH
    ELSE
        Log To Console    FAIL - UI: [${ui_value}] | EXPECTED: [${expected_value}]
        Capture Page Screenshot
        Fail    ${field_name} mismatch! UI=[${ui_value}] vs EXPECTED=[${expected_value}]
    END
      
Select Popup Konfirmasi
    ${popup}=    Strip String    ${popup_konfirm}

    Log To Console    POPUP DARI EXCEL = [${popup}]

    IF    '${popup}'.lower() == 'ok'
        Log To Console    CLICK POPUP = OK

        Wait Until Element Is Visible    ${btn_popup_OK}    5s
        Click Element    ${btn_popup_OK}

        Log To Console    PASS - TAP POPUP : OK

    ELSE IF    '${popup}'.lower() == 'cancel'
        Log To Console    CLICK POPUP = CANCEL

        Wait Until Element Is Visible    ${btn_popup_Cancel}    5s
        Click Element    ${btn_popup_Cancel}

        Log To Console    PASS - TAP POPUP : CANCEL

    ELSE
        Fail    Popup konfirmasi tidak dikenali: [${popup}]
    END

    Sleep    3s
    
Swipe back
    # FOR     ${i}    IN RANGE    2
        Press Keycode  4
    # END  
Swipe back twice
    FOR     ${i}    IN RANGE    2
        Press Keycode  4
        Sleep  2s
    END  