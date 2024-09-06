*** Settings ***
Resource    ../../Settings/settings.robot
Resource    ../../Keywords/Loginpage_Keywords.robot
Library    Process


*** Test Cases ***
GenE
    [Setup]     Login Page
    Loginpage_Keywords.Fill Login Form    ${USERNAME}    ${PASSWORD}
    Loginpage_Keywords.Click Login Button
    Wait Until Location Is    ${SUCCESS_URL}    timeout=20s
    Location Should Be    ${SUCCESS_URL}
    Sleep   7s
    [Teardown]    Close Browser

