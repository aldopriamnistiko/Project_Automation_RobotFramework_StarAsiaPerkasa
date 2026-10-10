*** Settings ***
Resource    ../../../../DataDriven/data_driven_login.robot
Resource    ../../../../DataDriven/Quickaccess/data_driven_Kehadiran.robot
Resource    ../../../../Keyword/open_application_keyword.robot
Resource    ../../../../TestCase/Android_LoginLocal_TC.robot
Resource    ../../../../TestCase/Android_Logout_TC.robot
Resource    ../../../../TestCase/Module/Quick_Access/Android_QuickAccess_Kehadiran_TC.robot
Resource    ../../../../TestCase/Module/More_menu/Android_MoreMenu_VerifyPageAllFiture_TC.robot

*** Test Cases ***
open aplikasi dan login
    Read workbook login
    Open android application
    Login Android
akses more menu - ESS - Catatan Kehadiran
    Read Workbook Keadiran
    Akses more menu all services
    Swipe UP
    akses menu kehadiran
    Form Revisi Kehadiran  ${tgl_kehadiran}    ${checkIn}  ${checkOut} 
    Swipe back
logout
    Swipe Chunk
    logout android