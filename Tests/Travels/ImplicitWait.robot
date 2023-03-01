*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
TC To demonstrate implicit wait in Robot FW
    [Documentation]  To demonstrate implicit wait in Robot FW

    ${default_implicit_wait}=  Get Selenium Implicit Wait

    Set Selenium Implicit Wait    20s
    ${custom_implicit_wait}=  Get Selenium Implicit Wait


    Open Browser   https://petstore.octoperf.com/actions/Account.action?editAccountForm=   Chrome
    Maximize Browser Window
    Mouse Down   //input[@name='account.address2']

    Input Text    //input[@name='account.address2']    Mouse Down action 1
    Mouse up     //input[@name='account.address1']

    Input Text    //input[@name='account.address1']    Mouse Up action 2


    Go To   https://www.ebay-kleinanzeigen.de/
    Maximize Browser Window

    Scroll Element Into View   //*[@id="site-footer-nav"]/ul/li[1]/ul/li[5]/a

    Mouse Down   //*[@id="site-footer-nav"]/ul/li[1]/ul/li[7]/a

    Mouse up   //*[@id="site-search-query"]

    Input Text    //*[@id="site-search-query"]   Implicit wait