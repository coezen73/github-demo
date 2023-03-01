*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
TC To demonstrate mouse operations in Robot FW
    [Documentation]  To demonstrate mouse operations in Robot FW

    Open Browser  https://petstore.octoperf.com/actions/Account.action?editAccountForm=   Chrome
    Maximize Browser Window
    Sleep  1s
    Mouse Down   //input[@name='account.address2']
    Sleep  1s
    Input Text    //input[@name='account.address2']    Mouse Down action 1
    Mouse up     //input[@name='account.address1']
    Sleep  1s
    Input Text    //input[@name='account.address1']    Mouse Up action 2
    Sleep  1s
    Capture Page Screenshot
    Mouse Down On Image   //*[@id="LogoContent"]/a/img
    Click Image   //*[@id="LogoContent"]/a/img
    Sleep  1s
    Capture Page Screenshot
    Mouse Down On Link   //*[@id="PoweredBy"]/a
    Click Link    //*[@id="PoweredBy"]/a
    Capture Page Screenshot
    Sleep  1s
    Go to  https://www.ebay-kleinanzeigen.de/
    Mouse Down   //*[@id="site-search-query"]
    Input Text   //*[@id="site-search-query"]   Mouse Handling
    Capture Page Screenshot
    Sleep   1s
# Not exactly..
    Go to  http://practice.cybertekschool.com/drag_and_drop
    Drag And Drop   //*[@id="column-a"]   //*[@id="column-b"]
    Sleep   4s
    Capture Page Screenshot

