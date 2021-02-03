*** Settings ***

Library                         String

Resource                        ../../../../Keywords/UI/Admin/Competencies/competency_list.robot

Force Tags                      Competency

Suite Setup                     Open Browser to login page
Suite Teardown                  Close browser

*** Variables ***

${IF_NONCORE}                   id=noncoreIframe

*** Test Cases ***

Verify Add Competency
    [Tags]                      Add Competency
    [Setup]     run keywords    Login:
    ...         AND             Navigate to Competency List
    ${COMPETENCY}               generate random string
    ${DESCRIPTION}              generate random string
    select frame                ${IF_NONCORE}
    Add Competency:             ${COMPETENCY}    ${DESCRIPTION}     IT Skill
    ${MSG}                      Get toast message
    should be equal             ${MSG}     ${MSG_SUCCESSFULLY_SAVED}
    [Teardown]                  Logout

