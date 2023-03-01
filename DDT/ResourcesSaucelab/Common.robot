*** Settings ***
Library  SeleniumLibrary
Resource  ../TestData/ConfigData.robot

*** Keywords ***

Start Testcase
    Open Browser  ${url}  ${browser}
    Maximize Browser Window

Finish Testcase
    Close Browser