*** Variables ***
# akses KPI SF
${btn_moremenu_KPISF}       xpath=//*[contains(@content-desc,'KPI SF')]
${verify_page_kpisf}    xpath=//*[contains(@text,'Key Performance Indicator')]
${btn_tanggal_1}    xpath=(//*[contains(@content-desc,'-')])[1]
${btn_tanggal_2}    xpath=(//*[contains(@content-desc,'-')])[2]
${btn_Load}     xpath=//*[contains(@content-desc,'Load')]
# tanggal
${date_next_month}      xpath=//*[@content-desc="Next month"]
${date_prev_month}      xpath=//*[@content-desc="Previous month"]
${date_ok}              xpath=//*[@text="OK"]
${date_cancel}          xpath=//*[@text="CANCEL"]