
*** Settings ***
Documentation  Basic Search Functionality
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Verfy Basic Search Funtionality for eBay
    [Documentation]  This test case verifies the basic search function in eBay
    [Tags]  Functional

   Open Browser  https://www.ebay.com  chrome
   Maximize Browser Window
   Input Text    //*[@id="gh-ac"]   Mobile
   Press Keys   //*[@id="gh-btn"]  [Return]
   Sleep  2s
   Page Should Contain   results for Mobile
   Close Browser

*** Keywords ***
