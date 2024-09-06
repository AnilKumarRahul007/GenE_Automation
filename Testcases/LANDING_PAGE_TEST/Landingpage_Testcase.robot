*** Settings ***
Resource    ../../Settings/settings.robot
Resource    ../../Keywords/LandingPage_Keywords.robot
*** Test Cases ***
Verify UI and Navigation
    Open Browser    ${URL}    Chrome
    Maximize Browser Window
    LandingPage_Keywords.Fill Login Form    ${USERNAME}    ${PASSWORD}
    LandingPage_Keywords.Click Login Button
    Wait Until Location Is    ${SUCCESS_URL}    timeout=10s
    Location Should Be    ${SUCCESS_URL}
    Verify Gen E Logo Presence in landing page
    Verify DASHBOARD PRESENCE
    Check for two options available on the top menu lists on the Dashboard
    Verify HOME and CONNECT OPTIONS
    Verify USER DP/EMAIL/NAME presence
    Click HOME
    Location Should Be    ${home_URL}
    Click SIDEMENU
    Click PRIVATEGPT
    Location Should Be    https://gene-nextjs-dev.dtskill.com/dashboard/private-gpt
    Close Browser