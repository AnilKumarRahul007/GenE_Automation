*** Settings ***
Library    SeleniumLibrary
Resource    ../../Keywords/Custom_ML_Models_SafeDigging_Keywords.robot
*** Test Cases ***
Verify Decoding
    Open Browser    ${URL}    Chrome
    Maximize Browser Window
    Custom_ML_Models_SafeDigging_Keywords.Fill Login Form    ${USERNAME}    ${PASSWORD}
    Custom_ML_Models_SafeDigging_Keywords.Click Login Button
    Wait Until Location Is    ${SUCCESS_URL}    timeout=10s
    Location Should Be    ${SUCCESS_URL}
    Click SIDEMENU
    Verify all SIDEMENU OPTIONS
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