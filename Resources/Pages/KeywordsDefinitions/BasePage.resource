*** Settings ***
Documentation  A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Library  SeleniumLibrary

*** Variables ***
${HOST}  127.0.0.1:3000
${BASE_URL}  http://${HOST}/
${BROWSER}  Chrome

*** Keywords ***
Open Browser To Home Page
    Open Browser  ${BASE_URL}  ${BROWSER}
    Title Should Be  SmallTalks

Close Browser Session
    Close Browser
