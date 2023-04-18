*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${EXECUTABLE PATH}      D:\Python\robot_frameworks\Libraries\chromedriver.exe


*** Test Cases ***
This is a sample test case
    [Documentation]    Google test
    [Tags]    regression

    Open Browser    https://www.google.com    Chrome
    Close Browser
