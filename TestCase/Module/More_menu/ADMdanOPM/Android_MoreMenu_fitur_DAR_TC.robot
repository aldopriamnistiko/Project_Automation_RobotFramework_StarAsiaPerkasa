*** Settings ***
Library     AppiumLibrary
Library     string
Library     DateTime
Resource    ../../../../ObjectRepository/Module/More_menu/ADMdanOPM/Android_MoreMenu_fitur_DAR_Object.robot

*** Keywords ***
Akses more menu DAR
    [Arguments]     ${tglAktivitas}
    Wait Until Element Is Visible    ${btn_MoreMenu_DAR}    20s
    Click Element                    ${btn_MoreMenu_DAR}
    Sleep                            2s
    Capture Page Screenshot          
    Wait Until Element Is Visible    ${verify_page_DAR}     20s
    Sleep  1s
    Element Should Be Visible  ${verify_page_DAR}
    Sleep  1s
    Swipe
    ...    start_x=914
    ...    start_y=2131
    ...    end_x=500
    ...    end_y=1600
    Sleep   
    ...     1s
    Wait Until Element Is Visible  ${btn_createDAR}  20s
    Sleep  1s
    Click Element  ${btn_createDAR}
    Sleep  2s
# form dar
    Wait Until Element Is Visible  ${verify_form_DAR}  20s
    Sleep  1s
    Element Should Be Visible  ${verify_form_DAR}   
    Sleep  1s
    Click Element  ${field_jenis_wo}            
    Click Element Value  ${jenisWO}
    Sleep  1s
    Click Element  ${field_section}
    Click Element Value  ${section}
    Sleep  1s
    Wait Until Element Is Visible  
    ...     ${btn_tglAktivitas}  20s
    Click Element  ${btn_tglAktivitas}
    Sleep  1s
    # tanggal
    ${target}=    Convert Date
    ...    ${tglAktivitas}
    ...    date_format=%d-%m-%Y
    ...    result_format=%Y-%m-%d

    ${target_year}    ${target_month}    ${target_day}=    Split String    ${target}    -

    ${current}=    Get Current Date
    ${current}=    Convert Date
    ...    ${current}
    ...    result_format=%Y-%m-%d

    ${current_year}    ${current_month}    ${dummy}=    Split String    ${current}    -

    ${current_index}=    Evaluate
    ...    int("${current_year}") * 12 + int("${current_month}")

    ${target_index}=    Evaluate
    ...    int("${target_year}") * 12 + int("${target_month}")

    ${month_diff}=    Evaluate
    ...    ${target_index} - ${current_index}

    Log To Console    Target: ${tglAktivitas}
    Log To Console    Selisih bulan: ${month_diff}

    IF    ${month_diff} > 0
        FOR    ${i}    IN RANGE    ${month_diff}
            Click Element    ${date_next_month}
            Sleep    0.3s
        END
    ELSE IF    ${month_diff} < 0
        ${prev_count}=    Evaluate    abs(${month_diff})
        FOR    ${i}    IN RANGE    ${prev_count}
            Click Element    ${date_prev_month}
            Sleep    0.3s
        END
    END

    ${day_locator}=    Set Variable    xpath=//*[@text="${target_day}"]

    Wait Until Element Is Visible    ${day_locator}    5s
    Click Element    ${day_locator}

    Sleep    1s

    Click Element    ${date_ok}
    Sleep    1s
   # Cek popup No Data
${popup_muncul}=    Run Keyword And Return Status
...    Wait Until Element Is Visible    ${popup_no_data}    3s

    IF    ${popup_muncul}
        Log To Console    Popup No Data muncul

        Wait Until Element Is Visible    ${btn_popup_okDAR}    5s
        Wait Until Element Is Enabled    ${btn_popup_okDAR}    5s
        Click Element    ${btn_popup_okDAR}

        ${popup_masih_ada}=    Run Keyword And Return Status
        ...    Wait Until Element Is Visible    ${popup_no_data}    3s

        IF    ${popup_masih_ada}
            Log To Console    Popup belum tertutup, coba klik koordinat
            Click A Point    575    878
            Sleep    1s
        END
    ELSE
        Log To Console    Popup No Data tidak muncul, lanjutkan proses
    END

    Sleep  2s
    # keterangan
    Wait Until Element Is Visible  ${field_keterangan}  20s
    Sleep  1s
    Input Text  
    ...     ${field_keterangan}
    ...     ${keteranganDAR}  
    Sleep  1s
    
    
    
      
    
