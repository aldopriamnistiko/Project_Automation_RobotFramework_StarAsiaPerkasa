*** Settings ***
Library     AppiumLibrary
Library     String
Resource    ../../../../ObjectRepository/Module/More_menu/ADMdanOPM/Android_MoreMenu_fitur_DokumenPerusahaan_Object.robot

*** Keywords ***
Akses more menu Dokumen Perusahaan
    Wait Until Element Is Visible  ${btn_MoreMenu_DokumenPerusahan}  20s
    Sleep  1s
    Click Element  ${btn_MoreMenu_DokumenPerusahan}
    Sleep  1s
    Wait Until Element Is Visible  ${verify_page_DokumenPerusahaan}
    Sleep  1s
    Element Should Be Visible  ${verify_page_DokumenPerusahaan}  20s
    Sleep  2s
    Capture Page Screenshot  
    Sleep  2s
    FOR     ${i}    IN RANGE    2
        Press Keycode  4
        Sleep  3s
    END  

        
      
    
    