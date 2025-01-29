*** Settings ***
Library    SeleniumLibrary
Resource      ../../../Settings/settings.robot
*** Test Cases ***
Verify Salesforce KB Explorer
    Open Browser    ${URL}    Chrome
    Maximize Browser Window
    Fill Login Form    ${USERNAME}    ${PASSWORD}
    Click Login Button
    Wait Until Location Is    ${SUCCESS_URL}    timeout=10s
    Location Should Be    ${SUCCESS_URL}
    Click SIDEMENU4
    Click AI Agents
    Click Salesforce KB Explorer
    Verify GenE text & logo presence
    Verify Sub-Page in Salesforce KB Explorer
    Close Browser