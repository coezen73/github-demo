*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***

TC to demonstrate Frame Operation Keywords
    [Documentation]   Demonstrate Frame Operation Keywords

    Open Browser  https://www.w3schools.com/js/tryit.asp?filename=tryjs_alert  Chrome
    Maximize Browser Window
    Sleep    3s
    
    Select Frame   id:iframeResult
    
    Current Frame Should Contain    JavaScript Alert

    Current Frame Should Not Contain   Neverland

    Unselect Frame

    Frame Should Contain   id:iframeResult   JavaScript Alert

    Close Browser

# -------------------------------------------------------------------------------------------------------------------
   # It doesn't work
#TC to Demonstrate Frames Operation Keywords in JP
#   [Documentation]  Checboxes in JpetStore - Account page
#
#    Open Browser   http://practice.cybertekschool.com/nested_frames  Chrome
#    Maximize Browser Window
#    Sleep    2s
#
#    Capture Page Screenshot
#
#    Select Frame  name:frameset-middle robot
#
##    Current Frame Should Contain    MIDDLE
##
##    Current Frame Should Not Contain   Neverland
##
##    Unselect Frame
##
###    Frame Should Contain   id:iframeResult   JavaScript Alert
#
##   Close Browser
