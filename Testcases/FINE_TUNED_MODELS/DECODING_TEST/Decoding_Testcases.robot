*** Settings ***
Library    SeleniumLibrary
Resource      ../../../Settings/settings.robot
*** Test Cases ***
Verify Decoding
    Open Browser    ${URL}    Chrome
    Maximize Browser Window
    Fill Login Form    ${USERNAME}    ${PASSWORD}
    Click Login Button
    Wait Until Location Is    ${SUCCESS_URL}    timeout=20s
    Location Should Be    ${SUCCESS_URL}
    Click SIDEMENU14
    Click Fine-Tuned Models2
    Click Decoding
    Close Browser