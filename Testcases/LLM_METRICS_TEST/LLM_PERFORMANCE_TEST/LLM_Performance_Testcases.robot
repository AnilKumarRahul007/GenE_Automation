*** Settings ***
Library    SeleniumLibrary
Resource    ../../../Keywords/LLM_Metrics_LLM_Performance_Keywords.robot
*** Test Cases ***
Verifiying LLM Performance
    Open Browser    ${URL}    Chrome
    Maximize Browser Window
    LLM_Metrics_LLM_Performance_Keywords.Fill Login Form    ${USERNAME}    ${PASSWORD}
    LLM_Metrics_LLM_Performance_Keywords.Click Login Button
    Wait Until Location Is    ${SUCCESS_URL}    timeout=10s
    Location Should Be    ${SUCCESS_URL}
    Click SIDEMENU
    Verify all SIDEMENU OPTIONS
    Click LLM Metrics
    Click LLM Performance
    Verify Table
    Verify arrow keys and page numbers of table
    execute javascript      window.scroll(2000,0)
    Click SIDEMENU
    Click SIDEMENU
    Verify summary box
    Scroll Element    ${SCROLLABLE_ELEMENT}    0    2000
#    execute javascript      window.scroll(0,document.body.scrollHeight)
#    Sleep   2s
#    execute javascript      window.scroll(0,-document.body.scrollHeight)
#    Sleep   2s
    Close Browser