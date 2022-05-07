*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${WEBSITE}              https://www.tokopedia.com
*** Keywords ***
LoadPage
            go to                               ${WEBSITE}

VerifyLoadPage
            wait until page contains            Your tokopedia.com


