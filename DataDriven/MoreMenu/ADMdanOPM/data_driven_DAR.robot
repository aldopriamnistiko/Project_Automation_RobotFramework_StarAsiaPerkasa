*** Settings ***
Library    RPA.Excel.Files
Library    Collections

*** Keywords ***
Read workbook DAR
    Open Workbook     ${CURDIR}/../../DAR.xlsx
    ${data}=          Read Worksheet              header=true
    Close Workbook

    Log To Console    DATA = ${data}

    ${row}=    Get From List    ${data}    0

    Log To Console    
    ...               ROW DAR = ${row}

    Set Suite Variable    ${jenisWO}          ${row}[Jenis_WO]
    Set Suite Variable    ${section}          ${row}[Section]
    Set Suite Variable    ${tglAktivitas}     ${row}[Tanggal_Aktivitas]
    Set Suite Variable    ${keteranganDAR}    ${row}[Keterangan]