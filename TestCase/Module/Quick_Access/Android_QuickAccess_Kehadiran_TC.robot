*** Settings ***
Library     AppiumLibrary
Library     String
Library     DateTime
Resource    ../../../ObjectRepository/Module/QuickAccess/Android_QuickAccess_Kehadiran_Object.robot

*** Keywords ***
Akses menu kehadiran
    Wait Until Element Is Visible    ${btn_Kehadiran_Quickaccess}       
    ...                              20s
    Sleep                            1s
    Click Element                    ${btn_Kehadiran_Quickaccess}
    Sleep                            2s
    Capture Page Screenshot          
    Wait Until Element Is Visible    ${verifyheader_pageKehadiran}      
    ...                              20s
    Element Should Be Visible        ${verifyheader_pageKehadiran}
    Sleep                            1s
    Click Element                    ${btn_RevisiKehadiran}
    Sleep                            1s
    Wait Until Element Is Visible    ${verifyHeader_RevisiKehadiran}    
    ...                              20s
    Sleep                            1s
    Element Should Be Visible        ${verifyHeader_RevisiKehadiran}    
    Sleep  1s
Form Revisi Kehadiran
    [Arguments]     ${tgl_kehadiran}    ${checkIn}  ${checkOut} 
    
    Click Element   ${field_Tanggal_Kehadiran}
    Sleep  2s
    
    ${target}=    Convert Date
    ...    ${tgl_kehadiran}
    ...    date_format=%d-%m-%Y
    ...    result_format=%Y-%m-%d

    ${target_year}    ${target_month}    ${target_day}=    Split String    ${target}    -

    ${current}=    Get Current Date
    ${current}=    Convert Date
    ...    ${current}
    ...    result_format=%Y-%m-%d

    ${current_year}    ${current_month}    ${dummy}=    Split String    ${current}    -

    ${current_index}=    Evaluate
    ...    int("${current_year}") * 12 + int("${current_month}")

    ${target_index}=    Evaluate
    ...    int("${target_year}") * 12 + int("${target_month}")

    ${month_diff}=    Evaluate
    ...    ${target_index} - ${current_index}

    Log To Console    Target: ${tgl_kehadiran}
    Log To Console    Selisih bulan: ${month_diff}

    IF    ${month_diff} > 0
        FOR    ${i}    IN RANGE    ${month_diff}
            ${next_exists}=    Run Keyword And Return Status
            ...    Wait Until Element Is Visible
            ...    ${date_next_month}
            ...    2s

        IF    ${next_exists}
            Click Element    ${date_next_month}
            Sleep    0.3s
        ELSE
            Log To Console    Next Month tidak ditemukan, skip klik
        END
    END
    ELSE IF    ${month_diff} < 0
        ${prev_count}=    Evaluate    abs(${month_diff})
        FOR    ${i}    IN RANGE    ${prev_count}
            Click Element    ${date_prev_month}
            Sleep    0.3s
        END
    END

    ${day_locator}=    Set Variable    xpath=//*[@text="${target_day}"]

    Wait Until Element Is Visible    ${day_locator}    5s
    Click Element    ${day_locator}

    Sleep    1s

    Click Element    ${date_ok}
    Sleep    1s
    # CheckIn
          Log To Console    RAW DATA checkIn: ${checkIn}

    IF    '${checkIn}' == '' or ':' not in '${checkIn}'
        Fail    Format checkIn tidak valid: ${checkIn}
    END

    ${parts}=    Split String    ${checkIn}    :
    ${jam}=      Get From List    ${parts}    0
    ${menit}=    Get From List    ${parts}    1

    ${jam}=       Strip String    ${jam}
    ${menit}=     Strip String    ${menit}

    Log To Console    JAM: ${jam}
    Log To Console    MENIT: ${menit}

    Click Element    ${time_waktukejadian}
    Sleep    1s

    ${keyboard_exists}=    Run Keyword And Return Status
    ...    Wait Until Element Is Visible
    ...    ${icon_keyboard}
    ...    1s

    IF    ${keyboard_exists}
        Click Element    ${icon_keyboard}
        Sleep    1s
    END

    Input Text    ${setJam}       ${jam}
    Input Text    ${setMenit}     ${menit}

    Click Element    ${btn_OKE_Waktu_SOS}
    # checkOut
    
      Log To Console    RAW DATA checkIn: ${checkOut}

    IF    '${checkOut}' == '' or ':' not in '${checkOut}'
        Fail    Format checkIn tidak valid: ${checkOut}
    END

    ${parts}=    Split String    ${checkOut}    :
    ${jam}=      Get From List    ${parts}    0
    ${menit}=    Get From List    ${parts}    1

    ${jam}=       Strip String    ${jam}
    ${menit}=     Strip String    ${menit}

    Log To Console    JAM: ${jam}
    Log To Console    MENIT: ${menit}

    Click Element    ${field_check_out}
    Sleep    1s

    ${keyboard_exists}=    Run Keyword And Return Status
    ...    Wait Until Element Is Visible
    ...    ${icon_keyboard}
    ...    1s

    IF    ${keyboard_exists}
        Click Element    ${icon_keyboard}
        Sleep    1s
    END

    Input Text    ${setJam}       ${jam}
    Input Text    ${setMenit}     ${menit}

    Click Element    ${btn_OKE_Waktu_SOS}
    Sleep  1s
    # =======
    Wait Until Element Is Visible  ${field_alasan_kehadiran}  20s
    Sleep  1s
    Click Element  ${field_alasan_kehadiran}
    Sleep  1s
    Wait Until Element Is Visible  ${search_alasan_kehadiran}  20s
    Sleep  1s
    Input Text  ${search_alasan_kehadiran}
    ...  ${alasan}
    Sleep  1
    Wait Until Element Is Visible  ${first_reason_kehadian}  20s
    Click Element  ${first_reason_kehadian}  
    Sleep  1s
    # ====
    Wait Until Element Is Visible  ${field_desk_alasan}  20s
    Sleep  1s
    Input Text  ${field_desk_alasan}
    ...  ${DeskripsiAlasan}
    Sleep  1s
    Click Element  ${btn_kirim_RevisiKehadiran}
    Press Keycode   4 
    Sleep  1s  
    
    
    

