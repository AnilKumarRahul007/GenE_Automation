*** Settings ***
Library    SeleniumLibrary
Resource    ../../../Settings/settings.robot
*** Test Cases ***
Verifiying LLM Cost
    Open Browser    ${URL}       Chrome
    Maximize Browser Window
    Fill Login Form    ${USERNAME}    ${PASSWORD}
    Click Login Button
    Wait Until Location Is    ${SUCCESS_URL}    timeout=10s
    Location Should Be    ${SUCCESS_URL}
    Click SIDEMENU17
    Click LLM Metrics
    Click LLM Cost
    Close Browser