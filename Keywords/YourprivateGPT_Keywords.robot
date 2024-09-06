*** Settings ***
Variables   ../Variables/Variables.py
Resource    ./Loginpage_Keywords.robot
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

Click PRIVATEGPT
    Click Element    ${PRIVATE_GPT}
    Sleep   3s

Verify Private gpt heading and logo
    Wait Until Page Contains Element    ${PRIVATE_GPT_IN_SUBPAGE}
    Element Should Be Visible      ${PRIVATE_GPT_IN_SUBPAGE}
    Sleep    2s
    Wait Until Page Contains Element    ${PRIVATE_GPT_LOGO_IN_SUBPAGE}
    Element Should Be Visible       ${PRIVATE_GPT_LOGO_IN_SUBPAGE}
    Sleep   2s

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

Verify ChatContainer
    Wait Until Page Contains Element    xpath=/html/body/main/div/div[9]/div/div/div/div/div[2]
    Element Should Be Visible       xpath=/html/body/main/div/div[9]/div/div/div/div/div[2]
    Sleep   2s

Verify Option in the top right corner of the subpage
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
    Wait Until Page Contains Element    ${CHOOSE_FILE_LOGO_OPTION}
    Element Should Be Visible   ${CHOOSE_FILE_LOGO_OPTION}
    Sleep   2s
    Wait Until Page Contains Element    ${SEND_QUESTION_LOGO_OPTION}
    Element Should Be Visible   ${SEND_QUESTION_LOGO_OPTION}
    Sleep   2s
    Click Element   ${SEND_QUESTION_LOGO_OPTION}
    Sleep   2s

Verify Right Menu
    Wait Until Page Contains Element    ${RIGHT_MENU}
    Element Should Be Visible       ${RIGHT_MENU}
    Sleep   2s
    Click Element       ${RIGHT_MENU}
    Sleep   2s
    Wait Until Page Contains Element    ${NEW_CHAT}
    Element Should Be Visible   ${NEW_CHAT}
    Sleep   2s
    Click Element   ${NEW_CHAT}
    Wait Until Page Contains Element    ${SELECT_PLATFORM_AND_LLM_CONTAINER}
    Element Should Be Visible   ${SELECT_PLATFORM_AND_LLM_CONTAINER}
    Sleep   2s
    Click Element   ${ARROW_OF_SELECT_PLATFORM_AND_LLM_CONTAINER}
    Sleep   2s
    Click Element    ${GPT4_TURBO_OPTION}
    Sleep   2s
    Click Element   ${ARROW_OF_SELECT_PLATFORM_AND_LLM_CONTAINER}
    Sleep   2s
    Click Element    ${GPT4o_OPTION}
    Sleep   2s
    Click Element   ${ARROW_OF_SELECT_PLATFORM_AND_LLM_CONTAINER}
    Sleep   2s
    Click Element    ${GPT4o_mini_OPTION}
    Sleep   2s
    Click Element   ${ARROW_OF_SELECT_PLATFORM_AND_LLM_CONTAINER}
    Sleep   2s
    Click Element    ${Anyscale_Mistral_Option}
    Sleep   2s
    Click Element   ${ARROW_OF_SELECT_PLATFORM_AND_LLM_CONTAINER}
    Sleep   2s
    Click Element    ${Anyscale_Llama_Option}
    Sleep   2s
    Click Element   ${ARROW_OF_SELECT_PLATFORM_AND_LLM_CONTAINER}
    Sleep   2s
    Click Element    ${Groq_Mistral_Option}
    Sleep   2s
    Click Element   ${ARROW_OF_SELECT_PLATFORM_AND_LLM_CONTAINER}
    Sleep   2s
    Click Element    ${Groq_Llama3_8b_Option}
    Sleep   2s
    Click Element   ${ARROW_OF_SELECT_PLATFORM_AND_LLM_CONTAINER}
    Sleep   2s
    Click Element    ${Groq_Llama3_70b_Option}
    Sleep   2s
    Wait Until Page Contains Element    ${SELECT_ACCOUNT}
    Element Should Be Visible   ${SELECT_ACCOUNT}
    Sleep   2s
    Wait Until Page Contains Element    ${ARROW_OF_SELECT_ACCOUNT_CONTAINER}
    Element Should Be Visible   ${ARROW_OF_SELECT_ACCOUNT_CONTAINER}
    Sleep   2s
    Click Element   ${ARROW_OF_SELECT_ACCOUNT_CONTAINER}
    Sleep   2s
    Click Element   ${DT_skill_OPTION}
    Sleep   2s
    Click Element   ${ARROW_OF_SELECT_ACCOUNT_CONTAINER}
    Sleep   2s
    Click Element   ${Sandbox_OPTION}
    Sleep   2s
    Click Element   ${ARROW_OF_SELECT_ACCOUNT_CONTAINER}
    Sleep   2s
    Click Element   ${Your_Account_OPTION}
    Sleep   2s
    Wait Until Page Contains Element    ${UPLOAD_DIRECTORY}
    Element Should Be Visible   ${UPLOAD_DIRECTORY}
    Sleep   2s
    Wait Until Page Contains Element    ${FILE_LOGO_OF_UPLOAD_DIRECTORY}
    Element Should Be Visible   ${FILE_LOGO_OF_UPLOAD_DIRECTORY}
    Sleep   2s
    Click Element   ${UPLOAD_DIRECTORY_TEXT}
    Wait Until Location Is    ${UPLOAD_DIRECTORY_URL}    timeout=20s
    Location Should Be    ${UPLOAD_DIRECTORY_URL}
    Sleep   3s


Upload Directory
    Wait Until Page Contains Element    ${FILE_TYPE_HEADING}
    Element Should Be Visible       ${FILE_TYPE_HEADING}
    Sleep   2s
    Wait Until Page Contains Element    ${SELECT_TYPE_CONTAINER}
    Element Should Be Visible       ${SELECT_TYPE_CONTAINER}
    Sleep   2s
    Wait Until Page Contains Element    ${SELECT_TYPE_CONTAINER_ARROW}
    Element Should Be Visible       ${SELECT_TYPE_CONTAINER_ARROW}
    Sleep   2s
    Wait Until Page Contains Element    ${SELECT_DIRECTORY_TABLE}
    Element Should Be Visible       ${SELECT_DIRECTORY_TABLE}
    Sleep   2s
    Wait Until Page Contains Element    ${SELECT_DIRECTORY_PAGE_NAVIGATOR}
    Element Should Be Visible       ${SELECT_DIRECTORY_PAGE_NAVIGATOR}
    Sleep   2s
    Wait Until Page Contains Element    ${LEFT_NAVIGATOR_ARROW}
    Element Should Be Visible       ${LEFT_NAVIGATOR_ARROW}
    Sleep   2s
    Wait Until Page Contains Element    ${RIGHT_NAVIGATOR_ARROW}
    Element Should Be Visible       ${RIGHT_NAVIGATOR_ARROW}
    Sleep   2s
    Wait Until Page Contains Element    ${FIRST_PAGE_INDICATOR}
    Element Should Be Visible       ${FIRST_PAGE_INDICATOR}
    Sleep   2s
    Wait Until Page Contains Element    ${SECOND_PAGE_INDICATOR}
    Element Should Be Visible       ${SECOND_PAGE_INDICATOR}
    Sleep   2s
    Click Element   ${SELECT_TYPE_CONTAINER_ARROW}
    Sleep   2s
    Click Element       ${DOCX_OPTION}
    Sleep   2s
    Click Element   ${SELECT_TYPE_CONTAINER_ARROW}
    Sleep   2s
    Click Element       ${PDF_OPTION}
    Sleep   2s
    Click Element   ${SELECT_TYPE_CONTAINER_ARROW}
    Sleep   2s
    Click Element       ${CSV_OPTION}
    Sleep   2s
