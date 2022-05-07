*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Center/LandingPage.robot
Resource    ../Resources/Center/Register.robot
Resource    ../Resources/Center/TopHeader.robot
Resource    ../Resources/Center/ClickElement.robot

*** Keywords ***
Go to Apps
    LandingPage.LoadPage

Klik login
    TopHeader.Clik login

Input Email
    Register.Regist with email

Submit
     ClickElement.SubmitRegis

VerifySubmit
     ClickElement.VerifyRegist

ButtonBack
     ClickElement.Back

VerifyHomePage
    TopHeader.TopHeaderVerify

