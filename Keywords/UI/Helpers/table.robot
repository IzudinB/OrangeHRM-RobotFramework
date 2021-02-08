*** Settings ***

Library  ExtendedSelenium2Library


*** Keywords ***
Click on Edit for item in the table:
    [Arguments]         ${item}
    [Documentation]     Click on Edit icon for item in the table identified by unique value from the table.
    click element       xpath=//tr[.//span[text()="${item}"]]//td[contains(@class,'edit_item')]

Is item in the table:
    [Arguments]         ${ITEM}
    [Documentation]     Fineds element in the table
    element should be visible       xpath=//tr[.//*[text()="${ITEM}"]]

Select items in the table:
    [Arguments]         @{table}
    FOR  ${element}     IN  @{table}
    click element       //tr[${element}]//td[1]
    END