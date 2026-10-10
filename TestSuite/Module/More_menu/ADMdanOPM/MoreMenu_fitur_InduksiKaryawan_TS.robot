*** Settings ***
Resource    ../../../../DataDriven/Absensi/data_driven_Absensi.robot
Resource    ../../../../DataDriven/MoreMenu/ADMdanOPM/data_driven_InduksiKaryawan.robot
Resource    ../../../../DataDriven/data_driven_login.robot
Resource    ../../../../Keyword/open_application_keyword.robot
Resource    ../../../../TestCase/Android_LoginLocal_TC.robot
Resource    ../../../../TestCase/Android_Logout_TC.robot
Resource    ../../../../TestCase/Module/More_menu/ADMdanOPM/Android_MoreMenu_fitur_InduksiKaryawan_TC.robot
Resource    ../../../../TestCase/Module/More_menu/Android_MoreMenu_VerifyPageAllFiture_TC.robot


*** Test Cases ***
open aplikasi dan login
    Read workbook login
    Open android application
    Login Android
akses more menu - ADM dan OPR - Indusi karyawan
    Read workbook Induksi Karyawan
    Read Workbook Absensi
    Akses more menu all services
    Akses more menu Induksi Karyawan
    Function Evidence Before Input
    Verify user induksi karyawan
    Form Input Induksi Karyawan
    Select Screening
    Select Materi Induksi
logout
    logout android
