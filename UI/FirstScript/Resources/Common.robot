*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}  gc

*** Keywords ***
Open the browser
    Open Browser            about:blank  ${BROWSER}

Close the browser
    Close Browser