*** Settings ***

Library                     ExtendedSelenium2Library

Resource                    ../../base.robot
Resource                    ../../adminmenu.robot

*** Variables ***
${IN_NAME}                 id=name
${IN_DESCRIPTION}          css=.materialize-textarea

*** Keywords ***
Login and navigate to Skills
    Login:
    Navigate to Skills

Add Skill:
    [Documentation]         Add new skill.
    [Arguments]             ${NAME}                 ${DESCRIPTION}=
    Click on Add button
    input text              ${IN_NAME}             ${NAME}
    input text              ${IN_DESCRIPTION}      ${DESCRIPTION}
    click on save button