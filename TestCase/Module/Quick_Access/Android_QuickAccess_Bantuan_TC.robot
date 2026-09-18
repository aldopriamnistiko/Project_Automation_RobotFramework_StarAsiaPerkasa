*** Settings ***
Library     AppiumLibrary
Library     String
Resource    ../../../ObjectRepository/Module/QuickAccess/Android_QuickAccess_Bantuan_Object.robot

*** Keywords ***
Akses menu Bantuan
    Wait Until Element Is Visible    ${btn_bantuan}            20s
    Sleep                            1s
    Capture Page Screenshot          
    Sleep                            1s
    Element Should Be Visible        ${btn_bantuan}
    Click Element                    ${btn_bantuan}
    Wait Until Element Is Visible    ${verify_page_bantuan}    20s
    Sleep                            1s
    Element Should Be Visible        ${verify_page_bantuan}
    Sleep                            1s
    Capture Page Screenshot          
Akses sub menu Chat Virtual
    Wait Until Element Is Visible    ${btn_chat_virtual}       20s
    Sleep                            1s
    Click Element                    ${btn_chat_virtual}
    Sleep                            1s
    Capture Page Screenshot          
    Sleep                            1s
    Wait Until Element Is Visible    ${verify_chat_virtual}    20s
    Sleep                            1s
    Input Text                       
    ...                              ${field_chat_support}
    ...                              ${chat_asist_virtual}
    Sleep                            1s
    Swipe
    ...                              start_x=914
    ...                              start_y=2131
    ...                              end_x=500
    ...                              end_y=1600
    Sleep                            1s
    Click Element                    ${btn_enter_to_asking}
    Sleep                            1s
    Capture Page Screenshot          
    Sleep                            1s

    # FOR              ${i}    IN RANGE    2
    press Keycode                    4
    Sleep                            1s
    Capture Page Screenshot  
    Sleep  1s
    # END
    Wait Until Element Is Visible    
    ...                              ${btn_Akhiri_chat}
    ...                              20s
    Sleep                            1s
    Click Element                    ${btn_Akhiri_chat}
    Sleep                            1s
    Capture Page Screenshot  
    Sleep  1s
    # Press Keycode                    4
    # Sleep                            1s
Akses sub menu Laporkan Masalah
    Wait Until Element Is Visible    ${btn_laporkan_masalah}       20s
    Sleep                            1s
    Click Element                    
    ...                              ${btn_laporkan_masalah}
    Sleep                            1s
    Wait Until Element Is Visible    ${verify_laporkan_masalah}    20s
    Sleep                            1s
    Capture Page Screenshot  
    Sleep  1s
# judul
    Element Should Be Visible        ${verify_judul}
    Sleep                            1s
    Input Text                       
    ...                              ${field_judul}
    ...                              ${judul}
    Sleep                            1s
# departemen
    Element Should Be Visible        ${verify_departemen}
    Sleep                            1s
    Click Element                    
    ...                              ${field_departemen}
    Sleep                            1s
    Wait Until Element Is Visible    ${field_pilih_departemen}     20s
    Sleep                            1s
    Input Text                       
    ...                              ${field_pilih_departemen}
    ...                              ${departemen}
    Sleep                            1s
    Wait Until Element Is Visible    
    ...                              ${result_departemen}
    ...                              20s
    Sleep                            1s
    Click Element                    ${result_departemen}
    Sleep                            1s
# desk
    Wait Until Element Is Visible    ${verify_deskripsi}           20s
    Sleep  1s
    Element Should Be Visible  ${verify_deskripsi}  
    Sleep  1s
    Input Text  ${field_deskripsi}  ${deskripsi}
    Sleep  1s
# screen shot ya
    Element Should Be Visible  ${verify_evidence_screenshot_masalah}
    Sleep  1s
    Click Element  ${field_evidence_screenshot_masalah}
    Sleep  1s
    Input Text  
    ...     ${search_option}
    ...     ${screenshot}
    Sleep  1s
    Click Element  ${result_option}
    Sleep  1s
    Capture Page Screenshot
    Sleep  1s
# field unggah foto
    Swipe
    ...    start_x=500
    ...    start_y=1800
    ...    end_x=500
    ...    end_y=500
    Sleep  1s
    Wait Until Element Is Visible  
    ...     ${verify_gambar}
    Sleep  1s
    Capture Page Screenshot  
    Sleep  1s
# popup permission 
    Wait Until Element Is Visible  
    ...     ${field_unggahFoto}
    ...     20s
    Sleep  1s
    Click Element  
    ...     ${field_unggahFoto}
    Sleep  1s
    Capture Page Screenshot  
    Sleep  1s
    Click Element  
    ...     ${btn_ambil_foto}
    Sleep  1s
    Capture Page Screenshot  
    Sleep  1s
     
    ${camera_popup}=    Run Keyword And Return Status
    ...    Wait Until Element Is Visible
    ...    xpath=//*[contains(@text,"While using the app")]
    ...    2s

    IF    ${camera_popup}
        Click Element    xpath=//*[contains(@text,"While using the app")]
        Log To Console    Camera permission diizinkan
    END
# unggah foto step
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
    Capture Page Screenshot  
    Sleep  1s
    Wait Until Element Is Visible 
    ...     ${btn_kirim_LAPORKAN}
    ...     20s
    Sleep  1s
    Click Element   ${btn_kirim_LAPORKAN}
    Sleep  1s
    wait Until Element Is Visible  
    ...     ${BTN_OK_LAPORKAN}
    ...     20s
    Sleep  1s
    Click Element   ${BTN_OK_LAPORKAN}
    Sleep  1s
Akses sub menu Laporan saya 
    Wait Until Element Is Visible  ${btn_Laporan_saya}  20s
    Sleep  1s
    Click Element  ${btn_Laporan_saya}
    Sleep  1s
    Wait Until Element Is Visible  ${verify_header_Laporan_saya}    20s
    Sleep  1s
    Element Should Be Visible  ${verify_header_Laporan_saya}
    Sleep  1s
        ${last_item}=        Set Variable    ${EMPTY}
    ${total_verified}=   Set Variable    0

    WHILE    True
        ${items}=    Get WebElements
        ...    xpath=//android.view.ViewGroup[contains(@content-desc,'Operation')]

        ${count}=    Get Length    ${items}

        Log To Console    ========================================
        Log To Console    Element Operation ditemukan: ${count}

        IF    ${count} == 0
            Log To Console    Tidak ada element Operation
            BREAK
        END

        FOR    ${item}    IN    @{items}
            ${desc}=    Get Element Attribute    ${item}    content-desc
            Log To Console    Verify laporan: ${desc}
            Should Not Be Empty    ${desc}

            ${total_verified}=    Evaluate    ${total_verified} + 1
        END

        Log To Console    Total element verified sejauh ini: ${total_verified}

        # Ambil item terakhir
        ${current_last}=    Get Element Attribute
        ...    ${items}[-1]
        ...    content-desc

        Log To Console    Last item: ${current_last}

        # Kalau item terakhir tidak berubah setelah scroll
        # berarti sudah sampai bawah
        IF    '${current_last}' == '${last_item}'
            Log To Console    List sudah habis
            BREAK
        END

        ${last_item}=    Set Variable    ${current_last}

        Swipe    
        ...     start_x=500    
        ...     start_y=1500    
        ...     end_x=500    
        ...     end_y=500    
        ...     duration=500ms
        Sleep    1s
    END

    Log To Console    ========================================
    Log To Console    TOTAL ELEMENT OPERATION VERIFIED: ${total_verified}
        Swipe    
        ...     start_x=500    
        ...     start_y=500    
        ...     end_x=500    
        ...     end_y=1500    
        ...     duration=500ms
    Sleep  1s
    Wait Until Element Is Visible  ${list_laporan_saya}     20s
    Sleep  1s
    Click Element  
    ...     ${list_laporan_saya}
    Sleep  1s
    Capture Page Screenshot  
    Sleep  1s
# lampirkan
    Wait Until Element Is Visible  
    ...     ${btn_lampirkan}
    ...     20s
    Sleep  1s
    Click Element  
    ...     ${btn_lampirkan}
    Sleep  1s
    Capture Page Screenshot  
    Sleep  1s
    Click Element  
    ...     ${btn_sumber_kamera}
    Sleep  1s
    Capture Page Screenshot  
    Sleep  1s
     
    ${camera_popup}=    Run Keyword And Return Status
    ...    Wait Until Element Is Visible
    ...    xpath=//*[contains(@text,"While using the app")]
    ...    2s

    IF    ${camera_popup}
        Click Element    xpath=//*[contains(@text,"While using the app")]
        Log To Console    Camera permission diizinkan
    END
# unggah foto step
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
    Swipe
    ...                              start_x=914
    ...                              start_y=2131
    ...                              end_x=500
    ...                              end_y=1600
    Sleep                            1s
    Click Element  ${btn_kirim_chat_laporan_saya}
    Sleep  1s
    Capture Page Screenshot  
    Sleep  1s
    Wait Until Element Is Visible   ${field_pesan_laporan_saya}     20s
    Sleep  1s
    Input Text  
    ...     ${field_pesan_laporan_saya}
    ...     ${ValuePesanLaporanSaya}
    Sleep  1s
    Click Element  ${btn_kirim_chat_laporan_saya}
    Sleep  1s
    Capture Page Screenshot  
    Sleep  1s
    Click Element  ${btn_tutup_laporan_saya}
    Sleep  1s
    wait until Element Is Visible  
    ...     ${PopupKonfirmTutupTiket}   20s
    Sleep  1s
    Click Element  ${BtnLanjutkanTutupLaporanSaya}
    Sleep  1s
    Capture Page Screenshot  
    Sleep  1s
    Press Keycode   4
    Sleep  1s
    Capture Page Screenshot  
    Sleep  1s
Akses sub menu Beri Masukan
    Wait Until Element Is Visible  ${btn_BeriMasukan}  20s
    Sleep  1s
    Click Element  ${btn_BeriMasukan}
    Sleep  1s
    Wait Until Element Is Visible  ${verify_header_BeriMasukan}    20s
    Sleep  1s
    Element Should Be Visible  ${verify_header_BeriMasukan}
    Sleep  1s
    Capture Page Screenshot
    Sleep  1s
    Input Text  ${field_judul_BeriMasukan}  ${judul_BeriMasukan}
    Sleep  1s
    Input Text  ${field_deskripsi_BeriMasukan}  ${deskripsi}
    Sleep  1s
    Click Element  ${lampirkan_bukti_BeriMasukan}
    Sleep  1s
    Input Text  ${search_option_BeriMasukan}  ${screenshot}
    Sleep  1s
    Click Element  ${result_option_BeriMasukan}
    Sleep  1s
    Swipe
    ...    start_x=500
    ...    start_y=1800
    ...    end_x=500
    ...    end_y=500
    Sleep  1s
    Capture Page Screenshot
    Sleep  1s
    # unggah foto step
    Click Element  
    ...     ${field_unggahFoto}
    Sleep  1s
    Capture Page Screenshot  
    Sleep  1s
    Click Element  
    ...     ${btn_ambil_foto}
    Sleep  1s
    Capture Page Screenshot  
    Sleep  1s
     
    ${camera_popup}=    Run Keyword And Return Status
    ...    Wait Until Element Is Visible
    ...    xpath=//*[contains(@text,"While using the app")]
    ...    2s

    IF    ${camera_popup}
        Click Element    xpath=//*[contains(@text,"While using the app")]
        Log To Console    Camera permission diizinkan
    END

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
    Capture Page Screenshot
    Sleep  1s
    click Element  ${btn_kirim_LAPORKAN}
    Sleep  1s
    Wait Until Element Is Visible  ${BTN_OK_LAPORKAN}  20s
    Sleep  1s
    Capture Page Screenshot
    Sleep  1s
    Click Element  ${BTN_OK_LAPORKAN}
    Sleep  1s
    Capture Page Screenshot
    Sleep  1s







    


