*** Settings ***

Library                     ExtendedSelenium2Library

Resource                    ../../base.robot
Resource                    ../../adminmenu.robot

*** Variables ***
${IN_COST_CENTER_ID}        id=cost_code
${IN_NAME}                  id=name
${IN_DESCRIPTION}           id=description

*** Keywords ***

Add Cost Center:
    [Documentation]         Add cost center.
    [Arguments]             ${COST_CENTER_ID}           ${NAME}                  ${DESCRIPTION}
    Click on Add button
    input text              ${IN_COST_CENTER_ID}        ${COST_CENTER_ID}
    input text              ${IN_NAME}                  ${NAME}
    input text              ${IN_DESCRIPTION}           ${DESCRIPTION}
    Modal Save