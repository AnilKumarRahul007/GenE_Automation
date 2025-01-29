*** Settings ***
Library    SeleniumLibrary
Resource      ../../../Settings/settings.robot
*** Test Cases ***
Verifying Summary Buffer
    Open Browser    ${URL}    Chrome
    Maximize Browser Window
    Fill Login Form    ${USERNAME}    ${PASSWORD}
    Click Login Button
    Wait Until Location Is    ${SUCCESS_URL}    timeout=10s
    Location Should Be    ${SUCCESS_URL}
    Click SIDEMENU11

    Click Chat Gpt Alternate
    Click Summary Buffer
    Verify Options in the top right corner of the subpage
    Verify all options are clickable
    Verify Ask a Question Container
    Verify Right Menu
    Close Browser