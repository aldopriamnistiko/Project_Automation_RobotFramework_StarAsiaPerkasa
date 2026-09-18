*** Settings ***
Library     AppiumLibrary
Library     String
Library     DateTime
Resource    ../../../ObjectRepository/Module/QuickAccess/Android_QuickAccess_SOS_Object.robot

*** Keywords ***

Akses menu SOS
    Wait Until Element Is Visible  
    ...     ${btn_menu_SOS}
    ...     20s
    Sleep  1s
    Click Element  
    ...     ${btn_menu_SOS}
    Sleep  1s
    Capture Page Screenshot   
    Sleep  7s
# popup permission camera
    Wait Until Element Is Visible  
    ...     ${field_unggahFoto}
    ...     20s
    Sleep  1s
    Click Element  
    ...     ${field_unggahFoto}
    Sleep  1s
    Click Element  
    ...     ${btn_ambil_foto}
     
    ${camera_popup}=    Run Keyword And Return Status
    ...    Wait Until Element Is Visible
    ...    xpath=//*[contains(@text,"While using the app")]
    ...    2s

    IF    ${camera_popup}
        Click Element    xpath=//*[contains(@text,"While using the app")]
        Log To Console    Camera permission diizinkan
    END
# unggah foto (kamera android)
    Sleep  1s
    ${shutter_exists}=    Run Keyword And Return Status
        ...    Wait Until Element Is Visible
        ...    ${shutter_button}
        ...    10s

        IF    ${shutter_exists}
            Log To Console    Samsung Camera terbuka

            Click Element    ${shutter_button}
            Sleep    1s
            Wait Until Element Is Visible  
            ...     ${btn_OK}    
            ...     20s
            Sleep  
            ...     1s
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

        ${done_exists}=    Run Keyword And Return Status
        ...    Wait Until Element Is Visible
        ...    ${done_button}
        ...    5s

        IF    ${done_exists}
            Click Element    ${done_button}
            Log To Console    Klik Done berhasil
        END
        Sleep  1s
    
Waktu Kejadian
    [Arguments]    ${target_tanggal}    ${waktu}
# tanggal
    Click Element    ${tgl_WaktuKejadian}
    Sleep    2s

    ${target}=    Convert Date
    ...    ${target_tanggal}
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

    Log To Console    Target: ${target_tanggal}
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
# Waktu
        Log To Console    RAW DATA WAKTU: ${waktu}

    IF    '${waktu}' == '' or ':' not in '${waktu}'
        Fail    Format waktu tidak valid: ${waktu}
    END

    ${parts}=    Split String    ${waktu}    :
    ${jam}=      Get From List    ${parts}    0
    ${menit}=    Get From List    ${parts}    1

    ${jam}=       Strip String    ${jam}
    ${menit}=     Strip String    ${menit}

    Log To Console    JAM: ${jam}
    Log To Console    MENIT: ${menit}

    Click Element    ${time_waktukejadian}
    Sleep    1s

    ${keyboard_exists}=    Run Keyword And Return Status
    ...    Wait Until Element Is Visible
    ...    ${icon_keyboard}
    ...    1s

    IF    ${keyboard_exists}
        Click Element    ${icon_keyboard}
        Sleep    1s
    END

    Input Text    ${setJam}       ${jam}
    Input Text    ${setMenit}     ${menit}

    Click Element    ${btn_OKE_Waktu_SOS}
# Scroll
    Swipe
    ...    start_x=500
    ...    start_y=1800
    ...    end_x=500
    ...    end_y=500
# pilih jenis kejadian
pilih jenis kejadian
    Wait Until Element Is Visible  
    ...     ${jenis_kejadian}
    ...     20s
    Sleep  1s
    Click Element  
    ...     ${jenis_kejadian}
    Sleep  1s
    Wait Until Element Is Visible  
    ...     ${pilih_jk}
    ...     20s
    Sleep  1s
    Input Text  
    ...     ${Search_jenis_kejadian}
    ...     ${pilih_jenis_kejadian}
    Sleep  1s
    Click Element  
    ...     ${first_result}
    Sleep  1s
Deskripsi kejadian
    Wait Until Element Is Visible  
    ...     ${Deskripsi_Kejadian}
    ...     20s
    Sleep  1s
    input Text  
    ...     ${Deskripsi_Kejadian}
    ...     ${desk_kejadian}
    Sleep  1s
Pelaku atau Korban
    Wait Until Element Is Visible  
    ...     ${field Pelaku / Korban}
    ...     20s
    Sleep  1s
    Click Element  
    ...     ${field Pelaku / Korban}
    Sleep  1s
    Wait Until Element Is Visible  
    ...     ${verify header form pelaku / korban}
    ...     20s
    Sleep  1s
    Input Text  
    ...     ${search pelaku / korban}
    ...     ${pilih_pelaku/korban}
    Sleep  1s
    Wait Until Element Is Visible  
    ...     ${result pelaku / korban}
    ...     20s
    Sleep  1s
    Click Element  
    ...     ${result pelaku / korban}
    Sleep  1s
Alat berat
    Wait Until Element Is Visible  
    ...     ${field alat berat}
    ...     20s
    Sleep  1s
    Click Element  
    ...     ${field alat berat}
    Sleep  1s
    Wait Until Element Is Visible  
    ...     ${verify header field alat berat}
    ...     20s
    Sleep  1s
    Input Text  
    ...     ${search alat berat}
    ...     ${alatberat}
    Sleep  1s
    Wait Until Element Is Visible  
    ...     ${result alat berat}
    ...     20s
    Sleep  1s
    Click Element  
    ...     ${result alat berat}
    Sleep  1s
    
Lokasi
    Swipe
    ...    start_x=500
    ...    start_y=1800
    ...    end_x=500
    ...    end_y=500
    Sleep  1s
    wait until Element Is Visible  
    ...     ${pilih lokasi}
    ...     20s
    Sleep  1s
    Click Element 
    ...     ${pilih lokasi}
    Sleep  1s
    Wait Until Element Is Visible  
    ...     ${header pilih lokasi}
    ...     20s
    Sleep  
    ...     1s
    Input Text  
    ...     ${Search lok}
    ...     ${lokasi}
    Sleep  1s
    Wait Until Element Is Visible  
    ...     ${result lokasi}
    Sleep  1s
    Click Element  
    ...     ${result lokasi}
    Sleep  1s
detail lokasi
    Wait Until Element Is Visible  
    ...     ${field detail lokasi}
    Sleep  1s
    input Text  
    ...     ${field detail lokasi}
    ...     ${detaillokasi}
    Sleep  1s
    # Hide Keyboard
kirim
    Wait Until Element Is Visible  
    ...     ${btn_kirim}
    ...     20s
    # Element Should Be Visible  
    # ...     ${btn_kirim}
    Click Element       ${btn_kirim}
    Sleep  1s
verify after create form SOS
    Element Should Be Visible 
    ...     ${verifyafter create form SOS}
    Sleep  
    ...     7s







