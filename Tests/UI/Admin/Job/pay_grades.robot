*** Settings ***

Library                         String

Resource                        ../../../../Keywords/UI/Admin/Job/pay_grades.robot
Resource                        ../../../../Keywords/UI/adminmenu.robot

Force Tags                      Job

Suite Setup                     Open Browser to login page
Suite Teardown                  Close browser

*** Test Cases ***

Verify Add Nationality
    [Tags]                      AddPayGrade
    [Documentation]             Verify add Oay grade.
    [Setup]     run keywords    Login:
    ...         AND             Navigate to Pay Grades
    ${PAY_GRADE}                generate random string
    Add Pay Grade:              ${PAY_GRADE}
    ${MSG}                      Get toast message
    should be equal             ${MSG}     ${MSG_SUCCESSFULLY_SAVED}
    [Teardown]                  Logout