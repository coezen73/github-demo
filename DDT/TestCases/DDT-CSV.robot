
# Before starting, we need to set up robotframework-datadriver.
# And also we have created a TestData directory under our DDT directory.And store our csv file which contains all our data.
*** Settings ***
Library  SeleniumLibrary
Resource  ../ResourcesSaucelab/Common.robot

#  *** Here, in this DDT approach,  we need to import our DataDriver Library and location of our csv file to fetch the data:
Library  DataDriver  ../TestData/TestData.csv

# These section is exactly similar with Builtin approach. So, no need to explain again.

Suite Setup  Common.Start Testcase
Suite Teardown  Common.Finish Testcase
Test Template  Invalid Login Scenarios

*** Test Cases ***

# In our Builtin DDT approach, all the data was given under the test cases section.
# But this time we use our csv file.
# It will fetch the data from our csv file and match it with the arguments accordingly and run the testcase below:

Verify Login Fails With Invalid Creds  ${username}  ${password}  ${error_msg}


*** Keywords ***
Invalid Login Scenarios

    [Arguments]  ${username}  ${password}  ${error_msg}
   # Set Selenium Speed    1s

    Clear Element Text    ${txtbox_username}
    Clear Element Text    ${txtbox_password}
    Input Text    ${txtbox_username}  ${username}
    Input Text    ${txtbox_password}    ${password}
    Click Button    ${btn_login}
    Element Should Contain    ${txt_error}  ${error_msg}