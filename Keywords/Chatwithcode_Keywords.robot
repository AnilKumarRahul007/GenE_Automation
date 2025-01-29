*** Keywords ***
Click SIDEMENU6
    Wait Until Page Contains Element        ${SIDE_MENU}
    Element Should Be Visible       ${SIDE_MENU}
    Click Element       ${SIDE_MENU}
    Sleep   3s

Click Chat Gpt Alternate2
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