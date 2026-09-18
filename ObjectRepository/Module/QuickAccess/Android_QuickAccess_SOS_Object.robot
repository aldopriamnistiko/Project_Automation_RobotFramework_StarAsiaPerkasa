*** Variables ***
# fitur upload gambar
${btn_menu_SOS}                      xpath=//android.widget.TextView[@text='SOS']
${field_unggahFoto}                  xpath=//*[contains(@content-desc,'Unggah gambar di sini')]
${btn_PilihdariGaleri}               xpath=//android.widget.TextView[@text='Pilih dari Galeri']
${UploadGambar_FirstImage2}          xpath=//hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/androidx.compose.ui.platform.ComposeView[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[4]/android.view.View[1]/android.view.View[1]/android.view.View[2]/android.view.View[2]/android.view.View[1]
${btn_confirm_image_from_samsung}    xpath=//*[@class = 'android.widget.TextView' and (@text = 'Done' or . = 'Done')]
${btn_accept_image}                  xpath=//hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.RelativeLayout[1]/android.view.ViewGroup[1]/androidx.appcompat.widget.LinearLayoutCompat[1]/android.widget.Button[1]
${UploadGambar_FirstImage}           xpath=//hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.ViewGroup[1]/androidx.drawerlayout.widget.DrawerLayout[1]/android.widget.ScrollView[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[2]/android.widget.LinearLayout[1]/android.view.ViewGroup[1]/android.widget.GridView[1]/android.widget.LinearLayout[1]/android.widget.RelativeLayout[1]/android.widget.FrameLayout[1]

# fitur take foto (Shutter kamera)
${field_unggahFoto}    xpath=//*[contains(@content-desc,'Unggah gambar di sini')]
${btn_ambil_foto}      xpath=//*[contains(@content-desc,'Ambil Foto')]
${shutter_button}      xpath=//android.widget.RelativeLayout[@resource-id='com.sec.android.app.camera:id/shutter_area']
${btn_OK}              xpath=//android.widget.Button[@content-desc='OK']
${btn_crop}            xpath=//android.widget.Button[@content-desc="Crop"]

# Waktu Kejadian (Tanggal)
${date_next_month}      xpath=//*[@content-desc="Next month"]
${date_prev_month}      xpath=//*[@content-desc="Previous month"]
${date_ok}              xpath=//*[@text="OK"]
${date_cancel}          xpath=//*[@text="CANCEL"]
${tgl_WaktuKejadian}    xpath=//hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.widget.FrameLayout[1]/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.widget.ScrollView[1]/android.view.ViewGroup[1]/android.view.ViewGroup[4]/android.view.ViewGroup[1]/android.view.ViewGroup[1]

# Waktu Kejadian (Waktu)
${time_waktukejadian}    xpath=//hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.widget.FrameLayout[1]/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.widget.ScrollView[1]/android.view.ViewGroup[1]/android.view.ViewGroup[4]/android.view.ViewGroup[2]/android.view.ViewGroup[1]/android.widget.EditText[1]
${icon_keyboard}         xpath=//*[@class = 'android.widget.ImageButton' and @resource-id = 'android:id/toggle_mode' and (@text = '' or . = '')]
${setJam}                xpath=//hierarchy/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.widget.TimePicker[1]/android.widget.LinearLayout[1]/android.widget.RelativeLayout[1]/android.widget.RelativeLayout[1]/android.widget.EditText[1]
${setMenit}              xpath=//hierarchy/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.widget.TimePicker[1]/android.widget.LinearLayout[1]/android.widget.RelativeLayout[1]/android.widget.RelativeLayout[1]/android.widget.EditText[2]
${btn_OKE_Waktu_SOS}     xpath=//android.widget.TimePicker//android.widget.Button[@text='OK']

# pilih jenis kejadian
${pilih_jk}                 xpath=//android.widget.TextView[@text="Pilih Jenis Kejadian"]
${jenis_kejadian}           xpath=//android.view.ViewGroup[@content-desc="Jenis Kejadian"]/android.view.ViewGroup[@content-desc="󰍝"]/android.widget.EditText[@text="Pilih"]
${Search_jenis_kejadian}    xpath=//android.widget.EditText[@text='Cari jenis kejadian...']
${first_result}             xpath=//android.widget.TextView[@text="󰅂"]

# deskripsi kejadian
${Deskripsi_Kejadian}    xpath=//*[@class = 'android.widget.EditText' and (@text = 'Minimal 6 karakter' or . = 'Minimal 6 karakter')]

# Pelaku / Korban
${verify header form pelaku / korban}    xpath=//android.widget.TextView[contains(@text,'Pilih Pelaku / Korban')]
${field Pelaku / Korban}                 xpath=//android.view.ViewGroup[@content-desc="Pelaku / Korban"]//android.widget.EditText[@text="Pilih"]
${search pelaku / korban}                xpath=//android.widget.EditText[@text='Cari nama...']
${result pelaku / korban}                xpath=//android.view.ViewGroup[contains(@content-desc, '󰀓') and contains(@content-desc, '󰅂')]

# Alat Berat
${field alat berat}                  xpath=//android.view.ViewGroup[contains(@content-desc,"Alat Berat")]//android.widget.EditText[@text="Pilih"]
${verify header field alat berat}    xpath=//android.widget.TextView[contains(@text,'Pilih Alat')]
${search alat berat}                 xpath=//android.widget.EditText[@text,'Cari unit...']
${result alat berat}                 xpath=//android.view.ViewGroup[contains(@content-desc,"󱊝") and contains(@content-desc,"󰅂")]

# lokasi
${header pilih lokasi}    xpath=//*[contains(@text,'Pilih Lokasi')]
${pilih lokasi}           xpath=//android.view.ViewGroup[@content-desc="Lokasi"]//android.widget.EditText[@text="Pilih"]
${Search lok}          xpath=//android.widget.EditText[@text,'Cari Lokasi...']                                               
${result lokasi}          xpath=//android.view.ViewGroup[contains(@content-desc,"󰟙") and contains(@content-desc,"󰅂")]

# detail lokasi 
${field detail lokasi}  xpath=//*[contains(@text,'Minimal 6 karakter')]
# btn kirim
${btn_kirim}    xpath=//*[contains(@content-desc,'KIRIM')]
# verify after create form SOS
${verifyafter create form SOS}  xpath=//*[contains(@text,'Quick Access')]
