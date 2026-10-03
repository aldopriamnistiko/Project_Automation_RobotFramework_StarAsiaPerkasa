*** Settings ***
Resource    ../../../TestCase/Android_LoginLocal_TC.robot
Resource    ../../../TestCase/Android_Logout_TC.robot
Resource    ../../../TestCase/Module/More_menu/MoreMenu_VerifyPageAllFiture_TC.robot
Resource    ../../../TestCase/Android_Logout_TC.robot
Resource    ../../../Keyword/open_application_keyword.robot
Resource    ../../../DataDriven/data_driven_login.robot

*** Test Cases ***
open aplikasi dan login
    Read workbook login
    Open android application
    Login Android
Verify All Fiture More Menu
    [Documentation]    Verify All Fiture More Menu
    akses more menu all services
    Verify All Fiture More Menu
logout
    Swipe Chunk
    logout android