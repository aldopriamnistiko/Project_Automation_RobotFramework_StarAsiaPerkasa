*** Variables ***

# absensi masuk
${btn_absensi_masuk}                   xpath=//*[contains(@text,'Absen Masuk')]
${verify_user_Clock_in}                xpath=//hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.widget.FrameLayout[1]/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.widget.ScrollView[1]/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.widget.TextView[1]
${Absensi_lokasi_kerja}                xpath=//android.widget.TextView[@text="Lokasi kerja"]/following::android.widget.EditText[1]
${Absensi_Search_lokasi_kerja}         xpath=//*[contains(@text,'Cari lokasi...')]
${Absensi_lokasi_kerja_first_value}    xpath=//android.widget.TextView[@text="󰅂"]
${verify_pilih_lokasi_kerja}           xpath=//android.widget.TextView[@text="Pilih Lokasi Kerja"]
${field_jam_bangun}                    xpath=//android.widget.TextView[@text="Jam bangun"]/following::android.widget.EditText[1]
${set_time_field_jam}                  xpath=//android.widget.TextView[@text="Type in time"]/following::android.widget.EditText[1]
${set_time_field_menit}                xpath=//android.widget.TextView[@text="Type in time"]/following::android.widget.EditText[2]
${icon_key}                            xpath=//*[@class = 'android.widget.ImageButton' and @resource-id = 'android:id/toggle_mode' and (@text = '' or . = '')]
${btn_OKE_absensi}                     xpath=//android.widget.TimePicker//android.widget.Button[@text='OK']
${btn_setuju_dan_kirim_absensi}        xpath=//*[contains(@content-desc,'SETUJU & KIRIM')]
${btn_Ok_absensi}                      xpath=//android.widget.Button[@text='OK']