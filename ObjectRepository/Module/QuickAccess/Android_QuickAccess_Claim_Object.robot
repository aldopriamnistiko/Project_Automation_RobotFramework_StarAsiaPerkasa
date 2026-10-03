*** Variables ***

${btn_claim_Quickaccess}      xpath=//*[contains(@text,'Claim')]
${verify_page_Claim}          xpath=//*[contains(@text,'History')]
${tab_Cashless}               xpath=//*[contains(@content-desc,'Cashless')]
${tab_claim}                  xpath=//*[contains(@content-desc,'Claim')]
${btn_ajukan_Claim}           xpath=//*[contains(@content-desc,'AJUKAN CLAIM')]
${verify_page_AjukanClaim}    xpath=//*[contains(@text,'Reimburse')]
# form claim
${field_jenis_claim}                  xpath=//*[contains(@text,'Jenis Claim')]
${field_search_jenis_claim}           xpath=//*[contains(@text,'Cari jenis claim')]
${first_result_search_jenis_claim}    xpath=(//android.widget.TextView[@text="󰅂"])[1]
${btn_Tglkwitansi_Claim}              xpath=//*[contains(@text,'Tanggal Kwitansi')]
${field_sub_claim}      xpath=//*[contains(@text,'Sub Claim')]
${field_hub_keluarga}   xpath=//*[contains(@text,'Hubungan Keluarga')]
# tanggal
${date_next_month}      xpath=//*[@content-desc="Next month"]
${date_prev_month}      xpath=//*[@content-desc="Previous month"]
${date_ok}              xpath=//*[@text="OK"]
${date_cancel}          xpath=//*[@text="CANCEL"]
# take photo
${photo Nota/kwitansi}      xpath=//*[contains(@text,'Unggah gambar di sini')]
${shutter_button}      xpath=//android.widget.RelativeLayout[@resource-id='com.sec.android.app.camera:id/shutter_area']
${btn_OK}              xpath=//android.widget.Button[@content-desc='OK']
${btn_crop}            xpath=//android.widget.Button[@content-desc="Crop"]
${btn_tambah_claim}     xpath=//*[contains(@content-desc,'TAMBAH')]
${btn_ambil_foto}      xpath=//*[contains(@content-desc,'Ambil Foto')]
