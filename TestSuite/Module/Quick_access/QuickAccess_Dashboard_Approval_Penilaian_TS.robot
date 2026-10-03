*** Settings ***
Resource    ../../../TestCase/Android_LoginLocal_TC.robot
Resource    ../../../TestCase/Android_Logout_TC.robot
Resource    ../../../Keyword/open_application_keyword.robot
# Resource    ../../../DataDriven/Quickaccess/data_driven_Approval.robot
Resource    ../../../DataDriven/data_driven_login.robot
Resource    ../../../TestCase/Module/Quick_Access/Android_QuickAccess_Approval_TC.robot
Resource    ../../../TestCase/Android_Logout_TC.robot

*** Test Cases ***
open aplikasi dan login
    Read workbook login
    Open android application
    Login Android
akses menu Approval Quick Access
    Akses menu approval
    Approval Penilaian
logout
    Swipe Chunk
    logout android


