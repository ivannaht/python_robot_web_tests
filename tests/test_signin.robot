*** Settings ***
Documentation   Validate Sign In Form
Library     SeleniumLibrary
Test Teardown   Close Browser

*** Variables ***
${LOGIN URL}  http://127.0.0.1:3000/users/sign_in
${BROWSER}  Chrome
${MESSAGE}  id:notice

*** Test Cases ***
Valid Login
    Open Browser To Login Page
    Fill in Login Form
    Verify Success Message

*** Keywords ***
Open Browser To Login Page
    Open Browser  ${LOGIN URL}  ${BROWSER}
    Title Should Be  SmallTalks

Fill In Login Form
    Input Text  id:user_email  test.robot@py.com
    Input Password  id:user_password  Test!23456
    Click Button   Log in

Verify Success Message
   ${result}=  Get Text  ${MESSAGE}
   Should Be Equal As Strings  ${result}  Signed in successfully.
