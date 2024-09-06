*** Settings ***
Resource    ../../Settings/settings.robot
Resource    ../../Keywords/Forgotpassword_Keywords.robot
Resource    ../../Keywords/Loginpage_Keywords.robot
Library      SeleniumLibrary


*** Test Cases ***
VERIFY FORGOT PASSWORD FUNCTIONALITY
    [Setup]  Forgot Password Link
    Click Forgot Password Link     anil.kumar@dtskill.com
    [Teardown]    Close Browser


