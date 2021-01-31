*** Settings ***

Library                         String

Resource                        ../../../../Keywords/UI/Admin/Organization/locations.robot
Resource                        ../../../../Keywords/UI/adminmenu.robot

Force Tags                      Locations

Suite Setup                     Open Browser to login page
Suite Teardown                  Close Browser

*** Test Cases ***

Verify Add Location
    [Tags]                      Add Location.
    [Setup]     run keywords    Login:
    ...         AND             Navigate to Locations
    ${LOCATION}                 generate random string
    Add Location:               ${LOCATION}  Albania  Africa/Accra  Arizona  Glendale  85201  6234986762  16232149002  true  Phoenix, AZ 85019  I love Arizona
    ${MSG}                      Get toast message
    should be equal             ${MSG}     ${MSG_SUCCESSFULLY_SAVED}
    [Teardown]                  Logout