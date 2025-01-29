*** Settings ***
Library    SeleniumLibrary
Resource    ../../Settings/settings.robot
*** Test Cases ***
Verifying YourprivateGPT
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Fill Login Form    ${USERNAME}    ${PASSWORD}
    Click Login Button
    Wait Until Location Is    ${SUCCESS_URL}    timeout=10s
    Location Should Be    ${SUCCESS_URL}
    Click SIDEMENU20
    Click PRIVATEGPT
    Location Should Be    https://gene-nextjs-dev.dtskill.com/dashboard/private-gpt
    Verify Private gpt heading and logo
    Verify GenE text & logo presence
    Verify ChatContainer
    Verify Option in the top right corner of the subpage
    Verify all options are clickable
    Verify Ask a Question container
    Verify Right Menu in YourprivateGPT
    Upload Directory
    Close Browser


