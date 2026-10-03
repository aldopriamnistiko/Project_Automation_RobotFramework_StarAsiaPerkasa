*** Settings ***
library    RPA.Excel.Files
library    Collections

*** keywords ***
Read workbook Approval
    Open Workbook     ${CURDIR}/../Approval List.xlsx
    ${data}=          Read Worksheet                     header=true
    Close Workbook

    Log To Console    DATA = ${data}

    ${row}=     Get From List    ${data}    0
    ${row1}=    Get From List    ${data}    1
    ${row2}=    Get From List    ${data}    2

    Log To Console    
    ...               ROW Approval = ${row}

    Set Suite Variable    ${persetujuan_P2H}    ${row2}[Persetujuan]
    Set Suite Variable    ${ket_reject}         ${row1}[Keterangan_Reject]
    Set Suite Variable    ${search_status}      ${row}[Search]