*** Variables ***
# Fitur Bantuan
${btn_bantuan}            xpath=//*[contains(@text,'Bantuan')]
${verify_page_bantuan}    xpath=//*[contains(@text,'Pusat Bantuan')]

# chat asist virtual
${btn_chat_virtual}       xpath=//*[contains(@content-desc,'Asisten')]
${verify_chat_virtual}    xpath=//*[contains(@text,'Chat Support')]
${field_chat_support}     xpath=//android.widget.EditText[@text="Tulis pesan..."]
${btn_enter_to_asking}    xpath=//android.view.ViewGroup[@content-desc="󰁝"]
${btn_lanjutkan_nanti}    xpath=//*[contains(@content-desc,'Lanjutkan nanti')]
${btn_Akhiri_chat}        xpath=//*[contains(@content-desc,'Akhiri chat')]
${btn_batal}              xpath=//*[contains(@content-desc,'Batal')]

# Laporkan Masalah
${btn_laporkan_masalah}                  xpath=//*[contains(@content-desc,'Laporkan masalah')]
${verify_laporkan_masalah}               xpath=//*[contains(@text,'Laporkan Masalah')]
${verify_judul}                          xpath=(//*[contains(@text,'Judul')])[1]
${field_judul}                           xpath=//android.widget.EditText[@text="Judul singkat"]
${verify_departemen}                     xpath=//*[contains(@text,'Departemen')]
${field_departemen}                      xpath=//android.widget.EditText[@text="Pilih departemen"]
${field_pilih_departemen}                xpath=//android.widget.EditText[@text="Cari departemen..."]
${result_departemen}                     xpath=(//android.view.ViewGroup[contains(@content-desc,"󱔟") and contains(@content-desc,"󰅂")])[1]
${verify_deskripsi}                      xpath=(//*[contains(@text,'Deskripsi')])[1]
${field_deskripsi}                       xpath=//*[contains(@text,'Deskripsikan')]
${verify_evidence_screenshot_masalah}    xpath=//android.widget.TextView[@text="Apakah anda memiliki bukti screenshot/gambar kendala yang muncul?"]
${field_evidence_screenshot_masalah}     xpath=//*[contains(@text,'Pilih')]
# option evidence
${search_option}    xpath=//*[contains(@text,'Cari opsi...')]
${option_ya}        xpath=//*[@text="Ya"]
${option_tidak}     xpath=//*[@text="Tidak"]
${result_option}    xpath=(//android.view.ViewGroup[contains(@content-desc,"󰗡")])[1]
# fitur upload gambar
${verify_gambar}                     xpath=//android.widget.TextView[@text="Screenshot/gambar bukti kendala yang muncul"]
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

# btn kirim
${btn_kirim_LAPORKAN}    xpath=//*[@content-desc="Kirim"]
${BTN_OK_LAPORKAN}       xpath=//*[@content-desc="OK"]

# laporan masalah
${btn_Laporan_saya}              xpath=//*[@text="Laporan saya"]
${verify_header_Laporan_saya}    xpath=//*[@content-desc,'Laporan saya']
${list_laporan_saya}             xpath=(//android.view.ViewGroup[contains(@content-desc,'Operation')])[1]
${message_tiket_laporan}         xpath//*[contains(@text,'Tulis pesan...')]
${btn_lampirkan}                 xpath=//android.view.ViewGroup[@content-desc="󰏢"]
${btn_sumber_kamera}             xpath=//*[contains(@content-desc,'Kamera')]
${field_pesan_laporan_saya}      xpath=//*[contains(@text,'Tulis pesan...')]
${btn_tutup_laporan_saya}        xpath=//*[contains(@content-desc,'Tutup')]
# btn konfirm
${BtnBatalTutupLaporanSaya}        xpath=//*[contains(@content-desc,'Batal')]
${BtnLanjutkanTutupLaporanSaya}    xpath=//*[contains(@content-desc,'Lanjutkan')]
${PopupKonfirmTutupTiket}          xpath=//android.widget.TextView[contains(@text,'Tutup Tiket')]
${btn_kirim_chat_laporan_saya}     xpath=//android.view.ViewGroup[@content-desc="󰒊"]
