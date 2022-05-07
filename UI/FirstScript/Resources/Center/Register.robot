*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${EMAIL}                tview3008@gmail.com
${NUMBER}               092184940908

*** Keywords ***

Regist with email
            wait until element is visible       //button[@data-testid="modal-close"]
            input text                          id:email-phone                                              ${EMAIL}