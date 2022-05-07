*** Settings ***
Documentation    This is some basic info about the whole suit
Resource    ../Resources/TestWebGUI.robot
Resource    ../Resources/Common.robot


#Suite Setup          Input Data
Test Setup           Common.Open the browser
# Test Teardown        Common.Close the browser
#Suite Teardown       Cleanup Data

*** Variables ***
${WEBSITE}              https://www.traveloka.com/en-id/
${EMAIL}                tview3008@gmail.com
${NUMBER}               082184940908
${BROWSER}              gc 
${Destinasi}            Semarang


*** Test Cases ***
User can access mitrans 
    [Documentation]                     User should be able to direct to resgister when login with invalid email
    [Tags]                              Reggression
    Given go to Apps
    Input text                          //input[@data-testid="autocomplete-field"]              ${Destinasi}
    wait until element is visible       //mark[.="${Destinasi}"]
    Click Element                       //mark[.="${Destinasi}"]
    wait until element is visible       //div[@data-testid="search-submit-button"]
    Click Element                       //div[@data-testid="search-submit-button"]  


# User should be able to direct to resgister when login with invalid email
#     [Documentation]                     User should be able to direct to resgister when login with invalid email
#     [Tags]                              Reggression
#     Given go to Apps
#     And Klik login
#     And Input Email
#     And Submit
#     And VerifySubmit
#     When ButtonBack
#     Then VerifyHomePage

# User must sign in to check out
#    [Documentation]    User should be able to direct to frontpage when user tap deeplink
#    [Tags]                               Reggression2 
#    Given Go to Apps
#    And Klik login
#    And Input Email
#    When Submit
#    Then VerifyText  


