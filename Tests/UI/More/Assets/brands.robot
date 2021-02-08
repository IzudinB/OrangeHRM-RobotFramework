*** Settings ***

Library                         String

Resource                        ../../../../Keywords/UI/More/Assets/brands.robot
Resource                        ../../../../Keywords/UI/Helpers/table.robot

Force Tags                      Brand

Suite Setup                     Open Browser to login page
Suite Teardown                  Close browser

*** Variables ***

${IF_NONCORE}                   id=noncoreIframe

*** Test Cases ***

Verify Add Brands
    [Tags]                      Add Brand.
    [Setup]     run keywords    Login:
    ...         AND             Navigate to Brands
    ${ID}                       generate random string      12  [NUMBERS]
    ${NAME}                     generate random string
    select frame                ${IF_NONCORE}
    Add Brand:                  ${ID}      ${NAME}
    ${MSG}                      Get toast message
    should be equal             ${MSG}     ${MSG_SUCCESSFULLY_SAVED}
    Filter items:               ${NAME}
    Is item in the table:       ${NAME}
    [Teardown]                  Logout