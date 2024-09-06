*** Settings ***
Library    SeleniumLibrary
Resource    ../../../Keywords/AI_Agents_Email_Extraction_Keywords.robot
*** Test Cases ***
Verify Decoding
    Open Browser    ${URL}    Chrome
    Maximize Browser Window
    AI_Agents_Email_Extraction_Keywords.Fill Login Form    ${USERNAME}    ${PASSWORD}
    AI_Agents_Email_Extraction_Keywords.Click Login Button
    Wait Until Location Is    ${SUCCESS_URL}    timeout=10s
    Location Should Be    ${SUCCESS_URL}
    Click SIDEMENU
    Verify all SIDEMENU OPTIONS
    Click AI Agents
    Click Email Extraction
    Close Browser