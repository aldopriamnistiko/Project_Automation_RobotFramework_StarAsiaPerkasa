*** Settings ***
Library     AppiumLibrary
Library     String
Resource    ../../../../ObjectRepository/Module/More_menu/ADMdanOPM/Android_MoreMenu_fitur_TandaTanganDokumen_Object.robot

*** Keywords ***
Akses more menu TTD 
    Wait Until Element Is Visible  ${btn_Moremenu_TTD}  20s
    Sleep  1s
    Click Element  ${btn_Moremenu_TTD}
    Sleep  1s
    Wait Until Element Is Visible  ${verify_page_ttd}  20s
    Element Should Be Visible  ${verify_page_ttd}
    Sleep  1s
Pilih Filter TTD
    ${found}=    Set Variable    ${FALSE}

    FOR    ${i}    IN RANGE    1    11

    Log To Console    CLICK KE : ${i} | TARGET : ${targetFilter}

    ${xpath_target}=    Set Variable
    ...    xpath=//*[contains(@content-desc,'${targetFilter}')]

    ${exist}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    ${xpath_target}
    ...    1s

    IF    ${exist}
        Log To Console    FILTER SUDAH KETEMU : ${targetFilter}
        ${found}=    Set Variable    ${TRUE}
        BREAK
    END

    Log To Console    FILTER BELUM SESUAI, KLIK BUTTON BERIKUTNYA

    Click Element    ${btn_filter}
    Sleep    1s

    END

    Capture Page Screenshot

    IF    ${found}
        Log To Console    SUCCESS PILIH FILTER : ${targetFilter}
    ELSE
        Fail    Filter tidak ditemukan setelah 10 klik
    END

    Capture Page Screenshot

    IF    ${found}
        Log To Console    SUCCESS PILIH FILTER : ${targetFilter}
    ELSE
        Fail    Filter tidak ditemukan setelah ${max_click} klik
    END
    Sleep  1s
Pilih Tanggal TTD
    Log To Console    Tahun yang dipilih : ${tahun}
    Log To Console    Bulan yang dipilih : ${bulan}

    Wait Until Element Is Visible    ${btn_tanggal}    10s
    Click Element    ${btn_tanggal}

    Sleep    2s
    Capture Page Screenshot

    ${obj_tahun}=    Set Variable
    ...    xpath=//android.widget.TextView[@text="${tahun}"]

    ${obj_bulan}=    Set Variable
    ...    xpath=//android.widget.TextView[@text="${bulan}"]

    Wait Until Element Is Visible    ${obj_tahun}    10s
    Click Element    ${obj_tahun}

    Wait Until Element Is Visible    ${obj_bulan}    10s
    Click Element    ${obj_bulan}

    Capture Page Screenshot
    Sleep    3s

    Click Element  ${btn_terapkan_filter}
    Sleep  2s
    Capture Page Screenshot  
    Sleep  2s
    Wait Until Element Is Visible  ${btn_reset}
    Sleep  1s
    Click Element  ${btn_reset}
    Sleep  1s
    Capture Page Screenshot  
    Sleep  1s
    FOR     ${i}    IN RANGE    2
        Press Keycode  4
        Sleep  2s
    END  
    Sleep  2s
      
    
      
    