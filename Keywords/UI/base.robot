*** Settings ***
Library     ExtendedSelenium2Library
Variables   ../../variables.py

*** Variables ***
${DD_USER}                      id=user-dropdown
${MNU_LOGOUT}                   id=logoutLink
${BTN_LOGIN}=                   id=btnLogin
${IN_USERNAME}                  id=txtUsername
${IN_PASSWORD}                  id=txtPassword
${BTN_ADD}                      css=.fixed-action-btn
${BTN_SAVE_MODAL}               css=.primary-btn
${BTN_CANCEL}                   css=[ng-click="modal.cancel()"]
${TOAST_MSG}=                   css=.toast-message
${BTN_NEXT}                     id=nextBtn
${BTN_BACK}                     //a[text()='Back']
${BTN_SAVE}                     css=.saveDocument
${BTN_PUBLISH}                  css=.publish-btn

*** Keywords ***

Open Browser to login page
    [Documentation]    Opens browser to login page
    open browser    ${URL}  browser=${BROWSER}
    maximize browser window

Logout
    [Documentation]  Logout the user
    click element  ${DD_USER}
    click element  ${MNU_LOGOUT}

Login:
    [Documentation]             Enter username and password
    [Arguments]                 ${USERNAME}=admin          ${PASSWORD}=admin123
    input text                  ${IN_USERNAME}             ${USERNAME}
    input text                  ${IN_PASSWORD}             ${PASSWORD}
    click button                ${BTN_LOGIN}

Get toast message
    [Documentation]  Returns toast message text
    element should be visible   ${TOAST_MSG}
    ${MSG}=   get text          ${TOAST_MSG}
    [Return]   ${MSG}

Verify message in the field:
    [Documentation]     Verifies message in the field
    [Arguments]         ${FIELD_}    ${EXPCTD_MESSAGE_}
    element should be visible   ${FIELD_}
    ${MESSAGE_} =   get text    ${FIELD_}
    should be equal  ${MESSAGE_}    ${EXPCTD_MESSAGE_}

### Modal keywords
Click on Add button
    click element       ${BTN_ADD}

Modal Save
    click element       ${BTN_SAVE_MODAL}

Modal Cancel
    click element      ${BTN_CANCEL}

Click on Next button
    click element      ${BTN_NEXT}

Click on Back button
    click element      ${BTN_BACK}

Click on Save button
    click element      ${BTN_SAVE}

Click on Publish button
    click element      ${BTN_PUBLISH}

Choose multiple items in autocomplete:
    [Documentation]    Choose multiple items in autocomplete.
    [Arguments]        ${LOCATOR}                  @{ITEMS}
    FOR  ${ELEMENT}    IN    @{ITEMS}
         input text    ${LOCATOR}                  ${ELEMENT}
         press key     ${LOCATOR}                  ${ENTER}
    END