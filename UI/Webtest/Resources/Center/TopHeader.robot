*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Clik login
        wait until element is visible       //button[@data-testid="btnHeaderLogin"]
        click element                       //button[@data-testid="btnHeaderLogin"]

TopHeaderVerify
        sleep                        3s
        element should be visible    id:header-main-wrapper