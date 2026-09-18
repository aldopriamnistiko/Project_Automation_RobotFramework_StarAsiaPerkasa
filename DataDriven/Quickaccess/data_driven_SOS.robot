*** Settings ***
Library    RPA.Excel.Files
Library    Collections

*** Keywords ***
Read workbook SOS
    Open Workbook     ${CURDIR}/../SOS.xlsx
    ${data}=          Read Worksheet           header=true
    Close Workbook

    Log To Console    DATA = ${data}

    ${row}=         Get From List    ${data}    0
    ${tanggal}=     Get From List    ${data}    0
    ${pilih_JK}=    Get From List    ${data}    1

    Log To Console    
    ...               ROW TANGGAL = ${tanggal}
    ...               ROW JENIS KEJADIAN = ${pilih_JK}
    ...               ROW BARIS = ${row}

    Set Suite Variable    ${target_tanggal}          ${tanggal}[target_date]
    Set Suite Variable    ${waktu}                   ${tanggal}[waktu]
    Set Suite Variable    ${pilih_jenis_kejadian}    ${pilih_JK}[Pilih_Jenis_Kejadian]
    Set Suite Variable    ${desk_kejadian}           ${row}[Desk_Kejadian]
    Set Suite Variable    ${pilih_pelaku/korban}     ${row}[Pelaku/Korban]
    Set Suite Variable    ${alatberat}               ${row}[AlatBerat]
    Set Suite Variable    ${lokasi}                  ${row}[Lokasi]
    Set Suite Variable    ${detaillokasi}            ${row}[DetailLokasi]