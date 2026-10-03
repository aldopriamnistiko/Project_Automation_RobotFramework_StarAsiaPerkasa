*** Settings ***
Resource    ../../../TestCase/Android_LoginLocal_TC.robot
Resource    ../../../Keyword/open_application_keyword.robot
Resource    ../../../DataDriven/data_driven_login.robot
Resource    ../../../DataDriven/Quickaccess/data_driven_Sign.robot
Resource    ../../../TestCase/Module/Quick_Access/Android_QuickAccess_Sign_TC.robot
Resource    ../../../TestCase/Android_Logout_TC.robot

*** Test Cases ***
open aplikasi dan login
    Read workbook login
    Open android application
    Login Android
Akses menu Sign In Quick Access
    [Documentation]                  Akses menu Sign In Quick Access  
    read workbook Sign
    Akses menu Sign In Quick Access 
Logout
    swipe Chunk
    logout android  












