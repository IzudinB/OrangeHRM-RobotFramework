*** Settings ***

Library                     ExtendedSelenium2Library
Library                     DateTime

Resource                    ../../base.robot

*** Variables ***

${IF_NONCORE}                id=noncoreIframe
${IN_TOPIC}                  id=news_topic
${IF_NEWS_DESCRIPTION}       id=news_description_ifr
${IN_DESCRIPTION}            id=tinymce
${CB_REQ_ACK}                id=news_acknowledge
${IN_PUB_DATE}               id=news_published_date
${DIV_MONTH}                 xpath=//div[contains(@class, 'picker__select--month')]
${DIV_YEAR}                  xpath=//div[contains(@class, 'picker__select--year')]
${BTN_TODAY}                 css=.picker__today
${CB_PUBLISH_TO_USER}        id=news_publish_all
${IN_USER_ROLES}             id=news_publish_to
${IN_LOCATIONS}              id=news_location
${CB_LOCATIONS}              xpath=//label[@for='news_publish_to_all_locations']   #id=news_publish_to_all_locations
${IN_EMPLOYEE}               id=news_publish_emp
${IN_EMPLOYMENT_STATUS}      id=news_publish_emp_status
${IN_JOB_TITLES}             id=news_publish_to_job_title
${IN_SUB_UNITS}              id=news_publish_to_sub_unit

*** Keywords ***

Click on Add button News
    [Documentation]          Click on Add button.
    select frame             ${IF_NONCORE}
    click on add button

News - Input Topic:
    [Documentation]          Input topic.
    [Arguments]              ${TOPIC}
    input text               ${IN_TOPIC}                ${TOPIC}

News - Input Description:
    [Documentation]          Input description.
    [Arguments]              ${DESCRIPTION}
    select frame             ${IF_NEWS_DESCRIPTION}
    input text               ${IN_DESCRIPTION}          ${DESCRIPTION}
    unselect frame

News - set Request Acknowledgment:
    [Documentation]          Set request acknowledgment.
    [Arguments]              ${IS_ENABLED}
    select frame             ${IF_NONCORE}
    run keyword if           '${IS_ENABLED}'=='true'   select checkbox           ${CB_REQ_ACK}

News - set Published Date:
    [Documentation]          Set published date.
    [Arguments]              ${MONTH}   ${YEAR}  ${DAY}
    click element            ${IN_PUB_DATE}
    click element            ${DIV_MONTH}
    click element            xpath=//span[text()="${MONTH}"]
    click element            ${DIV_YEAR}
    click element            xpath=//span[text()="${YEAR}"]
    click element            xpath=//*[contains(@class, 'infocus') and text()='${DAY}']

News - Publish to User Roles:
    [Documentation]          Set user roles.
    [Arguments]              ${IS_ENABLED}             @{USER_ROLES}
    run keyword if           '${IS_ENABLED}'=='true'   select checkbox          ${CB_PUBLISH_TO_USER}
    ...   ELSE               unselect checkbox         ${CB_PUBLISH_TO_USER}
    Choose multiple items in autocomplete:             ${IN_USER_ROLES}         @{USER_ROLES}

News - Publish to Locations:
    [Documentation]          Set locations.
    [Arguments]               ${IS_ENABLED}             @{LOCATIONS}
    run keyword if           '${IS_ENABLED}'=='false'    click element            ${CB_LOCATIONS}
    Choose multiple items in autocomplete:              ${IN_LOCATIONS}          @{LOCATIONS}

News - Set Sub Units:
    [Documentation]          Set Sub Units.
    [Arguments]                 @{ITEMS}
    FOR    ${ELEMENT}     IN    @{ITEMS}
        double click element    ${IN_SUB_UNITS}
        click element           //*[text()="${ELEMENT}"]
    END