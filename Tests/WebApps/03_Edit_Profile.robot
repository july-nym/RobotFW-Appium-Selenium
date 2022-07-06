*** Settings ***
Documentation    Verify the user should be successfully edit the profile
Library    SeleniumLibrary

*** Variables ***
${LOGIN_PAGE_URL}    https://account.sehatq.com/login
${INPUT_EMAIL_FIELD}  //*[@id="email"]
${INPUT_PASSWORD_FIELD}   //*[@id="__next"]/div/div/div/div/div[2]/div/form/div[2]/div/label/input
${LOGIN_BUTTON}  //*[@id="__next"]/div/div/div/div/div[2]/div/form/button
${EDIT_PROFILE_TEXT}    //*[@id="__next"]/div[1]/div/div/div/div[2]/div/h1
${PHONE_NUMBER_FIELD}     //*[@id="__next"]/div[1]/div/div/div/div[2]/div/div[1]/div/div/div/label/input
${BIRTH_DATE_FIELD}   //*[@id="__next"]/div[1]/div/div/div/div[2]/div/div[2]/div/div/div/div/label/input
${CALENDAR_BUTTON}  //*[@id="__next"]/div[1]/div/div/div/div[2]/div/div[2]/div/div/div/div[1]/label/div/button
${YEAR_BUTTON}  //*[@id="__next"]/div[1]/div/div/div/div[2]/div/div[2]/div/div/div/div[2]/div/div/div/div/div[2]/div/div[1]/div/select[2]
${SELECT_YEAR_VALUE}  //*[@id="__next"]/div[1]/div/div/div/div[2]/div/div[2]/div/div/div/div[2]/div/div/div/div/div[2]/div/div[1]/div/select[2]/option[79]
${SELECT_DATE_VALUE}  //*[@id="__next"]/div[1]/div/div/div/div[2]/div/div[2]/div/div/div/div[2]/div/div/div/div/div[2]/div/div[3]/div[2]/div[1]
${GENDER_SELECTOR}     //*[@id="gender"]/div/button
${SELECT_MALE_VALUE}      //*[@id="gender"]/div[2]/div/div/a[2]
${SELECT_IDENTITY_TYPE}     //*[@id="idType"]/div/button
${KTP}      //*[@id="idType"]/div[2]/div/div/a[2]
${INPUT_IDENTITY_NUMBER}    //*[@id="__next"]/div[1]/div/div/div/div[2]/div/div[5]/div/div/div/label/input
${CONTINUE_BUTTON}  //*[@id="__next"]/div[1]/div/div/div/div[2]/div/div[6]/div[1]/button
${OTP_VERIFICATION_ELEMENT}     //*[@id="__next"]/div[1]/div/div/div[1]/div[2]/h2

*** Test Cases ***
Navigate user to the registration page
    open browser    about:blank     chrome
    maximize browser window
    go to   ${LOGIN_PAGE_URL}

Verify the user should be able to input email address
    page should contain element    ${INPUT_EMAIL_FIELD}
    input text    ${INPUT_EMAIL_FIELD}     ragnarokaugust102@gmail.com

Verify the user should be able to input password
    page should contain element    ${INPUT_PASSWORD_FIELD}
    input password    ${INPUT_PASSWORD_FIELD}     ^.,asdasd123123.,^

Verify the submit button is working
    page should contain element    ${LOGIN_BUTTON}
    click element    ${LOGIN_BUTTON}

Verify the user directed to the profile page
    sleep    7s
    page should contain element     ${EDIT_PROFILE_TEXT}

Verify the user should be able to input phone number
    page should contain element    ${PHONE_NUMBER_FIELD}
    input text    ${PHONE_NUMBER_FIELD}    081999888999

Verify the user should be able to select birth date
    page should contain element    ${BIRTH_DATE_FIELD}
    click element    ${CALENDAR_BUTTON}
    click element    ${YEAR_BUTTON}
    click element    ${SELECT_YEAR_VALUE}
    click element    ${SELECT_DATE_VALUE}

Verify the user should be able to select gender
    page should contain element    ${GENDER_SELECTOR}
    click element    ${GENDER_SELECTOR}
    click element    ${SELECT_MALE_VALUE}

Verify the user should be able to select type of identity
    page should contain element    ${SELECT_IDENTITY_TYPE}
    click element    ${SELECT_IDENTITY_TYPE}
    click element    ${KTP}

Verify the user should be able to input identity number
    page should contain element    ${INPUT_IDENTITY_NUMBER}
    input text   ${INPUT_IDENTITY_NUMBER}    51719192959493

Verify the continue button is working
    page should contain element    ${CONTINUE_BUTTON}
    click element    ${CONTINUE_BUTTON}
    sleep    7s

Verify the user should be directed to the mobile otp verification
    page should contain element    ${OTP_VERIFICATION_ELEMENT}
    close browser