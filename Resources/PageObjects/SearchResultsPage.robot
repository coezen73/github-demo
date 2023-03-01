    # After the header page it is the second important part of an eBay searches. So we can here also create
    # common search patterns we may repeadetly use..
    # Once the user enters the text and click on search, it will redirect us to a seperate or another page
    # which is not similar to the "landing page". Thats why we created this page seperately and named as SearchResultPage..

*** Settings ***

Library  SeleniumLibrary
    # we need to import relevant page(s)-(HeaderPage) to be able to concatenate and use them dynamically
Resource  HeaderPage.robot

*** Variables ***

    # We can also concatenate 2 or more different values by definition and creation of connection with each other:
    # We can define 'results for' dynamically and add in keyword section.
${search_result} =  results for
    # and also get the 'searchText value' which we have already defined dynamically in Headerpage.robot

*** Keywords ***

Verify Search Results
    # Now we can verify our values dynamically by using defined variables paths:
    #Page Should Contain    ${search_result}  ${dictionary_text.place}
# Arguments:
    # By using arguments we can use the variables dynamically
    [Arguments]  ${search_argumentText}
    Page Should Contain   ${search_result}  ${search_argumentText}
Select product condition


Select best match options




