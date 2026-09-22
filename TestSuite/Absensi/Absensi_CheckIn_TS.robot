*** Settings ***
Resource    ../../TestCase/Android_LoginLocal_TC.robot
# Resource    ../../../TestCase/Android_Logout_TC.robot
Resource    ../../Keyword/open_application_keyword.robot
Resource    ../../DataDriven/data_driven_login.robot
Resource    ../../DataDriven/Absensi/data_driven_Absensi.robot
Resource    ../../TestCase/Absensi/Android_Absensi_TC.robot

*** Test Cases ***
open application and login
    read workbook login
    open android application
    login android
absesnsi checkin
    Read Workbook Absensi
    Absensi Checkin
    Verify User Clock In
    Informasi Umum      
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
    sleep    7s