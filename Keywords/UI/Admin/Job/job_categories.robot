*** Settings ***

Library                     ExtendedSelenium2Library

Resource                    ../../base.robot

*** Variables ***
${IN_JOB_CATEGORIES}           id=name

*** Keywords ***

Add Job Categories:
    [Documentation]         Add new job categories.
    [Arguments]             ${CATEGORIES}
    Click on Add button
    input text              ${IN_JOB_CATEGORIES}          ${CATEGORIES}
    Modal Save

