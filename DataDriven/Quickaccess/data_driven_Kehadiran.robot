*** Settings ***
Library    RPA.Excel.Files
Library    Collections

*** Keywords ***
Read Workbook Keadiran
    Open Workbook     ${CURDIR}/../Kehadiran.xlsx
    ${data}=          read Worksheet                 header=true
    Close Workbook

    Log To Console    DATA = ${data}

    ${row}=     Get From List    ${data}    0
    # ${row1}=    Get From List    ${data}    1
    # ${row2}=    Get From List    ${data}    2

    Log To Console    
    ...               ROW Approval = ${row}

    Set Suite Variable    ${tgl_kehadiran}      ${row}[Tgl_Kehadiran]
    Set Suite Variable    ${checkIn}            ${row}[Check_in]
    Set Suite Variable    ${checkOut}           ${row}[Check_out]
    Set Suite Variable    ${alasan}             ${row}[Alasan]
    Set Suite Variable    ${DeskripsiAlasan}    ${row}[Desk_alasan]