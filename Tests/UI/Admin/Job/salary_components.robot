*** Settings ***

Library                         String

Resource                        ../../../../Keywords/UI/Admin/Job/salary_components.robot
Resource                        ../../../../Keywords/UI/adminmenu.robot

Force Tags                      Job

Suite Setup                     Open Browser to login page
Suite Teardown                  Close browser

*** Test Cases ***

Verify Add Salary Component
    [Tags]                      AddSalaryComponent
    [Documentation]             Verify add salary components.
    [Setup]     run keywords    Login:
    ...         AND             Navigate to Salary Components
    ${SALARY_COMPONENT}         generate random string
    Add Salary Component:       ${SALARY_COMPONENT}         2
    ${MSG}                      Get toast message
    should be equal             ${MSG}     ${MSG_SUCCESSFULLY_SAVED}
    [Teardown]                  Logout