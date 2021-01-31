*** Settings ***

Library                         String

Resource                        ../../../../Keywords/UI/Admin/Qualifications/skills.robot

Force Tags                      Skills

Suite Setup                     Open Browser to login page
Suite Teardown                  Close browser

*** Test Cases ***

Verify Add Skills
    [Tags]                      AddSkills
    [Documentation]             Verify add skills.
    [Setup]                     Login and navigate to Skills
    ${SKILL}                    generate random string
    Add Skill:                 ${SKILL}
    ${MSG}                      Get toast message
    should be equal             ${MSG}     ${MSG_SUCCESSFULLY_SAVED}
    [Teardown]                  Logout