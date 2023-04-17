***Settings***
Library  SeleniumLibrary
Variables  ../../../Resources/eBay_WebElements.py

*** Variables ***
${EXECUTABLE_PATH}  Libraries\chromedriver.exe
${url}  https://www.saucedemo.com/

*** Test Cases ***
This is SwagLab Login Test
    [Documentation]  Login Test
    [Tags]  regression

    Open Browser  ${url}  chrome  executable_path=${EXECUTABLE_PATH}
    Maximize Browser Window

    Close Browser


*** Keywords ***
