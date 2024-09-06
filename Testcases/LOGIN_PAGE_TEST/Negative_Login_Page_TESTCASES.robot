*** Settings ***
Resource    ../../Settings/settings.robot
Resource    ../../Keywords/Loginpage_Keywords.robot
*** Test Cases ***

Combined Test Cases for Login Page

    [Setup]    Login Page
    Fill Login Form    123456    ${VALID_PASSWORD}
    Click Login Button
    Sleep    2s  # Allow time for any errors to display


    Fill Login Form    test123!@#    ${VALID_PASSWORD}
    Click Login Button
    Sleep    2s  # Allow time for any errors to display


    Fill Login Form    " test@example.com"    ${VALID_PASSWORD}
    Click Login Button
    Sleep    2s


    Fill Login Form    ${USERNAME}    @#$%^&
    Click Login Button
    Sleep    2s


    Click Element    ${FORGOT_PASSWORD_LINK}
    Wait Until Location Is    ${EMAIL_VERIFY_PAGE_URL}    timeout=6s
    Wrong Email Address on Forgot Password        aslk0982da@laskdops


    [Teardown]    Close Browser