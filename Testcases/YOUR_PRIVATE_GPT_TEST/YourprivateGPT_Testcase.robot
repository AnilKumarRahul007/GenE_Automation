*** Settings ***
Library    SeleniumLibrary
Resource    ../../Keywords/YourprivateGPT_Keywords.robot
*** Test Cases ***
Verifying YourprivateGPT
    Open Browser    ${URL}    Chrome
    Maximize Browser Window
    YourprivateGPT_Keywords.Fill Login Form    ${USERNAME}    ${PASSWORD}
    YourprivateGPT_Keywords.Click Login Button
    Wait Until Location Is    ${SUCCESS_URL}    timeout=10s
    Location Should Be    ${SUCCESS_URL}
    Click SIDEMENU
    Click PRIVATEGPT
    Location Should Be    https://gene-nextjs-dev.dtskill.com/dashboard/private-gpt
    Verify Private gpt heading and logo
    Verify GenE text & logo presence
    Verify ChatContainer
    Verify Option in the top right corner of the subpage
    Verify all options are clickable
    Verify Ask a Question container
    Verify Right Menu
    Upload Directory
    Close Browser


