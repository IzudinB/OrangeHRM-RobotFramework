*** Settings ***

Library                         String

Resource                        ../../../../Keywords/UI/Admin/Qualifications/skills.robot

Force Tags                      Skills

Suite Setup                     Open Browser to login page
Suite Teardown                  Close browser

*** Variables ***
${SKILL}=                       aaaaaaaaaa

*** Test Cases ***

Verify Add Skills
    [Tags]                      AddSkills
    [Documentation]             Verify add skills.
    [Setup]                     Login and navigate to Skills
    Add Skill:                  ${SKILL}
    ${MSG}                      Get toast message
    should be equal             ${MSG}     ${MSG_SUCCESSFULLY_SAVED}
    [Teardown]                  Logout

Verify Edit Skills:
     [Tags]                      EditSkills
     [Documentation]             Verify edit skills.
     [Setup]                     Login and navigate to Skills
     edit skills:                cccccccccc        ${SKILL}
     ${MSG}                      Get toast message
     should be equal             ${MSG}     ${MSG_SUCCESSFULLY_UPDATED}
     [Teardown]                  Logout