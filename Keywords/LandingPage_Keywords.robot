*** Settings ***
Variables      ../Variables/Variables.py
Resource    ./Loginpage_Keywords.robot
*** Keywords ***
Login Page
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Verify Gen E Logo Presence

Verify Gen E Logo Presence
    Wait Until Page Contains Element    ${LOGO_LOCATOR}    timeout=5s
    Element Should Be Visible    ${LOGO_LOCATOR}
    Sleep   2s

Verify Gen E Logo Presence in landing page
    Wait Until Page Contains Element    ${LOGO_LOCATOR_LANDING_PAGE}    timeout=5s
    Element Should Be Visible    ${LOGO_LOCATOR_LANDING_PAGE}
    Sleep   2s

Verify Email Logo Presence
    Wait Until Page Contains Element    ${EMAIL_LOGO}    timeout=5s
    Element Should Be Visible    ${EMAIL_LOGO}
    Sleep   4s

Verify Email Text Presence
    Wait Until Page Contains Element    ${EMAIL_TEXT_PRESENCE}    timeout=5s
    Element Should Be Visible    ${EMAIL_TEXT_PRESENCE}
    Sleep   4s

Verify Password Logo Presence
    Wait Until Page Contains Element    ${PASSWORD_LOGO}    timeout=5s
    Element Should Be Visible    ${PASSWORD_LOGO}
    Sleep   4s

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
    Sleep   3s

Check for two options available on the top menu lists on the Dashboard
    Wait Until Page Contains Element    ${TWO_OPTIONS_IN_LANDING_PAGE}    timeout=5s
    Element Should Be Visible    ${TWO_OPTIONS_IN_LANDING_PAGE}
    Sleep   2s

Verify HOME and CONNECT OPTIONS
    Wait Until Page Contains Element    ${HOME_OPTION_IN_LANDING_PAGE}    timeout=5s
    Element Should Be Visible    ${HOME_OPTION_IN_LANDING_PAGE}
    Sleep   2s
    Wait Until Page Contains Element    ${CONNECT_OPTION_IN_LANDING_PAGE}    timeout=5s
    Element Should Be Visible    ${CONNECT_OPTION_IN_LANDING_PAGE}
    Sleep   2s

Verify USER DP/EMAIL/NAME presence
    Wait Until Page Contains Element    ${USER_DP}    timeout=5s
    Element Should Be Visible    ${USER_DP}
    Sleep   2s
    Wait Until Page Contains Element    ${USER_EMAIL_PRESENCE}    timeout=5s
    Element Should Be Visible    ${USER_EMAIL_PRESENCE}
    Sleep   2s


Verify DASHBOARD presence
    Wait Until Page Contains Element    ${DASHBOARD_PRESENCE}    timeout=5s
    Element Should Be Visible    ${DASHBOARD_PRESENCE}
    Sleep   2s

Click HOME
    Click Element    xpath=/html/body/main/div/header/div/div/div[2]/nav/ul/li[1]/a
    Sleep   3s

Click SIDEMENU
    Click Element    ${SIDE_MENU}
    Sleep   3s

Click PRIVATEGPT
    Click Element    ${PRIVATE_GPT}
    Sleep   3s

Element Should Be Highlighted
    [Arguments]    ${locator}
    ${element_color_before_hover}=    Get Element Attribute   ${locator}    active
    Mouse Over    ${locator}
    ${element_color_after_hover}=    Get Element Attribute    ${locator}    active
    Should Not Be Equal    ${element_color_before_hover}    ${element_color_after_hover}