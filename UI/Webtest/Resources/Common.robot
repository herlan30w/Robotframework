*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
Open the browser
    Open Browser            about:blank  ${BROWSER}

Close the browser
    Close Browser