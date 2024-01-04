*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators/Locators.py
Variables  ../TestData/TestData.py

*** Keywords ***
Click Sign In Link
    Click Link  ${sign_in}

Click Sign Out Button
    CLick Button  ${sign_out}
