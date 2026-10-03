*** Variables ***

${btn_Kehadiran_Quickaccess}    xpath=//*[contains(@text,'Kehadiran')]
${verifyheader_pageKehadiran}              xpath=//*[contains(@text,'Catatan Kehadiran')]
${btn_RevisiKehadiran}                   xpath=//*[contains(@content-desc,'REVISI')]
${verifyHeader_RevisiKehadiran}     xpath=//*[contains(@text,'Revisi Kehadiran')]
${field_Tanggal_Kehadiran}      xpath=//android.view.ViewGroup[@content-desc="󰃭"]
${field_check_out}              xpath=//android.widget.TextView[@text="Checkout"]/following::android.widget.EditText[1]
${field_alasan_kehadiran}       xpath=//android.widget.TextView[@text="Alasan"]/following::android.widget.EditText[1]
${search_alasan_kehadiran}      xpath=//android.widget.EditText[@text,'Cari alasan...']
${first_reason_kehadian}     xpath=(//android.view.ViewGroup[contains(@content-desc, '󰅂')])[1]
${field_desk_alasan}            xpath=//android.widget.EditText[contains(@text,'Tuliskan')]
${btn_kirim_RevisiKehadiran}    xpath=//*[contains(@content-desc,'KIRIM')]
# tanggal
${date_next_month}      xpath=//*[@content-desc="Next month"]
${date_prev_month}      xpath=//*[@content-desc="Previous month"]
${date_ok}              xpath=//*[@text="OK"]
${date_cancel}          xpath=//*[@text="CANCEL"]
# checkIn
${time_waktukejadian}    xpath=//android.widget.TextView[@text="Checkin"]/following::android.widget.EditText[1]
${icon_keyboard}         xpath=//*[@class = 'android.widget.ImageButton' and @resource-id = 'android:id/toggle_mode' and (@text = '' or . = '')]
${setJam}                xpath=//hierarchy/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.widget.TimePicker[1]/android.widget.LinearLayout[1]/android.widget.RelativeLayout[1]/android.widget.RelativeLayout[1]/android.widget.EditText[1]
${setMenit}              xpath=//hierarchy/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.widget.TimePicker[1]/android.widget.LinearLayout[1]/android.widget.RelativeLayout[1]/android.widget.RelativeLayout[1]/android.widget.EditText[2]
${btn_OKE_Waktu_SOS}     xpath=//android.widget.TimePicker//android.widget.Button[@text='OK']
