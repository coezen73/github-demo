
# https://robotframework.org/
# https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html
#

## In the Robot FW, when you create the file, there are key sections of '.robot' file.
## *** *** --> It will define the key section automatically.
#
#   *** Settings ***
#
## Any sort of documentation will be provided here in this key section.
## What this test case all about?  And also Libraries Resources etc. will be placed here.
#
#   Library  SeleniumLibrary         # <-- We need to add '2 spaces' for each command we are typing..
#   Resource
#
## Apart from them, testCase Set up & teardown + Testsuite set up & teardown can also be defined in settings as well.
#
#   *** Variables ***
#
## Any variable that we will be utilizing will be defined in this section.
#
#   *** Test Cases ***
#
## Documentation for our test cases will be provided here.
## We will write the actual script  or the test case steps below this section.
#
#   *** Keywords ***
#
## It is optional, most of the time we will be moving them to seperate file all together or to .robot file.

## These are the  4 sections that we will be utilizing with .robot file.
# ----------------------------------------------------------------------------------------------------------------

# So, after the brief explanation lets create our first script again briefly:

*** Settings ***
# Before we can start launching the browser, we need to install the external Selenium Library.

Library  SeleniumLibrary

*** Variables ***
# At the moment we are not adding any variable.

*** Test Cases ***
# We provide name of our test case:
This is sample test case
# We specify the documentation:
    [Documentation]  Google test
# We add tag(s):
    [Tags]  regression

    Open Browser  http://www.google.com  chrome
    Close Browser
# To learn more about the available keywords we can
# visit the official website - Library section
*** Keywords ***

