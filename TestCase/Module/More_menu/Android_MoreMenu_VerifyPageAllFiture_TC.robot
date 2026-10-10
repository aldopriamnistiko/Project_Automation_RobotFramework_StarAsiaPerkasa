*** Settings ***
Library     AppiumLibrary
Library     String
Resource    ../../../ObjectRepository/Module/More_menu/VerifyAllFiture_Object/Android_MoreMenu_VerifyAllFiture_Object.robot

*** Keywords ***
Akses more menu all services
    Wait Until Element Is Visible       ${btn_more_menu}                             20s
    Click Element                       ${btn_more_menu}
    Sleep  1s
    Capture Page Screenshot  
    Sleep  1s
Akses more menu SOS Laporkan Kejadian
    Wait Until Element Is Visible  ${fitur_sos_laporkan_kejadinan}  20s
    Sleep  1s
    Click Element  ${fitur_sos_laporkan_kejadinan}
    Sleep  1s
Verify All Fiture More Menu
    Sleep                               2s
    Wait Until Page Contains Element    ${verify_header_page_AllService}             20s
    Element Should Be Visible           ${verify_header_page_AllService}
    Element Should Be Visible           ${Verify_Quick_Access_All_Services}
    Element Should Be Visible           ${verify_Laporkan_Kejadian_all_services} 
    # ADM&OPR
    Element Should Be Visible           ${fitur_DAR}                                 
    Element Should Be Visible           ${fitur_induksi_karyawan}
    Element Should Be Visible           ${fitur_dokumen_perusahaan}
    Element Should Be Visible           ${fitur_stopwatch}                           
    Element Should Be Visible           ${fitur_hourly_production}
    Sleep                               1s
    swipe
        ...                                 start_x=500
        ...                                 start_y=1800
        ...                                 end_x=500
        ...                                 end_y=300
    Sleep                               2s
    Wait Until Page Contains Element    ${fitur_tanda_tangan_dokumen}                       20s
    Element Should Be Visible           ${fitur_tanda_tangan_dokumen}
    Element Should Be Visible           ${fitur_approval_list}                       
    # ESS
    Element Should Be Visible           ${fitur_KPI_SF}                              
    Element Should Be Visible           ${fitur_catatan_kehadiran}
    Element Should Be Visible           ${fitur_pengajuan_cuti}
    Element Should Be Visible           ${fitur_benefit_claim}                       
    Element Should Be Visible           ${fitur_catatan_HM}
    Element Should Be Visible           ${fitur_izin_resmi}
    Element Should Be Visible           ${fitur_saham}
    Sleep                               1s
    swipe
        ...                                 start_x=500
        ...                                 start_y=1800
        ...                                 end_x=500
        ...                                 end_y=300
    Sleep                               2s
    Wait Until Page Contains Element    ${fitur_koperasi}                            20s
    Element Should Be Visible           ${fitur_koperasi}
    Element Should Be Visible           ${fitur_business_trip}
    Element Should Be Visible           ${fitur_reimbursement}
    # SAP   
    Element Should Be Visible           ${fitur_lapor_tta}
    Element Should Be Visible           ${fitur_lapor_kta}
    Element Should Be Visible           ${fitur_inspeksi_k3l}
    Element Should Be Visible           ${fitur_observasi_k3l}
    Element Should Be Visible           ${fitur_safety_meeting}
    Sleep                               1s
    swipe
        ...                                 start_x=500
        ...                                 start_y=1800
        ...                                 end_x=500
        ...                                 end_y=300
    Sleep                               2s    
    Wait Until Element Is Visible  ${fitur_pekerjaan_kritis}
    Element Should Be Visible  ${fitur_pekerjaan_kritis}
    Element Should Be Visible  ${fitur_wakeup_call}
    Element Should Be Visible  ${fitur_couching & counseling}
    Element Should Be Visible  ${fitur_unit_status}
    Element Should Be Visible  ${fitur_sap_achievement}
    Sleep                               1s
    Element Should Be Visible  ${fitur_safety_performance}
    Element Should Be Visible  ${fitur_sap_closing_rate}
     Sleep                               1s
    swipe
        ...                                 start_x=500
        ...                                 start_y=1800
        ...                                 end_x=500
        ...                                 end_y=300
    Sleep                               2s      
    Wait Until Element Is Visible  ${fitur_ofa_device_status}  20s
    Sleep  1s
    Element Should Be Visible  ${fitur_ofa_device_status}  
    Element Should Be Visible  ${fitur_ofa}
    Element Should Be Visible  ${fitur_waterfall_analysis}
    Element Should Be Visible  ${fitur_equipment_activity}
    Element Should Be Visible  ${fitur_dokumen_k3plm}  
    Element Should Be Visible  ${fitur_qcc_improvement}
    Element Should Be Visible  ${fitur_awards}
    Element Should Be Visible  ${fitur_pusat_bantuan}  
    Sleep  1s
    Press Keycode  4
    Sleep  1s

      
      
    
      
      
    
    
      
    
      
    