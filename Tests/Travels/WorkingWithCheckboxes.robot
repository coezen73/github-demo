*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***

TC to demonstrate Checkbox Operation Keywords
    [Documentation]  To demonstrate Checkbox Operation Keywords

    Open Browser  http://practice.cybertekschool.com/checkboxes  Chrome
    Maximize Browser Window
    Sleep    2s

    Capture Page Screenshot

    Select Checkbox    xpath://*[@id="box1"]
    Sleep   2s
    
    Unselect Checkbox   xpath://*[@id="box2"]
    Sleep   2s

    Capture Page Screenshot

    Checkbox Should Be Selected    xpath://*[@id="box1"]
    Sleep   2s
    
    Checkbox Should Not Be Selected    xpath://*[@id="box2"]
    Sleep   2s
    
    Page Should Contain Checkbox  xpath://*[@id="box2"]
    
    Page Should Not Contain Checkbox    xpath://*[@id="box3"]

    Close Browser
TC to Demonstrate Checbox Operation Keywords in JPetStore
   [Documentation]  Checboxes in JpetStore - Account page

    Open Browser  https://petstore.octoperf.com/actions/Account.action?editAccountForm=  Chrome
    Maximize Browser Window
    Sleep    2s

    Capture Page Screenshot

    Select Checkbox    xpath://input[@name='account.listOption']
    Select Checkbox    xpath://input[@name='account.bannerOption']
    Sleep   2s

    Capture Page Screenshot

    Unselect Checkbox   xpath://input[@name='account.listOption']
    Sleep   2s

    Capture Page Screenshot

    Checkbox Should Be Selected    xpath://input[@name='account.bannerOption']
    Sleep   2s

    Checkbox Should Not Be Selected    xpath://input[@name='account.listOption']
    Sleep   2s

    Page Should Contain Checkbox  xpath://input[@name='account.bannerOption']

    Page Should Not Contain Checkbox    xpath://input[@name='account.XYZOption']

    Close Browser