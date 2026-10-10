*** Settings ***
Library     AppiumLibrary
Library     String
Resource    ../../../../ObjectRepository/Module/More_menu/ADMdanOPM/Android_MoreMenu_fitur_Stopwatch_Object.robot

*** Keywords ***
Akses more menu Stopwatch
    Wait Until Element Is Visible  ${btn_MoreMenu_Stopwatch}    20s
    Sleep  2s
    Click Element  ${btn_MoreMenu_Stopwatch}
    Sleep  2s   
    Capture Page Screenshot  
    Sleep  2s
    Click Element  ${btn_start}
    Sleep  4s
    Click Element  ${btn_stop}
    Sleep  4s
    Capture Page Screenshot  
    Click Element  ${btn_saveLap}
    Sleep  4s
    Capture Page Screenshot  
    Click Element  ${btn_reset}
    Sleep  4s
    Capture Page Screenshot  
    Sleep  7s
    FOR     ${i}    IN RANGE    2
        Press Keycode  
        ...  4 
    END     
    