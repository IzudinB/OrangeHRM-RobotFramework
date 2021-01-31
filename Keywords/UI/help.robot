
*** Settings ***

Library                 ExtendedSelenium2Library
Variables               ../../variables.py

*** Variables ***

${BTN_HELP}             id=stickyHelpButton
${IN_SEARCH}            id=query

*** Keywords ***

Open help
    [Documentation]     Open help.
    click element       ${BTN_HELP}

Search
    [Documentation]     Search text on the page.
    [Arguments]         ${TEXT}
    input text          ${IN_SEARCH}             ${TEXT}
    press key           ${IN_SEARCH}             ${ENTER}