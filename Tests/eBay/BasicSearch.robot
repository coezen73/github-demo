*** Settings ***
# To reference keywords those we use in our test case:
# --> we need to cretae a reversed PATH to our resource files:
Documentation  Basic Search Functionality
Resource  ../../Resources/CommonFunctionality.robot
Resource  ../../Resources/eBay_UserDefinedKeywords.robot

# We define as our Pre and Post conditions here by using test setup an test teardown keywords.
# Both will respectively function in both Passing or Failing steps in our test cases
# and run till the end and than close the browser.
Test Setup   Start test case
Test Teardown  Finish test case

*** Variables ***
# We have none at the moment

*** Test Cases ***
# We provide name of our test case, specify the documentation and add tag(s):

Verify basic search functionality for eBay
   [Documentation]  This test case verifies the basic search
   [Tags]  Functional
# And then, we define the keywords which we will use in 'Keywords ' section
# Actual test case steps:
    Verify the searh results

# WEB ELEMENT FAILURE!
   Filter results by condition
   Verify filter results
# Post condition:



# We use the keywords those we defined with paths:
# To externalized these keywords:
#  --> 'Resources' file wherein we can create a common and/or categorized file(s)
#       which will be helpful to categorize  similar functionalities for the keywords.
# *** Keywords ***  --> Since we have cretaed our key sections in Resource file,
#                        we do not need Keywords section here any more.

# When we use explicit locator, It is suggested to use as it follows: id - name - css selector - xpath selector


# ----------------------------------------------------------------------------------------------------------------------

# We can run our test cases in our Terminal by addressing the reports(Path) to our Results file:
# --> C/: ...... >  robot -d results Tests/eBay/BasicSearch.robot + hit 'enter'
# --> In case of failing the test case, Robot captures the page screenshot as a Built in functionality automatically.
