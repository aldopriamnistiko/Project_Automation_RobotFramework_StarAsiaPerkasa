*** Variables ***

${btn_SignIn_QuickAccess}             xpath=//*[contains(@text,'Sign')]
${verify_page_SignIn}                 xpath=//*[@class = 'android.widget.TextView' and (@text = 'Tanda Tangan Dokumen' or . = 'Tanda Tangan Dokumen')]
${field_cari_dokumen}                 xpath=//*[@class = 'android.widget.EditText' and (@text = 'Cari dokumen...' or . = 'Cari dokumen...')]
${verify_ketika_tidak_ada_dokumen}    xpath=//*[@class = 'android.widget.TextView' and (@text = 'Tidak ada dokumen ditemukan' or . = 'Tidak ada dokumen ditemukan')]
