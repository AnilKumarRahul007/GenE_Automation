#*** Settings ***
#Variables   ../Variables/Variables.py
#Resource    Loginpage_Keywords.robot
#Library  Collections
*** Keywords ***
Click SIDEMENU18
    Wait Until Page Contains Element        ${SIDE_MENU}
    Element Should Be Visible       ${SIDE_MENU}
    Click Element       ${SIDE_MENU}
    Sleep   3s

Click LLM Metrics
    Wait Until Page Contains Element    ${LLM_METRICS_BOX}
    Element Should Be Visible       ${LLM_METRICS_BOX}
    Sleep   1s
    Wait Until Page Contains Element    ${LLM_METRICS_BOX_LOGO}
    Element Should Be Visible       ${LLM_METRICS_BOX_LOGO}
    Sleep   1s
    Click Element   ${LLM_METRICS_BOX}
    Sleep   2s

Click LLM Performance
    Wait Until Page Contains Element    ${LLM_PERFORMANCE_BOX}
    Element Should Be Visible       ${LLM_PERFORMANCE_BOX}
    Sleep   1s
    Wait Until Page Contains Element    ${LLM_PERFORMANCE_BOX_LOGO}
    Element Should Be Visible       ${LLM_PERFORMANCE_BOX_LOGO}
    Sleep   1s
    Click Element   ${LLM_PERFORMANCE_BOX}
    Wait Until Location Is      ${LLM_PERFORMANCE_URL}       timeout=5s
    Location Should Be      ${LLM_PERFORMANCE__URL}
    Sleep   2s

Verify Table in Performance sub page
    Wait Until Element Is Visible    ${LLM_PERFORMANCE_TABLE}    10s
    Verify Table Column    ${LLM_PERFORMANCE_TABLE}    ${COLUMN1_IN_LLM_PERFORMANCE_TABLE}
    Verify Table Column    ${LLM_PERFORMANCE_TABLE}    ${COLUMN2_IN_LLM_PERFORMANCE_TABLE}
    Verify Table Column    ${LLM_PERFORMANCE_TABLE}    ${COLUMN3_IN_LLM_PERFORMANCE_TABLE}
    Verify Table Column    ${LLM_PERFORMANCE_TABLE}    ${COMPLETENESS_IN_COLUMN3}
    Verify Table Column    ${LLM_PERFORMANCE_TABLE}    ${CONSISTENCY_IN_COLUMN3}
    Verify Table Column    ${LLM_PERFORMANCE_TABLE}    ${RELEVANCE_IN_COLUMN3}
    Verify Table Column    ${LLM_PERFORMANCE_TABLE}    ${VALIDITY_IN_COLUMN3}
    Verify Table Column    ${LLM_PERFORMANCE_TABLE}    ${CONCISENESS_IN_COLUMN3}
    Verify Table Column    ${LLM_PERFORMANCE_TABLE}    ${COLUMN4_IN_LLM_PERFORMANCE_TABLE}
    Verify Table Column    ${LLM_PERFORMANCE_TABLE}    ${COLUMN5_IN_LLM_PERFORMANCE_TABLE}
    Verify Table Column    ${LLM_PERFORMANCE_TABLE}    ${UTILIZATION_IN_COLUMN5}
    Verify Table Column    ${LLM_PERFORMANCE_TABLE}    ${ACCURACY_IN_COLUMN5}
    Verify Table Column    ${LLM_PERFORMANCE_TABLE}    ${RELEVANCE_IN_COLUMN5}
    Verify Table Column    ${LLM_PERFORMANCE_TABLE}    ${COLUMN6_IN_LLM_PERFORMANCE_TABLE}
    Verify Table Column    ${LLM_PERFORMANCE_TABLE}    ${COLUMN7_IN_LLM_PERFORMANCE_TABLE}
    Verify Table Column    ${LLM_PERFORMANCE_TABLE}    ${COLUMN8_IN_LLM_PERFORMANCE_TABLE}
    Verify Table Column    ${LLM_PERFORMANCE_TABLE}    ${COLUMN9_IN_LLM_PERFORMANCE_TABLE}

Verify arrow keys and page numbers of table
    Wait Until Page Contains Element    ${LEFT_ARROW_KEY}
    Element Should Be Visible       ${LEFT_ARROW_KEY}
    Sleep   1s
    Wait Until Page Contains Element    ${RIGHT_ARROW_KEY}
    Element Should Be Visible       ${RIGHT_ARROW_KEY}
    Sleep   1s
    Click Element   ${RIGHT_ARROW_KEY}
    Sleep   1s
    Click Element   ${RIGHT_ARROW_KEY}
    Sleep   1s
    Click Element   ${RIGHT_ARROW_KEY}
    Sleep   1s
    Wait Until Page Contains Element    ${PAGE_NUMBER1_OF_TABLE}
    Element Should Be Visible       ${PAGE_NUMBER1_OF_TABLE}
    Sleep   1s
    Wait Until Page Contains Element    ${PAGE_NUMBER2_OF_TABLE}
    Element Should Be Visible       ${PAGE_NUMBER2_OF_TABLE}
    Sleep   1s
    Wait Until Page Contains Element    ${PAGE_NUMBER3_OF_TABLE}
    Element Should Be Visible       ${PAGE_NUMBER3_OF_TABLE}
    Sleep   1s
    Wait Until Page Contains Element    ${PAGE_NUMBER4_OF_TABLE}
    Element Should Be Visible       ${PAGE_NUMBER4_OF_TABLE}
    Sleep   1s
    Click Element   ${LEFT_ARROW_KEY}
    Sleep   1s
    Click Element   ${LEFT_ARROW_KEY}
    Sleep   1s
    Click Element   ${LEFT_ARROW_KEY}
    Sleep   1s
    Click Element   ${LEFT_ARROW_KEY}
    Sleep   1s

Verify summary box
    Wait Until Page Contains Element    ${SUMMARY_BOX_POPUP}
    Element Should Be Visible       ${SUMMARY_BOX_POPUP}
    Sleep   1s
    Click Element   ${SUMMARY_BOX_POPUP}
    Sleep   3s
    Wait Until Page Contains Element    ${CLOSE_BUTTON_OF_POPUP}
    Element Should Be Visible       ${CLOSE_BUTTON_OF_POPUP}
    Sleep   2s
    Wait Until Page Contains Element    ${EMAIL_DETAILS_IN_POPUP}
    Element Should Be Visible       ${EMAIL_DETAILS_IN_POPUP}
    Sleep   2s
    Wait Until Page Contains Element    ${APPLICATION_DETAILS_IN_POPUP}
    Element Should Be Visible       ${APPLICATION_DETAILS_IN_POPUP}
    Sleep   2s
    Wait Until Page Contains Element    ${QUESTION_DETAILS_IN_POPUP}
    Element Should Be Visible       ${QUESTION_DETAILS_IN_POPUP}
    Sleep   2s
    Wait Until Page Contains Element    ${RESPONSE_COMPLETENESS_DETAILS_IN_POPUP}
    Element Should Be Visible       ${RESPONSE_COMPLETENESS_DETAILS_IN_POPUP}
    Sleep   2s
    Wait Until Page Contains Element    ${SCORE_DETAILS_IN_POPUP}
    Element Should Be Visible       ${SCORE_DETAILS_IN_POPUP}
    Sleep   2s
    Wait Until Page Contains Element    ${EXPLANATION_DETAILS_IN_POPUP}
    Element Should Be Visible       ${EXPLANATION_DETAILS_IN_POPUP}
    Sleep   2s
    Wait Until Page Contains Element    ${RESPONSE_CONSISTENCY_IN_POPUP}
    Element Should Be Visible       ${RESPONSE_CONSISTENCY_IN_POPUP}
    Sleep   2s
    Wait Until Page Contains Element    ${SCORE_IN_RESPONSE_CONSISTENCY}
    Element Should Be Visible       ${SCORE_IN_RESPONSE_CONSISTENCY}
    Sleep   2s
    Wait Until Page Contains Element    ${EXPLANATION_IN_RESPONSE_CONSISTENCY}
    Element Should Be Visible       ${EXPLANATION_IN_RESPONSE_CONSISTENCY}
    Sleep   2s
    Wait Until Page Contains Element    ${RESPONSE_RELEVANCE}
    Element Should Be Visible       ${RESPONSE_RELEVANCE}
    Sleep   2s
    Wait Until Page Contains Element    ${SCORE_IN_RESPONSE_RELEVANCE}
    Element Should Be Visible       ${SCORE_IN_RESPONSE_RELEVANCE}
    Sleep   2s
    Wait Until Page Contains Element    ${EXPLANATION_IN_RESPONSE_RELEVANCE}
    Element Should Be Visible       ${EXPLANATION_IN_RESPONSE_RELEVANCE}
    Sleep   2s
    Wait Until Page Contains Element    ${VALID_RESPONSE}
    Element Should Be Visible       ${VALID_RESPONSE}
    Sleep   2s
    Wait Until Page Contains Element    ${SCORE_IN_VALID_RESPONSE}
    Element Should Be Visible       ${SCORE_IN_VALID_RESPONSE}
    Sleep   2s
    Wait Until Page Contains Element    ${EXPLANATION_DETAILS_IN_VALID_RESPONSE}
    Element Should Be Visible       ${EXPLANATION_DETAILS_IN_VALID_RESPONSE}
    Sleep   2s
    Wait Until Page Contains Element    ${RESPONSE_CONCISENESS}
    Element Should Be Visible       ${RESPONSE_CONCISENESS}
    Sleep   2s
    Wait Until Page Contains Element    ${SCORE_IN_RESPONSE_CONCISENESS}
    Element Should Be Visible       ${SCORE_IN_RESPONSE_CONCISENESS}
    Sleep   2s
    Wait Until Page Contains Element    ${EXPLANATION_IN_RESPONSE_CONCISENESS}
    Element Should Be Visible       ${EXPLANATION_IN_RESPONSE_CONCISENESS}
    Sleep   2s
    Wait Until Page Contains Element    ${CONTEXT_UTILISATION}
    Element Should Be Visible       ${CONTEXT_UTILISATION}
    Sleep   2s
    Wait Until Page Contains Element    ${SCORE_IN_CONTEXT_UTILISATION}
    Element Should Be Visible       ${SCORE_IN_CONTEXT_UTILISATION}
    Sleep   2s
    Wait Until Page Contains Element    ${EXPLANATION_IN_CONTEXT_UTILISATION}
    Element Should Be Visible       ${EXPLANATION_IN_CONTEXT_UTILISATION}
    Sleep   2s
    Wait Until Page Contains Element    ${FACTUAL_ACCURACY}
    Element Should Be Visible       ${FACTUAL_ACCURACY}
    Sleep   2s
    Wait Until Page Contains Element    ${SCORE_IN_FACTUAL_ACCURACY}
    Element Should Be Visible       ${SCORE_IN_FACTUAL_ACCURACY}
    Sleep   2s
    Wait Until Page Contains Element    ${EXPLANATION_IN_FACTUAL_ACCURACY}
    Element Should Be Visible       ${EXPLANATION_IN_FACTUAL_ACCURACY}
    Sleep   2s
    Wait Until Page Contains Element    ${CODE_HALLUCINATION}
    Element Should Be Visible       ${CODE_HALLUCINATION}
    Sleep   2s
    Wait Until Page Contains Element    ${SCORE_IN_CODE_HALLUCINATION}
    Element Should Be Visible       ${SCORE_IN_CODE_HALLUCINATION}
    Sleep   2s
    Wait Until Page Contains Element    ${EXPLANATION_IN_CODE_HALLUCINATION}
    Element Should Be Visible       ${EXPLANATION_IN_CODE_HALLUCINATION}
    Sleep   2s
    Wait Until Page Contains Element    ${CONTEXT_RELEVANCE}
    Element Should Be Visible       ${CONTEXT_RELEVANCE}
    Sleep   2s
    Wait Until Page Contains Element    ${SCORE_IN_CONTEXT_RELEVANCE}
    Element Should Be Visible       ${SCORE_IN_CONTEXT_RELEVANCE}
    Sleep   2s
    Wait Until Page Contains Element    ${EXPLANATION_IN_CONTEXT_RELEVANCE}
    Element Should Be Visible       ${EXPLANATION_IN_CONTEXT_RELEVANCE}
    Sleep   2s
    Wait Until Page Contains Element    ${FLUENCY}
    Element Should Be Visible       ${FLUENCY}
    Sleep   2s
    Wait Until Page Contains Element    ${SCORE_IN_FLUENCY}
    Element Should Be Visible       ${SCORE_IN_FLUENCY}
    Sleep   2s
    Wait Until Page Contains Element    ${EXPLANATION_IN_FLUENCY}
    Element Should Be Visible       ${EXPLANATION_IN_FLUENCY}
    Sleep   2s
    Wait Until Page Contains Element    ${COHERENCE}
    Element Should Be Visible       ${COHERENCE}
    Sleep   2s
    Wait Until Page Contains Element    ${SCORE_IN_COHERENCE}
    Element Should Be Visible       ${SCORE_IN_COHERENCE}
    Sleep   2s
    Wait Until Page Contains Element    ${EXPLANATION_IN_COHERENCE}
    Element Should Be Visible       ${EXPLANATION_IN_COHERENCE}
    Sleep   2s
    Wait Until Page Contains Element    ${GRAMMAR}
    Element Should Be Visible       ${GRAMMAR}
    Sleep   2s
    Wait Until Page Contains Element    ${SCORE_IN_GRAMMAR}
    Element Should Be Visible       ${SCORE_IN_GRAMMAR}
    Sleep   2s
    Wait Until Page Contains Element    ${EXPLANATION_IN_GRAMMAR}
    Element Should Be Visible       ${EXPLANATION_IN_GRAMMAR}
    Sleep   2s
    Wait Until Page Contains Element    ${POLITENESS}
    Element Should Be Visible       ${POLITENESS}
    Sleep   2s
    Wait Until Page Contains Element    ${SCORE_IN_POLITENESS}
    Element Should Be Visible       ${SCORE_IN_POLITENESS}
    Sleep   2s
    Wait Until Page Contains Element    ${EXPLANATION_IN_POLITENESS}
    Element Should Be Visible       ${EXPLANATION_IN_POLITENESS}
    Sleep   2s

Scroll Element
    [Arguments]    ${element_locator}    ${x}    ${y}
    ${element}    Get WebElement    ${element_locator}
    Execute JavaScript    arguments[0].scrollIntoView();    ${element}
    Execute JavaScript    window.scrollBy(${x}, ${y});
