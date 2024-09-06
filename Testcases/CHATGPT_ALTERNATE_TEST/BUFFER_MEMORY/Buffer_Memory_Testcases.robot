*** Settings ***
Library    SeleniumLibrary
Resource    ../../../Keywords/ChatgptAlternate_Keywords.robot
*** Test Cases ***
Verifying BufferMemory
    Open Browser    ${URL}    Chrome
    Maximize Browser Window
    ChatgptAlternate_Keywords.Fill Login Form    ${USERNAME}    ${PASSWORD}
    ChatgptAlternate_Keywords.Click Login Button
    Wait Until Location Is    ${SUCCESS_URL}    timeout=10s
    Location Should Be    ${SUCCESS_URL}
    Click SIDEMENU
    Verify all SIDEMENU OPTIONS
    Click Chat Gpt Alternate
    Click Buffer Memory
    Verify Buffer Memory and logo presence in subpage
    Verify GenE text & logo presence
    Verify ChatContainer
    Verify Options in the top right corner of the subpage
    Verify all options are clickable
    Verify Ask a Question Container
    Verify Right Menu
    Close Browser