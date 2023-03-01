*** Settings ***

Library  SeleniumLibrary

*** Variables ***
${url}  https://www.saucedemo.com/
${browser}  chrome

*** Test Cases ***
TC to demonstrate IF/ELSE in Robot FW
    [Documentation]  Demonstrate IF/ELSE in Robot FW
    
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Input Text    id:user-name  standard_user
    Input Text    id:password  secret_sauce
    Click Button  //*[@id="login-button"]

# Robot has the built-in library for IF-ELSE statements:

#   Run Keyword If    condition
#   ...    Keyword    @args
#   ...  ELSE IF    condition
#   ...    Keyword    @args
#   ...  ELSE
#   ...    Keyword    @args     ==>

   ${items_on_page}=  Get Element Count   xpath://*[@id="inventory_container"]

   Run Keyword If   ${items_on_page} == 1   Test Keyword 1
   ...  ELSE IF    ${items_on_page} < 10 and ${items_on_page} > 2   Test Keyword 2
   ...  ELSE   Test Keyword 3

*** Keywords ***

Test Keyword 1
    Log To Console   Executed Keyword1  - Found items as expected
    Close Browser
Test Keyword 2
    Log To Console   Executed Keyword2 - Found less items than expected
Test Keyword 3
    Log To Console   Executed Keyword3 - Exception
    Close Browser