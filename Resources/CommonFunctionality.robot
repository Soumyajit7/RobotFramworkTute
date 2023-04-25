*** Settings ***
Library  SeleniumLibrary
Resource  ./Common_Datadriven.robot

*** Keywords ***
Start TestCase
    Open Browser  https://www.ebay.com  Chrome  executable_path = ${EXECUTABLE PATH}
    Maximize Browser Window

Finish TestCase
    Close Browser