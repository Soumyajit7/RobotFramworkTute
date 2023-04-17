*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Start TestCase
    Open Browser  https://www.ebay.com  Chrome  executable_path = ${EXECUTABLE PATH}
    Maximize Browser Window

Finish TestCase
    Close Browser