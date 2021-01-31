*** Settings ***

Library                      ExtendedSelenium2Library

*** Keywords ***
Click on Edit for item in the table:
    [Arguments]  ${item}
    [Documentation]  Click on Edit icon for item in the table identified by unique value from the table.
    click element    xpath=//tr[.//span[text()="${item}"]]//td[contains(@class,'edit_item')]

Is item in the table:
      [Arguments]                  ${ITEM}
      [Documentation]              Page should contain element in the table identified by unique value from the table.
      page should contain element  xpath=//tr[.//span[text()="${ITEM}"]]

Select items in the table:
    [Arguments]                  @{ITEMS}
    [Documentation]              Select items in the table.
    FOR   ${ELEMENT}     IN      @{ITEMS}
          select checkbox        //tr[.//span[text()="${ELEMENT}"]]//input[contains(@class,'filled-in')]
    END