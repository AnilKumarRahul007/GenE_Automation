*** Settings ***
Library    SeleniumLibrary
Resource      ../../Settings/settings.robot
*** Test Cases ***
Verifying ChatgptAlternate
    Open Browser    ${URL}    Chrome
    Maximize Browser Window
    Fill Login Form    ${USERNAME}    ${PASSWORD}
    Click Login Button
    Wait Until Location Is    ${SUCCESS_URL}    timeout=10s
    Location Should Be    ${SUCCESS_URL}
    Click SIDEMENU5
    Click Chat Gpt Alternate
    Click Chat with docs
    Verify Chat with docs and logo presence in subpage
    Verify Right Menu
    Close Browser