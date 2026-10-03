*** Settings ***
library     AppiumLibrary
library     String
Resource    ../../../ObjectRepository/Module/QuickAccess/Android_QuickAccess_Sign_Object.robot

*** keywords ***
Akses menu Sign In Quick Access
    Wait Until Element Is Visible    ${btn_SignIn_QuickAccess}          20s
    Sleep                            1s
    capture page screenshot
    Click Element                    ${btn_SignIn_QuickAccess}
    Sleep                            1s
    capture page screenshot
    Wait Until Element Is Visible    ${verify_page_SignIn}              20s
    Sleep                            1s
    element Should Be Visible        ${verify_page_SignIn}
    Sleep                            1s
    input text                       
    ...                              ${field_cari_dokumen}
    ...                              ${CariDokumen}
    Sleep                            1s
    capture page screenshot
    element Should Be Visible        ${verify_ketika_tidak_ada_dokumen}
    Sleep                            1s
    press keycode                    4
    Sleep                            1s