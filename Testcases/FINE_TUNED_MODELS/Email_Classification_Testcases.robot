*** Settings ***
Library    SeleniumLibrary
Resource      ../../Settings/settings.robot
*** Test Cases ***
Verify Email Classification
    Open Browser    ${URL}    Chrome
    Maximize Browser Window
    Fill Login Form    ${USERNAME}    ${PASSWORD}
    Click Login Button
    Wait Until Location Is    ${SUCCESS_URL}    timeout=10s
    Location Should Be    ${SUCCESS_URL}
    Click SIDEMENU16
    Sleep   1s
    Click Fine-Tuned Models
    Click Email Functionality
    Verify Input
    Verify TextArea
    Verify Run
    Verify Output
    Verify LLM Deployment
    Close Browser