# HOW TO USE ARGUMENTS IN OUR TEST CASES

# With arguments we can set up or define our keyword,
# and also we can define how many arguments that are required for that particular keyword.

# Say for example; we are  trying to test a website which requires 'username' and 'password' or
# different usernames and passwords. And we want to verify the login functionality for it.
# So we can define a 'login - keyword' with different 'username and password arguments' and pass the values to them.
# That is the whole purpose of defining keyword(s) with argument(s).

# The advantage of using arguments is; For an instance, we have some other test cases,
# which we want to pass other keyword with different values, or check some certain functionality by using different inputs.


*** Settings ***


*** Test Cases ***
    # In our test case(s), we will use 'defined keyword' and 'arguments' from 'Keywords section':
Argument demo keyword test
    Argument demo keyword   robot  framework

Argument demo keyword test2
    Argument demo keyword  cemil  oezen

*** Keywords ***

Argument demo keyword
    # we can add ${arg} as much as we need.
    [Arguments]  ${arg1}  ${arg2}
    Log  ${arg1}
    Log  ${arg2}

# Check the real use sample in --> Search re