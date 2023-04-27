*** Settings ***
Library   AppiumLibrary
Resource  ../../Constants.robot

*** Variables ***

# Login Page locators
${LoginButton}     //android.widget.Button[@resource-id='${ANDROID_APP_PACKAGE}:id/apolloButtonEnter']
${LoginInputCPF}   //android.widget.EditText[@resource-id='${ANDROID_APP_PACKAGE}:id/editTextUsername']
${LoginInputPassword}     //android.widget.EditText[@resource-id='${ANDROID_APP_PACKAGE}:id/editTextPassword']
${LoginEnterButton}     //android.widget.Button[@resource-id='${ANDROID_APP_PACKAGE}:id/newLoginButton']

# Login Biometri Authenticator locators
${LoginBiometriAuthenticatorDialog}     //android.view.ViewGroup[@resource-id='${ANDROID_APP_PACKAGE}:id/container']
${LoginBiometriAuthenticatorDialogNotNowButton}     //android.widget.TextView[@resource-id='${ANDROID_APP_PACKAGE}:id/textViewMessageButton' and @text='Agora não']

# Benefits Screen locators
${BenefitsButton}   xpath=//android.widget.Button[@content-desc="OK, entendi"]
