#*** Settings ***
#Variables   ../Variables/Variables.py
#Resource    Loginpage_Keywords.robot
*** Keywords ***
Click SIDEMENU1
    Wait Until Page Contains Element        ${SIDE_MENU}
    Element Should Be Visible       ${SIDE_MENU}
    Click Element       ${SIDE_MENU}
    Sleep   3s

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
    Click Element   ${EMAIL_EXTRACTION_BOX}
    Wait Until Location Is    ${EMAIL_EXTRACTION_URL}
    Location Should Be        ${EMAIL_EXTRACTION_URL}
    Sleep   1s
