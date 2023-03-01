*** Settings ***

Library    SeleniumLibrary

*** Variables ***
${url}  http://google.com
${browser}  chrome

*** Test Cases ***

TC to demonstrate Browser Operation Keywords in Robot Framework
    [Documentation]  TC to demonstrate Browser Operation Keywords in Robot Framework

    Open Browser  http://google.com  Chrome  alias=ChromeCML

    Maximize Browser Window

# ff: short form of fire fox browser:
# gc: short form of Google Chrome browser:
    Open Browser  about:blank  gc  alias=CMlGC

    &{alias}  Get Browser Aliases
    Log  @{alias}[0]

    @{browser_ID}  Get Browser Ids

    Log  @{browser_ID}[1]

    Switch Browser   1
    
    Input Text    locator    text






