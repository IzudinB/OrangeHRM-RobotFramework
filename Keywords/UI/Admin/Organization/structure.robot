*** Settings ***

Library                     ExtendedSelenium2Library

Resource                    ../../base.robot

*** Variables ***

${BTN_EDIT}                 css=.edit-btn
${BTN_ADD}                  //html/body/ul/li[1]/a
${IN_UNIT}                  id=unit_id
${IN_NAME}                  id=name
${IN_EMPLOYEE}              id=selectedEmployee_value
${IN_COST}                  id=costCentre_value
${IN_DESCRIPTION}           id=description
${BTN_DELETE}               //a[text()="Delete"]
${BTN_YES_DELETE}           //*[text()="Yes, Delete"]
*** Keywords ***

Add Structure:
    [Documentation]         Add new structure.
    [Arguments]             ${UNIT}             ${NAME}         ${EMPLOYEE}         ${COST}      ${DESCRIPTION}     ${NAME_FOR_LOCATOR}
    click element           //span[contains(text(),"${NAME_FOR_LOCATOR}")]/../../*[@class="menu"]
    click element           ${BTN_ADD}
    input text              ${IN_UNIT}          ${UNIT}
    input text              ${IN_NAME}          ${NAME}
    input text              ${IN_EMPLOYEE}      ${EMPLOYEE}
    input text              ${IN_COST}          ${COST}
    click element           //*[text()="${COST}"]
    input text              ${IN_DESCRIPTION}   ${DESCRIPTION}
    modal save

Delete structure:
    [Documentation]          Delete strucure.
    [Arguments]              ${NAME}
    click element           //span[contains(text(),"${NAME}")]/../../*[@class="menu"]
    click element           ${BTN_DELETE}
    click element           ${BTN_YES_DELETE}