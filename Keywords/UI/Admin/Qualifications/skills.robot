*** Settings ***

Library                     ExtendedSelenium2Library

Resource                    ../../base.robot
Resource                    ../../adminmenu.robot
Resource                    ../../Helpers/table.robot

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
    Modal Save

Edit Skills:
    [Documentation]         Edit skill.
    [Arguments]             ${NAME}                 ${ITEM_IN_TABLE}             ${DESCRIPTION}=
    click on edit for item in the table:            ${ITEM_IN_TABLE}
    input text              ${IN_NAME}              ${NAME}
    input text              ${IN_DESCRIPTION}       ${DESCRIPTION}
    Modal Save