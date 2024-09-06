*** Settings ***
Library    SeleniumLibrary
Resource    ../../../Keywords/AI_Agents_SAI- Script_Distro_Keywords.robot
*** Test Cases ***
Verify Decoding
    Open Browser    ${URL}    Chrome
    Maximize Browser Window
    AI_Agents_SAI- Script_Distro_Keywords.Fill Login Form    ${USERNAME}    ${PASSWORD}
    AI_Agents_SAI- Script_Distro_Keywords.Click Login Button
    Wait Until Location Is    ${SUCCESS_URL}    timeout=10s
    Location Should Be    ${SUCCESS_URL}
    Click SIDEMENU
    Verify all SIDEMENU OPTIONS
    Click AI Agents
    Click Sai- Script Distro
    Verify Subpage in Sai- Script Distro
    Close Browser