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

Click Chat Gpt Alternate
    Wait Until Page Contains Element    ${CHAT_GPT_ALTERNATE_BOX}
    Element Should Be Visible       ${CHAT_GPT_ALTERNATE_BOX}
    Sleep   1s
    Wait Until Page Contains Element    ${CHAP_GPT_ALTERNATE_BOX_LOGO}
    Element Should Be Visible       ${CHAP_GPT_ALTERNATE_BOX_LOGO}
    Sleep   1s
    Wait Until Page Contains Element    ${CHAT_GPT_ALTERNATE_BOX_ARROW}
    Element Should Be Visible       ${CHAT_GPT_ALTERNATE_BOX_ARROW}
    Sleep   1s
    Wait Until Page Contains Element    ${CHAT_GPT_ALTERNATE_BOX_ARROW}
    Element Should Be Visible       ${CHAT_GPT_ALTERNATE_BOX_ARROW}
    Sleep   1s
    Click Element   ${CHAT_GPT_ALTERNATE_BOX}
    Wait Until Page Contains Element    ${OPTIONS_IN_CHATGPT_ALTERNATE}
    Element Should Be Visible       ${OPTIONS_IN_CHATGPT_ALTERNATE}
    Sleep   1s

Click Chat with code
    Wait Until Page Contains Element    ${CHAT_WITH_CODE}
    Element Should Be Visible       ${CHAT_WITH_CODE}
    Sleep   1s
    Wait Until Page Contains Element    ${CHAT_WITH_CODE_LOGO}
    Element Should Be Visible       ${CHAT_WITH_CODE_LOGO}
    Sleep   1s
    Click Element   ${CHAT_WITH_CODE}
    Wait Until Location Is      ${CHAT_WITH_CODE_URL}       timeout=5s
    Location Should Be      ${CHAT_WITH_CODE_URL}
    Sleep   1s

Verify Chat with code and logo presence in subpage
    Wait Until Page Contains Element    ${CHAT_WITH_CODE_IN_SUBPAGE}
    Element Should Be Visible      ${CHAT_WITH_CODE_IN_SUBPAGE}
    Sleep    2s
    Wait Until Page Contains Element    ${CHAT_WITH_CODE_LOGO_IN_SUBPAGE}
    Element Should Be Visible       ${CHAT_WITH_CODE_LOGO_IN_SUBPAGE}
    Sleep   2s

Click Chat with log
    Wait Until Page Contains Element    ${CHAT_WITH_LOG}
    Element Should Be Visible       ${CHAT_WITH_LOG}
    Sleep   1s
    Wait Until Page Contains Element    ${CHAT_WITH_LOG_LOGO}
    Element Should Be Visible       ${CHAT_WITH_LOG_LOGO}
    Sleep   1s
    Click Element   ${CHAT_WITH_LOG}
    Wait Until Location Is      ${CHAT_WITH_LOG_URL}       timeout=5s
    Location Should Be      ${CHAT_WITH_LOG_URL}
    Sleep   1s


Verify Chat with log and logo presence in subpage
    Wait Until Page Contains Element    ${CHAT_WITH_LOG_IN_SUBPAGE}
    Element Should Be Visible      ${CHAT_WITH_LOG_IN_SUBPAGE}
    Sleep    2s
    Wait Until Page Contains Element    ${CHAT_WITH_LOG_LOGO_IN_SUBPAGE}
    Element Should Be Visible       ${CHAT_WITH_LOG_LOGO_IN_SUBPAGE}
    Sleep   2s


Click Chat with MF4
    Wait Until Page Contains Element    ${CHAT_WITH_MF4}
    Element Should Be Visible       ${CHAT_WITH_MF4}
    Sleep   1s
    Wait Until Page Contains Element    ${CHAT_WITH_MF4_LOGO}
    Element Should Be Visible       ${CHAT_WITH_MF4_LOGO}
    Sleep   1s
    Click Element   ${CHAT_WITH_MF4}
    Wait Until Location Is      ${CHAT_WITH_MF4_URL}       timeout=5s
    Location Should Be      ${CHAT_WITH_MF4_URL}
    Sleep   1s

Verify Chat with MF4 and logo presence in subpage
    Wait Until Page Contains Element    ${CHAT_WITH_MF4_IN_SUBPAGE}
    Element Should Be Visible      ${CHAT_WITH_MF4_IN_SUBPAGE}
    Sleep    2s
    Wait Until Page Contains Element    ${CHAT_WITH_MF4_LOGO_IN_SUBPAGE}
    Element Should Be Visible       ${CHAT_WITH_MF4_LOGO_IN_SUBPAGE}
    Sleep   2s

Click Department
    Wait Until Page Contains Element    ${DEPARTMENT}
    Element Should Be Visible       ${DEPARTMENT}
    Sleep   1s
    Wait Until Page Contains Element    ${DEPARTMENT_LOGO}
    Element Should Be Visible       ${DEPARTMENT_LOGO}
    Sleep   1s
    Click Element   ${DEPARTMENT}
    Wait Until Location Is      ${DEPARTMENT_URL}       timeout=5s
    Location Should Be      ${DEPARTMENT_URL}
    Sleep   1s

Verify Department and logo presence in subpage
    Wait Until Page Contains Element    ${DEPARTMENT_IN_SUBPAGE}
    Element Should Be Visible      ${DEPARTMENT_IN_SUBPAGE}
    Sleep    2s
    Wait Until Page Contains Element    ${DEPARTMENT_LOGO_IN_SUBPAGE}
    Element Should Be Visible       ${DEPARTMENT_LOGO_IN_SUBPAGE}
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
    Wait Until Page Contains Element    ${ARROW_OF_SELECT_PLATFORM_AND_LLM_CONTAINER}
    Element Should Be Visible   ${ARROW_OF_SELECT_PLATFORM_AND_LLM_CONTAINER}
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