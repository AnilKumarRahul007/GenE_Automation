*** Settings ***
Resource    ../../Settings/settings.robot
Resource    ../../Keywords/SignUpPage_Keywords.robot
Resource    ../../Keywords/Loginpage_Keywords.robot
Library      SeleniumLibrary
*** Test Cases ***
Checking Negative Cases
    [Setup]  Open Sign Up Page
    Sleep    3s
    # Test Case 2: Verify GenE Logo Presence
    Page Should Contain Element    ${GENE_LOGO_IN_SIGNUP}
    # Test Case 3: Verify 'Enter Your Name' Logo Presence
    Page Should Contain Element    ${ENTER_YOUR_NAME_LOGO}
    # Test Case 4: Verify 'Enter Your Name' Input Field Presence
    Page Should Contain Element    ${NAME_INPUT_LOCATOR}
    # Test Case 5: Verify Brief Case Logo Presence
    Page Should Contain Element    ${BRIEFCASE_LOGO}
    # Test Case 6: Verify Email Logo Presence
    Page Should Contain Element    ${EMAIL_LOGO_IN_SIGNUP}
    # Test Case 7: Verify Lock Logo Presence
    Page Should Contain Element    ${LOCK_LOGO_IN_SIGNUP}
    # Test Case 8: Verify Confirm Password Logo Presence
    Page Should Contain Element    ${CONFIRM_PASSWORD_LOGO}
    # Test Case 9: Verify Forgot Password Presence
    Page Should Contain Element    ${FORGOT_PASSWORD_PRESENCE}
    # Test Case 10: Verify Sign Up Button Presence
    Page Should Contain Element    ${SIGN_UP_BUTTON_PRESENCE_IN_SIGNUP}
    # Test Case 11: Verify Sign In Button Presence
    Page Should Contain Element    ${SIGN_IN_PRESENCE_IN_SIGNUP}
    Wrong Fill Sign Up Form   98ujkas0^    alskdjaslk@.com      &^%$(*      &^%$(*
    Click Element    ${SIGN_UP_BUTTON}
    Sleep   3s
    [Teardown]  Close Browser