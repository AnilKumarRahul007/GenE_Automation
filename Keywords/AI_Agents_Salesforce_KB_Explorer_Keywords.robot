#*** Settings ***
#Variables   ../Variables/Variables.py
#Resource    Loginpage_Keywords.robot
*** Keywords ***
Click SIDEMENU4
    Wait Until Page Contains Element        ${SIDE_MENU}
    Element Should Be Visible       ${SIDE_MENU}
    Click Element       ${SIDE_MENU}
    Sleep   3s

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
    Verify Ask a Question Container in Salesforce KB explorer

Verify Ask a Question Container in Salesforce KB explorer
    Wait Until Page Contains Element    ${ASK_A_QUESTION_CONTAINER}
    Element Should Be Visible   ${ASK_A_QUESTION_CONTAINER}
    Sleep   2s
    Wait Until Page Contains Element    ${CAPTURE_LOGO_BESIDE_ASK_A_QUESTION}
    Element Should Be Visible   ${CAPTURE_LOGO_BESIDE_ASK_A_QUESTION}
    Sleep   2s
    Wait Until Page Contains Element    ${SEND_QUESTION_LOGO_OPTION}
    Element Should Be Visible   ${SEND_QUESTION_LOGO_OPTION}
    Sleep   2s
    Click Element   ${SEND_QUESTION_LOGO_OPTION}
    Sleep   2s
