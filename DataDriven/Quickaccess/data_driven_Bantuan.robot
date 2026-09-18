*** Settings ***
Library    RPA.Excel.Files
Library    Collections

*** Keywords ***
Read Workbook Bantuan
    Open Workbook     ${CURDIR}/../Bantuan.xlsx
    ${data}=          Read Worksheet               header=true
    Close Workbook

    Log To Console    DATA=${data}

    ${row}=    Get From List    ${data}    0

    Log To Console    
    ...               ROW BARIS = ${row}

    Set Suite Variable    ${chat_asist_virtual}       ${row}[Chat_Virtual]
    Set Suite Variable    ${judul}                    ${row}[Judul]
    Set Suite Variable    ${departemen}               ${row}[Departemen]
    Set Suite Variable    ${deskripsi}                ${row}[Deskripsi]
    Set Suite Variable    ${screenshot}               ${row}[Screenshot]
    Set Suite Variable    ${ValuePesanLaporanSaya}    ${row}[PesanTiketLaporanSaya]