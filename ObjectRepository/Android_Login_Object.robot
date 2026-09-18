*** Variables ***
# page login
${field_NRP}                   xpath=//*[@class = 'android.widget.EditText' and (@text = 'NRP' or . = 'NRP')]
${field_Password}              xpath=//*[@class = 'android.widget.EditText' and (@text = 'Password' or . = 'Password')]
${field_select_site}           xpath=//*[@class = 'android.widget.TextView' and (@text = 'Select Site' or . = 'Select Site')]
${field_search_select_site}    xpath=//*[@class = 'android.widget.EditText' and (@text = 'Cari lokasi...' or . = 'Cari lokasi...')]
${first_result_select_site}    xpath=//android.widget.TextView[@text="󰅂"]
${toggle_switch_network}       xpath=//android.view.ViewGroup[@content-desc="󰖟, Network Type, Public Network, 󰇧, PUBLIC"]/android.view.ViewGroup[3]
${icon_eye_pass}               xpath=//android.widget.TextView[@text="󰛐"]
${btn_login}                   xpath=//*[@class = 'android.widget.TextView' and (@text = 'LOGIN' or . = 'LOGIN')]
# page verify before login
${verifyLogoppa}               xpath=//*[@class = 'android.widget.ImageView' and (@text = '' or . = '')][1]
${verifylogostartech}          xpath=//*[@class = 'android.widget.ImageView' and (@text = '' or . = '')][2]
${verifyVERSIONppateam}        xpath=(//android.widget.TextView)[15]
${verifylogoteam}              xpath//*[@class = 'android.widget.TextView' and (@text = 'Team' or . = 'Team')]
${verifyWordingSinergistic}    xpath=//*[@class = 'android.widget.TextView' and (@text = 'Synergistic' or . = 'Synergistic')]
# page verify after login
# //*[@text="Quick Access"]
${HeaderQuickAccess}    xpath=//android.widget.TextView[@text="Quick Access"]







