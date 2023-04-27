*** Settings ***
Library  AppiumLibrary
Library  BuiltIn
*** Variables ***
${ANDROID_AUTOMATION_NAME}    UIAutomator2
# ${ANDROID_APP}                ${CURDIR}/../demoapp/AppDebug.apk
${ANDROID_PLATFORM_NAME}      Android
${ANDROID_PLATFORM_VERSION}   %{ANDROID_PLATFORM_VERSION=11}
${ANDROID_DEVICE_NAME}        fe2622df
${ANDROID_APP_PACKAGE}        com.picpay.debug
${ANDROID_APP_WAIT_LAUNCH}    false
${ANDROID_APP_ACTIVITY}       com.picpay.features.enter.PicPayEnterActivity    

${IOS_AUTOMATION_NAME}        XCUITest
${IOS_APP}                    ${CURDIR}/../demoapp/TestApp.app.zip
${IOS_PLATFORM_NAME}          iOS
${IOS_PLATFORM_VERSION}       %{IOS_PLATFORM_VERSION=13.6}
${IOS_DEVICE_NAME}            iPhone 8


*** Keywords ***
Open Android PicPay App
  [documentation]   Este caso de teste valida a inicialização do App do PicPay
  open application  http://localhost:4723/wd/hub      platformName=${ANDROID_PLATFORM_NAME}        deviceName=${ANDROID_DEVICE_NAME}     appPackage=${ANDROID_APP_PACKAGE}     appActivity=${ANDROID_APP_ACTIVITY}        automationName=${ANDROID_AUTOMATION_NAME}        appWaitForLaunch=${ANDROID_APP_WAIT_LAUNCH}      platformVersion=${ANDROID_PLATFORM_VERSION}

# Open iOS Test App
#   open application  http://127.0.0.1:4723/wd/hub  automationName=${IOS_AUTOMATION_NAME}
#   ...  app=${IOS_APP}  platformName=${IOS_PLATFORM_NAME}  platformVersion=${IOS_PLATFORM_VERSION}
#   ...  deviceName=${IOS_DEVICE_NAME}