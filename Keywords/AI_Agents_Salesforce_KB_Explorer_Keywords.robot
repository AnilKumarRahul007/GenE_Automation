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


Click Salesforce KB Explorer
    Wait Until Page Contains Element    ${SALESFORCE_KB_EXPLORER_BOX}
    Element Should Be Visible       ${SALESFORCE_KB_EXPLORER_BOX}
    Sleep   1s
    Wait Until Page Contains Element    ${SALESFORCE_KB_EXPLORER_BOX_LOGO}
    Element Should Be Visible       ${SALESFORCE_KB_EXPLORER_BOX_LOGO}
    Sleep   1s
    Click Element   ${SALESFORCE_KB_EXPLORER_BOX}
    Wait Until Location Is      ${SALESFORCE_KB_EXPLORER_URL}       timeout=5s
    Location Should Be      ${SALESFORCE_KB_EXPLORER_URL}
    Sleep   3s
    Click Element    ${SIDE_MENU}
    Sleep   2s
    Click Element    ${SIDE_MENU}
    Sleep   2s

Verify Sub-Page in Salesforce KB Explorer
    Wait Until Page Contains Element    ${SUBPAGE_IN_SALESFORCE_KB_EXPLORER_PAGE}
    Element Should Be Visible       ${SUBPAGE_IN_SALESFORCE_KB_EXPLORER_PAGE}
    Sleep   1s
    Wait Until Page Contains Element    ${SALESFORCE_KB_EXPLORER_TEXT_IN_WHITE}
    Element Text Should Be      ${SALESFORCE_KB_EXPLORER_TEXT_IN_WHITE}      Salesforce KB Explorer
    Sleep   1s
    Wait Until Page Contains Element    ${SALESFORCE_KB_EXPLORER_LOGO_IN_SUBPAGE}
    Element Should Be Visible      ${SALESFORCE_KB_EXPLORER_LOGO_IN_SUBPAGE}
    Sleep   1s
    Verify Options in the top right corner of the subpage
    Verify all options are clickable
    Verify Ask a Question Container


Verify GenE text & logo presence
    Wait Until Page Contains Element    ${E_LOGO_IN_GENE}
    Element Should Be Visible       ${E_LOGO_IN_GENE}
    Sleep   2s
    Wait Until Page Contains Element    ${GENE_TEXT_IN_PRIVATE_GPT}
    Element Should Be Visible       ${GENE_TEXT_IN_PRIVATE_GPT}
    Sleep   2s
    Wait Until Page Contains Element        ${GENE_LOGO_IN_SUBPAGE_OF_PRIVATEGPT}
    Element Should Be Visible       ${GENE_LOGO_IN_SUBPAGE_OF_PRIVATEGPT}
    Sleep   2s

Verify Options in the top right corner of the subpage
    Wait Until Page Contains Element    ${OPTIONS_DROPDOWN_TOP_RIGHT_SIDE}
    Element Should Be Visible       ${OPTIONS_DROPDOWN_TOP_RIGHT_SIDE}
    Sleep   2s
    Click Element   ${OPTIONS_DROPDOWN_TOP_RIGHT_SIDE}
    Sleep   2s

Verify all options are clickable
    Click Element   ${REGENERATE_OPTION}
    Sleep   2s
    Click Element   ${OPTIONS_DROPDOWN_TOP_RIGHT_SIDE}
    Sleep   2s
    Click Element   ${PIN_CHAT_OPTION}
    Sleep   2s
    Click Element   ${OPTIONS_DROPDOWN_TOP_RIGHT_SIDE}
    Sleep   2s
    Click Element   ${RENAME_OPTION}
    Sleep   2s
    Click Element   ${OPTIONS_DROPDOWN_TOP_RIGHT_SIDE}
    Sleep   2s
    Click Element   ${SHARE_OPTION}
    Sleep   2s
    Click Element   ${OPTIONS_DROPDOWN_TOP_RIGHT_SIDE}
    Sleep   2s
    Click Element   ${DELETE_CHAT_OPTION}
    Sleep   2s

Verify Ask a Question Container
    Wait Until Page Contains Element    ${ASK_A_QUESTION_CONTAINER}
    Element Should Be Visible   ${ASK_A_QUESTION_CONTAINER}
    Sleep   2s
    Wait Until Page Contains Element    ${CAPTURE_LOGO_BESIDE_ASK_A_QUESTION}
    Element Should Be Visible   ${CAPTURE_LOGO_BESIDE_ASK_A_QUESTION}
    Sleep   2s
    Wait Until Page Contains Element    ${ASK_A_QUESTION_TEXT}
    Element Attribute Value Should Be      ${ASK_A_QUESTION_TEXT}     placeholder      Ask a question...
    Sleep   1s
    Wait Until Page Contains Element    ${SEND_QUESTION_LOGO_OPTION}
    Element Should Be Visible   ${SEND_QUESTION_LOGO_OPTION}
    Sleep   2s
    Click Element   ${SEND_QUESTION_LOGO_OPTION}
    Sleep   2s
