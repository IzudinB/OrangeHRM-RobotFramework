*** Settings ***

Library                         String

Resource                        ../../../../Keywords/UI/Admin/Job/employment_status.robot
Resource                        ../../../../Keywords/UI/adminmenu.robot

Force Tags                      Job

Suite Setup                     Open Browser to login page
Suite Teardown                  Close browser

*** Variables ***
${EMPLOYMENT_STATUS}=           aaaaaaaaaa

*** Test Cases ***

Verify Add Nationality
    [Tags]                      AddEmploymentStatus
    [Documentation]             Verify add employment status.
    [Setup]     run keywords    Login:
    ...         AND             Navigate to Employment Status
    Add Employment Status:      ${EMPLOYMENT_STATUS}
    ${MSG}                      Get toast message
    should be equal             ${MSG}     ${MSG_SUCCESSFULLY_SAVED}
    [Teardown]                  Logout

Verify Edit Employment Status
    [Tags]                      Edit Employment Status
    [Setup]     run keywords    Login:
    ...         AND             Navigate to Employment Status
    Edit Employment Status:     cccccccccc     ${EMPLOYMENT_STATUS}
    ${MSG}                      Get toast message
    should be equal             ${MSG}     ${MSG_SUCCESSFULLY_UPDATED}
    [Teardown]                  Logout