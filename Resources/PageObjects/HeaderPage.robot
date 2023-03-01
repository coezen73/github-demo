#  It is a consistent part of the ebay web-application accross different parts in the system.
# It is a logical entity. That's why we created this page. We can use it over and over again.
*** Settings ***

Library  SeleniumLibrary

# In order to use WebElement file we need to import it:
Variables  ../WebElements.py

*** Variables ***

    # With the use of variables section, we can define the value that is defined in keywords section after the locator
    # and use it in any place. No need to write search value  as hardcoded in keywords section.

    # We can use 'Skalar variable' for a 'single value','List variable' for 'multiple values','Dictionary variable' for 'key=value' for keys

    # To define the Skalar variable, we use for local lowerCase->${local_variable}, for Global UpperCase->${GLOBAL_VARIABLE}
#${search_text}   robot
    # To define the List variable we use @{list_values}  value1  value2  value3  value4 ... [arraylist=values with index number]
#@{list_text}   books  travel  robot  gifts
    # To define the Dictionary variable we use @{dictionary_values}  value1  value2  value3  value4 ... [arraylist=values with index number]
#&{dictionary_text}  read=books   place=travel   item=robot   newyear=gifts

# ---------------------------------------------------------------------------------------------------------------------

    # To use locators as hardcoded in the Keywords section is not a good approach. It can change by the time for some reasons.
    # And we might use these locators for 20-30 different places and test cases. We need to externalite the locators to make them
    # more maintable and easier to read.(Advantage is; I dont need to update them when it is necessary in different cases):

#${SearchTextBox}  xpath://*[@id="gh-ac"]
#${SearchButton}   xpath://*[@id="gh-btn"]
#${AdvancedSearchLink}  //*[@id="gh-as-a"]

*** Keywords ***

    # The keywords we have created will be utilized in our test cases:
Input Search Text and Click Search
    # We call the selenium library keywords by using the relevant locators and input words:
    # Skalar variable:
    #Input Text   xpath://*[@id="gh-ac"]  ${search_text}
    # List variable:
    #Input Text   xpath://*[@id="gh-ac"]  ${list_text}[0]
    #Dictionary variable:
    #Input Text   xpath://*[@id="gh-ac"]  ${dictionary_text.place}
# Arguments:
    # By using arguments we can use the variables dynamically
#   [Arguments]  ${search_argumentText}
#    Input Text   ${SearchTextBox}  ${search_argumentText}
#    Press Keys   ${SearchButton}   RETURN

# Using 'WebElement file' to use the defined locators:
  [Arguments]  ${search_argumentText}
  Input Text   ${HomepageSearchTextBox}  ${search_argumentText}
  Press Keys   ${HomePageSearchButton}  RETURN
# -----------------------------------------------------------------------------------

Click on Advanced Search Link
#    Click Element  ${AdvancedSearchLink}


    # These 2 keywords will be defined and used in our HeaderPage.robot