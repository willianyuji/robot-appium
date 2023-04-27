*** Settings ***
Library   AppiumLibrary
Resource  ../../../resources/Constants.robot

*** Settings ***
Library   AppiumLibrary
Resource  ../../../resources/Constants.robot
*** Variables ***

# Simulation Page locators
${SimulationScreen}     //android.view.ViewGroup[@resource-id='${ANDROID_APP_PACKAGE}:id/simulationScreen' and @displayed='true']
${SimulationContentScreenId}    android:id/content
${SimulationTotalValue}    //android.widget.TextView[@resource-id='com.picpay.debug:id/tvAdhesionTotalValue']
${SimulationOtherCardsSwitch}    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.Switch
${SimulationDigitalSecuritySwitch}    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.Switch    
${SimulationGeneralConditions}    //android.widget.TextView[@resource-id='com.picpay.debug:id/tvPaymentDisclaimer']
${SimulationPayButton}    //android.widget.Button[@resource-id='com.picpay.debug:id/btnPay']

# General Conditions Page locators
${GeneralConditionsOkUnderstandButton}    //android.widget.Button[@resource-id='com.picpay.debug:id/btnConditionsOk']

# Biometri Authenticator Page locators
${BiometriAuthenticatorScreen}    //android.widget.FrameLayout[@resource-id='com.picpay.debug:id/custom']
${BiometriAuthenticatorPassword}    //android.widget.EditText[@resource-id='com.picpay.debug:id/authDefaultDialogPassword']
${BiometriAuthenticatorFinishButton}    //android.widget.Button[@resource-id='com.picpay.debug:id/buttonFinishWithPassword']

#Feedback Wallet Insurance Hired Page locators
${FeedbackWalletHiredScreen}    //android.widget.ImageView[@resource-id='com.picpay.debug:id/ivFeedback']
${FeedbackWalletHiredOkUnderstandButton}    //android.widget.Button[@resource-id='com.picpay.debug:id/btnFeedbackActionPrimary']

#Receipt Wallet Insurance Page locators
${ReceiptWalletInsuranceScreen}    //android.widget.FrameLayout[@resource-id='com.picpay.debug:id/insuranceFrame']
