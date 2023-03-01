*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.google.com/
${browser}  chrome

*** Test Cases ***
TC to demonstrate FOR LOOP in Robot FW
    [Documentation]  Demonstrate FOR LOOP in Robot FW
    Set Selenium Implicit Wait    5s
    
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Wait Until Element Is Visible    id:L2AGLb
    Click Button    id:L2AGLb
    Input Text   name:q   RCV Academy
    Press Keys  //input[@name='q']  RETURN

    @{results_on_page}=  Get WebElements    //*[@id="rso"]/div

    FOR    ${element}    IN    @{results_on_page}
            ${text}=  Get Text   ${element}
    END
    Close Browser
