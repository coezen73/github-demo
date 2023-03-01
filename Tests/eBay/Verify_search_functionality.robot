
*** Settings ***

Documentation  Basic Search Functionality

    # We need to import relevant files which we will use for our testcase(s):

Resource  ../../Resources/CommonFunctionality.robot
Resource  ../../Resources/PageObjects/HeaderPage.robot
Resource  ../../Resources/PageObjects/SearchResultsPage.robot
    # We also will use Setup and Teardown functions which we define in our CommonFunctionality page:
Test Setup  CommonFunctionality.Start TestCase
Test Teardown  CommonFunctionality. Finish TestCase

*** Variables ***


*** Test Cases ***

Verify basic search functionality
    [Documentation]  This test case verifies the basic search
    [Tags]  Functional
# Arguments:
    # When I use arguments, we need to pass one argument:
    HeaderPage.Input Search Text and Click Search   TV
    SearchResultsPage.Verify Search Results  TV


# When we have another test case(s) to verify with different arguments, we can simply use the same steps
# without changing anything but giving the new inputs:

Verify basic search functionality1
    [Documentation]  This test case verifies the basic search
    [Tags]  Functional

    HeaderPage.Input Search Text and Click Search   books
    SearchResultsPage.Verify Search Results  books

Verify basic search functionality2
    [Documentation]  This test case verifies the basic search
    [Tags]  Functional

    HeaderPage.Input Search Text and Click Search   travel
    SearchResultsPage.Verify Search Results  travel

Verify basic search functionality3
    [Documentation]  This test case verifies the basic search
    [Tags]  Functional

    HeaderPage.Input Search Text and Click Search   gifts
    SearchResultsPage.Verify Search Results  gifts



# Verify advanced search functionality
#    [Documentation]  This test case verifies the advanced search
#    [Tags]  Functional

#   HeaderPage.Click on Advanced Search Link