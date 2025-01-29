#*** Settings ***
#Variables   ../Variables/Variables.py
#Resource    Loginpage_Keywords.robot
#Library  Collections
*** Keywords ***
Click SIDEMENU17
    Wait Until Page Contains Element        ${SIDE_MENU}
    Element Should Be Visible       ${SIDE_MENU}
    Click Element       ${SIDE_MENU}
    Sleep   3s

Click LLM Cost
    Wait Until Page Contains Element    ${LLM_COST_BOX}
    Element Should Be Visible       ${LLM_COST_BOX}
    Sleep   1s
    Wait Until Page Contains Element    ${LLM_COST_BOX_LOGO}
    Element Should Be Visible       ${LLM_COST_BOX_LOGO}
    Sleep   1s
    Click Element   ${LLM_COST_BOX}
    Wait Until Location Is      ${LLM_COST_URL}       timeout=10s
    Location Should Be      ${LLM_COST_URL}
    Sleep   2s
