*** Settings ***
Resource    ../../Settings/settings.robot
*** Test Cases ***
Verify Landing page
    Open Browser    ${URL}    Chrome
    Maximize Browser Window
    Fill Login Form    ${USERNAME}    ${PASSWORD}
    Click Login Button
    Wait Until Location Is    ${SUCCESS_URL}    timeout=10s
    Location Should Be    ${SUCCESS_URL}
    Verify Gen E Logo Presence in landing page
    Verify DASHBOARD PRESENCE
    Click USER
    Location Should Be    ${home_URL}
    Close Browser