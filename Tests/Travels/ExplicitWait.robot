# Explicit wait is more applicable for the instance level or particular instance.
# When we apply the Explicit wait, it is specific to a certain webElement. It is very usefull
# in the cases where you have certain webelements on the page, which take long time to load.
# And it is more Intelligent than implicit wait (since it is for all test case locally or globally) .
# We can decide where to place Explicit wait.

*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${url}  https://petstore.octoperf.com/actions/Account.action?editAccountForm=
${browser}  chrome

*** Test Cases ***
TC To demonstrate Explicit Wait in Robot FW
    [Documentation]  To demonstrate Explicit Wait in Robot FW

    Open Browser  ${url}   ${browser}
    Maximize Browser Window
# About Page
    Wait Until Page Contains    User Information
    Wait Until Page Contains Element    //*[@id="SearchContent"]/form/input[2]
    Wait Until Page Does Not Contain    user information
    Wait Until Page Does Not Contain Element    //*[@id="searchcontent"]/form/input[2]
# About Location
    Wait Until Location Is    https://petstore.octoperf.com/actions/Account.action?editAccountForm=
    Wait Until Location Is Not    https://petstore.octoperf.com/actions/Account.action;jsessionid=F062308D2C986D8B509325C343B95E43?signonForm=
    Wait Until Location Contains    editAccountForm
    Wait Until Location Does Not Contain    signonForm
## About WebElement
   Wait Until Element Contains    //*[@id="Catalog"]/form/input  Save Account Information
   Wait Until Element Does Not Contain    //*[@id="Catalog"]/form/input    My Orders
   Wait Until Element Is Enabled    //*[@id="Catalog"]/a
#    Wait Until Element Is Not Visible    //*[@id="Catalog"]/a-b
#    Wait Until Element Is Visible    //*[@id="Catalog"]/form/input

    Close Browser