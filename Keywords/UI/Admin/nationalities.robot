*** Settings ***

Library                     ExtendedSelenium2Library

Resource                    ../base.robot
Resource                    ../Helpers/table.robot

*** Variables ***
${IN_NAME}           id=name

*** Keywords ***

Add Nationality:
    [Documentation]         Add new nationalities.
    [Arguments]             ${NATIONALITY}
    Click on Add button
    input text              ${IN_NAME}          ${NATIONALITY}
    Modal Save

Edit Nationalities:
    [Documentation]         Edit nationality.
    [Arguments]             ${NAME}         ${ITEM_IN_TABLE}
    click on edit for item in the table:    ${ITEM_IN_TABLE}
    input text              ${IN_NAME}      ${NAME}
    Modal Save