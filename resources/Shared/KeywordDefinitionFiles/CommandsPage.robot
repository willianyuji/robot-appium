*** Settings ***
Library    AppiumLibrary

*** Keywords ***

Send Deeplink Picpay
    [Arguments]    ${deeplink}
    Execute Adb Shell    am start -a android.intent.action.VIEW -d "${deeplink}"

Scroll Up PicPay
    Sleep    1
    [Arguments]    ${screen_id}
    ${element_size}=    Get Element Size    id=${screen_id}
    ${element_location}=    Get Element Location    id=${screen_id}
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.7)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.2)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  500
    Sleep  1

Swipe Down PicPay
    [Arguments]    ${screen_id}
    ${element_size}=    Get Element Size    id=${screen_id}
    ${element_location}=    Get Element Location    id=${screen_id}
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.7)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  500
    Sleep  1