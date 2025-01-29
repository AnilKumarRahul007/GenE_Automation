*** Settings ***
Library    SeleniumLibrary
Resource      ../../../Settings/settings.robot
*** Test Cases ***
Verifying VoiceAssistant
    Open Browser    ${URL}    Chrome
    Maximize Browser Window
    Fill Login Form    ${USERNAME}    ${PASSWORD}
    Click Login Button
    Wait Until Location Is    ${SUCCESS_URL}    timeout=10s
    Location Should Be    ${SUCCESS_URL}
    Click SIDEMENU12
    Click Chat Gpt Alternate3
    Click Voice Assistant
    Verify Voice Assistant and logo presence in subpage
    Verify GenE text & logo presence
    Verify ChatContainer
    Verify Options in the top right corner of the subpage
    Verify all options are clickable
    Verify Ask a Question Container
    Verify Right Menu
    Close Browser