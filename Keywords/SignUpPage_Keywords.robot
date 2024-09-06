*** Keywords ***

Open Sign Up Page
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Click Element    ${SIGN_UP_LINK_LOCATOR}
    Wait Until Location Is    ${SIGN_UP_PAGE_URL}    timeout=5s

Fill Sign Up Form
    [Arguments]    ${name}    ${email}    ${password}    ${confirm_password}
    Input Text    ${NAME_INPUT_LOCATOR}    ${name}
    Input Text    ${EMAIL_INPUT_LOCATOR_IN_SIGNUP}    ${email}
    Input Text    ${CREATE_PASSWORD_IN_SIGNUP}    ${password}
    Input Text    ${CONFIRM_PASSWORD_IN_SIGNUP}    ${confirm_password}

Wrong Fill Sign Up Form
    [Arguments]    ${name}    ${email}    ${password}    ${confirm_password}
    Input Text    ${NAME_INPUT_LOCATOR}    ${name}
    Input Text    ${EMAIL_INPUT_LOCATOR_IN_SIGNUP}    ${email}
    Input Text    ${CREATE_PASSWORD_IN_SIGNUP}    ${password}
    Input Text    ${CONFIRM_PASSWORD_IN_SIGNUP}    ${confirm_password}