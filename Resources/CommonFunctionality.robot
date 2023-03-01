
# Common Functions like open(start) and close(finish) the test cases are kept here in this file:

# Those keywords we use in our test case file are defined in
# the key sections of 'BasicSearch.robot' file.
# So, we need to import these key sections (Settings & Keywords) here as well:

*** Settings ***
Library  SeleniumLibrary

*** Variables ***
# Usage of different environmemts:
# When we want to run your test cases in different test environments without doing so many changes,
# we can define our url's as  'Dictionary variables'. How to utilize? --> For example: (as dummy!)

# &{url}  qa=http://www.qa.demo.com   uat=http://www.uat.demo.com  dev=http://www.dev.com

# Also we can define the 'defined url's' and use it dynamically:
# ${env}  uat
# -----------------------------------------------------------------------------------------------------
# Passing variables from command line:
# How we can use the variables? How can we update our script and provide in our input data at runtime?
# --> Define the variable: and start using it. We need to update our 'url' and 'browser' only from this section:
${url}  https://www.ebay.com
${browser}  chrome


*** Keywords ***

Start test case
# dynamically I can run my test cases in defined environment by using dictionary variables:
    # Open Browser  ${url.qa}  chrome    or;  Open Browser  ${url.dev}  chrome... etc.
# Dynamically defined url -->    Open Browser   ${url.${env}}  chrome
   # Open Browser  https://www.ebay.com  chrome
   # Maximize Browser Window
# --------------------------------------------------------------
# Passing variables from command line: --> We need to pass defined dynamic variables in 'Variables' section
    Open Browser  ${url}   ${browser}
    Maximize Browser Window
    Sleep  4s
Finish test case
    Close Browser


# ** To run our tests in different defined url's we also need to add "-v" variable on our 'Terminal' or 'command line' section:
#  --> "-d results -v env:uat Tests/eBay/Verify_search_functionality.robot"

# --> We can use these commands in Jenkins and set up different 'built job' for each of these test environment
# By using these 'dictionary keywords', our tests will be executed based on which test environment we want to trigger from Jenkins



# ---------------------------------------------------------------------------------------------------------
# To find the keywords:
# https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html)
# Locating Elements in Robot:
# https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html#Using%20WebElements