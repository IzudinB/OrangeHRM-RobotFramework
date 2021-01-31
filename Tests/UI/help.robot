
*** Settings ***

Resource                        ../../Keywords/UI/help.robot
Resource                        ../../Keywords/UI/base.robot
Resource                        ../../Keywords/UI/adminmenu.robot

Force Tags                      Help

Suite Setup                     Open Browser to login page
Suite Teardown                  Close browser

*** Variables ***

${TEXT_USER}                    User
${LINK_ADD_USERS}               //*[text()="Add Users"]

*** Test Cases ***

Help - Add user
    [Tags]                      HelpUsers
    [Documentation]             Open help and search page.
    [Setup]     run keywords    Login:
    open help
    ${OLD_WINDOW}               select window         new
    search                      ${TEXT_USER}
    wait until angular ready
    element should be visible   ${LINK_ADD_USERS}
#    close window
    select window               ${OLD_WINDOW}
    [Teardown]                  Logout