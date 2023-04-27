*** Settings ***

Library    AppiumLibrary
Library    ../../../venv/lib/python3.9/site-packages/robot/libraries/XML.py

Resource   ../Locators/LocatorsWallet.robot
Resource   ../../../resources/Shared/KeywordDefinitionFiles/CommandsPage.robot

Variables  ../TestData/TestDataWallet.py
Variables  ../../../resources/Shared/TestData/TestDataShared.py

*** Keywords ***

Open Wallet
    [documentation]  Este caso de teste irá disparar um deeplink do carteira para poder abrir no App PicPay
    Send Deeplink Picpay    ${DEEPLINK_WALLET}
    Wait Until Element Is Visible    ${SimulationScreen}    timeout=30
    Sleep    3
    Capture Page Screenshot

Scroll Down Wallet Screen At End
    [documentation]  Este caso de teste irá rolar a tela até o final dela
    Scroll Up Picpay    ${SimulationContentScreenId}

Validate Prices Combo
    [documentation]  Este caso de teste irá validar os preços dos combos e se estão com os valores corretos
    Element Text Should Be    ${SimulationTotalValue}    R$ 9,50 por mês
    Capture Page Screenshot
    Click Element    ${SimulationOtherCardsSwitch}
    Element Text Should Be    ${SimulationTotalValue}    R$ 5,60 por mês
    Capture Page Screenshot
    Click Element    ${SimulationDigitalSecuritySwitch}
    Element Text Should Be    ${SimulationTotalValue}    R$ 15,90 por mês
    Capture Page Screenshot
    Click Element    ${SimulationOtherCardsSwitch}
    Element Text Should Be    ${SimulationTotalValue}    R$ 19,50 por mês
    Capture Page Screenshot

Open General Conditions
    [documentation]  Este caso de teste irá abrir as condições gerais
    Click Element    ${SimulationGeneralConditions}
    Sleep    2
    Capture Page Screenshot
    Click Element    ${GeneralConditionsOkUnderstandButton}
    
Hire Wallet Insurance
    [documentation]  Este caso de teste irá efetuar a contratação do Carteira
    Click Element    ${SimulationPayButton}
    Wait Until Element Is Visible    ${BiometriAuthenticatorScreen}    timeout=30
    Input Password   ${BiometriAuthenticatorPassword}   ${Password} 
    Wait Until Element Is Visible    ${FeedbackWalletHiredScreen}    timeout=30
    Sleep    2
    Capture Page Screenshot
    Click Element    ${FeedbackWalletHiredOkUnderstandButton}

Receipt Wallet Insurance 
    [documentation]  Este caso de teste irá mostrar a tela de recibo
    Wait Until Element Is Visible    ${ReceiptWalletInsuranceScreen}
    Sleep    2
    Capture Page Screenshot







