*** Settings ***
Resource    ../../Settings/settings.robot
Resource    ../../Keywords/Loginpage_Keywords.robot
Resource    ../../Keywords/SignUpPage_Keywords.robot
Library      SeleniumLibrary
*** Test Cases ***

Combined Test Cases for Sign-Up Page

    [Setup]  Open Sign Up Page
    Sleep    3s

    Page Should Contain Element    ${GENE_LOGO_IN_SIGNUP}

    Page Should Contain Element    ${ENTER_YOUR_NAME_LOGO}

    Page Should Contain Element    ${NAME_INPUT_LOCATOR}

    Page Should Contain Element    ${BRIEFCASE_LOGO}

    Page Should Contain Element    ${EMAIL_LOGO_IN_SIGNUP}

    Page Should Contain Element    ${LOCK_LOGO_IN_SIGNUP}

    Page Should Contain Element    ${CONFIRM_PASSWORD_LOGO}

    Page Should Contain Element    ${FORGOT_PASSWORD_PRESENCE}

    Page Should Contain Element    ${SIGN_UP_BUTTON_PRESENCE_IN_SIGNUP}

    Page Should Contain Element    ${SIGN_IN_PRESENCE_IN_SIGNUP}

    Fill Sign Up Form   Anil    anil.kumar@dtskill.com      123456      123456

    Page Should Contain Element    ${ORG_DROPDOWN_LOCATOR}

    Wait Until Element Is Visible    ${ORG_ARROW_LOCATOR}    timeout=20s
    Click Element    ${ORG_ARROW_LOCATOR}
    Sleep   2s
    Click Element    ${SIGN_UP_BUTTON}
    Sleep   3s
    [Teardown]    Close Browser