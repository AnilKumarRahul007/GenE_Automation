*** Settings ***
Library    SeleniumLibrary
Resource    ../../../Keywords/Chatwithscript_Keywords.robot
*** Test Cases ***
Verifying ChatwithScript
    Open Browser    ${URL}    Chrome
    Maximize Browser Window
    Chatwithscript_Keywords.Fill Login Form    ${USERNAME}    ${PASSWORD}
    Chatwithscript_Keywords.Click Login Button
    Wait Until Location Is    ${SUCCESS_URL}    timeout=10s
    Location Should Be    ${SUCCESS_URL}
    Click SIDEMENU
    Verify all SIDEMENU OPTIONS
    Click Chat Gpt Alternate
    Click Chat with script
    Verify Chat with script and logo presence in subpage
    Verify GenE text & logo presence
    Verify ChatContainer
    Verify Options in the top right corner of the subpage
    Verify all options are clickable
    Verify Ask a Question Container
    Verify Right Menu
    Close Browser