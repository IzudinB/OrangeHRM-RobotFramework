*** Settings ***

Library                     ExtendedSelenium2Library

Resource                    ../../base.robot
Resource                    ../../adminmenu.robot

*** Variables ***
${IN_NAME}                 id=employeeCompetency_name
${IN_DESCRIPTION}          id=employeeCompetency_description
${BTN_ADD_COMPETENCY}      css=.large.material-icons
${IN_PARENT}               id=employeeCompetency_parent_compName
${CH_GROUP}                id=employeeCompetency_markAsGroup
${BTN_SAVE}                id=btnSave

*** Keywords ***

Add Competency:
    [Documentation]         Add new competency.
    [Arguments]             ${NAME}                     ${DESCRIPTION}           ${PARENT}=
    click element           ${BTN_ADD_COMPETENCY}
    input text              ${IN_NAME}                  ${NAME}
    input text              ${IN_DESCRIPTION}           ${DESCRIPTION}
    run keyword if          '${PARENT}'=='${EMPTY}'     select checkbox          ${CH_GROUP}
    ...     ELSE            Choose Parent:              ${PARENT}
    click element           ${BTN_SAVE}

Choose Parent:
    [Documentation]
    [Arguments]             ${PARENT}
    input text              ${IN_PARENT}            ${PARENT}
    click element           //strong[text()="${PARENT}"]