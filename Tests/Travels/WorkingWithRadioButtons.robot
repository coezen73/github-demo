*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***

TC to demonstrate Radio Button Operation Keywords
    [Documentation]  To demonstrate Radio Button Operation Keywords

    Open Browser  http://practice.cybertekschool.com/radio_buttons  Chrome
    Maximize Browser Window
    Sleep    2s

    Page Should Contain Radio Button    //*[@id="blue"]

# When the Radio button has to be selected by default:
    Radio Button Should Be Set To    color   on
# By using invalid xpath:
    Page Should Not Contain Radio Button    //*[@id="BLUE"]
# Specify the group_name and verify the buttons are not selected:
    Radio Button Should Not Be Selected    sport
# By giving the group_name & value (value can be either 'id' or the 'value')
    Select Radio Button    color    yellow
# After selecting the radio button we can verify it by group_name & id or value: (here we have also 'on' text )

    Radio Button Should Be Set To    color   on

    Sleep    2s

    Select Radio Button    sport    hockey

    Radio Button Should Be Set To    sport   on

    Close Browser
