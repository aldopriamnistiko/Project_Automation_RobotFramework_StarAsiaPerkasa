*** Settings ***
Resource    ../../../TestCase/Android_LoginLocal_TC.robot
# Resource    ../../../TestCase/Android_Logout_TC.robot
Resource    ../../../Keyword/open_application_keyword.robot
Resource    ../../../DataDriven/Quickaccess/data_driven_SOS.robot
Resource    ../../../DataDriven/data_driven_login.robot
Resource    ../../../TestCase/Module/Quick_Access/Android_QuickAccess_SOS_TC.robot
Resource    ../../../TestCase/Android_Logout_TC.robot

*** Test Cases ***
open aplication dan login
    Read workbook login
    Open Android Application
    Login Android               
Quick Access SOS
    Read workbook SOS
    Akses menu SOS
    Waktu Kejadian  ${target_tanggal}   ${waktu}
    pilih jenis kejadian
    Deskripsi kejadian
    Pelaku atau Korban
    Alat berat
    Lokasi
    detail lokasi
    kirim
Logout
    Swipe Chunk
    LogOut