*** Settings ***
Variables      ../Variables/Variables.py
*** Keywords ***
Login Page
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Verify Gen E Logo Presence

Verify Gen E Logo Presence
    Wait Until Page Contains Element    ${LOGO_LOCATOR}    timeout=5s
    Element Should Be Visible    ${LOGO_LOCATOR}
    Sleep   2s

Verify Email Logo Presence
    Wait Until Page Contains Element    ${EMAIL_LOGO}    timeout=5s
    Element Should Be Visible    ${EMAIL_LOGO}
    Sleep   2s

Verify Email Text Presence
    Wait Until Page Contains Element    ${EMAIL_TEXT_PRESENCE}    timeout=5s
    Element Should Be Visible    ${EMAIL_TEXT_PRESENCE}
    Sleep   2s

Verify Password Logo Presence
    Wait Until Page Contains Element    ${PASSWORD_LOGO}    timeout=5s
    Element Should Be Visible    ${PASSWORD_LOGO}
    Sleep   2s

Verify Password Text Presence
    Wait Until Page Contains Element    ${PASSWORD_TEXT}    timeout=3s
    Element Should Be Visible   ${PASSWORD_TEXT}
    Sleep   2s

Verify Forgot Password Presence
    Wait Until Page Contains Element    ${FORGOT_PASSWORD_PRESENCE}     timeout=3s
    Element Should Be Visible   ${FORGOT_PASSWORD_PRESENCE}
    Sleep   2s

Verify Sign In Presence
    Wait Until Page Contains Element    ${SIGN_IN_PRESENCE}     timeout=2s
    Element Should Be Visible   ${SIGN_IN_PRESENCE}
    Sleep   2s

Verify Sign Up Presence
    Wait Until Page Contains Element    ${SIGN_UP_PRESENCE}     timeout=2s
    Element Should Be Visible   ${SIGN_UP_PRESENCE}     timeout=2s
    Sleep   2s

Fill Login Form
    [Arguments]    ${email}    ${password}
    Verify Gen E Logo Presence
    Verify Email Logo Presence
    Verify Email Text Presence
    Verify Password Logo Presence
    Verify Password Text Presence
    Verify Forgot Password Presence
    Verify Sign In Presence
    Verify Sign Up Presence
    Input Text    ${USERNAME_LOCATOR}    ${email}
    Input Text    ${PASSWORD_LOCATOR}    ${password}

Click Login Button
    Click Element    ${LOGIN_BUTTON}
    Sleep   2s

Run Python Script to Send Email
    [Documentation]    This keyword runs the Python script to zip files and send an email
    ${result}=    Run Process    ${PYTHON_PATH}    ${SCRIPT_PATH}    shell=True
    Log    ${result.stdout}    # Log the standard output of the script
    Log    ${result.stderr}    # Log any error output
    Should Be Equal As Strings    ${result.rc}    0

Wrong Email Address on Forgot Password
    [Arguments]    ${email}
    Input Text      ${EMAIL_INPUT}        ${email}
    Click Element    ${SUBMIT_BUTTON}
    Sleep   3s

Click Sign Up Button
    Click Element    xpath=/html/body/main/div/div/div/div[1]/div/div[2]/div[1]/form/button   # Replace with the locator for the Sign Up button
    Sleep   3s




