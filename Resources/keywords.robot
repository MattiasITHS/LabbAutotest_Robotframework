*** Keywords ***
Open Car Rental Website
    Open Browser                        about:blank     ${BROWSER}
    Go To                               ${URL}
    Wait Until Page Contains            Infotiv Car Rental

Click on Create User Button
    Press Keys                          id=createUser      RETURN

Load Create A New User Page
    Wait Until Page Contains Element    id=questionText

Click On Cancel Button
    Press Keys                          id=cancel          RETURN

Click On Login Button
    Press Keys                          id=login           RETURN

Load Date Selection Page
    Page Should Contain Element         id=questionText

Page Should Contain Login/Create User Buttons
    Page Should Contain Button          id=login
    Page Should Contain Button          id=createUser

Page Should Contain Logout/My Page Buttons
    Page Should Contain Button          id=logout
    Page Should Contain Button          id=mypage

Enter Email And Password
    Input Text                          xpath://*[@id="email"]       ${EMAIL}
    Input Password                      xpath://*[@id="password"]    ${PASSWORD}
