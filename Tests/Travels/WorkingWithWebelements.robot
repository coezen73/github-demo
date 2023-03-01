*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***

TC to demonstrate WebElement Operation Keywords
    [Documentation]   Demonstrate WebElement Operation Keywords
    
    Open Browser  https://petstore.octoperf.com/actions/Account.action?signonForm=  Chrome  alias=ChromeCML
    Maximize Browser Window
    Sleep    3s
    
    ${attribute}=  Get Element Attribute   //*[@id="Catalog"]/form/p[2]/input[2]   type

    ${count}=  Get Element Count   //*[@id="Catalog"]/form/p[2]/input[2]

    ${width}  ${height}=  Get Element Size   //*[@id="Catalog"]/form/p[2]/input[2]

    Get WebElement   //*[@id="Catalog"]/form/p[2]/input[2]

    @{webelements}=  Get WebElements   //*[@id="Catalog"]/form/p[2]/input[2]

    Capture Element Screenshot   //*[@id="Catalog"]/form/p[2]/input[2]

    Assign Id To Element    //*[@id="Catalog"]/form/p[2]/input[2]   Cemil
    Page Should Contain Element  Cemil

# This particular webelment has no focus, so I am passing it
#    Element Should Be Focused   //*[@id="Catalog"]/form/p[2]/input[2]

    Element Should Be Visible   //*[@id="Catalog"]/form/p[2]/input[2]

    Input Text    //*[@id="Catalog"]/form/p[2]/input[2]  Cemil

    Clear Element Text   //*[@id="Catalog"]/form/p[2]/input[2]

    Cover Element  //*[@id="Catalog"]/form/input
    
    Element Attribute Value Should Be   //*[@id="Catalog"]/form/p[2]/input[2]   type    password

    Element Should Be Enabled   //*[@id="Catalog"]/form/p[2]/input[2]

    Element Should Not Be Visible   //*[@id="Catalog"]/form/p[1]/input[1]


    Element Should Contain   //*[@id="Catalog"]/a   Register Now!
    Element Should Not Contain   //*[@id="Catalog"]/form/p[2]/input[2]   Need a user name or Password?

    Element Text Should Be    //*[@id="MenuContent"]/a[2]   Sign In
    Element Text Should Not Be    //*[@id="MenuContent"]/a[2]  Log out

    Double Click Element   //*[@id="Catalog"]/form/p[2]/input[2]

#   Click Element At Coordinates     //*[@id="Catalog"]/a  x  y

#   Element Should Be Disabled   //*[@id="Catalog"]/form/p[2]/input[2]

    Close Browser

    

