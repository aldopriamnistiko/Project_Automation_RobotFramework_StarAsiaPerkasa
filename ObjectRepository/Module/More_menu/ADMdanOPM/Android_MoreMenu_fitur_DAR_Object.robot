*** Variables ***
# page DAR
${btn_MoreMenu_DAR}    xpath=//*[contains(@content-desc,'DAR')]
${verify_page_DAR}     xpath=//*[contains(@text,'DAR History')]

# form daily activity form
${verify_form_DAR}     xpath=//*[contains(@text,'Daily Activity Form')]
${field_jenis_wo}      xpath=//*[contains(@content-desc,'Jenis Wo')]
${field_section}       xpath=//*[contains(@content-desc,'Section')]
${field_keterangan}    xpath=//*[contains(@text,'Keterangan')]

# tanggal
${btn_tglAktivitas}    xpath=//*[contains(@content-desc,'Tanggal Aktivitas')]
${date_next_month}     xpath=//*[@content-desc="Next month"]
${date_prev_month}     xpath=//*[@content-desc="Previous month"]
${date_ok}             xpath=//*[@text="OK"]
${date_cancel}         xpath=//*[@text="CANCEL"]
${btn_createDAR}       xpath=//android.view.ViewGroup[@resource-id="fab-content"]
${btn_popup_okDAR}        xpath=//*[contains(@text,'OK')]