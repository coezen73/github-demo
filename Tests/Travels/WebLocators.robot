# We can visit SeleniumLibrary to get the deatiled information:
# https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html#Locating%20elements

*** Settings ***
Library  SeleniumLibrary
*** Test Cases ***
#TC to demonstrate WebLocators "id & name" in Robot FW
#    [Documentation]  This is sample test case to demonstrate id & name WebLocators in Robot FW
#
#    Open Browser  http://www.ebay.com  chrome
#    Maximize Browser Window
#  # Input Text  id:gh-ac  robot
#    Input Text   name:_nkw  robot
#    Sleep  3s
#    Close Browser

#TC to demonstrate Weblocators "Link & PartialLink" in Robot FW
#  [Documentation]  This is sample test case to demonstrate Link & PartialLink WebLocators in Robot FW
#
#    Open Browser  http://www.ebay.com  chrome
#    Maximize Browser Window
#    # Click Link    link: Daily Deals
#    Click Link   partial link:Help & Conta
#    Sleep  3s
#    Close Browser

#---------------------------------------------------------------------------------------------------------------------

#TC to demonstrate "XpAth" basic Syntax
#   [Documentation]  The basic syntax for xpath: //tagname[@Attribute= 'Value']
#    Open Browser   https://developer.salesforce.com/signup  chrome
#    Maximize Browser Window
#    Sleep  2s
#    Click Button  xpath://*[@id="onetrust-accept-btn-handler"]
#    Input Text    xpath://*[@id="input"]    Cemil
#    Sleep  2s
#    Close Browser

#TC 'Sign in to jpetstore with basic XPath'
#   [Documentation]  This is a test case to demonstrate the signing in to jpetstore
#    Open Browser  https://petstore.octoperf.com/actions/Catalog.action   chrome
#    Maximize Browser Window
#    Click Element   xpath://*[@id="MenuContent"]/a[2]
#    Sleep  2s
#    Input Text   xpath://input[@name='username']  j2ee
#    Input Text   xpath://input[@name='password']  j2ee
#    Click Button    xpath://input[@name='signon']
#    Sleep  2s

#TC 'Sign in to jpetstore with XPath 'start-with' method
#   [Documentation]  This is a test case to demonstrate the signing in to jpetstore
#    Open Browser  https://petstore.octoperf.com/actions/Account.action?signonForm=   chrome
#    Maximize Browser Window
#    Click Element   xpath://*[@id="MenuContent"]/a[2]
#    Sleep  2s
#    # using start-with tag:
#    Input Text  //input[starts-with(@id,'stripes--')]   j2ee
#    Input Text   xpath://input[@name='password']  j2ee
#    Click Button    xpath://input[@name='signon']
#    Sleep  2s

#TC Signin to jpetstore with XPath 'contains' method
#   [Documentation]  This is a test case to demonstrate the signing in to jpetstore
#    Open Browser  https://petstore.octoperf.com/actions/Account.action?editAccountForm=   chrome
#    Maximize Browser Window
#    # using contains tag:
#    Input Text  //input[contains(@name,'password')]    Haeger-Consulting
#    Input Text   //input[contains(@name,'repeatedPassword')]   Haeger-Consulting
#    Sleep  3s

#TC Signin to eBay with XPath 'text()' method
#   [Documentation]  This is a test case to demonstrate the signing in to jpetstore
#    Open Browser  https://www.ebay.com/   chrome
#    Maximize Browser Window
#    # using 'text()' tag:
#    Click Element    //a[text()='Payments Terms of Use' ]
#    Sleep  3s

TC 'Sign in to jpetstore with XPath 'AND & OR'
   [Documentation]  This is a test case to demonstrate the signing in to jpetstore
    Open Browser   https://petstore.octoperf.com/actions/Account.action?editAccountForm=    chrome
    Maximize Browser Window
    Sleep  1s
    Input Text   //input[contains(@name,'password')]  HaegerConsulting
# Using XPath 'and'--> we use both Attribute to be %100 sure:
    Input Text   xpath://input[@name='repeatedPassword' and @type='text']  HaegerConsulting
    Clear Element Text    xpath://input[@name='account.firstName' and @type='text']
    Sleep  1s
    Input Text    //input[@name='account.firstName' and @type='text']  Cemil
    Clear Element Text  //input[@name='account.lastName' and @type='text']
    Sleep  1s
    Input Text    //input[@name='account.lastName' and @type='text']  Oezen
    Clear Element Text  //input[@size='40' and @name='account.email']
    Sleep  1s
    Input Text    //input[@size='40' and @name='account.email']  cozen@robot_framework.com
# Using XPath 'or'-->we use it if we want to use webelement with one or another Attribute:
    Clear Element Text  //input[@name='account.phone' or @value='555-555-5555']
    Sleep  1s
    Input Text  //input[@name='account.phone' or @value='555-555-5555']  123-456-78910
    Clear Element Text  //input[@name='account.address1' or @value='901 San Antonio Road']
    Sleep  1s
    Input Text  //input[@name='account.address1' or @value='901 San Antonio Road']  Rösrath-Köln
    Clear Element Text  //input[@name='account.address2' or @value='MS UCUP02-206']
    Sleep  1s
    Input Text  //input[@name='account.address2' or @value='MS UCUP02-206']  51234
    Sleep  3s
    Close Browser

# We can utilize the axes methods especially "when there is no unique attributes" of webelement
# We can reach wished attribuite by using "child or/and parent - descendant  - ancestor -
# following/following sibling - preceding/preceding sibling :
# Self:
#   //select[@name='account.favouriteCategoryId']//self::select
# Parent:
#   //select[@name='account.favouriteCategoryId']//parent::td
# Child:
#   //select[@name='account.favouriteCategoryId']//child::option[2]
# Descendant(grandchilderen):
#   //div[@id='Catalog']//descendant::tr
# Ancestor: (preceding makes the same thing)
#   //*[@name='repeatedPassword']//ancestor::div
# Following (to pick the following options):
#   //option[@value='FISH']//following::option    or;
#   //option[@value='FISH']//following-sibling::option  or;
#   //option[@value='FISH']//following::option[@value='BIRDS']

# ---------------------------------------------------------------------------------------------------------------------
        # CSS

TC 'Sign in to jpetstore with basic CSS'
  [Documentation]  This is a test case to demonstrate the signing in to jpetstore
    Open Browser  https://petstore.octoperf.com/actions/Account.action?signonForm=   chrome
    Maximize Browser Window
    Click Element   xpath://*[@id="MenuContent"]/a[2]
    Sleep  2s
# using CSS tag:
    Input Text  css:input[name='username']   j2ee
    Input Text   css:input[name='password']  j2ee
    Click Button   css:input[name='signon']
    Sleep  2s
    Close Browser
# --> id: (tagName)#elementID --> (input)#first_name
# --> class: tagName.elementID --> input.signup

# --> "type" - "placeholder" - "value":
# --> tagName[AttributeName='AttributeValue'] --> input[type='Sign me up']

# CSS Sub-Strings:
# --> Prefix of the text(^): input[name^='country_c']
# --> Suffix of the text($): input[name$='y_client']

# CSS Child - SubChild:
# --> Direkt Child:(>) tagName[AtrributeName='AttributeValue']>tagName[AtrributeName='AttributeValue']
#                      select[name='account.favouriteCategoryId']>option[value=REPTILES]
# --> Child or Sub-Child:() tagName[AtrributeName='AttributeValue'] tagName[AtrributeName='AttributeValue']
#                          select[name='account.favouriteCategoryId'] option[value=CATS]

# CSS Next Sibling:(+)
# -->tagName[AtrributeName='AttributeValue']+tagName[AtrributeName='AttributeValue']
#                option[value='CATS']+option[value='BIRDS']
