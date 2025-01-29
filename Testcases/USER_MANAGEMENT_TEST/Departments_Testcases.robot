*** Settings ***
Resource    ../../Settings/settings.robot
Library      SeleniumLibrary
*** Test Cases ***
Verifiying Departments
    Open Browser    ${URL}    Chrome
    Maximize Browser Window
    Fill Login Form    ${USERNAME}    ${PASSWORD}
    Click Login Button
    Wait Until Location Is    ${SUCCESS_URL}    timeout=20s
    Location Should Be    ${SUCCESS_URL}
    Click SIDEMENU19
    Click User Management
    Click Departments
    Verify Sub Page in departments
    Verify Table in departments
    Verify Page Numbers in departments
    Close Browser