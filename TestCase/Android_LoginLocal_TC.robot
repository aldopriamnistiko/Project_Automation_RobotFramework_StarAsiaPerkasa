*** Settings ***
Library    AppiumLibrary

Resource    ../ObjectRepository/Android_Login_Object.robot
Resource    ../Keyword/open_application_keyword.robot

# Test Template    Login Android

# *** Test Cases ***

# Login Android
    # ${search}    ${NRP}    ${Password}    ${name}

*** Keywords ***

Login Android
    # [Arguments]    ${search_lokasi}    ${nrp}    ${pass}    ${nama_user}

    # Open Android Application

# Handle Notification Popup
    ${popup_exists}=    Run Keyword And Return Status
    ...    Wait Until Element Is Visible
    ...    xpath=//*[contains(@text,"Allow") or contains(@text,"Don't allow")]
    ...    3s

    IF    ${popup_exists}
        Log    Popup notification ditemukan, tekan Back
        Press Keycode    4
        Sleep    1s
    ELSE
        Log    Popup notification tidak ditemukan, lanjut
    END
    Sleep  1s

    Capture Page Screenshot  
    Sleep  1s
    Wait Until Element Is Visible    
    ...                              ${field_select_site}
    ...                              20s
    Sleep                            1s
    Click Element                    ${field_select_site}
    Wait Until Element Is Visible    
    ...                              ${field_search_select_site}
    ...                              20s
    Sleep                            1s
    Input Text
    ...                              ${field_search_select_site}
    ...                              ${search_lokasi}
    Wait Until Element Is Visible    
    ...                              ${first_result_select_site}
    ...                              20s
    Sleep                            1s
    Click Element                    
    ...                              ${first_result_select_site}
    Sleep                            1s
    wait Until Element Is Visible    
    ...                              ${field_NRP}
    ...                              20s
    Sleep                            
    ...                              1s
    Input Text                       
    ...                              ${field_NRP}
    ...                              ${nrp}
    Sleep                            
    ...                              1s
    Input Text                       
    ...                              ${field_Password}
    ...                              ${pass}
    Sleep         
    ...           1s
    Click Element  
    ...     ${icon_eye_pass}
    Sleep  1s
    Click Element  
    ...     ${toggle_switch_network}
    Sleep  1s
    Capture Page Screenshot  
    Sleep  1s
    Click Element  
    ...     ${btn_login}
    Sleep  
    ...     3s
    # handler popup
    ${popup_exists}=    Run Keyword And Return Status
    ...    Wait Until Element Is Visible
    ...    xpath=//*[contains(@text,"Allow") or contains(@text,"Don't allow")]
    ...    3s

    IF    ${popup_exists}
        Log    Popup notification ditemukan, tekan Back
        Press Keycode    4
        Sleep    1s
    ELSE
        Log    Popup notification tidak ditemukan, lanjut
    END
    Sleep  
    ...     1s
    Wait Until Element Is Visible  
    ...     ${HeaderQuickAccess}
    ...     50s
    Sleep  
    ...     1s
    Element Should Be Visible  
    ...     ${HeaderQuickAccess}
    Sleep  
    ...     1s

    # [Teardown]    Close Application

