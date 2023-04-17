*** Settings ***
Documentation  Basic Search Functionality
Library  SeleniumLibrary

*** Variables ***
${EXECUTABLE PATH}  D:\Python\robot_frameworks\Libraries\chromedriver.exe

*** Test Cases ***
Verify basic search functionality for eBay
    [Documentation]  This test case verifies the basic search
    [Tags]  Functional

    Open Browser  https://www.ebay.com  Chrome  executable_path = ${EXECUTABLE PATH}
    Maximize Browser Window

    Input Text  xpath : //*[@id="gh-ac"]  mobile
    Press Keys  id : gh-btn  [Return]
    Page Should Contain  results for mobile
    Close Browser

*** Keywords ***