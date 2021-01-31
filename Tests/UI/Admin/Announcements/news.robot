*** Settings ***

Library                                     DateTime
Library                                     String

Resource                                    ../../../../Keywords/UI/Admin/Announcements/news.robot
Resource                                    ../../../../Keywords/UI/adminmenu.robot

Force Tags                                  News

Suite Setup                                 Open Browser to login page
Suite Teardown                              Close Browser

*** Variables ***
@{USER_ROLES}                               main    Global Admin    Default ESS
@{LOCATIONS}                                Australian Regional HQ  Canadian Regional HQ
@{EMPLOYEE}                                 Russel Hamilton         Lisa Andrews
@{EMPLOYMENT_STATUS}                        Full-Time Permanent     Full-Time Contract
@{JOB_TITLES}                               Art Director            Assistant HR Manager
@{SUB_UNITS}                                QA Team                 Engineering

*** Test Cases ***

Verify Add News
    [Tags]                                  Add News.
    [Setup]     run keywords                Login:
    ...         AND                         Navigate to News
    Click on Add button News
    ${TOPIC}                                generate random string
    News - Input Topic:                     ${TOPIC}
    News - Input Description:               Until the end!
    News - set Request Acknowledgment:      true
    Click on Next button
    ${MSG}                                  get toast message
    should be equal                         ${MSG}                      ${MSG_SUCCESSFULLY_SAVED}
    News - set Published Date:              May     2022    10
    News - Publish To User Roles:           false                       @{USER_ROLES}
    News - Publish to Locations:            false                        @{LOCATIONS}
    Choose multiple items in autocomplete:  ${IN_EMPLOYEE}              @{EMPLOYEE}
    Choose multiple items in autocomplete:  ${IN_EMPLOYMENT_STATUS}     @{EMPLOYMENT_STATUS}
    Choose multiple items in autocomplete:  ${IN_JOB_TITLES}            @{JOB_TITLES}
    News - Set Sub Units:                   @{SUB_UNITS}
    Click on Save button
    ${MSG}                                  get toast message
    should be equal                         ${MSG}                      ${MSG_SUCCESSFULLY_SAVED}
    sleep  5
    Click on Publish button
    page should contain                     ${TOPIC}
    unselect frame
    select frame                            ${IF_NONCORE}
    [Teardown]                              Logout