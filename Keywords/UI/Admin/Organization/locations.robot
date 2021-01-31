*** Settings ***

Library                     ExtendedSelenium2Library

Resource                    ../../base.robot

*** Variables ***
${IN_NAME}=                 id=name
${DD_COUNTRY}               id=countryCode_inputfileddiv
${DD_TIME_ZONE}             id=time_zone_inputfileddiv
${IN_STATE_PROVINCE}        id=province
${IN_CITY}                  id=city
${IN_ZIP_POSTAL_CODE}       id=zipCode
${IN_PHONE}                 id=phone
${IN_FAX}                   id=fax
${CB_EEO_ENABLED}           id=eeo_applicable
${IN_ADDRESS}               id=address
${IN_NOTES}                 id=notes

*** Keywords ***

Add Location:
    [Documentation]         Add new location.
    [Arguments]             ${NAME}  ${COUNTRY}  ${TIME_ZONE}  ${STATE_PROVINCE}  ${CITY}  ${ZIP_POSTAL_CODE}  ${PHONE}  ${FAX}  ${IS_EEO_ENAMBLED}  ${ADDRESS}  ${NOTES}
    Click on Add button
    input text              ${IN_NAME}                  ${NAME}
    Choose Country:         ${COUNTRY}
    Choose Time Zone:       ${TIME_ZONE}
    input text              ${IN_STATE_PROVINCE}        ${STATE_PROVINCE}
    input text              ${IN_CITY}                  ${CITY}
    input text              ${IN_ZIP_POSTAL_CODE}       ${ZIP_POSTAL_CODE}
    input text              ${IN_PHONE}                 ${PHONE}
    input text              ${IN_FAX}                   ${FAX}
    run keyword if         '${IS_EEO_ENAMBLED}'=='true'   select checkbox           ${CB_EEO_ENABLED}
    input text              ${IN_ADDRESS}               ${ADDRESS}
    input text              ${IN_NOTES}                 ${NOTES}
    Modal Save

Choose Country:
    [Documentation]        Choose country.
    [Arguments]            ${COUNTRY}
    click element          ${DD_COUNTRY}
    click element          //*[@id='countryCode_inputfileddiv']//span[text()='${COUNTRY}']

Choose Time Zone:
    [Documentation]        Choose time zone.
    [Arguments]            ${TIME_ZONE}
    click element          ${DD_TIME_ZONE}
    click element          //*[@id='time_zone_inputfileddiv']//span[text()='${TIME_ZONE}']