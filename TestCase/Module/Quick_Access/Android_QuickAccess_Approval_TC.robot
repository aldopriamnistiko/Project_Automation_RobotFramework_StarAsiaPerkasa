*** Settings ***
library     AppiumLibrary
library     String
Resource    ../../../ObjectRepository/Module/QuickAccess/Android_QuickAccess_Approval_Object.robot
Resource    ../../../Keyword/open_application_keyword.robot

*** Keywords ***
Akses menu approval
    Wait Until Element Is Visible    ${btn_Approval_QuickAccess}    20s
    Sleep                            1s
    Capture Page Screenshot 
    Sleep                            1s
    Click Element                    ${btn_Approval_QuickAccess}
    Sleep                            1s
    Capture Page Screenshot          
    Element Should Be Visible        ${verify_page_Approval}
    Sleep                            1s
Approval P2H
    Wait Until Element Is Visible    ${btn_P2H_Approval}            20s
    Sleep                            1s
    Click Element                    ${btn_P2H_Approval}
    Sleep                            1s
    Wait Until Element Is Visible    ${verify_page_P2H_Approval}    20s
    Sleep                            1s
    Element Should Be Visible        ${verify_page_P2H_Approval}
    Sleep                            1s
    Click Option By Question         
    ...                              PERSETUJUAN
    ...                              ${persetujuan_P2H}
    Sleep                            1s
    Click option
    ...                              Keterangan reject
    ...                              ${ket_reject}
    Sleep                            5s
    Click Element                    ${btn_kirim_P2H}
    Sleep                            1s
    Capture Page Screenshot          
    Click Element                    ${btn_ok_persetujuan_p2h}
    Sleep                            1s
    Capture Page Screenshot
Approval Penilaian
    Wait Until Element Is Visible    ${btn_Penilaian_Approval}            20s
    Sleep                            1s
    Element Should Be Visible        ${btn_Penilaian_Approval} 
    Sleep                            1s
    Click Element                    
    ...                              ${btn_Penilaian_Approval}
    Sleep                            2s
    Capture Page Screenshot          
    Wait Until Element Is Visible    ${verify_penilaian_akhir_kontrak}    20s
    Sleep                            1s
    Element Should Be Visible        ${verify_penilaian_akhir_kontrak}
    Sleep                            1s
    Capture Page Screenshot 
    Sleep                            1s
    Click Element                    
    ...                              ${hyperlink_penilaian_approval}
    Wait Until Element Is Visible  ${verify_popup_hyperlink_penilaian}  20s
    Sleep  1s
    Element Should Be Visible  ${verify_popup_hyperlink_penilaian}
    Sleep  1s
    Click Element  ${btn_buka_popup_penilaian}
    Sleep                            5s
    Capture Page Screenshot    
    FOR     ${i}      IN RANGE      2
        Press Keycode                    4     
    END
    Sleep  1s
Approval Hazard
    Wait Until Element Is Visible    ${btn_hazard_penilaian}            50s
    Sleep                            1s
    Click Element                    ${btn_hazard_penilaian}
    Sleep                            1s
    Capture Page Screenshot  
    wait Until Element Is Visible    ${verify_hazard_Approval}          20s
    Sleep                            1s
    Element Should Be Visible        ${verify_hazard_Approval}          
    Sleep                            1s
    Capture Page Screenshot  
    FOR                              ${i}                               IN RANGE    2
        Swipe
        ...                              start_x=500
        ...                              start_y=1800
        ...                              end_x=500
        ...                              end_y=500
    END
    Sleep                            1s
    Capture Page Screenshot  
    Wait Until Element Is Visible    ${btn_action_list_hazard}          20s
    Sleep                            1s                                 
    Click Element                    ${btn_action_list_hazard}
    Sleep                            1s
    Wait Until Element Is Visible    ${verify_page HAZARD_Follow_UP}    20s    
    Sleep  1s
    Element Should Be Visible       ${verify_page HAZARD_Follow_UP}
    Sleep  1s
    Capture Page Screenshot  
    Sleep  1s
    Input Text  
    ...     ${field_tindakan_perbaikan}  
    ...     ${ket_reject}
    Sleep  1s
    ${locator}=    Set Variable    xpath=//*[@text="${search_status}"]
        Wait Until Element Is Visible    ${locator}    10s
    Click Element    ${locator}
    # Click Element  ${Option_status_hazard}
    # Sleep  1s
    # Wait Until Element Is Visible  ${search_status_hazard}  20s
    # Sleep  1s
    # Input Text  
    # ...     ${search_status_hazard}
    # ...     ${search_status}
    # Sleep  1s
    # Click Element  
    # ...     ${first_result_search_hazard_status}
take photo
    Sleep  1s
    Swipe
        ...                              start_x=500
        ...                              start_y=1500
        ...                              end_x=500
        ...                              end_y=500
    Sleep  1s
    wait until Element Is Visible  ${Unggah_bukti}    20s
    Capture Page Screenshot  
    Sleep  
    ...     2s
    Click Element   ${Unggah_bukti}
    Sleep  2s
    Click Element  
    ...     ${btn_camera}
    Sleep  2s
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
        # Sleep  2s
        # Press Keycode  
        # ...  4
        Swipe  
        ...     start_x=500
        ...     start_y=1000
        ...     end_x=500
        ...     end_y=500  
        Sleep  1s
        Capture Page Screenshot
        Click Element  ${btn_kirim_laporan_hazard}
        Wait Until Element Is Visible  ${verify_popup_Konfirm_approveHazard}  20s
        Sleep  1s
        Capture Page Screenshot
        Element Should Be Visible  ${verify_popup_Konfirm_approveHazard}
        Sleep  1s
        Click Element  ${btn_kirim_popup_hazard}
        Sleep  1s
        Capture Page Screenshot
        Wait Until Element Is Visible  ${verify_popup_closing_KTA}  20s
        Sleep  1s
        Click Element  ${btn_selesai_approval_Hazard}
        Sleep  1s
        

        
        