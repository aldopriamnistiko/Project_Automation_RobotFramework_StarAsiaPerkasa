*** Settings ***
Resource    ../../../../TestCase/Android_LoginLocal_TC.robot
Resource    ../../../../TestCase/Android_Logout_TC.robot
Resource    ../../../../TestCase/Module/More_menu/Android_MoreMenu_VerifyPageAllFiture_TC.robot
Resource    ../../../../TestCase/Module/More_menu/ADMdanOPM/Android_MoreMenu_fitur_Stopwatch_TC.robot
Resource    ../../../../Keyword/open_application_keyword.robot
Resource    ../../../../DataDriven/data_driven_login.robot
# Resource    ../../../DataDriven/QuickAccess/data_driven_SOS.robot

*** Test Cases ***
open aplikasi dan login
    Read workbook login
    Open android application
    Login Android
akses more menu - ADM dan OPR - Stopwatch
    Akses more menu all services
    Akses more menu Stopwatch
logout
    Swipe Chunk
    logout android

