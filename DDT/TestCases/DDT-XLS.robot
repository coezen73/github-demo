

# When it comes to work DDT with Excel Sheet, only the difference between
# CSV and XLS is the sheet or the Datasource. Rest, everything is the same.

*** Settings ***
Library  SeleniumLibrary
Resource  ../ResourcesSaucelab/Common.robot

# we import the DataDriver Library and the location of our XLS file.
# One important bthing that we need to specify from which sheet we are pulling the data.(sheet_name=Tabelle1)
Library  DataDriver   ../TestData/TestData.xlsx  sheet_name=Tabelle1

Suite Setup  Common.Start Testcase
Suite Teardown  Common.Finish Testcase
Test Template  Invalid Login Scenarios

*** Test Cases ***
Verify Login Fails With Invalid Creds  ${username}  ${password}  ${error_msg}


*** Keywords ***
Invalid Login Scenarios
    [Arguments]  ${username}  ${p assword}  ${error_msg}
   # Set Selenium Speed    1s

    Clear Element Text    ${txtbox_username}
    Clear Element Text    ${txtbox_password}
    Input Text    ${txtbox_username}  ${username}
    Input Text    ${txtbox_password}    ${password}
    Click Button    ${btn_login}
    Element Should Contain    ${txt_error}  ${error_msg}