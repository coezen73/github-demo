*** Settings ***
Library  SeleniumLibrary
Resource  ../ResourcesSaucelab/Common.robot

# Here, we use Suite Setup & Teardown to start and finish the test cases:

# All the browser activities like 'start and finish test case' are defined in 'Suite Setup & Teardown'
Suite Setup  Common.Start Testcase
Suite Teardown  Common.Finish Testcase

# *** Second, all we need to do is, copy defined keyword ("Invalid Login Scenarios") from below, and paste after "Test Templeate" keyword.(2)
Test Template  Invalid Login Scenarios

*** Test Cases ***

# And last,  we just need to provide testcase(s) that we want to run(3)
# With the Builtin approach we just specify the 'test case' and then provide 'test case data (arguments)'

Verify Login Fails - Blank username and password        ${EMPTY}         ${EMPTY}       Epic sadface: Username is required
Verify Login Fails - Blank username                     ${EMPTY}         secret_sauce   Epic sadface: Username is required
Verify Login Fails - Wrong username                     standart_us      secret_sauce   Epic sadface: Username and password do not match any user in this service
Verify Login Fails - LockedOut user                     locked_out_user  secret_sauce   Epic sadface: Sorry, this user has been locked out.
Verify Login Fails - Wrong password                     standart_user    wrongpass      Epic sadface: Username and password do not match any user in this service
Verify Login Fails - Wrong username and password        wronguser        wrongpass      Epic sadface: Username and password do not match any user in this service


*** Keywords ***

# First, we have created a keyword "Invalid Login Scenarios", and pulled all the necessary steps in (1)
Invalid Login Scenarios

# Here, we have 3 dynamic arguments that need to be passed for each test cases:

    [Arguments]  ${username}  ${password}  ${error_msg}

    Clear Element Text    ${txtbox_username}
    Clear Element Text    ${txtbox_password}
    Input Text    ${txtbox_username}  ${username}
    Input Text    ${txtbox_password}    ${password}
    Click Button    ${btn_login}
# Verification step:
    Element Should Contain    ${txt_error}  ${error_msg}