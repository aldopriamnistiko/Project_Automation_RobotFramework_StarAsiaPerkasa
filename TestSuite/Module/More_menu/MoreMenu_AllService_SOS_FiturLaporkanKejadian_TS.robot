
*** Settings ***
Resource    ../../../TestCase/Android_LoginLocal_TC.robot
Resource    ../../../TestCase/Android_Logout_TC.robot
Resource    ../../../TestCase/Module/More_menu/MoreMenu_VerifyPageAllFiture_TC.robot
Resource    ../../../TestCase/Module/Quick_Access/Android_QuickAccess_SOS_TC.robot
Resource    ../../../Keyword/open_application_keyword.robot
Resource    ../../../DataDriven/data_driven_login.robot
Resource    ../../../DataDriven/QuickAccess/data_driven_SOS.robot

*** Test Cases ***
open aplikasi dan login
    Read workbook login
    Open android application
    Login Android
akses more menu - all services SOS Laporkan
    Akses more menu all services
    Read workbook SOS
    Akses more menu SOS Laporkan Kejadian
    Input form SOS
    Waktu Kejadian  ${target_tanggal}   ${waktu}
    pilih jenis kejadian
    Deskripsi kejadian
    Pelaku atau Korban
    Alat berat
    Lokasi
    detail lokasi
    kirim
    Back after create form SOS
logout
    Swipe Chunk
    logout android
