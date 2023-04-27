*** Settings ***
Library    AppiumLibrary
Resource   ../Locators/LocatorsShared.robot
Variables  ../TestData/TestDataShared.py

*** Keywords ***

Click Login
    [documentation]  Este caso de teste clica no login para acessar o PicPay App
    Click Element    ${LoginButton}
Input Login CPF
    [documentation]  Este caso de teste coloca o CPF do usuário ${CPF}
    Wait Until Element Is Visible    ${LoginInputCPF}    timeout=30
    Input Text  ${LoginInputCPF}  ${CPF}

Input Login Password
    [documentation]  Este caso de teste coloca a senha do usuário
    Input Password  ${LoginInputPassword}  ${Password}

Click Enter Login
    [documentation]  Este caso de teste clica no Botão login para usuário colocar CPF e Senha
    Wait Until Element Is Visible    ${LoginEnterButton}    timeout=30
    Click Element    ${LoginEnterButton}

Click Not Now Biometri Authenticator
    [documentation]  Este caso de teste clica no Botão "Agora não" para usuário acessar o aplicativo e usar ele com a senha do App
    Wait Until Element Is Visible    ${LoginBiometriAuthenticatorDialog}    timeout=30
    Click Element    ${LoginBiometriAuthenticatorDialogNotNowButton}
    
Click Ok Undestand Pix
    [documentation]  Esta caso de teste aguarda a tela de explicação do Pix abrir e clica em no botão "Ok, entendi"
    Wait Until Element Is Visible    ${BenefitsButton}    timeout=30
    Click Element    ${BenefitsButton}

