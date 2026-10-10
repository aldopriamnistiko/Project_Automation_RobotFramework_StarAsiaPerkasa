*** Settings ***
Resource    ../../../../DataDriven/data_driven_login.robot
Resource    ../../../../DataDriven/MoreMenu/ESS/data_driven_KPISF.robot
Resource    ../../../../Keyword/open_application_keyword.robot
Resource    ../../../../TestCase/Android_LoginLocal_TC.robot
Resource    ../../../../TestCase/Android_Logout_TC.robot
Resource    ../../../../TestCase/Module/More_menu/ESS/Android_MoreMenu_fitur_KPI_SF_TC.robot
Resource    ../../../../TestCase/Module/More_menu/Android_MoreMenu_VerifyPageAllFiture_TC.robot

*** Test Cases ***
open aplikasi dan login
    Read workbook login
    Open android application
    Login Android
akses more menu - ESS - KPI SF
    Read workbook KPISF
    Akses more menu all services
    Swipe UP
    Akses monre menu KPISF
    Set date Key Performance Indicator  ${btn_tanggal_1}     ${Date_1}   
    Set date Key Performance Indicator  ${btn_tanggal_2}     ${Date_2}   
    next step
logout
    Swipe Chunk
    logout android