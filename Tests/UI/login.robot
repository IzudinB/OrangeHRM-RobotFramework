*** Settings ***

Library         ExtendedSelenium2Library
Resource        ../../Keywords/UI/login.robot

Suite Setup             Open OrangeHRM
Suite Teardown          close browser

*** Test Cases ***

Verify login with admin
    [Tags]              Admin
    [Documentation]     Verifies that Admin can login successfully.
    Click on login
    Verify that user is loggedin
    [Teardown]   Logout

Verify login with system administrator
    [Tags]              Admin
    [Documentation]     Verifies that System Administrator can login successfully.
    Login as a Different Role:      ${ROLE_SYSTEM_ADMINISTRATOR}
    Verify that user is loggedin
    [Teardown]  Logout

Verify login with administrator
    [Tags]              Admin
    [Documentation]     Verifies that Administrator can login successfully.
    Login as a Different Role:      ${ROLE_ADMINISTRATOR}
    Verify that user is loggedin
    [Teardown]  Logout

Verify login with ESS user
    [Tags]              ESS User
    [Documentation]     Verifies that ESS User can login successfully.
    Login as a Different Role:       ${ROLE_ESS_USER}
    Verify that user is loggedin
    [Teardown]  Logout

Verify login with 1st level supervisor
    [Tags]              Supervisor
    [Documentation]     Verifies that Supervisor can login successfully.
    Login as a Different Role:       ${1ST_LEVEL_SUPERVISOR}
    Verify that user is loggedin
    [Teardown]  Logout

Verify when input incorrect data
    [Tags]              Invalid
    [Documentation]     Verifies that login not possible when input incorrect data.
    Login:               ${INCORRECT_USERNAME}          ${INCORRECT_PASSWORD}
    click on login
    Verify error message:              ${INVALID_CREDENTIALS}