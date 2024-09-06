*** Settings ***
Library    SeleniumLibrary
Resource    ../../../Keywords/Decoding_Keywords.robot
*** Test Cases ***
Verify Decoding
    Open Browser    ${URL}    Chrome
    Maximize Browser Window
    Decoding_Keywords.Fill Login Form    ${USERNAME}    ${PASSWORD}
    Decoding_Keywords.Click Login Button
    Wait Until Location Is    ${SUCCESS_URL}    timeout=10s
    Location Should Be    ${SUCCESS_URL}
    Click SIDEMENU
    Verify all SIDEMENU OPTIONS
    Click Fine-Tuned Models
    Click Decoding
    Close Browser