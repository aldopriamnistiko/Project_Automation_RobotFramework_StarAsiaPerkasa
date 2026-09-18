*** Settings ***
Resource    ../../../TestCase/Android_LoginLocal_TC.robot
# Resource    ../../../TestCase/Android_Logout_TC.robot
Resource    ../../../Keyword/open_application_keyword.robot
Resource    ../../../DataDriven/Quickaccess/data_driven_Bantuan.robot
Resource    ../../../DataDriven/data_driven_login.robot
Resource    ../../../TestCase/Module/Quick_Access/Android_QuickAccess_Bantuan_TC.robot
Resource    ../../../TestCase/Android_Logout_TC.robot

*** Test Cases ***
open Application dan login
    Read workbook login
    Open Android Application
    Login Android
Quick Access Bantuan
    Read Workbook Bantuan
    Akses menu Bantuan
    Akses sub menu Chat Virtual
Logout
    Swipe Chunk
    LogOut