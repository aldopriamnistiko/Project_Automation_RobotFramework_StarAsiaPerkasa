*** Settings ***
Library     AppiumLibrary
Library     String
Library     DateTime
Resource    ../../../../ObjectRepository/Module/More_menu/ESS/Android_MoreMenu_fitur_KPI_SF_Object.robot

*** Keywords ***
Akses monre menu KPISF
    Wait Until Element Is Visible    ${btn_moremenu_KPISF}    20s
    Sleep                            2s
    Capture Page Screenshot          
    Sleep                            2s
    Click Element                    ${btn_moremenu_KPISF}
    Sleep                            1s
    Capture Page Screenshot          
    Sleep                            2s
    Wait Until Element Is Visible    ${verify_page_kpisf}
    Element Should Be Visible        ${verify_page_kpisf}
    Sleep                            2s


Set date Key Performance Indicator
    [Arguments]      ${btn_tanggal}    ${tanggal}
    Click Element    ${btn_tanggal}
    Sleep            1s

    ${target}=    Convert Date
    ...           ${tanggal}
    ...           date_format=%d-%m-%Y
    ...           result_format=%Y-%m-%d

    ${target_year}    ${target_month}    ${target_day}=    Split String    ${target}    -

    ${current}=    Get Current Date
    ${current}=    Convert Date
    ...            ${current}
    ...            result_format=%Y-%m-%d

    ${current_year}    ${current_month}    ${dummy}=    Split String    ${current}    -

    ${current_index}=    Evaluate
    ...                  int("${current_year}") * 12 + int("${current_month}")

    ${target_index}=    Evaluate
    ...                 int("${target_year}") * 12 + int("${target_month}")

    ${month_diff}=    Evaluate
    ...               ${target_index} - ${current_index}

    IF                ${month_diff} > 0
    FOR               ${i}                  IN RANGE              ${month_diff}
    Click Element     ${date_next_month}
    Sleep             0.3s
    END
    ELSE IF           ${month_diff} < 0
    ${prev_count}=    Evaluate              abs(${month_diff})
    FOR               ${i}                  IN RANGE              ${prev_count}
    Click Element     ${date_prev_month}
    Sleep             0.3s
    END
    END

    ${day_locator}=                  Set Variable      xpath=//*[@text="${target_day}"]
    Wait Until Element Is Visible    ${day_locator}    5s
    Click Element                    ${day_locator}

    Sleep            1s
    Click Element    ${date_ok}
    Sleep            2s


    # Click Element  ${btn_tanggal_1}
    # Sleep  1s
    # ${target}=    Convert Date
    # ...    ${Date_1}
    # ...    date_format=%d-%m-%Y
    # ...    result_format=%Y-%m-%d

    # ${target_year}    ${target_month}    ${target_day}=    Split String    ${target}    -

    # ${current}=    Get Current Date
    # ${current}=    Convert Date
    # ...    ${current}
    # ...    result_format=%Y-%m-%d

    # ${current_year}    ${current_month}    ${dummy}=    Split String    ${current}    -

    # ${current_index}=    Evaluate
    # ...    int("${current_year}") * 12 + int("${current_month}")

    # ${target_index}=    Evaluate
    # ...    int("${target_year}") * 12 + int("${target_month}")

    # ${month_diff}=    Evaluate
    # ...    ${target_index} - ${current_index}

    # Log To Console    Target: ${Date_1}
    # Log To Console    Selisih bulan: ${month_diff}

    # IF    ${month_diff} > 0
    #     FOR    ${i}    IN RANGE    ${month_diff}
    #         Click Element    ${date_next_month}
    #         Sleep    0.3s
    #     END
    # ELSE IF    ${month_diff} < 0
    #     ${prev_count}=    Evaluate    abs(${month_diff})
    #     FOR    ${i}    IN RANGE    ${prev_count}
    #         Click Element    ${date_prev_month}
    #         Sleep    0.3s
    #     END
    # END

    # ${day_locator}=    Set Variable    xpath=//*[@text="${target_day}"]

    # Wait Until Element Is Visible    ${day_locator}    5s
    # Click Element    ${day_locator}

    # Sleep    1s

    # Click Element    ${date_ok}
    # Sleep   2s
    Capture Page Screenshot 
    Sleep                       2s
next step
    Click Element               ${btn_Load}
    # Sleep                       2s
    # Click Element               ${btn_alert_OK}
    Sleep                       2s                 
    Capture Page Screenshot     
    Sleep                       1s
    Swipe back twice





