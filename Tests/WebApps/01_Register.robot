*** Settings ***
Documentation    Verify the user should be successfully registered
Library    SeleniumLibrary

*** Variables ***
${REGISTRATION_PAGE_URL}    https://www.sehatq.com/daftar/email
${INPUT_TEXT_FIELD}   //*[@id="name"]
${INPUT_EMAIL_FIELD}  //*[@id="email"]
${INPUT_PASSWORD_FIELD}   //*[@id="__next"]/div/div/div/div/div[2]/div/form/div[3]/div/label/input
${TERM_AND_CONDITION_CHECKBOX}  //*[@id="__next"]/div/div/div/div/div[2]/div/form/div[4]/div/div/label/span/span
${SUBMIT_BUTTON}    //*[@id="__next"]/div/div/div/div/div[2]/div/form/button
${EDIT_PROFILE_TEXT}    //*[@id="__next"]/div[1]/div/div/div/div[2]/div/h1

*** Test Cases ***
Navigate user to the registration page
    open browser    about:blank     chrome
    maximize browser window
    go to   ${REGISTRATION_PAGE_URL}

Verify the user should be able to input text name
    page should contain element    ${INPUT_TEXT_FIELD}
    input text    ${INPUT_TEXT_FIELD}     Debora Rothschild

Verify the user should be able to input email address
    page should contain element    ${INPUT_EMAIL_FIELD}
    input text    ${INPUT_EMAIL_FIELD}     ragnarokaugust102@gmail.com

Verify the user should be able to input password
    page should contain element    ${INPUT_PASSWORD_FIELD}
    input password    ${INPUT_PASSWORD_FIELD}     ^.,asdasd123123.,^

Verify the checkbox is working
    page should contain element    ${TERM_AND_CONDITION_CHECKBOX}
    click element    ${TERM_AND_CONDITION_CHECKBOX}

Verify the submit button is working
    page should contain element    ${SUBMIT_BUTTON}
    click element    ${SUBMIT_BUTTON}

Verify the user directed to the profile page
    sleep    7s
    page should contain element     ${EDIT_PROFILE_TEXT}
    close browser

