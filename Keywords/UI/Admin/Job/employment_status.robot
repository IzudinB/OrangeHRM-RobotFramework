
*** Settings ***

Library                     ExtendedSelenium2Library


Resource                    ../../base.robot
Resource                    ../../Helpers/table.robot

*** Variables ***
${IN_EMPLOYMENT_STATUS}     id=name

*** Keywords ***

Add Employment Status:
    [Documentation]         Add new employment status.
    [Arguments]             ${STATUS}
    Click on Add button
    input text              ${IN_EMPLOYMENT_STATUS}          ${STATUS}
    Modal Save

Edit Employment Status:
    [Documentation]         Edit employment status.
    [Arguments]             ${NAME}                      ${ITEM_IN_TABLE}
    click on edit for item in the table:                 ${ITEM_IN_TABLE}
    input text              ${IN_EMPLOYMENT_STATUS}      ${NAME}
    Modal Save