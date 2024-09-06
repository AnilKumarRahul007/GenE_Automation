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

Click Custom ML Models
    Wait Until Page Contains Element    ${CUSTOM_ML_MODELS_BOX}
    Element Should Be Visible       ${CUSTOM_ML_MODELS_BOX}
    Sleep   1s
    Wait Until Page Contains Element    ${CUSTOM_ML_MODELS_BOX_LOGO}
    Element Should Be Visible       ${CUSTOM_ML_MODELS_BOX_LOGO}
    Sleep   1s
    Click Element   ${CUSTOM_ML_MODELS_BOX}

Click Safe Digging
    Wait Until Page Contains Element    ${SAFE_DIGGING_BOX}
    Element Should Be Visible       ${SAFE_DIGGING_BOX}
    Sleep   1s
    Wait Until Page Contains Element    ${SAFE_DIGGING_BOX_LOGO}
    Element Should Be Visible       ${SAFE_DIGGING_BOX_LOGO}
    Sleep   1s
    Click Element   ${SAFE_DIGGING_BOX}
    Wait Until Location Is      ${SAFE_DIGGING_URL}       timeout=5s
    Location Should Be      ${SAFE_DIGGING_URL}
    Sleep   3s

Verify Drag and drop or select a PDF to Upload
    Wait Until Page Contains Element    ${DRAG_AND_DROP_OR_SELECT_A_PDF_TO_UPLOAD_BOX}
    Element Should Be Visible       ${DRAG_AND_DROP_OR_SELECT_A_PDF_TO_UPLOAD_BOX}
    Sleep   1s
    Wait Until Page Contains Element    ${DRAG_AND_DROP_OR_SELECT_A_PDF_TO_UPLOAD_BOX_LOGO}
    Element Should Be Visible       ${DRAG_AND_DROP_OR_SELECT_A_PDF_TO_UPLOAD_BOX_LOGO}
    Sleep   1s
    Wait Until Page Contains Element    ${DRAG_AND_DROP_OR_SELECT_A_PDF_TO_UPLOAD_BOX_TEXT}
    Element Should Be Visible       ${DRAG_AND_DROP_OR_SELECT_A_PDF_TO_UPLOAD_BOX_TEXT}
    Sleep   1s

Verify Select Company
    Wait Until Page Contains Element    ${SELECT_COMPANY_BOX}
    Element Should Be Visible       ${SELECT_COMPANY_BOX}
    Sleep   1s
    Wait Until Page Contains Element    ${SELECT_COMPANY_BOX_ARROW}
    Element Should Be Visible       ${SELECT_COMPANY_BOX_ARROW}
    Sleep   1s
    Click Element   ${SELECT_COMPANY_BOX_ARROW}
    Sleep   1s
    Click Element   ${SGN_OPTION}
    Sleep   1s
    Click Element   ${SELECT_COMPANY_BOX_ARROW}
    Sleep   1s
    Click Element   ${WWU_OPTION}
    Sleep   1s
    Click Element   ${SELECT_COMPANY_BOX_ARROW}
    Sleep   1s
    Click Element   ${NGN_OPTION}
    Sleep   1s
    Click Element   ${SELECT_COMPANY_BOX_ARROW}
    Sleep   1s
    Click Element   ${CADENT_GAS_OPTION}
    Sleep   1s

Verify Upload
    Wait Until Page Contains Element    ${UPLOAD_BUTTON}
    Element Should Be Visible       ${UPLOAD_BUTTON}
    Sleep   1s
    Click Element   ${UPLOAD_BUTTON}
    Sleep   2s

Verify Table
    Wait Until Page Contains Element    ${TABLE_PRESENCE}
    Element Should Be Visible       ${TABLE_PRESENCE}
    Sleep   1s

Verify Table Column
    [Arguments]    ${table_locator}    ${expected_column}
    ${header_row}    Get Element Attribute    ${table_locator}//tr[1]    outerHTML
    Log    Header Row: ${header_row}
    ${column_present}    Run Keyword And Return Status    Check Column Exists    ${table_locator}    ${expected_column}
    Run Keyword If    '${column_present}'=='False'    Fail    Column '${expected_column}' not found in the table

Check Column Exists
    [Arguments]    ${table_locator}    ${expected_column}
    ${column_list}    Get WebElements    ${table_locator}//tr[1]//th
    FOR    ${column}    IN    @{column_list}
        ${column_text}    Get Text    ${column}
        Run Keyword If    '${column_text}' == '${expected_column}'    Return From Keyword    True
    END
    [Return]    False

Verify Left Arrow and Right Arrow and Page Number
    Wait Until Page Contains Element    ${LEFT_ARROW}
    Element Should Be Visible       ${LEFT_ARROW}
    Sleep   1s
    Click Element   ${LEFT_ARROW}
    Sleep   2s
    Wait Until Page Contains Element    ${RIGHT_ARROW}
    Element Should Be Visible       ${RIGHT_ARROW}
    Sleep   1s
    Click Element   ${RIGHT_ARROW}
    Sleep   2s
    Wait Until Page Contains Element    ${PAGE_NUMBER}
    Element Should Be Visible       ${PAGE_NUMBER}
    Sleep   1s


