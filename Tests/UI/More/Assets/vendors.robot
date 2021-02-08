*** Settings ***

Library                         String

Resource                        ../../../../Keywords/UI/More/Assets/vendors.robot
Resource                        ../../../../Keywords/UI/Helpers/table.robot

Force Tags                      Vendor

Suite Setup                     Open Browser to login page
Suite Teardown                  Close browser

*** Variables ***

${IF_NONCORE}                   id=noncoreIframe

*** Test Cases ***

Verify Add Vendors
    [Tags]                      Add Vendor.
    [Setup]     run keywords    Login:
    ...         AND             Navigate to Vendors
    ${ID}                       generate random string      12  [NUMBERS]
    ${NAME}                     generate random string
    ${CONTACT}                  generate random string      9   [NUMBERS]
    ${EMAIL}                    Generate random email
    ${WEBSITE}                  generate random website
    ${ADDRESS}                  generate random string
    select frame                ${IF_NONCORE}
    Add Vendor:                 ${ID}      ${NAME}      ${CONTACT}      ${EMAIL}      ${WEBSITE}       ${ADDRESS}
    ${MSG}                      Get toast message
    should be equal             ${MSG}     ${MSG_SUCCESSFULLY_SAVED}
    Filter items:               ${NAME}
    Is item in the table:       ${NAME}
    [Teardown]                  Logout