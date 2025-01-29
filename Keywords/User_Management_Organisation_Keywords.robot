#*** Settings ***
#Resource    ../../Settings/settings.robot
#Resource    Keywords/Loginpage_Keywords.robot
#Library    Process
#Variables    ../../../Variables/Variables.py
*** Keywords ***
Click SIDEMENU21
    Wait Until Page Contains Element        ${SIDE_MENU}
    Element Should Be Visible       ${SIDE_MENU}
    Click Element       ${SIDE_MENU}
    Sleep   3s

Open Login Page
    Open Browser    ${URL}    headlesschrome
    Maximize Browser Window
    Verify Gen E Logo Presence

Click User Management
    Wait Until Page Contains Element    ${USER_MANAGEMENT_BOX}
    Element Should Be Visible       ${USER_MANAGEMENT_BOX}
    Sleep   1s
    Wait Until Page Contains Element    ${USER_MANAGEMENT_BOX_LOGO}
    Element Should Be Visible       ${USER_MANAGEMENT_BOX_LOGO}
    Sleep   1s
    Click Element       ${USER_MANAGEMENT_BOX}
    Sleep   1s
    Wait Until Page Contains Element    ${USER_MANAGEMENT_OPTIONS}
    Element Should Be Visible       ${USER_MANAGEMENT_OPTIONS}
    Sleep   1s

Click Organisation
    Wait Until Page Contains Element    ${ORGANISATION_BOX}
    Element Should Be Visible       ${ORGANISATION_BOX}
    Sleep   1s
    Wait Until Page Contains Element    ${ORGANISATION_BOX_LOGO}
    Element Should Be Visible       ${ORGANISATION_BOX_LOGO}
    Sleep   1s
    Click Element      ${ORGANISATION_BOX}
    Wait Until Location Is      ${ORGANISATION_URL}
    Location Should Be      ${ORGANISATION_URL}
    Sleep   1s

Verify Sub page in organisation
    Wait Until Page Contains Element    ${ADD_NEW_ORGANISATION_BUTTON}
    Element Should Be Visible       ${ADD_NEW_ORGANISATION_BUTTON}
    Sleep   1s
    Click Element   ${ADD_NEW_ORGANISATION_BUTTON}
    Sleep   3s
    Wait Until Page Contains Element    ${SAVE_BUTTON_IN_ORGANISATION_SUBPAGE}
    Element Should Be Visible       ${SAVE_BUTTON_IN_ORGANISATION_SUBPAGE}
    Sleep   1s
    Wait Until Page Contains Element    ${CLOSE_BUTTON_OF_ORGANISATION_NAME_BOX}
    Element Should Be Visible       ${CLOSE_BUTTON_OF_ORGANISATION_NAME_BOX}
    Sleep   1s
    Click Element       ${CLOSE_BUTTON_OF_ORGANISATION_NAME_BOX}
    Sleep   1s

Verify Table in organisation
    Wait Until Element Is Visible    ${TABLE_IN_ORGANISATION_PAGE}    10s
    Verify Table Column    ${TABLE_IN_ORGANISATION_PAGE}    ${COLUMN1_IN_ORGANISATION_TABLE}
    Verify Table Column    ${TABLE_IN_ORGANISATION_PAGE}     ${COLUMN2_IN_ORGANISATION_TABLE}
    Verify Table Column    ${TABLE_IN_ORGANISATION_PAGE}     ${COLUMN3_IN_ORGANISATION_TABLE}

Verify Page Numbers in organisation
    Wait Until Page Contains Element    ${LEFT_ARROW_IN_ORGANISATION_PAGE}
    Element Should Be Visible       ${LEFT_ARROW_IN_ORGANISATION_PAGE}
    Sleep   1s
    Wait Until Page Contains Element    ${RIGHT_ARROW_IN_ORGANISATION_PAGE}
    Element Should Be Visible       ${RIGHT_ARROW_IN_ORGANISATION_PAGE}
    Sleep   1s
    Wait Until Page Contains Element    ${PAGE_NUMBER_IN_ORGANISATION}
    Element Should Be Visible       ${PAGE_NUMBER_IN_ORGANISATION}
    Sleep   1s
    Click Element   ${LEFT_ARROW_IN_ORGANISATION_PAGE}
    Sleep   1s
    Click Element   ${RIGHT_ARROW_IN_ORGANISATION_PAGE}
    Sleep   1s
    Wait Until Page Contains Element    ${ADD_NEW_ORGANISATION_BUTTON}
