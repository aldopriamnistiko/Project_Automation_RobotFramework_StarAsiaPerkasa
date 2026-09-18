*** Settings ***
Library    RPA.Excel.Files
Library    Collections

*** Keywords ***
Read workbook login
    Open Workbook     ${CURDIR}/Login.xlsx
    ${data}=          Read Worksheet          header=true
    Close Workbook

    Log To Console    DATA = ${data}

    ${row}=         Get From List    ${data}    1

    Log To Console    ROW = ${row}

    Set Suite Variable    ${search_lokasi}           ${row}[search]
    Set Suite Variable    ${nrp}                     ${row}[NRP]
    Set Suite Variable    ${pass}                    ${row}[Password]
    Set Suite Variable    ${nama_user}               ${row}[name]
