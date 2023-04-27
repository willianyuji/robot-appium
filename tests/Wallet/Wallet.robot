*** Settings ***
Library        AppiumLibrary
Library        OperatingSystem
Resource       ../../resources/resource.robot
Resource       ../../resources/Shared/KeywordDefinitionFiles/LoginPage.robot
Resource       KeywordDefinitionFiles/SimulationPage.robot

*** Test Cases ***

Login App PicPay
    Start Screen Recording
    Open Android PicPay App
    Click Enter Login
    Input Login CPF
    Input Login Password
    Click Login
    Click Not Now Biometri Authenticator
    Click Ok Undestand Pix
    
Open Wallet Insurance and Validate Combo Product Prices
    Open Wallet
    Scroll Down Wallet Screen At End
    Validate Prices Combo

Open General Conditions
    Open General Conditions

Hire Wallet Insurance
    Receipt Wallet Insurance
    Stop Screen Recording