*** Settings ***
Resource    ../../../../TestCase/Android_LoginLocal_TC.robot
Resource    ../../../../TestCase/Android_Logout_TC.robot
Resource    ../../../../TestCase/Module/More_menu/ADMdanOPM/Android_MoreMenu_fitur_DAR_TC.robot
Resource    ../../../../Keyword/open_application_keyword.robot
Resource    ../../../../DataDriven/data_driven_login.robot
Resource    ../../../../DataDriven/MoreMenu/ADMdanOPM/data_driven_DAR.robot
Resource    ../../../../TestCase/Module/More_menu/Android_MoreMenu_VerifyPageAllFiture_TC.robot

*** Test Cases ***
open aplikasi dan login
    Read workbook login
    Open android application
    Login Android
akses more menu - ADM dan OPR - DAR
    Read workbook DAR
    Akses more menu all services
    Akses more menu DAR     ${tglAktivitas}
    Sleep  7s