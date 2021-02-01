*** Settings ***

Library                                     String

Resource                                    ../../../../Keywords/UI/Admin/Organization/structure.robot
Resource                                    ../../../../Keywords/UI/adminmenu.robot

Force Tags                                  Organization

Suite Setup                                 Open Browser to login page
Suite Teardown                              Close Browser

*** Variables ***

@{ITEMS}                                    555  444  333  222  111

*** Test Cases ***

Verify Add Structure
    [Tags]                                  Add Structure.
    [Setup]     run keywords                Login:
    ...         AND                         Navigate to Structure
    ${UNIT}                                 generate random string
    ${NAME}                                 generate random string
    click element                           ${BTN_EDIT}
    Add Structure:                          ${UNIT}         ${NAME}         0032    0005    Until the end!    OrangeHRM
    ${MSG}                                  Get toast message
    should be equal                         ${MSG}     ${MSG_SUCCESSFULLY_SAVED}
    FOR   ${ELEMENT}        IN              @{ITEMS}
          Add Structure:                    ${UNIT}   ${ELEMENT}            0032    0005    Until the end!    ${NAME}
          ${MSG}                            Get toast message
          should be equal                   ${MSG}     ${MSG_SUCCESSFULLY_SAVED}
    END
    drag and drop                           //span[contains(text(),"111")]/../..    //span[contains(text(),"555")]/../..
    sleep                                   5
    drag and drop                           //span[contains(text(),"222")]/../..    //span[contains(text(),"444")]/../..
    sleep                                   5
    [Teardown]                              Delete structure:                       ${NAME}
