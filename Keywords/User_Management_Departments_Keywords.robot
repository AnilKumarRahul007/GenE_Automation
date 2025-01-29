#*** Settings ***
#Resource    ../../Settings/settings.robot
#Resource    ../../Keywords/Loginpage_Keywords.robot
#Library    Process
#Variables    ../../../Variables/Variables.py
*** Keywords ***
Click SIDEMENU19
    Wait Until Page Contains Element        ${SIDE_MENU}
    Element Should Be Visible       ${SIDE_MENU}
    Click Element       ${SIDE_MENU}
    Sleep   3s

Click Departments
    Wait Until Page Contains Element    ${DEPARTMENTS_BOX}
    Element Should Be Visible       ${DEPARTMENTS_BOX}
    Sleep   1s
    Wait Until Page Contains Element    ${DEPARTMENTS_BOX_LOGO}
    Element Should Be Visible       ${DEPARTMENTS_BOX_LOGO}
    Sleep   1s
    Click Element      ${DEPARTMENTS_BOX}
    Wait Until Location Is      ${DEPARTMENTS_URL}
    Location Should Be      ${DEPARTMENTS_URL}
    Sleep   1s

Verify Sub Page in departments
    Wait Until Page Contains Element    ${ADD_NEW_DEPARTMENT_BOX}
    Element Should Be Visible       ${ADD_NEW_DEPARTMENT_BOX}
    Sleep   1s
    Click Element   ${ADD_NEW_DEPARTMENT_BOX}
    Sleep   1s
    Wait Until Page Contains Element    ${DEPARTMENT_NAME_BOX}
    Element Should Be Visible       ${DEPARTMENT_NAME_BOX}
    Sleep   1s
    Wait Until Page Contains Element    ${DEPARTMENT_NAME_ENTERING_CONTAINER}
    Element Should Be Visible       ${DEPARTMENT_NAME_ENTERING_CONTAINER}
    Sleep   1s
    Wait Until Page Contains Element    ${SAVE_BUTTON}
    Element Should Be Visible       ${SAVE_BUTTON}
    Sleep   1s
    Wait Until Page Contains Element    ${CLOSE_BUTTON_OF_DEPARTMENT_NAME_BOX}
    Element Should Be Visible       ${CLOSE_BUTTON_OF_DEPARTMENT_NAME_BOX}
    Sleep   1s
    Click Element   ${CLOSE_BUTTON_OF_DEPARTMENT_NAME_BOX}
    Sleep   3s

Verify Table in departments
    Wait Until Element Is Visible    ${TABLE_IN_USERS_PAGE}    10s
    Verify Table Column    ${TABLE_IN_USERS_PAGE}    ${COLUMN1_IN_USERS_TABLE}
    Verify Table Column    ${TABLE_IN_USERS_PAGE}    ${COLUMN2_IN_USERS_TABLE}

Verify Page Numbers in departments
    Wait Until Page Contains Element    ${LEFT_ARROW_IN_DEPARTMENTS_PAGE}
    Element Should Be Visible       ${LEFT_ARROW_IN_DEPARTMENTS_PAGE}
    Sleep   1s
    Wait Until Page Contains Element    ${RIGHT_ARROW_IN_DEPARTMENTS_PAGE}
    Element Should Be Visible       ${RIGHT_ARROW_IN_DEPARTMENTS_PAGE}
    Sleep   1s
    Wait Until Page Contains Element    ${PAGE_NUMBER_IN_DEPARTMENTS}
    Element Should Be Visible       ${PAGE_NUMBER_IN_DEPARTMENTS}
    Sleep   1s
    Click Element   ${LEFT_ARROW_IN_DEPARTMENTS_PAGE}
    Sleep   1s
    Click Element   ${RIGHT_ARROW_IN_DEPARTMENTS_PAGE}
    Sleep   1s
    Wait Until Page Contains Element    ${ADD_NEW_DEPARTMENT_BOX}
