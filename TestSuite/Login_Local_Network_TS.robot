*** Settings ***
Resource    ../TestCase/Android_LoginLocal_TC.robot
Resource    ../TestCase/Android_Logout_TC.robot
Resource    ../Keyword/open_application_keyword.robot
Resource    ../DataDriven/data_driven_login.robot


*** Test Cases ***
login
    Read workbook login
    Open Android Application
    Login Android               
    # Sleep  10s
Logout
    Swipe Chunk
    LogOut