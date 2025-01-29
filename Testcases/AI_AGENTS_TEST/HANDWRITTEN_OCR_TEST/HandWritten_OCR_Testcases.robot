*** Settings ***
Library    SeleniumLibrary
Resource      ../../../Settings/settings.robot
*** Test Cases ***
Verify Handwritten OCR
    Open Browser    ${URL}    Chrome
    Maximize Browser Window
    Fill Login Form    ${USERNAME}    ${PASSWORD}
    Click Login Button
    Wait Until Location Is    ${SUCCESS_URL}    timeout=10s
    Location Should Be    ${SUCCESS_URL}
    Click SIDEMENU2
    Click AI Agents
    Click HandWritten OCR
    Verify Sub-Page in HandWritten OCR
    Close Browser