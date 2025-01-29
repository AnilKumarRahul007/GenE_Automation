*** Settings ***
Resource    ../../../Settings/settings.robot
Library      SeleniumLibrary
*** Test Cases ***
Verifiying Organisation
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Fill Login Form    ${USERNAME}    ${PASSWORD}
    Click Login Button
    Wait Until Location Is    ${SUCCESS_URL}    timeout=10s
    Location Should Be    ${SUCCESS_URL}
    Click SIDEMENU18
    Click User Management
    Click Organisation
    Verify Sub page in organisation
    Verify Table in organisation
    Verify Page Numbers in organisation
    Close Browser