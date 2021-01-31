*** Settings ***

Library                     ExtendedSelenium2Library

Resource                    ../../base.robot

*** Variables ***
${IN_PAY_GRADE}             id=name

*** Keywords ***

Add Pay Grade:
    [Documentation]         Add new pay grade.
    [Arguments]             ${PAY_GRADE}
    Click on Add button
    input text              ${IN_PAY_GRADE}          ${PAY_GRADE}
    Modal Save