*** Settings ***

Library                         String

Resource                        ../../../../Keywords/UI/Admin/Organization/cost_centers.robot

Force Tags                      Cost Centers

Suite Setup                     Open Browser to login page
Suite Teardown                  Close browser

*** Test Cases ***

Verify Add Competency
    [Tags]                      Add Competency
    [Setup]     run keywords    Login:
    ...         AND             Navigate to Cost Centers
    ${ID_COST_CENTER}           generate random string
    ${NAME}                     generate random string
    ${DESCRIPTION}              generate random string
    Add Cost Center:            ${ID_COST_CENTER}       ${NAME}     ${DESCRIPTION}
    ${MSG}                      Get toast message
    should be equal             ${MSG}     ${MSG_SUCCESSFULLY_SAVED}
    [Teardown]                  Logout
