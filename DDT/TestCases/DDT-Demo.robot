*** Settings ***
Library    SeleniumLibrary

*** Variables ***

# we have defined all the variables here in this section to keep the script simple:

${url}  https://www.saucedemo.com/
${browser}  chrome
${txtbox_username}  id:user-name
${txtbox_password}  id:password
${btn_login}  name: login-button
${txt_error}  //*[@data-test="error"]

# Then we have the test cases.
# We are going to verify the 'different scenarios' when the 'Login Fails' by using the data from our 'variables list';
                    # THIS IS THE KIND OF APPROACH WHEN WE ARE NOT USING THE DDT!
# As we see,with each test case, all the steps are same except the data we provide, and the error message we verify.
# And also when we run the test cases, it will do the same steps over and over again.
*** Test Cases ***
Verify Login Fails - Wrong Username

    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Input Text    ${txtbox_username}    standard_us
    Input Text    ${txtbox_password}    secret_sauce
    Click Button    ${btn_login}
    Sleep    2s
    Element Should Contain    ${txt_error}    Epic sadface: Username and password do not match any user in this service
    Close Browser

Verify Login Fails - LockedOut User

    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Input Text    ${txtbox_username}    locked_out_user
    Input Text    ${txtbox_password}    secret_sauce
    Click Button    ${btn_login}
    Sleep    2s
    Element Should Contain    ${txt_error}    Epic sadface: Sorry, this user has been locked out.
    Close Browser

Verify Login Fails - Wrong Password

    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Input Text    ${txtbox_username}    standard_user
    Input Text    ${txtbox_password}    wrongpass
    Click Button    ${btn_login}
    Sleep    2s
    Element Should Contain    ${txt_error}    Epic sadface: Username and password do not match any user in this service
    Close Browser

Verify Login Fails - Blank Username and Password

    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Input Text    ${txtbox_username}  ${EMPTY}
    Input Text    ${txtbox_password}  ${EMPTY}
    Click Button    ${btn_login}
    Sleep    2s
    Element Should Contain    ${txt_error}    Epic sadface: Username is required
    Close Browser