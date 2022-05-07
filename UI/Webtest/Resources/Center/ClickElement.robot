*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
SubmitRegis
            click element                       id:email-phone-submit

VerifyRegist
            wait until element is visible       //div[@data-unify="Dialog"]
            click element                       //button[@class="css-evb2vf-unf-btn eg8apji0"]
Back
            wait until element is visible       //button[@data-testid="modal-close"]
            click element                       //button[@data-testid="modal-close"]

TextVerify
            wait until element is visible       //h2[text()="Email belum terdaftar"]
            element text should be              //h2[@data-unify="Typography"]      Email belum terdaftar