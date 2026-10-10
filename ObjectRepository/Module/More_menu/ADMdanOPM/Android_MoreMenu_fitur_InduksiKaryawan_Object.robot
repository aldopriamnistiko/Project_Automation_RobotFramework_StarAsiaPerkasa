*** Variables ***
# akses induksi karyawan
${btn_MoreMenu_InduksiKaryawan}       xpath=//*[contains(@content-desc,'Induksi Karyawan')]
${verify_page_InduksiKaryawan}        xpath=//*[contains(@text,'Induction')]
${btn_createInduksi}                  xpath=//android.view.ViewGroup[@content-desc="󰐕"]
${verify_form_induksi}                xpath=//*[contains(@text,'Form Induksi')]
${btn_kuning_log_chunker}             xpath=//android.widget.TextView[@text="󰗀"]
${verify_user_Induksi_karyawan}       xpath=//android.widget.TextView[@text="Nama"]/parent::*/android.widget.EditText[1]
${verify_NRP_Induksi_Karyawan}        xpath=//android.widget.TextView[@text='NRP']/following::android.widget.EditText[1]
${VERIFY_Jabatan_Induksi_Karyawan}    xpath=//android.widget.TextView[@text='JABATAN']/following::android.widget.EditText[1]

# tanggal
${btn_tanggal_induksi}    xpath=//android.view.ViewGroup[@content-desc="Tanggal Induksi, "]
${date_next_month}        xpath=//*[@content-desc="Next month"]
${date_prev_month}        xpath=//*[@content-desc="Previous month"]
${date_ok}                xpath=//*[@text="OK"]
${date_cancel}            xpath=//*[@text="CANCEL"]

# TD
${field_tekanan_darah1}      xpath=//android.widget.TextView[@text='Tekanan Darah']/following-sibling::android.widget.EditText[1]
${field_tekanan_darah2}      xpath=//android.widget.TextView[@text='Tekanan Darah']/following-sibling::android.widget.EditText[2]
${field_Nadi}                xpath=//android.widget.EditText[contains(@text,'Nadi')]
${field_suhu_tubuh}          xpath=//*[contains(@text,'Suhu Tubuh')]
${field_pernafasan}          xpath=//android.widget.EditText[contains(@text,'Pernafasan')]
${field_saturasi_oksigen}    xpath=//*[contains(@text,'Saturasi Oksigen')]
${verify_Screening}          xpath=//*[contains(@text,'Screening')]
${option_screening_ya}       xpath=//*[contains(@content-desc,'Ya')]
${option_screening_tidak}    xpath=//*[contains(@content-desc,'Tidak')]
${radio_btn_HCGA}            xpath=//*[contains(@text,"HCGA")]/following-sibling::*[@clickable="true"][1]
${radio_btn_SHE}             xpath=//*[contains(@text,"SHE")]/following-sibling::*[@clickable="true"][1]
${radio_btn_Internal}        xpath=//*[contains(@text,"Internal")]/following-sibling::*[@clickable="true"][1]
# ====
${btn_kirim_induksi}            xpath=//*[contains(@content-desc,'Kirim Induksi')]
${btn_popup_OK}                 xpath=//*[contains(@content-desc,'Ok')]
${btn_popup_Cancel}             xpath=//*[contains(@content-desc,'Cancel')]
${induksi_berhasil_disimpan}    xpath=//*[contains(@resource-id,'android:id/button1')]

