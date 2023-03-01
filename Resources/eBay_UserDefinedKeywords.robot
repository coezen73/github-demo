
#  Specific Functions are kept here in this file:

# Those keywords we use in our test case file are defined in
#  key sections of 'BasicSearch.robot' file.
# So we need to import these key sections (Settings & Keywords) here as well:

*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify the searh results
    Input Text  xpath://*[@id="gh-ac"]  mobile
    Press Keys  xpath://*[@id="gh-btn"]  RETURN
    Page Should Contain  results for mobile

Filter Results by Condition
    Wait Until Element Is Visible  xpath = //span[text()='Zustand']/ancestor::button
    Click Element  xpath = //span[text()='Zustand']/ancestor::button
    Wait Until Element Is Visible    xpath = //span[text()='Neu']
    Click Element    xpath =//span[text()='Neu'][@class='filter-menu-button__text']

Verify Filter results
    Wait Until Element Is Visible    //*[@id="s0-52-12-6-3-4[0]-3-1-1-list"]
    Element Should Contain    //*[@id="s0-52-12-6-3-4[0]-3-1-1-list"]    New


# -----------------------------------------------------------------------------------------------------------
# To find the keywords:
# https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html)
# Locating Elements in Robot:
# https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html#Using%20WebElements