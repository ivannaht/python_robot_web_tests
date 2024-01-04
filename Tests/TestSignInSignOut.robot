*** Settings ***
Documentation  Validate Sign In and Sign Out
Library  SeleniumLibrary
Test Setup  Open Browser To Home Page
Test Teardown   Close Browser Session
Resource  ../Resources/Pages/KeywordsDefinitions/SignInPage.resource
Resource  ../Resources/Pages/KeywordsDefinitions/HomePage.resource
Resource  ../Resources/Pages/KeywordsDefinitions/BasePage.resource

*** Variables ***
${LOGIN_URL}  http://${HOST}/users/sign_in

*** Test Cases ***
Verify Successfull Sign In
    [Documentation]  This test case verifies that the user is able to successfully Sign In
    [Tags]  Smoke
    Open Browser To Home Page
    Navigate To Sign In Page
    Fill In Login Form
    Verify Success Sign In Message

Verify Successfull Sign Out
    [Documentation]  This test case verifies that the user is able to successfully Sign Out
    [Tags]  Smoke
    Open Browser To Home Page
    Navigate To Sign In Page
    Fill In Login Form
    Click Sign Out Button
    Verify Success Sign Out Message

*** Keywords ***
Navigate To Sign In Page
    Click Sign In Link
    Location Should Be  ${LOGIN_URL}

Fill In Login Form
    Fill In Email Field
    Fill In Password Field
    Click Login Button

Verify Success Sign In Message
   Element Text Should Be  ${message}  Signed in successfully.

Verify Success Sign Out Message
   Element Text Should Be  ${message}  Signed out successfully.


