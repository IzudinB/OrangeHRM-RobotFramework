*** Settings ***

Library                     ExtendedSelenium2Library

Resource                    ../../base.robot
Resource                    ../../moremenu.robot


*** Variables ***

${IN_ID}                    id=vendor_vendorCode
${IN_NAME}                  id=vendor_vendorName
${IN_CONTACT}               id=vendor_phone
${IN_EMAIL}                 id=vendor_email
${IN_WEBSITE}               id=vendor_website
${IN_ADDRESS}               id=vendor_address
${BTN_FILTER}               id=searchModal
${IN_NAME_FILTER}           id=vendorSearch_vendorName
${BTN_SEARCH}               id=searchVendorFormBtn

*** Keywords ***

Add Vendor:
    [Documentation]         Add vendor.
    [Arguments]             ${ID}           ${NAME}         ${CONTACT}=      ${EMAIL}=        ${WEBSITE}=       ${ADDRESS}=
    Click on Add button - More
    input text              ${IN_ID}        ${ID}
    input text              ${IN_NAME}      ${NAME}
    run keyword if          '${CONTACT}'!='${EMPTY}'     input text              ${IN_CONTACT}   ${CONTACT}
    run keyword if          '${EMAIL}'!='${EMPTY}'       input text              ${IN_EMAIL}     ${EMAIL}
    run keyword if          '${WEBSITE}'!='${EMPTY}'     input text              ${IN_WEBSITE}   ${WEBSITE}
    run keyword if          '${ADDRESS}'!='${EMPTY}'     input text              ${IN_ADDRESS}   ${ADDRESS}
    Modal Save - More

Filter items:
    [Documentation]         Filter items in the table.
    [Arguments]             ${NAME}
    click element           ${BTN_FILTER}
    input text              ${IN_NAME_FILTER}          ${NAME}
    click element           ${BTN_SEARCH}