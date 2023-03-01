*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***

TC to demonstrate Broweser Window Operation Keywords in Robot FW
    [Documentation]  Demonstrate Broweser Window Operation Keywords in Robot FW

    Open Browser  https://www.ebay.com/   Chrome   alias=ChromeCML
    Maximize Browser Window
    Sleep  3s
    Wait Until Element Is Visible   //*[@id="gh-ug-flex"]/a
    Click Link    //*[@id="gh-ug-flex"]/a

# It stores  the window handlers in the list(@)
   @{WindowHandles}=  Get Window Handles

# It stores Window Identifiers in the list(@)
   @{WindowsIdentifier}=  Get Window Identifiers

#  It stores Window Names in the list(@)
   @{WindowNames}=  Get Window Names

#  It stores Window Titles in the list(@)
   @{WindowTitle}=  Get Window Titles

# We can move our window to the specified position
   Set Window Position   100  200
# It returns the current position of the window
   ${x}  ${y}=  Get Window Position
   Log  ${x}
   Log  ${y}
   Sleep  3s
# We can specify the size or resize  the window
   Set Window Size    800  600
# We can get the specified window's size and store them in the width and height variables
   ${width}  ${height}=  Get Window Size
   Log  ${width}
   Log  ${height}
   Sleep  3s
## It utilizes the switch between the  windows
#   Switch Window  @{WindowHandles}[1]
#   Log  @{WindowHandles}[1]
#   Sleep  3s

   Close Window
   Sleep  3s

#   Switch Window   @{WindowHandles}[0]
#   Close Window