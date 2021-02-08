*** Settings ***

Library                     ExtendedSelenium2Library

Resource                    ../../base.robot
Resource                    ../../moremenu.robot


*** Variables ***

${IN_ID}                    id=brandForm_brandCode
${IN_NAME}                  id=brandForm_brandName
${BTN_FILTER}               id=searchModal
${IN_NAME_FILTER}           id=searchBrand_brandName
${BTN_SEARCH}               id=btnSrch

*** Keywords ***

Add Brand:
    [Documentation]         Add brand.
    [Arguments]             ${ID}           ${NAME}
    Click on Add button - More
    input text              ${IN_ID}        ${ID}
    input text              ${IN_NAME}      ${NAME}
    Modal Save - More

Filter items:
    [Documentation]         Filter items in the table.
    [Arguments]             ${NAME}
    click element           ${BTN_FILTER}
    input text              ${IN_NAME_FILTER}          ${NAME}
    click element           ${BTN_SEARCH}