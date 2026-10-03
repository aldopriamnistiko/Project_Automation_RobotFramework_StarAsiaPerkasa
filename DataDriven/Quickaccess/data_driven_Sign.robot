*** Settings ***
library    RPA.Excel.Files
library    Collections

*** keywords ***
Read workbook Sign
    Open Workbook     ${CURDIR}/../Sign.xlsx
    ${data}=          Read Worksheet            header=true
    Close Workbook

    log To Console    DATA = ${data}    

    ${row}=    Get From List    ${data}    0

    log To Console    
    ...               ROW apa yang dicari = ${row}

    Set Suite Variable    ${CariDokumen}    ${row}[Cari_dokumen]










