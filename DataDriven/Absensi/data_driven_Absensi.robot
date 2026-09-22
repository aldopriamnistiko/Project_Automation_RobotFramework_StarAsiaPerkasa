*** Settings ***
Library    RPA.Excel.Files
Library    Collections        

*** Keywords ***
Read Workbook Absensi
    Open Workbook     ${CURDIR}/../Absensi.xlsx
    ${data}=          Read Worksheet               header=true
    Close Workbook

    log To Console    DATA=${data}

    ${row}=     Get From List    ${data}    0
    ${user}=    Get From List    ${data}    1

    log To Console    
    ...               ROW BARIS = ${row}

    Set Suite Variable    ${Search_lok_kesarja}       ${row}[Search_lokasi_kerja]
    Set Suite Variable    ${Alkohol}                  ${user}[alkohol]
    Set Suite Variable    ${Aktivitas}                ${user}[aktivitas]
    Set Suite Variable    ${Stress}                   ${row}[stress]
    Set Suite Variable    ${Penyakit}                 ${row}[penyakit]
    Set Suite Variable    ${Keluarga}                 ${row}[keluarga]
    Set Suite Variable    ${Pekerjaan}                ${row}[pekerjaan]
    Set Suite Variable    ${Dua_Hari_Lalu}            ${row}[dua_hari_lalu]
    Set Suite Variable    ${Satu_Hari_Lalu}           ${row}[satu_hari_lalu]
    Set Suite Variable    ${Beberapa_Jam_Terakhir}    ${row}[beberapa_jam_terakhir]
    set Suite Variable    ${Waktu}                    ${row}[waktu]
    set Suite Variable    ${Kesehatan}                ${row}[kesehatan]
    set Suite Variable    ${Obat}                     ${user}[obat]
    set Suite Variable    ${nama_user_login}          ${user}[name]
