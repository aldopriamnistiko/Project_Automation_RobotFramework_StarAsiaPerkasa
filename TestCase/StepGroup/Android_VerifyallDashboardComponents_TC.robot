*** Settings ***
Library     AppiumLibrary
Resource    ../../ObjectRepository/Android_Dashboard_Object.robot

*** Keywords ***

Verify Dashboard After Login
    Sleep                        1s
    Element Should Be Visible    ${verifyabsensi}
    Element Should Be Visible    ${VerifyButtonStarpay}
    FOR     ${i}    IN RANGE    2
        Swipe
        ...    start_x=500
        ...    start_y=1500
        ...    end_x=500
        ...    end_y=500
    END
    Sleep  8s
    # Wait Until Element Is Visible  
    # ...     ${VerifybuttonApporal}
    # ...     20s
    # Sleep  
    # ...     1s
    # Element Should Be Visible    ${VerifybuttonApporal}
    # Sleep  
    # ...     1s
    # Element Should Be Visible    ${VerifyButtonBantuan}
    # Element Should Be Visible    ${VerifyButtonClaim}
    # Element Should Be Visible    ${VerifyButtonKehadiran}
    # Element Should Be Visible    ${VerifyButtonMore}
    # Element Should Be Visible    ${VerifyButtonSign}
    # Element Should Be Visible    ${VerifyButtonSOS}
    # Element Should Be Visible    ${VerifyButtonStarpay}
    # Element Should Be Visible    ${VerifyListKehadiran1}
    # FOR     ${i}    IN RANGE    2
    #     Swipe
    #     ...    start_x=500
    #     ...    start_y=1500
    #     ...    end_x=500
    #     ...    end_y=500
    # END
    # Sleep  
    # ...     1s
    # Element Should Be Visible    ${VerifyListKehadiran2}
    # Element Should Be Visible    ${VerifyListKehadiran4}
    # FOR     ${i}    IN RANGE    2
    #     Swipe
    #     ...    start_x=500
    #     ...    start_y=1500
    #     ...    end_x=500
    #     ...    end_y=500
    # END
    # Sleep  
    # ...     1s
    # Element Should Be Visible    ${VerifyListKehadiran5}
    # Element Should Be Visible    ${VerifyListKehadiran7}
    # FOR     ${i}    IN RANGE    2
    #     Swipe
    #     ...    start_x=500
    #     ...    start_y=1500
    #     ...    end_x=500
    #     ...    end_y=500
    #     Sleep  
    #     ...     1s
    # END
    # Element Should Be Visible    ${VerifyAchievement}