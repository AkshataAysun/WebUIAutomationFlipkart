*** Settings ***
Library          Zoomba.MobileLibrary

*** Variables ***
${URL}           http://localhost:4723/wd/hub
${NAME}      UiAutomator2
${DEVICE_NAME}          3330f5897cf4
${PLATFORM_NAME}        Android
${PLATFORM_VERSION}     7.1.2
${APP_PACKAGE}          com.flipkart.android
${APP_ACTIVITY}         com.flipkart.android.activity.HomeFragmentHolderActivity
${RESET}                true

*** Test Cases ***
AddMobileCartTest
    Open Flipkart Application
    Wait For And Click Element  //android.widget.LinearLayout[@content-desc="Search on flipkart"]/android.widget.TextView
    Wait For And Input Text  //android.widget.EditText[@content-desc="Search grocery products in Supermart"]   mi
    Wait For And Click Text  mi mobiles
    Scroll Down To Text   Redmi Note 9 (Aqua Green, 128 GB)
    click element  /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.drawerlayout.widget.DrawerLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup/android.view.ViewGroup[1]
    Wait Until Page Contains Element  Redmi Note 9
    click element   /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.drawerlayout.widget.DrawerLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup
    Wait Until Page Contains Element    Place Order

VerifyMobileCartTest
    Open Flipkart Application
    Click ELement  //android.widget.RelativeLayout[@content-desc="Shopping Cart"]/android.widget.LinearLayout/android.widget.ImageView
    Wait Until Page Contains Element  Redmi Note 9

*** Keywords ***
Open Flipkart Application
   open application  ${URL}   deviceName=${DEVICE_NAME}   automationName=${NAME}
...  platformName=${PLATFORM_NAME}  platformVersion=${PLATFORM_VERSION}
...  appPackage=${APP_PACKAGE}  appActivity=${APP_ACTIVITY}  noReset=${RESET}




