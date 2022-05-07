*** Settings ***
Documentation    This is some basic info about the whole suit
Resource    ../Resources/TestWebGUI.robot
Resource    ../Resources/Common.robot

#Suite Setup          Input Data
Test Setup           Common.Open the browser
Test Teardown        Common.Close the browser
#Suite Teardown       Cleanup Data

*** Test Cases ***
User should be able to direct to resgister when login with invalid email
    [Documentation]                     User should be able to direct to resgister when login with invalid email
    [Tags]                              Reggression
    Given Go to Apps
    And Klik login
    And Input Email
    And Submit
    And VerifySubmit
    When ButtonBack
    Then VerifyHomePage

    #User must sign in to check out
#    [Documentation]    User should be able to login with valid user and pass
#    [Tags]    Reggression2
#    Open Browser    ${WEBSITE}  ${BROWSER}
#    wait until element is visible    //input[@data-unify="Search"]
#    input text    //input[@data-unify="Search"]     Laptop
#    sleep    1s
#    click element    //button[@aria-label="Tombol pencarian"]
#    wait until element is visible    //section[@data-unify="Card"]
#    sleep    2s
#    click element    /html/body/div[5]/div[7]/section/div/div/div[2]

