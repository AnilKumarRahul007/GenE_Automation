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

Click Decoding
    Wait Until Page Contains Element    ${DECODING_BOX}
    Element Should Be Visible       ${DECODING_BOX}
    Sleep   1s
    Wait Until Page Contains Element    ${DECODING_BOX_LOGO}
    Element Should Be Visible       ${DECODING_BOX_LOGO}
    Sleep   1s
    Click Element   ${DECODING_BOX}
    Wait Until Location Is      ${DECODING_URL}       timeout=5s
    Location Should Be      ${DECODING_URL}
    Sleep   3s