*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
#TC To demonstrate how to handle Alerts in Robot FW
#    [Documentation]  To demonstrate how to handle Alerts in Robot FW
#
#    Open Browser  https://www.w3schools.com/js/tryit.asp?filename=tryjs_alert    chrome
#    Maximize Browser Window
#
##    Select Frame  //body/iframe[2]
##    Wait Until Element Is Visible   //*[@id="accept-choices"]
##    Click Button  //*[@id="accept-choices"]
##    Sleep  1s
#
#    Select Frame   //*[@id="iframeResult"]
#    Sleep  2s
#    Click Element   xpath://body/button
#    Sleep  2s
#    Handle Alert  ACCEPT  timeout= 5 s

TC To demonstrate how to handle Alerts in Robot FW
    [Documentation]  To demonstrate how to handle Alerts in Robot FW

    Open Browser  http://practice.cybertekschool.com/javascript_alerts    chrome
#    Maximize Browser Window
    Click Button   //*[@onclick="jsAlert()"]
    Sleep  2s
     ${message1}=  Handle Alert  action=ACCEPT

     Go to   http://practice.cybertekschool.com/javascript_alerts
     Click Button   //*[@onclick="jsAlert()"]
     Sleep  2s
     ${message2}=  Handle Alert  DISMISS   2s

     Go to   http://practice.cybertekschool.com/javascript_alerts
     Click Button   //*[@id="content"]/div/button[2]
     Sleep  2s
     ${message3}=  Handle Alert  ACCEPT  2s

     Go to   http://practice.cybertekschool.com/javascript_alerts
     Click Button   //*[@id="content"]/div/button[2]
     Sleep  2s
     ${message4}=  Handle Alert  DISMISS  2s

     Go to   http://practice.cybertekschool.com/javascript_alerts
     Click Button  css:#content > div > button:nth-child(5)
     Sleep  2s
     Input Text Into Alert  Hello, How are you?   action=DISMISS

#     Go to   http://practice.cybertekschool.com/javascript_alerts
#     Click Button  //*[@id="content"]/div/button[3]
#     Sleep  2s
#     Alert Should Be Present  text=Hello, How are you?   action=ACCEPT

     Go to   http://www.eBay.com
     Sleep  2s
     Alert Should Not Be Present   action=ACCEPT,  timeout=2s

     Close Browser