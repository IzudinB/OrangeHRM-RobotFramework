*** Settings ***
Library     ExtendedSelenium2Library
Variables   ../../variables.py

*** Variables ***
${DD_USER}      id=user-dropdown
${MNU_LOGOUT}   id=logoutLink

*** Keywords ***

Open Browser to login page
    [Documentation]    Opens browser to login page
    open browser    ${URL}  browser=${BROWSER}

Logout
    [Documentation]  Logout the user
    click element  ${DD_USER}
    click element  ${MNU_LOGOUT}