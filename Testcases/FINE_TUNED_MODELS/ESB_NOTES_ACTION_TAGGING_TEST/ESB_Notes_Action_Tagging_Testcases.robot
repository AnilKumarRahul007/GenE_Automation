*** Settings ***
Library    SeleniumLibrary
Resource      ../../../Settings/settings.robot
*** Test Cases ***
Verify ESB Notes Action Tagging
    Open Browser    ${URL}    Chrome
    Maximize Browser Window
    Fill Login Form    ${USERNAME}    ${PASSWORD}
    Click Login Button
    Wait Until Location Is    ${SUCCESS_URL}    timeout=10s
    Location Should Be    ${SUCCESS_URL}
    Click SIDEMENU15
    Click Fine-Tuned Models3
    Click ESB Notes Action Tagging
    Close Browser