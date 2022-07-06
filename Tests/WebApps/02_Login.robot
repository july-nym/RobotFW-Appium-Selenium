*** Settings ***
Documentation    Verify the user should be successfully logged-in
Library    SeleniumLibrary

*** Variables ***
${LOGIN_PAGE_EMAIL_URL}   https://www.sehatq.com/login/email
${INPUT_EMAIL_FIELD}  //*[@id="email"]
${INPUT_PASSWORD_FIELD}   //*[@id="__next"]/div/div/div/div/div[2]/div/div/form/div[2]/div/div[2]/div/div/div/input
${CONTINUE_BUTTON}  //*[@id="__next"]/div/div/div/div/div[2]/div/div/form/button
${EDIT_PROFILE_TEXT}    //*[@id="__next"]/div[1]/div/div/div/div[2]/div/h1

*** Test Cases ***
Navigate user to the login page
    open browser    about:blank     chrome
    maximize browser window
    go to   ${LOGIN_PAGE_EMAIL_URL}

Verify the user should be able to input email address
    page should contain element    ${INPUT_EMAIL_FIELD}
    input text    ${INPUT_EMAIL_FIELD}     ragnarokaugust102@gmail.com

Verify the user should be able to input password
    page should contain element    ${INPUT_PASSWORD_FIELD}
    input password    ${INPUT_PASSWORD_FIELD}     ^.,asdasd123123.,^

Verify the login button is working
    page should contain element    ${CONTINUE_BUTTON}
    click element    ${CONTINUE_BUTTON}

Verify the user directed to the profile page
    sleep    7s
    page should contain element     ${EDIT_PROFILE_TEXT}
    close browser