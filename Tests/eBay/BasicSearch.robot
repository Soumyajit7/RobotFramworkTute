*** Settings ***
Documentation  Basic Search Functionality
Library  SeleniumLibrary
Variables  ../../Resources/eBay_WebElements.py


*** Variables ***

${DRIVER PATH}  Libraries\chromedriver.exe
${url}  https://www.ebay.com
${browser}  Chrome

*** Test Cases ***

Verify basic search functionality for eBay
    [Documentation]  This test case verifies the basic search
    [Tags]  Functional

    Start TestCase
    Input Text  id:gh-ac  robot
    Sleep  1s
    Finish TestCase


*** Keywords ***

Start TestCase
    Open Browser  ${url}  ${browser}  executable_path = ${DRIVER PATH}
    Maximize Browser Window

Finish TestCase
    Close Browser

Verify Search Functionality
    [Arguments]  ${SEARCH_TEXT}
    Input Text  ${SearchTextBox}  ${SearchText}
    Press Keys  ${SearchButton}  [Return]

Click on Advanced Search Link
    Click Element  ${HOME_PAGE_ADVANCED_SEARCH_LINK}