*** Settings ***
Library    SeleniumLibrary
Resource    ../../../Keywords/ESB_Notes_Action_Tagging_Keywords.robot
*** Test Cases ***
Verify Decoding
    Open Browser    ${URL}    Chrome
    Maximize Browser Window
    ESB_Notes_Action_Tagging_Keywords.Fill Login Form    ${USERNAME}    ${PASSWORD}
    ESB_Notes_Action_Tagging_Keywords.Click Login Button
    Wait Until Location Is    ${SUCCESS_URL}    timeout=10s
    Location Should Be    ${SUCCESS_URL}
    Click SIDEMENU
    Verify all SIDEMENU OPTIONS
    Click Fine-Tuned Models
    Click ESB Notes Action Tagging
    Close Browser