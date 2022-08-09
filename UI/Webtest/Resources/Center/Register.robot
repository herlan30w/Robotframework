*** Settings ***
Library    SeleniumLibrary


*** Keywords ***

Regist with email
            wait until element is visible       //button[@data-testid="modal-close"]
            input text                          id:email-phone                                              ${EMAIL}
            