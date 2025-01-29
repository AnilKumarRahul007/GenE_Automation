*** Settings ***
Library    SeleniumLibrary
Resource    ../../../Settings/settings.robot
*** Test Cases ***
Verifiying LLM Performance
    Open Browser    ${URL}    Chrome
    Maximize Browser Window
    Fill Login Form    ${USERNAME}    ${PASSWORD}
    Click Login Button
    Wait Until Location Is    ${SUCCESS_URL}    timeout=10s
    Location Should Be    ${SUCCESS_URL}
    Click SIDEMENU18
    Click LLM Metrics
    Click LLM Performance
    Verify Table in Performance sub page
    Verify arrow keys and page numbers of table
    execute javascript      window.scroll(2000,0)
    Click SIDEMENU
    Click SIDEMENU
    Verify summary box
#    Scroll Element    ${SCROLLABLE_ELEMENT}    0    2000
#    execute javascript      window.scroll(0,document.body.scrollHeight)
#    Sleep   2s
#    execute javascript      window.scroll(0,-document.body.scrollHeight)
#    Sleep   2s
    Close Browser