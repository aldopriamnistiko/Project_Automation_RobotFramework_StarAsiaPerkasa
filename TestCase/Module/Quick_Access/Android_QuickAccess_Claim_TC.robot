*** Settings ***
Library     AppiumLibrary
Library     String
Library     DateTime
Resource    ../../../ObjectRepository/Module/QuickAccess/Android_QuickAccess_Claim_Object.robot


*** Keywords ***
Akses menu claim
    wait Until Element Is Visible    ${btn_claim_Quickaccess}    20s
    Capture Page Screenshot          
    Sleep                            1s
    Click Element                    ${btn_claim_Quickaccess}
    Sleep                            1s
    Wait Until Element Is Visible  ${verify_page_Claim}  20s  
    Sleep  1s
    Element Should Be Visible  ${verify_page_Claim}  
    Capture Page Screenshot          
    Sleep                            1s
    FOR                              ${i}                        IN RANGE    2
        Swipe
        ...                              start_x=500
        ...                              start_y=1800
        ...                              end_x=500
        ...                              end_y=500
        Sleep                            1s
        Capture Page Screenshot          
        Sleep                            1s
    END
    Click Element  ${tab_Cashless}
    Sleep  1s
    Capture Page Screenshot  
    Sleep  1s
    Click Element  ${tab_claim} 
    Wait Until Element Is Visible  ${btn_ajukan_Claim}  
    ...     20s
    Sleep  1s
    Click Element  ${btn_ajukan_Claim}
    Sleep  2s
    Capture Page Screenshot  
    Sleep  1s
Form reimburse
     [Arguments]    ${jns_claim}    ${sub_claim}    ${hubungan_keluarga_form_claim}     ${tgl_claim}

    # ========================================
    # VERIFY HALAMAN FORM REIMBURSE
    # ========================================

    Wait Until Element Is Visible
    ...    ${verify_page_AjukanClaim}
    ...    20s

    Element Should Be Visible
    ...    ${verify_page_AjukanClaim}


    # ========================================
    # PILIH JENIS CLAIM
    # ========================================

    Click Element
    ...    ${field_jenis_claim}

    Wait Until Element Is Visible
    ...    ${field_search_jenis_claim}
    ...    10s

    Input Text
    ...    ${field_search_jenis_claim}
    ...    ${jns_claim}

    Sleep    1s

    Wait Until Element Is Visible
    ...    ${first_result_search_jenis_claim}
    ...    10s

    Click Element
    ...    ${first_result_search_jenis_claim}

    Sleep    2s


    # ========================================
    # SUB CLAIM
    # HANYA KLIK JIKA FIELD SUB CLAIM MUNCUL
    # ========================================

    ${subclaim_exists}=    Run Keyword And Return Status
    ...    Wait Until Element Is Visible
    ...    ${field_sub_claim}
    ...    3s

    IF    ${subclaim_exists}

        Log To Console    Claim memiliki Sub Claim
        Log To Console    Sub Claim = ${sub_claim}

        Click Element
        ...    ${field_sub_claim}

        Sleep    1s

        ${locator_subclaim}=    Set Variable
        ...    xpath=//*[@text="${sub_claim}"]

        Wait Until Element Is Visible
        ...    ${locator_subclaim}
        ...    10s

        Click Element
        ...    ${locator_subclaim}

        Sleep    1s

    ELSE

        Log To Console    Claim tidak memiliki Sub Claim

    END


    # ========================================
    # HUBUNGAN KELUARGA
    # SELALU ADA DI SEMUA CLAIM
    # ========================================

    Log To Console
    ...    Hubungan Keluarga = ${hubungan_keluarga_form_claim}

    Wait Until Element Is Visible
    ...    ${field_hub_keluarga}
    ...    10s

    Click Element
    ...    ${field_hub_keluarga}

    Sleep    1s

    ${locator_hub}=    Set Variable
    ...    xpath=//*[@text="${hubungan_keluarga_form_claim}"]

    Wait Until Element Is Visible
    ...    ${locator_hub}
    ...    10s

    Click Element
    ...    ${locator_hub}

    Sleep    1s
    Swipe  
    ...  start_x=500
    ...  start_y=1100
    ...  end_x=500
    ...  end_y=500  
    Sleep  1s
    # ===========
    # tanggal kwitansi
    # ===========
    Wait Until Element Is Visible  ${btn_Tglkwitansi_Claim}  20s  
    Sleep  1s
    Click Element  ${btn_Tglkwitansi_Claim}
    Sleep  2s

    Sleep  2s
    
    ${target}=    Convert Date
    ...    ${tgl_claim}
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

    Log To Console    Target: ${tgl_claim}
    Log To Console    Selisih bulan: ${month_diff}

    IF    ${month_diff} > 0
        FOR    ${i}    IN RANGE    ${month_diff}
            ${next_exists}=    Run Keyword And Return Status
            ...    Wait Until Element Is Visible
            ...    ${date_next_month}
            ...    2s

        IF    ${next_exists}
            Click Element    ${date_next_month}
            Sleep    0.3s
        ELSE
            Log To Console    Next Month tidak ditemukan, skip klik
        END
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

    Sleep    3s

    Click Element    ${date_ok}
    Sleep    1s
    Swipe  
    ...  start_x=500
    ...  start_y=1100
    ...  end_x=500
    ...  end_y=500  
    Sleep  1s
    # ============
    # take photo
    # ============
    Wait Until Element Is Visible  ${photo Nota/kwitansi}  20s 
    Sleep  1s
    Click Element  ${photo Nota/kwitansi}
    Sleep  1s
    Click Element  
    ...     ${btn_ambil_foto}
    Sleep  1s
    ${camera_popup}=    Run Keyword And Return Status
    ...    Wait Until Element Is Visible
    ...    xpath=//*[contains(@text,"While using the app")]
    ...    2s

    IF    ${camera_popup}
        Click Element    xpath=//*[contains(@text,"While using the app")]
        Log To Console    Camera permission diizinkan
    END
    Sleep  2s
    ${shutter_exists}=    Run Keyword And Return Status
        ...    Wait Until Element Is Visible
        ...    ${shutter_button}
        ...    10s
    Sleep  2s
        IF    ${shutter_exists}
            Log To Console    Samsung Camera terbuka

            Click Element    ${shutter_button}
            Sleep    2s
            Wait Until Element Is Visible  
            ...     ${btn_OK}    
            ...     20s
            Sleep  
            ...     2s
            Click Element  ${btn_OK}
            Wait Until Element Is Visible  
            ...     ${btn_crop}
            ...     20s
            Sleep  
            ...     1s
            Click Element  ${btn_crop}
            Sleep  
            ...     1s
            Log To Console    Foto berhasil diambil
        ELSE
            Log To Console    Shutter Samsung Camera tidak ditemukan
        END
        Sleep  1s
        Swipe
        ...                              start_x=500
        ...                              start_y=1300
        ...                              end_x=500
        ...                              end_y=500
        Sleep  1s
        Capture Page Screenshot  
        Wait Until Element Is Visible  ${btn_tambah_claim}  20s
        # Sleep  1s
        # Click Element  ${btn_tambah_claim}
        # Sleep  1s
        # FOR     ${i}    IN RANGE    2
        #     Press Keycode  4
        # END  
        Sleep  1s
        Click Element  ${btn_tambah_claim}
        Sleep  1s
        FOR     ${i}    IN RANGE    2
            Press Keycode  4
        END  
            
                