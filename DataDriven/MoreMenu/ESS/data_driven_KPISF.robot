*** Settings ***
Library    RPA.Excel.Files
Library    Collections

*** Keywords ***
Read workbook KPISF
    Open Workbook     ${CURDIR}/../../KPI_SF.xlsx
         ${data}=          Read Worksheet                 header=true
    Close Workbook

    ${row}=    get from List    ${data}    0

    Set Suite Variable  ${Date_1}     ${row}[Date_KPISF1]
    Set Suite Variable  ${Date_2}   ${row}[Date_KPISF2]