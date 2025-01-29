*** Settings ***
Resource    ../../Settings/settings.robot
Library    SeleniumLibrary
*** Test Cases ***
Verifying Login Page
    [Setup]     Login Page
    Fill Login Form    ${USERNAME}    ${PASSWORD}
    Click Login Button
    Wait Until Location Is    ${SUCCESS_URL}    timeout=20s
    Location Should Be    ${SUCCESS_URL}
    Sleep   7s
    [Teardown]    Close Browser

