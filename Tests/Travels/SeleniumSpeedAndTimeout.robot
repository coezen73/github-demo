*** Settings ***
# Time out is set as default 5 seconds but We can set timeout Globally here:
Library  SeleniumLibrary  timeout=8s

*** Variables ***


*** Test Cases ***
TC To demonstrate Selenium Speed and Timeout in Robot FW in Robot FW
    [Documentation]  To demonstrate Selenium Speed and Timeout in Robot FW in Robot FW
    ${default_selenium_timeout}=  Get Selenium Timeout
# OR I can set the time out locally, especially for these TC
#   Set Selenium Timeout  8s

# Once we set the selenium speed, we don't need to use 'Sleep Xs' command for each and every steps:
   ${default_selenium_timeout}=  Get Selenium Timeout
    Set Selenium Speed  1s
    Set Selenium Timeout  6s
# if we set the speed & timeout Globally and then we set again withinj the test case,
# that means we override the Globally set speed & timeout --> So inside the test case it will execute the overrided version.

    Open Browser  https://petstore.octoperf.com/actions/Account.action?editAccountForm=   Chrome
    Maximize Browser Window
    Mouse Down   //input[@name='account.address2']
    Input Text    //input[@name='account.address2']    Mouse Down action 1

    Mouse up     //input[@name='account.address1']
    Input Text    //input[@name='account.address1']    Mouse Up action 2

    Mouse Down On Image   //*[@id="LogoContent"]/a/img
    Click Image   //*[@id="LogoContent"]/a/img

    Mouse Down On Link   //*[@id="PoweredBy"]/a
    Click Link    //*[@id="PoweredBy"]/a

    Go to  https://www.ebay-kleinanzeigen.de/
    Mouse Down   //*[@id="site-search-query"]
    Input Text   //*[@id="site-search-query"]   Mouse Handling

   ${default_selenium_timeout1}=  Get Selenium Speed
   ${default_selenium_timeout1}=  Get Selenium Timeout
    Close Browser