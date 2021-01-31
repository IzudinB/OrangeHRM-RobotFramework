*** Settings ***

Library                     ExtendedSelenium2Library

Resource                    ../../base.robot

*** Variables ***
${IN_COMPONENT_NAME}        id=name
${GN_TYPE}                  type
${CB_TOTAL_PAYABLE}         id=is_part_of_total_payable
${CB_COST_COMPANY}          id=is_cost_to_company
${CB_AMOUNT}                id=amount
${CB_PERCENTAGE}            id=percentage
*** Keywords ***

Add Salary Component:
    [Documentation]         Add new salary component.
    [Arguments]             ${COMPONENT_NAME}   ${TYPE}
    Click on Add button
    input text              ${IN_COMPONENT_NAME}          ${COMPONENT_NAME}
    select radio button     ${GN_TYPE}                    ${TYPE}
    select checkbox         ${CB_TOTAL_PAYABLE}
    select checkbox         ${CB_COST_COMPANY}
    select checkbox         ${CB_AMOUNT}
    select checkbox         ${CB_PERCENTAGE}
    Modal Save