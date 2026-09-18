*** Settings ***
Resource    ../TestCase/Android_LoginLocal_TC.robot
Resource    ../TestCase/Android_Logout_TC.robot
Resource    ../Keyword/open_application_keyword.robot
Resource    ../DataDriven/data_driven_login.robot
Resource    ../TestCase/StepGroup/Android_VerifyallDashboardComponents_TC.robot

*** Test Cases ***
login
    Read workbook login
    Open Android Application
    Login Android               
verify dashboard
    Verify Dashboard After Login
Logout
    Swipe Chunk
    LogOut
