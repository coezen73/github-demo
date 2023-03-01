
*** Settings ***
Library  SeleniumLibrary
Documentation  Basic Search Functionality
Resource  ../../Resources/CommonFunctionality.robot
Test Setup   Start test case
Test Teardown  Finish test case

*** Variables ***
${url}  http://google.com
${browser}  chrome

*** Test Cases ***
This is sample test case
    [Documentation]  Google sample test
    [Tags]  regression
    Open Browser  http://www.google.com  chrome
#   Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Close Browser

*** Keywords ***
Verify the searh results
    Input Text  xpath://*[@id="gh-ac"]  mobile
    Press Keys  xpath://*[@id="gh-btn"]  RETURN
    Page Should Contain  results for mobile