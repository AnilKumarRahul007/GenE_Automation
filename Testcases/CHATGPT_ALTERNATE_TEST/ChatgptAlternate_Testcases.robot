*** Settings ***
Library    SeleniumLibrary
Resource    ../../Keywords/ChatgptAlternate_Keywords.robot
*** Test Cases ***
Verifying ChatgptAlternate
    Open Browser    ${URL}    Chrome
    Maximize Browser Window
    ChatgptAlternate_Keywords.Fill Login Form    ${USERNAME}    ${PASSWORD}
    ChatgptAlternate_Keywords.Click Login Button
    Wait Until Location Is    ${SUCCESS_URL}    timeout=10s
    Location Should Be    ${SUCCESS_URL}
    Click SIDEMENU
    Verify all SIDEMENU OPTIONS
    Click Chat Gpt Alternate
    Click Chat with docs
    Verify Chat with docs and logo presence in subpage
    Verify Right Menu
    Close Browser