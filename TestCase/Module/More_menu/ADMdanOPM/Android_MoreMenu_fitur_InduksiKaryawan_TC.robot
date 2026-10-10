*** Settings ***
Library     AppiumLibrary
Library     String
Library     DateTime
Resource    ../../../../ObjectRepository/Module/More_menu/ADMdanOPM/Android_MoreMenu_fitur_InduksiKaryawan_Object.robot
Resource    ../../../../Keyword/open_application_keyword.robot

*** Keywords ***
Akses more menu Induksi Karyawan
    Wait Until Element Is Visible  ${btn_MoreMenu_InduksiKaryawan}  20s
    Sleep  1s
    Click Element  ${btn_MoreMenu_InduksiKaryawan}
    Sleep  1s
    Wait Until Element Is Visible  ${verify_page_InduksiKaryawan}  20s
    Element Should Be Visible  ${verify_page_InduksiKaryawan}
    Sleep  2s
    Capture Page Screenshot  
    Sleep  4s
    # Swipe From Element Position     ${btn_kuning_log_chunker}
    Swipe
        ...    start_x=914
        ...    start_y=2131
        ...    end_x=500
        ...    end_y=1600
    Sleep  4s
    Wait Until Element Is Visible  ${btn_createInduksi}     20s
    Sleep  1s
    Click Element  ${btn_createInduksi}
    Sleep  2s
    Capture Page Screenshot  
    Sleep  1s
    Wait Until Element Is Visible  ${verify_form_induksi}   20s
    Element Should Be Visible  ${verify_form_induksi} 
    Sleep  2s
Function Evidence Before Input
    Capture Page Screenshot
    Swipe UP
    Sleep  3s
    Capture Page Screenshot
    Sleep  3s
    Swipe Down
Verify user induksi karyawan
    Verify Match Value with Excel  
    ...     ${verify_user_Induksi_karyawan}
    ...     ${nama_user_login}
    ...     NAMA
    Sleep  1s
    Verify Match Value with Excel  
    ...     ${verify_NRP_Induksi_Karyawan}
    ...     ${nrp}
    ...     NRP
    Sleep  1s
    Verify Match Value with Excel  
    ...     ${VERIFY_Jabatan_Induksi_Karyawan}
    ...     ${jabatan}
    ...     JABATAN
    Sleep  1s
Form Input Induksi Karyawan
# Tanggal
    Click Element  ${btn_tanggal_induksi}
    Sleep  1s
    ${target}=    Convert Date
    ...    ${tgl_induksi}
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

    Log To Console    Target: ${tgl_induksi}
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
# Tekanan Darah
    Wait Until Element Is Visible  ${field_tekanan_darah1}
    Sleep  1s
    Input Text  
    ...     ${field_tekanan_darah1}
    ...     ${td1}
    Sleep  1s
    Input Text  
    ...     ${field_tekanan_darah2}
    ...     ${td2}
# nadi
    Input Text  
    ...     ${field_Nadi}  
    ...     ${nadi}
# suhu tubuh
    input Text  
    ...     ${field_suhu_tubuh}  
    ...     ${st}
    Sleep  2s
    Capture Page Screenshot  
    Sleep  2s
    Swipe UP
    Sleep  2s
# pernafasan
    Input Text  
    ...     ${field_pernafasan}
    ...     ${pernafasan}
    Sleep  1s
    Input Text  
    ...     ${field_saturasi_oksigen}
    ...     ${so}
    wait Until Element Is Visible  ${verify_Screening}  20s
    Sleep  1s
    Element Should Be Visible   ${verify_Screening}
Select Screening
    ${option}=    Strip String    ${screening}

    Log To Console    OPTION SCREENING = ${option}

    IF    '${option}' == 'Ya'
        Log To Console    CLICK SCREENING = YA
        Wait Until Element Is Visible    ${option_screening_ya}    10s
        Click Element   ${option_screening_ya}

    ELSE IF    '${option}' == 'Tidak'
        Log To Console    CLICK SCREENING = TIDAK
        Wait Until Element Is Visible    ${option_screening_tidak}    10s
        Click Element    ${option_screening_tidak}

    ELSE
        Fail    Data Screening tidak valid: ${option}
    END
# Select Materi Induksi
#     [Arguments]    ${materi}

#     ${materi}=    Strip String    ${materi}

#     Log To Console    MATERI DARI EXCEL = [${materi}]

#     IF    '${materi}'.lower() == 'hcga'
#         Log To Console    CLICK RADIO MATERI = HCGA
#         Wait Until Element Is Visible    ${radio_btn_HCGA}    10s
#         Click Element    ${radio_btn_HCGA}

#     ELSE IF    '${materi}'.lower() == 'she'
#         Log To Console    CLICK RADIO MATERI = SHE
#         Wait Until Element Is Visible    ${radio_btn_SHE}    10s
#         Click Element    ${radio_btn_SHE}

#     ELSE IF    '${materi}'.lower() == 'internal'
#         Log To Console    CLICK RADIO MATERI = INTERNAL
#         Wait Until Element Is Visible    ${radio_btn_Internal}    10s
#         Click Element    ${radio_btn_Internal}

#     ELSE
#         Fail    Materi Induksi tidak dikenali: [${materi}]
#     END

#     Sleep    1s
Select Materi Induksi
    
    ${materi}=    Strip String    ${materi_induk}

    Log To Console    MATERI DARI EXCEL = [${materi}]

    IF    '${materi}'.lower() == 'hcga'
        Log To Console    CLICK RADIO MATERI = HCGA
        Wait Until Element Is Visible    ${radio_btn_HCGA}    10s
        Click Element    ${radio_btn_HCGA}

    ELSE IF    '${materi}'.lower() == 'she'
        Log To Console    CLICK RADIO MATERI = SHE
        Wait Until Element Is Visible    ${radio_btn_SHE}    10s
        Click Element    ${radio_btn_SHE}

    ELSE IF    '${materi}'.lower() == 'internal'
        Log To Console    CLICK RADIO MATERI = INTERNAL
        Wait Until Element Is Visible    ${radio_btn_Internal}    10s
        Click Element    ${radio_btn_Internal}

    ELSE
        Fail    Materi Induksi tidak dikenali: [${materi}]
    END
    Sleep  2s
    Capture Page Screenshot  
    Sleep  2s
    Swipe UP
    Sleep  1s
    Wait Until Element Is Visible  ${btn_kirim_induksi}     20s
    Click Element  ${btn_kirim_induksi}
    Sleep  1s
    wait Until Element Is Visible  ${btn_popup_OK}  20s
    Sleep  2s
    Capture Page Screenshot  
    Sleep  2s
    Select Popup Konfirmasi
    Sleep  2s
    wait Until Element Is Visible  ${induksi_berhasil_disimpan}     20s 
    Click Element  ${induksi_berhasil_disimpan} 
    Sleep  2s
      
    
    

      
    
      
    
    
    

    
      
    
