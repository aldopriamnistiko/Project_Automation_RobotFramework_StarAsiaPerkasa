*** Settings ***
Resource    ../../../../../DataDriven/data_driven_login.robot
Resource    ../../../../../DataDriven/Quickaccess/data_driven_Approval.robot
Resource    ../../../../../Keyword/open_application_keyword.robot
Resource    ../../../../../TestCase/Module/Quick_Access/Android_QuickAccess_Approval_TC.robot
Resource    ../../../../../TestCase/Android_LoginLocal_TC.robot
Resource    ../../../../../TestCase/Android_Logout_TC.robot
Resource    ../../../../../TestCase/Module/More_menu/Android_MoreMenu_VerifyPageAllFiture_TC.robot

*** Test Cases ***
open aplikasi dan login
    Read workbook login
    Open android application
    Login Android
# akses more menu - ADM dan OPR - Approval Hazard
#     Read workbook Approval 
#     Akses more menu all services
#     Swipe UP
#     Akses menu approval
#     Approval Hazard
#     take photo
#     Swipe back
#     Sleep  7s
    # Open Android Application
# logout
#     Swipe Chunk
#     logout android
    