*** Settings ***
Library    RPA.Excel.Files
Library    Collections

*** Keywords ***
Read workbook Hourly Production
    Open Workbook     ${CURDIR}/../../Hourly Production.xlsx
    ${data}=          Read Worksheet                            header=true
    Close Workbook

    Log To Console    Log Data = ${data}

    ${row}=    Get From List    ${data}    0

    Log To Console    Log Row yang dibaca = ${row}

    Set Suite Variable    ${Date_HourlyProduction}    ${row}[Date_Hour_Prod]
    Set Suite Variable    ${Search}                   ${row}[Search]
    Set Suite Variable    ${targetFilter}                   ${row}[filter]
    Set Suite Variable    ${tahun}                    ${row}[Tahun]
    Set Suite Variable    ${bulan}                    ${row}[Bulan]
    