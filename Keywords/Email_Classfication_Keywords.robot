*** Settings ***
Variables   ../Variables/Variables.py
Resource    Loginpage_Keywords.robot
*** Keywords ***

Fill Login Form
    [Arguments]    ${email}    ${password}
    Input Text    ${USERNAME_LOCATOR}    ${email}
    Input Text    ${PASSWORD_LOCATOR}    ${password}

Click Login Button
    Click Element    ${LOGIN_BUTTON}
    Sleep   3s

Click SIDEMENU
    Click Element    ${SIDE_MENU}
    Sleep   3s

Verify all SIDEMENU OPTIONS
    Wait Until Page Contains Element    ${SIDEMENU_OPTIONS}
    Element Should Be Visible       ${SIDEMENU_OPTIONS}
    Sleep   1s
    Wait Until Page Contains Element    ${SUBCRIPTION_BOX}
    Element Should Be Visible       ${SUBCRIPTION_BOX}
    Sleep   1s
    Wait Until Page Contains Element    ${USERIMAGE_IN_SUBCRIPTION_BOX}
    Element Should Be Visible       ${USERIMAGE_IN_SUBCRIPTION_BOX}
    Sleep   1s
    Wait Until Page Contains Element    ${USERNAME_IN_SUBCRIPTION_BOX}
    Element Should Be Visible       ${USERNAME_IN_SUBCRIPTION_BOX}
    Sleep   1s

Click Fine-Tuned Models
    Wait Until Page Contains Element    ${FINE_TUNED_MODELS_BOX}
    Element Should Be Visible       ${FINE_TUNED_MODELS_BOX}
    Sleep   1s
    Wait Until Page Contains Element    ${FINE_TUNED_MODELS_BOX_LOGO}
    Element Should Be Visible       ${FINE_TUNED__MODELS_BOX_LOGO}
    Sleep   1s
    Click Element   ${FINE_TUNED_MODELS_BOX}
    Wait Until Page Contains Element    ${OPTIONS_IN_FINE_TUNED_MODELS}
    Element Should Be Visible       ${OPTIONS_IN_FINE_TUNED_MODELS}
    Sleep   1s

Click Email Functionality
    Wait Until Page Contains Element    ${EMAIL_FUNCTIONALITY}
    Element Should Be Visible       ${EMAIL_FUNCTIONALITY}
    Sleep   1s
    Wait Until Page Contains Element    ${EMAIL_FUNCTIONALITY_LOGO}
    Element Should Be Visible       ${EMAIL_FUNCTIONALITY_LOGO}
    Sleep   1s
    Click Element   ${EMAIL_FUNCTIONALITY}
    Wait Until Location Is      ${EMAIL_FUNCTIONALITY_URL}       timeout=5s
    Location Should Be      ${EMAIL_FUNCTIONALITY_URL}
    Sleep   1s

Verify Input
    Wait Until Page Contains Element    ${INPUT_TEXT}
    Element Should Be Visible       ${INPUT_TEXT}
    Sleep   1s

Verify TextArea
    Wait Until Page Contains Element    ${TEXT_AREA}
    Element Should Be Visible       ${TEXT_AREA}
    Sleep   1s

Verify Run
    Wait Until Page Contains Element    ${RUN_BUTTON}
    Element Should Be Visible       ${RUN_BUTTON}
    Sleep   1s
    Click Element      ${RUN_BUTTON}

Verify Output
    Wait Until Page Contains Element    ${OUTPUT_TEXT }
    Element Should Be Visible       ${OUTPUT_TEXT }
    Sleep   1s

Verify LLM Deployment
    Wait Until Page Contains Element    ${LLM_DEPLOYMENT_DROPDOWN}
    Element Should Be Visible       ${LLM_DEPLOYMENT_DROPDOWN}
    Sleep   1s
    Wait Until Page Contains Element    ${LLM_DEPLOYMENT_DROPDOWN_ARROW}
    Element Should Be Visible       ${LLM_DEPLOYMENT_DROPDOWN_ARROW}
    Sleep   1s
    Click Element   ${LLM_DEPLOYMENT_DROPDOWN_ARROW}
    Sleep   1s
    Click Element   ${Mistral_7b_Instruct_Option}
    Sleep   1s
    Click Element   ${LLM_DEPLOYMENT_DROPDOWN_ARROW}
    Sleep   1s
    Click Element   ${Llama_2_7b_Chat_Option}
    Sleep   1s
    Click Element   ${LLM_DEPLOYMENT_DROPDOWN_ARROW}
    Sleep   1s
    Click Element   ${Anyscale_Llama_option}
    Sleep   1s
    Click Element   ${LLM_DEPLOYMENT_DROPDOWN_ARROW}
    Sleep   1s
    Click Element   ${Gemma_7_Instruct_Option}
    Sleep   1s