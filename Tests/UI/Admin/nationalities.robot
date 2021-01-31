*** Settings ***

Library                         String

Resource                        ../../../Keywords/UI/Admin/nationalities.robot
Resource                        ../../../Keywords/UI/adminmenu.robot

Force Tags                      Nationalities

Suite Setup                     Open Browser to login page
Suite Teardown                  Close browser

*** Variables ***
${NATIONALITY}=     aaaaaaaaaaa

*** Test Cases ***

Verify Add Nationality
    [Tags]                      AddNationality
    [Documentation]             Verify add nationaity.
    [Setup]     run keywords    Login:
    ...         AND             Navigate to Nationalities
    Add Nationality:            ${NATIONALITY}
    ${MSG}                      Get toast message
    should be equal             ${MSG}     ${MSG_SUCCESSFULLY_SAVED}
    [Teardown]                  Logout

Verify Edit Nationality
    [Tags]                      Edit Nationalities
    [Setup]     run keywords    Login:
    ...         AND             Navigate to Nationalities
    Edit Nationalities:         cccccccccc     ${NATIONALITY}
    ${MSG}                      Get toast message
    should be equal             ${MSG}     ${MSG_SUCCESSFULLY_UPDATED}
    [Teardown]                  Logout