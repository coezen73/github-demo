#     * Variable Scopes *

# Global Scope:
# These variables are available 'everywhere' in the test data.

# Test Suite Scope:
# These are available anywhere 'in the test suite' where they defined or imported.

#Test Case Scope:
# These are visible 'in a test case and in all user keywords' the test suites.

# Local Scope:
# These are the test cases and user keywords variables which 'are not seen by other tests or keywords.'

*** Settings ***


*** Variables ***

# Global Scope:
#${VARIABLE_DEMO} =  This is GLOBAL variable


*** Test Cases ***

Demo test case 1
#Test Case Scope
    ${variable_demo} =  Set Variable    This is TESTCASE(Local) variable
    Log  ${VARIABLE_DEMO}

Demo test case 2
    Log  ${VARIABLE_DEMO}

Demo test case 3
    This is demo keyword



*** Keywords ***

This is demo KEYWORD
# If we define the variable on the keyword level with the help of argument,
# it will be accessible from aall levels by using particular keyword:
    [Arguments]  ${variable_demo}=This is KEYWORD variable
    log  ${VARIABLE_DEMO}
