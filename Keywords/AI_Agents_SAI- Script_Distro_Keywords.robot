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

Click Sai- Script Distro
    Wait Until Page Contains Element        ${SAI_SCRIPT_DISTRO_BOX}
    Element Should Be Visible       ${SAI_SCRIPT_DISTRO_BOX}
    Sleep   1s
    Wait Until Page Contains Element    ${SAI_SCRIPT_DISTRO_BOX_LOGO}
    Element Should Be Visible       ${SAI_SCRIPT_DISTRO_BOX_LOGO}
    Sleep   1s
    Click Element   ${SAI_SCRIPT_DISTRO_BOX}
    Sleep   2s
    Wait Until Location Is      ${SAI_SCRIPT_DISTRO_URL}       timeout=5s
    Location Should Be      ${SAI_SCRIPT_DISTRO_URL}
    Sleep   1s
    Click Element       ${SIDE_MENU}
    Sleep   1s
    Click Element      ${SIDE_MENU}
    Sleep   1s


Verify Subpage in Sai- Script Distro
    Wait Until Page Contains Element    ${SAI_SCRIPT_DISTRO_SUBPAGE}
    Element Should Be Visible       ${SAI_SCRIPT_DISTRO_SUBPAGE}
    Sleep   1s
    Wait Until Page Contains Element    ${SAI_BATCHWISE_SCRIPT_ALLOCATION_HEADING_IN_SUBPAGE}
    Element Text Should Be      ${SAI_BATCHWISE_SCRIPT_ALLOCATION_HEADING_IN_SUBPAGE}      SAI - Batchwise Script Allocation
    Sleep   1s
    Wait Until Page Contains Element    ${LO_SOURCE_GOOGLE_SHEET_LINK_TEXT}
    Element Text Should Be      ${LO_SOURCE_GOOGLE_SHEET_LINK_TEXT}      LO Source (Google Sheet Link)
    Sleep   1s
    Wait Until Page Contains Element    ${LO_SOURCE_GOOGLE_SHEET_LINK_CONTAINER}
    Element Should Be Visible       ${LO_SOURCE_GOOGLE_SHEET_LINK_CONTAINER}
    Sleep   1s
    Wait Until Page Contains Element    ${LO_SOURCE_PPT_GOOGLE_SHEET_LINK_TEXT}
    Element Text Should Be      ${LO_SOURCE_PPT_GOOGLE_SHEET_LINK_TEXT}      LO SOURCE (PPT Google Sheet Link)
    Sleep   1s
    Wait Until Page Contains Element    ${LO_SOURCE_PPT_GOOGLE_SHEET_LINK_CONTAINER}
    Element Should Be Visible       ${LO_SOURCE_PPT_GOOGLE_SHEET_LINK_CONTAINER}
    Sleep   1s
    Wait Until Page Contains Element    ${LO_START_ROW_TEXT}
    Element Text Should Be      ${LO_START_ROW_TEXT}      LO Start Row
    Sleep   1s
    Wait Until Page Contains Element    ${LO_START_ROW_CONTAINER}
    Element Should Be Visible       ${LO_START_ROW_CONTAINER}
    Sleep   1s
    Wait Until Page Contains Element    ${LO_END_ROW_TEXT}
    Element Text Should Be      ${LO_END_ROW_TEXT}      LO End Row
    Sleep   1s
    Wait Until Page Contains Element    ${LO_END_ROW_CONTAINER}
    Element Should Be Visible       ${LO_END_ROW_CONTAINER}
    Sleep   1s
    Wait Until Page Contains Element    ${DESTINATION_FOLDER_TEXT}
    Element Text Should Be      ${DESTINATION_FOLDER_TEXT}      Destination Folder (Folder Name)
    Sleep   1s
    Wait Until Page Contains Element    ${DESTINATION_FOLDER_CONTAINER}
    Element Should Be Visible       ${DESTINATION_FOLDER_CONTAINER}
    Sleep   1s
    Wait Until Page Contains Element    ${SUBMIT_BUTTON_IN_SAI_SCRIPT_DISTRO_SUBPAGE}
    Element Should Be Visible       ${SUBMIT_BUTTON_IN_SAI_SCRIPT_DISTRO_SUBPAGE}
    Sleep   1s
    Click Element    ${SUBMIT_BUTTON_IN_SAI_SCRIPT_DISTRO_SUBPAGE}
    Sleep   2s
