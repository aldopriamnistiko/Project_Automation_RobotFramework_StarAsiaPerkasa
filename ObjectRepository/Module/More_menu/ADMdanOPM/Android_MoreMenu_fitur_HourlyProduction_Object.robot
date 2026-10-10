*** Variables ***
${btn_MoreMenu_HourlyProduction}    xpath=//*[contains(@content-desc,'Hourly Production')]
${btn_alert_OK}                     xpath=//*[contains(@resource-id,'android:id/button1')]
${verify_page_HourlyProduction}     xpath=//android.widget.TextView[@text="Hourly Production"]
${btn_reload}                       xpath=//*[contains(@content-desc,'Reload')]
# tanggal
${btn_tanggal_hourly_production}    xpath=//android.view.ViewGroup[contains(@content-desc,'-')]/android.view.ViewGroup
${date_next_month}      xpath=//*[@content-desc="Next month"]
${date_prev_month}      xpath=//*[@content-desc="Previous month"]
${date_ok}              xpath=//*[@text="OK"]
${date_cancel}          xpath=//*[@text="CANCEL"]