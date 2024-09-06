*** Settings ***
Variables   ../Variables/Variables.py
Resource    Loginpage_Keywords.robot
*** Keywords ***

Fill Login Form
    [Arguments]    ${email}    ${password}
    Input Text    ${USERNAME_LOCATOR}    ${email}
    Input Text    ${PASSWORD_LOCATOR}    ${password}

Click Login Button
    Click Element    ${LOGIN_BUTTON}
    Sleep   3s

Click SIDEMENU
    Click Element    ${SIDE_MENU}
    Sleep   3s

Verify all SIDEMENU OPTIONS
    Wait Until Page Contains Element    ${SIDEMENU_OPTIONS}
    Element Should Be Visible       ${SIDEMENU_OPTIONS}
    Sleep   1s
    Wait Until Page Contains Element    ${SUBCRIPTION_BOX}
    Element Should Be Visible       ${SUBCRIPTION_BOX}
    Sleep   1s
    Wait Until Page Contains Element    ${USERIMAGE_IN_SUBCRIPTION_BOX}
    Element Should Be Visible       ${USERIMAGE_IN_SUBCRIPTION_BOX}
    Sleep   1s
    Wait Until Page Contains Element    ${USERNAME_IN_SUBCRIPTION_BOX}
    Element Should Be Visible       ${USERNAME_IN_SUBCRIPTION_BOX}
    Sleep   1s

Click AI Agents
    Wait Until Page Contains Element    ${AI_AGENTS_BOX}
    Element Should Be Visible       ${AI_AGENTS_BOX}
    Sleep   1s
    Wait Until Page Contains Element    ${AI_AGENTS_BOX_LOGO}
    Element Should Be Visible       ${AI_AGENTS_BOX_LOGO}
    Sleep   1s
    Click Element   ${AI_AGENTS_BOX}
    Wait Until Page Contains Element    ${OPTIONS_IN_AI_AGENTS_BOX}
    Element Should Be Visible       ${OPTIONS_IN_AI_AGENTS_BOX}
    Sleep   1s

Click Email Extraction
    Wait Until Page Contains Element    ${EMAIL_EXTRACTION_BOX}
    Element Should Be Visible       ${EMAIL_EXTRACTION_BOX}
    Sleep   1s
    Wait Until Page Contains Element    ${EMAIL_EXTRACTION_BOX_LOGO}
    Element Should Be Visible       ${EMAIL_EXTRACTION_BOX_LOGO}
    Sleep   1s
    Wait Until Location Is    ${EMAIL_EXTRACTION_URL}
    Location Should Be        ${EMAIL_EXTRACTION_URL}
    Sleep   1s
