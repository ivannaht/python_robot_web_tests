*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators/Locators.py
Variables  ../TestData/TestData.py

*** Keywords ***
Fill In Email Field
    Input Text  ${email_input_box}  ${user_email}

Fill In Password Field
    Input Password  ${password_input_box}  ${user_password}

Click Login Button
    Click Button  ${login_button}
