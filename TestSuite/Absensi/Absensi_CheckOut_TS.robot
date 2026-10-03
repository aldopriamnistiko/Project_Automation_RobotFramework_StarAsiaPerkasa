*** Settings ***
Resource    ../../TestCase/Android_LoginLocal_TC.robot
Resource    ../../Keyword/open_application_keyword.robot
Resource    ../../DataDriven/data_driven_login.robot
Resource    ../../DataDriven/Absensi/data_driven_Absensi.robot
Resource    ../../TestCase/Absensi/Android_Absensi_TC.robot
Resource    ../../TestCase/Android_Logout_TC.robot

*** test Cases ***
open application and login
    read workbook login
    open android application
    login android
absesnsi checkin
    absensi checkout
logout
    swipe chunk
    logout android