*** Settings ***
Library     SeleniumLibrary  timeout=10s


*** Variables ***
${EXECUTABLE PATH}      D:\Python\robot_frameworks\Libraries\chromedriver.exe
${browser}  Chrome


*** Test Cases ***
This is a sample test case
    [Documentation]    Speed and Tomeout in robot framework Test
    [Tags]    regression

    ${default_selenium_timeout} =  Get Selenium Timeout
    ${default_selenium_speed} =  Get Selenium Speed
    
    Set Selenium Speed  4s

    Open Browser  https://www.google.com/    ${browser}
    Maximize Browser Window
   
    Close Browser