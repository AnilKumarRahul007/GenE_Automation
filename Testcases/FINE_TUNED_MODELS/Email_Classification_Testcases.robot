*** Settings ***
Library    SeleniumLibrary
Resource    ../../Keywords/Email_Classfication_Keywords.robot
*** Test Cases ***
Verify Fine-Tuned Models
    Open Browser    ${URL}    Chrome
    Maximize Browser Window
    Email_Classfication_Keywords.Fill Login Form    ${USERNAME}    ${PASSWORD}
    Email_Classfication_Keywords.Click Login Button
    Wait Until Location Is    ${SUCCESS_URL}    timeout=10s
    Location Should Be    ${SUCCESS_URL}
    Click SIDEMENU
    Verify all SIDEMENU OPTIONS
    Click Fine-Tuned Models
    Click Email Functionality
    Verify Input
    Verify TextArea
    Verify Run
    Verify Output
    Verify LLM Deployment
    Close Browser