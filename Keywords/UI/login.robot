*** Settings ***


Library     ExtendedSelenium2Library
Resource    base.robot

*** Variables ***

${BTN_LOGIN}=                          id=btnLogin
${IMG_AVATAR}=                         css=.account-photo
${IMG_ARROW_DOWN}=                     id=user-dropdown
${BTN_LOGOUT}=                         id=logoutLink
${BTN_DIFFERENT_ROLE}=                 css=.dropdown-toggle
${TXT_USERNAME}=                       id=txtUsername
${INCORRECT_USERNAME}=                 Test600
${TXT_PASSWORD}=                       id=txtPassword
${INCORRECT_PASSWORD}=                 100200
${MSG_ERROR}=                          css=.toast-message
${INVALID_CREDENTIALS}=                Invalid Credentials
${ROLE_ADMINISTRATOR}=                 Administrator
${ROLE_SYSTEM_ADMINISTRATOR}=          System Administrator
${ROLE_ESS_USER}=                      ESS User
${1ST_LEVEL_SUPERVISOR}=               1st Level Supervisor

*** Keywords ***

Open OrangeHRM
    [Documentation]                     Open web site.
    Open Browser to login page
    maximize browser window

Click on login
    [Documentation]                     Click on login button.
    click button                        ${BTN_LOGIN}

Verify that user is loggedin
    [Documentation]                     Verification that user is loggedin.
    element should be visible           ${IMG_AVATAR}

Login as a Different Role:
    [Documentation]                     Clicks on "Login as a Different Role" and selects provided role.
    [Arguments]                         ${ROLE}
    click element                       ${BTN_DIFFERENT_ROLE}
    click element                       //*[@id='loginAsButtonGroup']//a[text()='${ROLE}']

Enter username:
    [Documentation]                     Enter username.
    [Arguments]                         ${USERNAME}
    input text                          ${TXT_USERNAME}       ${USERNAME}

Enter password:
    [Documentation]                     Enter password.
    [Arguments]                         ${PASSWORD}
    input password                      ${TXT_PASSWORD}       ${PASSWORD}

Verify error message:
    [Documentation]                     Verification of error message.
    [Arguments]                         ${EXPECTED_MESSAGE}
    ${MSG}      get text                ${MSG_ERROR}
    should be equal                     ${MSG}                ${EXPECTED_MESSAGE}

Login:
     [Documentation]                    Login to web site.
     [Arguments]                        ${USER}               ${PASS}
     Enter username:                     ${USER}
     Enter password:                     ${PASS}
