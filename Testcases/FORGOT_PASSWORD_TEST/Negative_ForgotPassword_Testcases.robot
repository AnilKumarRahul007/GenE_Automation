*** Settings ***
Library      SeleniumLibrary
Resource      ../../Settings/settings.robot
*** Test Cases ***
Verify GenE Logo In Forgot Password Page
    [Setup]  Forgot Password Link
    Verify 'Email Verify' In Forgot Password Page
    Verify Email Logo In Forgot Password Page
    Verify 'Enter Email Address' In Forgot Password Page
    Verify 'Send Reset Link' In Forgot Password Page
    Forgotpassword_Keywords.Wrong Email Address on Forgot Password      aslk0982da@laskdops
    [Teardown]  Close Browser