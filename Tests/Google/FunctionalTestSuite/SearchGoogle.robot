*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Beispiel Test
    [Documentation]  Dies ist ein Google-Test
    [Tags]  regression
# Selenium Library:
    Open Browser  http://www.google.com  chrome
    Close Browser

*** Keywords ***