#*** Settings ***
#Variables   ../Variables/Variables.py
#Resource    Loginpage_Keywords.robot
*** Keywords ***
Click SIDEMENU8
    Wait Until Page Contains Element        ${SIDE_MENU}
    Element Should Be Visible       ${SIDE_MENU}
    Click Element       ${SIDE_MENU}
    Sleep   3s

Verify Right Menu in ChatwithMF4
    Wait Until Page Contains Element    ${RIGHT_MENU}
    Element Should Be Visible       ${RIGHT_MENU}
    Sleep   2s
    Click Element       ${RIGHT_MENU}
    Sleep   2s
    Wait Until Page Contains Element    ${NEW_CHAT}
    Element Should Be Visible   ${NEW_CHAT}
    Sleep   2s
    Click Element   ${NEW_CHAT}
    Sleep   2s