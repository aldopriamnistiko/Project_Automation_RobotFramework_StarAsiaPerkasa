*** Settings ***
library    AppiumLibrary
library    String
Resource    ../../objectrepository/Absensi/Android_Absensi_Object.robot


*** keywords ***

Absensi Checkin
    wait until element is visible    ${btn_absensi_masuk}    20s
    Sleep    1s
    Click Element    ${btn_absensi_masuk}
    capture page screenshot
    Sleep    1s
    Press Keycode    4
    capture page screenshot
    Sleep    1s
# verify get name

Verify User Clock In
    ${ui_name}=    Get Text    ${verify_user_Clock_in}

    ${ui_name}=          Normalize Text    ${ui_name}
    ${expected_name}=    Normalize Text    ${nama_user_login}

    Log To Console    ===== FINAL DEBUG =====
    ${debug_ui}=          Set Variable    UI NAME      : [${ui_name}]
    ${debug_expected}=    Set Variable    EXPECTED NAME: [${expected_name}]
    Log To Console    ${debug_ui}
    Log To Console    ${debug_expected}

    ${is_match}=    Run Keyword And Return Status
    ...    Should Be Equal As Strings
    ...    ${ui_name}
    ...    ${expected_name}
    ...    ignore_case=True

    IF    ${is_match}
        Log To Console    PASS - NAME MATCH
        Log    NAME MATCH: ${ui_name}
        Sleep    1s
    ELSE
        ${debug_fail}=    Set Variable    FAIL - UI: [${ui_name}] | EXPECTED: [${expected_name}]
        Log To Console    ${debug_fail}
        Capture Page Screenshot
        Fail    Name mismatch! UI=[${ui_name}] vs EXPECTED=[${expected_name}]
    END
Informasi Umum
    [arguments]    
    ...     ${Alkohol}    
    ...     ${Aktivitas}    
    ...     ${Stress}    
    ...     ${Penyakit}    
    ...     ${Keluarga}    
    ...     ${Pekerjaan}    
    ...     ${Dua_Hari_Lalu}    
    ...     ${Satu_Hari_Lalu}    
    ...     ${Beberapa_Jam_Terakhir}    
    ...     ${Waktu}    
    ...     ${Kesehatan}    
    ...     ${Obat}   
    Wait Until Element Is Visible    ${Absensi_lokasi_kerja}    20s
    Click Element    ${Absensi_lokasi_kerja}
    Sleep    1s
    wait until element is visible    ${verify_pilih_lokasi_kerja}       20s
    Sleep    1s
    element should be visible    ${verify_pilih_lokasi_kerja}
    Sleep    1s
    Input Text    ${Absensi_Search_lokasi_kerja}    ${Search_lok_kesarja}
    Sleep    1s
    wait until element is visible    ${Absensi_lokasi_kerja_first_value}    20s
    Click Element    ${Absensi_lokasi_kerja_first_value}
    Sleep    1s
    Click Radio By Question
        ...    Tidak mengkonsumsi alkohol dan obat-obatan
        ...    ${Alkohol}

    Click Radio By Question
        ...    Tidak melakukan aktivitas berlebih sebelum bekerja
        ...    ${Aktivitas}
    Sleep    1s
    Swipe
    ...    start_x=500
    ...    start_y=1500
    ...    end_x=500
    ...    end_y=500
    Sleep  1s
    Click Radio By Question
        ...    Bebas beban pikiran/stress berlebihan
        ...    ${Stress}
    Click Radio By Question
        ...    Bebas dari penyakit serius dan telah di obati
        ...    ${Penyakit}
    Click Radio By Question
        ...    Bebas dari permasalahan keluarga
        ...    ${Keluarga}
    Click Radio By Question
        ...    Memahami pekerjaan yang akan dilakukan
        ...    ${Pekerjaan}
    Sleep    1s
    Swipe
    ...    start_x=500
    ...    start_y=1500
    ...    end_x=500
    ...    end_y=500
    Sleep  1s
    Click Radio By Question
        ...    Jumlah jam tidur 2 hari yang lalu
        ...    ${Dua_Hari_Lalu}
    Click Radio By Question
        ...    Jumlah jam tidur 1 hari yang lalu
        ...    ${Satu_Hari_Lalu}
    Click Radio By Question
        ...    Jumlah jam tidur 24 jam terakhir
        ...    ${Beberapa_Jam_Terakhir}
    Sleep    1s
    # JAM BANGUN
    Log To Console    RAW DATA Waktu: ${Waktu}

    IF    '${Waktu}' == '' or ':' not in '${Waktu}'
        Fail    Format Waktu tidak valid: ${Waktu}
    END

    ${parts}=    Split String    ${Waktu}    :
    ${jam}=      Get From List    ${parts}    0
    ${menit}=    Get From List    ${parts}    1

    ${jam}=       Strip String    ${jam}
    ${menit}=     Strip String    ${menit}

    Log To Console    JAM: ${jam}
    Log To Console    MENIT: ${menit}

    Click Element    ${field_jam_bangun}
    Sleep    1s

    ${keyboard_exists}=    Run Keyword And Return Status
    ...    Wait Until Element Is Visible
    ...    ${icon_key}
    ...    5s

    wait until element is visible    ${icon_key}    20s
    IF    ${keyboard_exists}
        Click Element    ${icon_key}
        Sleep    1s
    END

    Input Text    ${set_time_field_jam}       ${jam}
    Input Text    ${set_time_field_menit}     ${menit}

    Click Element    ${btn_OKE_absensi}
    sleep    1s

    Click Radio By Question
        ...    Kondisi kesehatan
        ...    ${Kesehatan}
    Click Radio By Question
        ...    Mengkonsumsi obat-obatan
        ...    ${Obat}  
    wait until element is visible    ${btn_setuju_dan_kirim_absensi}    20s
    sleep    1s
    Click Element    ${btn_setuju_dan_kirim_absensi}
    sleep    1s
    capture page screenshot
    wait until element is visible    ${btn_Ok_absensi}    20s
    sleep    1s
    Click Element    ${btn_Ok_absensi}
    sleep    1s

Absensi Checkout
    wait until element is visible    ${btn_absensi_pulang}    20s
    sleep    1s
    capture page screenshot
    sleep    1s
    Click Element    ${btn_absensi_pulang}
    sleep    1s
    capture page screenshot
    wait until element is visible    ${verify_popup_user_Clock_out}    20s
    sleep    1s
    element should be visible    ${verify_popup_user_Clock_out}
    sleep    1s
    Click Element    ${btn_setuju_dan_kirim_absensi_pulang}








