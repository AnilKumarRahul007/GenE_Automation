*** Settings ***
Library    SeleniumLibrary
Resource      ../../Settings/settings.robot
*** Test Cases ***
Verify Safe Digging
    Open Browser    ${URL}    Chrome
    Maximize Browser Window
    Fill Login Form    ${USERNAME}    ${PASSWORD}
    Click Login Button
    Wait Until Location Is    ${SUCCESS_URL}    timeout=20s
    Location Should Be    ${SUCCESS_URL}
    Click SIDEMENU13
    Click Custom ML Models
    Click Safe Digging
    Verify Drag and drop or select a PDF to Upload
    Verify Select Company
    Verify Upload
    Wait Until Element Is Visible    ${TABLE_PRESENCE}    10s
    Verify Table Column    ${TABLE_PRESENCE}    ${EXPECTED_COLUMN1}
    Verify Table Column    ${TABLE_PRESENCE}    ${EXPECTED_COLUMN2}
    Verify Table Column    ${TABLE_PRESENCE}    ${EXPECTED_COLUMN3}
    Verify Table Column    ${TABLE_PRESENCE}    ${EXPECTED_COLUMN4}
    Verify Table Column    ${TABLE_PRESENCE}    ${EXPECTED_COLUMN5}
    Verify Table Column    ${TABLE_PRESENCE}    ${EXPECTED_COLUMN6}
    Verify Table Column    ${TABLE_PRESENCE}    ${EXPECTED_COLUMN7}
    Verify Table Column    ${TABLE_PRESENCE}    ${EXPECTED_COLUMN8}
    Verify Table Column    ${TABLE_PRESENCE}    ${EXPECTED_COLUMN9}
    Verify Table Column    ${TABLE_PRESENCE}    ${EXPECTED_COLUMN10}
    Verify Table Column    ${TABLE_PRESENCE}    ${EXPECTED_COLUMN11}
    Verify Table Column    ${TABLE_PRESENCE}    ${EXPECTED_COLUMN12}
    Verify Table Column    ${TABLE_PRESENCE}    ${EXPECTED_COLUMN13}
    Verify Table Column    ${TABLE_PRESENCE}    ${EXPECTED_COLUMN14}
    Verify Left Arrow and Right Arrow and Page Number
    Close Browser