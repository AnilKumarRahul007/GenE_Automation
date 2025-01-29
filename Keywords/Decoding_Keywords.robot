#*** Settings ***
#Variables   ../Variables/Variables.py
#Resource    Loginpage_Keywords.robot
*** Keywords ***
Click SIDEMENU14
    Wait Until Page Contains Element        ${SIDE_MENU}
    Element Should Be Visible       ${SIDE_MENU}
    Click Element       ${SIDE_MENU}
    Sleep   3s

Click Fine-Tuned Models2
    Wait Until Page Contains Element    ${FINE_TUNED_MODELS_BOX}
    Element Should Be Visible       ${FINE_TUNED_MODELS_BOX}
    Sleep   1s
    Wait Until Page Contains Element    ${FINE_TUNED_MODELS_BOX_LOGO}
    Element Should Be Visible       ${FINE_TUNED__MODELS_BOX_LOGO}
    Sleep   1s
    Click Element   ${FINE_TUNED_MODELS_BOX}
    Sleep   2s
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