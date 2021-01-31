
*** Settings ***

Library                         String

Resource                        ../../../../Keywords/UI/Admin/Job/job_categories.robot
Resource                        ../../../../Keywords/UI/adminmenu.robot

Force Tags                      Job

Suite Setup                     Open Browser to login page
Suite Teardown                  Close browser

*** Test Cases ***

Verify Add Job Categories
    [Tags]                      AddJobCategories
    [Documentation]             Verify add nationaity.
    [Setup]     run keywords    Login:
    ...         AND             Navigate to Job Categories
    ${CATEGORIES}               generate random string
    Add Job Categories:         ${CATEGORIES}
    ${MSG}                      Get toast message
    should be equal             ${MSG}     ${MSG_SUCCESSFULLY_SAVED}
    [Teardown]                  Logout