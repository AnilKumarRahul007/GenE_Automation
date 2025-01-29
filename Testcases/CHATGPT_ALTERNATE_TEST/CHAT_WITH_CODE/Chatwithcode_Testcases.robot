*** Settings ***
Library    SeleniumLibrary
Resource      ../../../Settings/settings.robot
*** Test Cases ***
Verifying ChatwithCode
    Open Browser    ${URL}    Chrome
    Maximize Browser Window
    Fill Login Form    ${USERNAME}    ${PASSWORD}
    Click Login Button
    Wait Until Location Is    ${SUCCESS_URL}    timeout=20s
    Location Should Be    ${SUCCESS_URL}
    Click SIDEMENU6
    Sleep   1s
    Click Chat Gpt Alternate2
    Click Chat with code
    Verify Chat with code and logo presence in subpage
    Verify GenE text & logo presence
    Verify ChatContainer
    Verify Options in the top right corner of the subpage
    Verify all options are clickable
    Verify Ask a Question Container
    Verify Right Menu
    Close Browser