*** Settings ***
Resource    ../../../TestCase/Android_LoginLocal_TC.robot
Resource    ../../../TestCase/Android_Logout_TC.robot
Resource    ../../../Keyword/open_application_keyword.robot
Resource    ../../../DataDriven/Quickaccess/data_driven_Claim.robot
Resource    ../../../DataDriven/data_driven_login.robot
Resource    ../../../TestCase/Module/Quick_Access/Android_QuickAccess_Claim_TC.robot


*** Test Cases ***
open Application dan login
    Read workbook login
    Open Android Application
    Login Android
Quick Access Claim
    Read workbook Claim
    Akses menu claim
    Form reimburse  ${jns_claim}    ${sub_claim}    ${hubungan_keluarga_form_claim}     ${tgl_claim}
Logout
    Swipe Chunk
    logout android
