*** Settings ***
Documentation    Verify the user should be successfully logged-in
Library     AppiumLibrary

*** Variables ***
${MAIN_PAGE_DIRECTION_LINK}     com.she.sehatq:id/tvSkip
${DISMISS_LOCATION_REQUEST_BUTTON}   com.she.sehatq:id/tv_dismiss
${DISMISS_QUICK_TUTOR_NAVIGATION}   com.she.sehatq:id/tv_skip
${PROFILE_ICON_NAVBAR_LINK}     com.she.sehatq:id/iv_profile_nav
${INPUT_EMAIL_FIELD}    //android.widget.EditText[@text="Email"]
${INPUT_PASSWORD_FIELD}     //android.widget.EditText[@text="Password"]
${LOGIN_BUTTON}     com.she.sehatq:id/btn_login

*** Test Cases ***
Open The Application
    open application    http://localhost:4723/wd/hub    platformName=Android    deviceName=emulator-5554    appPackage=com.she.sehatq   appActivity=com.she.sehatq.view.intro.SplashActivity    automationName=Uiautomator2

Click the main page direction link
    wait until page contains element    ${MAIN_PAGE_DIRECTION_LINK}
    click element    ${MAIN_PAGE_DIRECTION_LINK}

Dismiss the location access request
    wait until page contains element    ${DISMISS_LOCATION_REQUEST_BUTTON}
    click element    ${DISMISS_LOCATION_REQUEST_BUTTON}
    sleep    5s

Dismiss the quick tutor navigation
    wait until page contains element    ${DISMISS_QUICK_TUTOR_NAVIGATION}
    click element    ${DISMISS_QUICK_TUTOR_NAVIGATION}

Click the profile icon navbar
    wait until page contains element    ${PROFILE_ICON_NAVBAR_LINK}
    click element    ${PROFILE_ICON_NAVBAR_LINK}

Verify the user should be able to input email address
    wait until page contains element    ${INPUT_EMAIL_FIELD}
    input text    ${INPUT_EMAIL_FIELD}    ragnarokjuly19@gmail.com

Verify the user should be able to input password
    wait until page contains element    ${INPUT_PASSWORD_FIELD}
    input password    ${INPUT_PASSWORD_FIELD}     ^.,asdasd123123.,^

Verify the login button is working
    wait until page contains element    ${LOGIN_BUTTON}
    click element    ${LOGIN_BUTTON}
