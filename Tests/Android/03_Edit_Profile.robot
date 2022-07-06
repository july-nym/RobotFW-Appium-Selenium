*** Settings ***
Documentation    Verify the user should be successfully edit the profile
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
    input text    ${INPUT_EMAIL_FIELD}    ragnarokjuly13@gmail.com

Verify the user should be able to input password
    wait until page contains element    ${INPUT_PASSWORD_FIELD}
    input password    ${INPUT_PASSWORD_FIELD}     ^.,asdasd123123.,^

Verify the login button is working
    wait until page contains element    ${LOGIN_BUTTON}
    click element    ${LOGIN_BUTTON}

Verify the user should be able to input phone number
    wait until page contains element    //android.widget.EditText[@text="No. Telepon"]
    input text    //android.widget.EditText[@text="No. Telepon"]    081999888999

Verify the user should be able to select birth date
    wait until page contains element    //android.widget.EditText[@text="Tanggal lahir"]
    click element    //android.widget.EditText[@text="Tanggal lahir"]
    wait until page contains element    com.she.sehatq:id/setDate
    wait until page contains element    //android.widget.Button[@text='2021']
    click element    //android.widget.Button[@text='2021']
    wait until page contains element    //android.widget.Button[@text='2020']
    click element    //android.widget.Button[@text='2020']
    wait until page contains element    //android.widget.Button[@text='2019']
    click element    //android.widget.Button[@text='2019']
    wait until page contains element    //android.widget.Button[@text='2018']
    click element    //android.widget.Button[@text='2018']
    wait until page contains element    //android.widget.Button[@text='2017']
    click element    //android.widget.Button[@text='2017']
    wait until page contains element    //android.widget.Button[@text='2016']
    click element    //android.widget.Button[@text='2016']
    wait until page contains element    //android.widget.Button[@text='2015']
    click element    //android.widget.Button[@text='2015']
    click element    //android.widget.Button[@text="Pilih"]

Verify the user should be able to select gender
    wait until page contains element    //android.widget.EditText[@text="Jenis Kelamin"]
    click element    //android.widget.EditText[@text="Jenis Kelamin"]
    click element    //android.widget.TextView[@text="Laki-laki"]

Verify the user should be able to select type of identity
    wait until page contains element    //android.widget.EditText[@text="Jenis Identitas"]
    click element    //android.widget.EditText[@text="Jenis Identitas"]
    click element    //android.widget.TextView[@text="KTP"]


Verify the user should be able to input identity number
    wait until page contains element    //android.widget.EditText[@text="No. Identitas"]
    input text    //android.widget.EditText[@text="No. Identitas"]    5171892939492


Verify the continue button is working
    wait until page contains element    //android.widget.Button[@text="Lanjut"]
    click element    //android.widget.Button[@text="Lanjut"]

