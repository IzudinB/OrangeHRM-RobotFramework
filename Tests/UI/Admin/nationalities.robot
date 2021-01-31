*** Settings ***

Library                         String

Resource                        ../../../Keywords/UI/Admin/nationalities.robot
Resource                        ../../../Keywords/UI/adminmenu.robot

Force Tags                      Nationalities

Suite Setup                     Open Browser to login page
Suite Teardown                  Close browser

*** Test Cases ***

Verify Add Nationality
    [Tags]                      AddNationality
    [Documentation]             Verify add nationaity.
    [Setup]     run keywords    Login:
    ...         AND             Navigate to Nationalities
    ${NATIONALITY}              generate random string
    Add Nationality:            ${NATIONALITY}
    ${MSG}                      Get toast message
    should be equal             ${MSG}     ${MSG_SUCCESSFULLY_SAVED}
    [Teardown]                  Logout