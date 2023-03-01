*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.w3schools.com/tags/tryit.asp?filename=tryhtml_select_multiple
${browser}  chrome

*** Test Cases ***
TC to demonstrate List & Multiselect List Operation Keywords
    [Documentation]  To demonstrate Multiselect List Operation Keywords in Robot FW

    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Sleep   2s

    Select Frame   id:iframeResult
    Select All From List  xpath://*[@id="cars"]
    Sleep  2s

    @{ListLabels}=  Get Selected List Labels   xpath://*[@id="cars"]
    Sleep   2s

    Unselect From List By Value   xpath://*[@id="cars"]  audi
    Unselect From List By Index   xpath://*[@id="cars"]  0
    Unselect From List By Label   xpath://*[@id="cars"]  Saab
    @{ListLabels}=  Get Selected List Values   xpath://*[@id="cars"]
    Sleep   2s
    Unselect All From List  xpath://*[@id="cars"]
    Sleep   2s
    List Should Have No Selections   xpath://*[@id="cars"]

 # Single Select List: 
 
    Go To   http://practice.cybertekschool.com/dropdown

    Page Should Contain List   xpath://*[@id="state"]
    Page Should Not Contain List   xpath://*[@id="STATE"]
    Select From List By Index  xpath://*[@id="state"]  11
    Select From List By Label  xpath://*[@id="state"]  Rhode Island
    Get Selected List Label    xpath://*[@id="state"] 

    @{AllItems}=  Get List Items  xpath://*[@id="state"]


# robotframework.org/SeleniumLibrary/SeleniumLibrary.html