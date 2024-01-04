*** Settings ***
Documentation  Validate Sign In Form
Library  SeleniumLibrary
Test Setup  Open Browser To Home Page
Test Teardown   Close Browser Session
Resource  ../pages/base.robot

*** Variables ***
${LOGIN URL}  http://127.0.0.1:3000/users/sign_in
${user_email}  test.robot@py.com
${user_password}  Test!23456

*** Test Cases ***
Valid Login
    Open Browser To Home Page
    Navigate To Login Page
    Fill in Login Form  ${user_email}  ${user_password}
    Verify Success Message

*** Keywords ***
Navigate To Login Page
    Click Link  Sign In
    Location Should Be  ${LOGIN URL}

Fill In Login Form
    [Arguments]  ${user_email}  ${user_password}
    Input Text  id:user_email  ${user_email}
    Input Password  id:user_password  ${user_password}
    Click Button   Log in

Verify Success Message
   Element Text Should Be  ${MESSAGE}  Signed in successfully.
