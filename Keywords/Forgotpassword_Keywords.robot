*** Settings ***
Resource    ../Settings/settings.robot
Resource    ../../Keywords/Loginpage_Keywords.robot
Library      SeleniumLibrary
Variables    ../Variables/Variables.py
*** Keywords ***

Forgot Password Link
    [Setup]     Login Page
    Click Element    ${FORGOT_PASSWORD_LINK}
    Wait Until Location Is    ${EMAIL_VERIFY_PAGE_URL}

Click Forgot Password Link
    [Arguments]    ${email}
    Verify GenE Logo In Forgot Password Page
    Verify 'Email Verify' In Forgot Password Page
    Verify Email Logo In Forgot Password Page
    Verify 'Enter Email Address' In Forgot Password Page
    Verify 'Send Reset Link' In Forgot Password Page
    Input Text    ${EMAIL_INPUT}    ${email}
    Click Element    ${SUBMIT_BUTTON}
    Sleep   2s

Verify GenE Logo In Forgot Password Page
    Wait Until Page Contains Element    ${GENE_LOGO_PRESENCE}     timeout=4s
    Element Should Be Visible   ${GENE_LOGO_PRESENCE}     timeout=4s
    Sleep   2s

Verify 'Email Verify' In Forgot Password Page
    Wait Until Page Contains Element    ${EMAIL_VERIFY_PRESENCE}     timeout=4s
    Element Should Be Visible   ${EMAIL_VERIFY_PRESENCE}     timeout=4s
    Sleep   2s

Verify Email Logo In Forgot Password Page
    Wait Until Page Contains Element    ${EMAIL_LOGO_IN_FORGOT_PASSWORD}     timeout=4s
    Element Should Be Visible   ${EMAIL_LOGO_IN_FORGOT_PASSWORD}     timeout=4s
    Sleep   2s

Verify 'Enter Email Address' In Forgot Password Page
    Wait Until Page Contains Element    ${EMAIL_ADDRESS_IN_FORGOT_PASSWORD_PAGE}     timeout=4s
    Element Should Be Visible   ${EMAIL_ADDRESS_IN_FORGOT_PASSWORD_PAGE}     timeout=4s
    Sleep   2s

Verify 'Send Reset Link' In Forgot Password Page
    Wait Until Page Contains Element    ${SEND_REST_LINK_IN_FORGOT_PASSWORD}     timeout=4s
    Element Should Be Visible   ${SEND_REST_LINK_IN_FORGOT_PASSWORD}     timeout=4s
    Sleep   2s

Wrong Email Address on Forgot Password
    [Arguments]    ${email}
    Input Text    ${EMAIL_INPUT}    ${email}
    Click Element    ${SUBMIT_BUTTON}
    Sleep   3s