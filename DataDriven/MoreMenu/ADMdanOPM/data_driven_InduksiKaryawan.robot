*** Settings ***
Library    RPA.Excel.Files
Library    Collections

*** Keywords ***
Read workbook Induksi Karyawan
    Open Workbook     ${CURDIR}/../../Induksi.xlsx
    ${data}=          Read Worksheet                  header=true
    Close Workbook

    ${row}=    Get From List    ${data}    0
    ${row1}=    Get From List    ${data}    1

    Set Suite Variable    ${tgl_induksi}      ${row}[Tanggal_induksi]
    Set Suite Variable    ${td1}              ${row}[TD1]
    Set Suite Variable    ${td2}              ${row}[TD2]
    Set Suite Variable    ${nadi}             ${row}[Nadi]
    Set Suite Variable    ${st}               ${row}[ST]
    Set Suite Variable    ${pernafasan}       ${row}[Pernafasan]
    Set Suite Variable    ${so}               ${row}[SO]
    Set Suite Variable    ${screening}        ${row1}[Screening]
    Set Suite Variable    ${materi_induk}     ${row}[Materi_Induksi]
    Set Suite Variable    ${popup_konfirm}    ${row1}[popup_konfirm]
    Set Suite Variable    ${jabatan}          ${row}[Jabatan]