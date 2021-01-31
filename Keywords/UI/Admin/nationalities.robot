*** Settings ***

Library                     ExtendedSelenium2Library

Resource                    ../base.robot

*** Variables ***
${IN_NATIONALITY}           id=name

*** Keywords ***

Add Nationality:
    [Documentation]         Add new nationalities.
    [Arguments]             ${NATIONALITY}
    Click on Add button
    input text              ${IN_NATIONALITY}          ${NATIONALITY}
    Modal Save