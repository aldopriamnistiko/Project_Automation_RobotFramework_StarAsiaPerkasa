*** Settings ***
Library    RPA.Excel.Files
Library    Collections


*** Keywords ***
Read workbook Claim
    open workbook     ${CURDIR}/../Claim.xlsx
    ${data}=          Read Worksheet             header=true
    Close Workbook

    Log To Console    DATA= ${data}

    ${row}=    Get From List    ${data}    0
    ${row2}=    Get From List    ${data}    2
    ${row5}=    Get From List    ${data}    5
    Log To Console    
    ...               Value Row = ${row}

    Set Suite Variable    ${jns_claim}                       ${row2}[jenis_claim]
    Set Suite Variable    ${sub_claim}                       ${row}[Sub_claim_1]
    Set Suite Variable    ${hubungan_keluarga_form_claim}    ${row}[Hub_Keluarga]
    Set Suite Variable    ${tgl_claim}                       ${row}[tanggal]
