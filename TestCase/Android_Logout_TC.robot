*** Settings ***
Library     AppiumLibrary
Resource    ../ObjectRepository/Android_Logout_Object.robot

*** Keywords ***
Swipe Chunk
    Swipe
    ...    start_x=914
    ...    start_y=2131
    ...    end_x=500
    ...    end_y=1600
    Sleep   
    ...     1s
    Capture Page Screenshot  
    Sleep  1s
LogOut
    Wait Until Element Is Visible   
    ...     ${logo_profil}      
    ...     20s
    Sleep  
    ...     1s
    Click Element  
    ...     ${logo_profil}
    Sleep   
    ...     1s
    Capture Page Screenshot  
    Sleep  1s
    Wait Until Element Is Visible  
    ...     ${btn_logout}
    ...     20s
    Sleep  
    ...     1s
    Click Element  
    ...     ${btn_logout}
    # handler POPUP
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
    ...     3s
    Capture Page Screenshot  
    Sleep  
    ...     3s
    
    [Teardown]      Close Application