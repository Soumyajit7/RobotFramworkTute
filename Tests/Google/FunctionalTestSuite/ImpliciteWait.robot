*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${EXECUTABLE PATH}      D:\Python\robot_frameworks\Libraries\chromedriver.exe
${browser}  Chrome


*** Test Cases ***
This is a sample test case
    [Documentation]    Implicite Wait in robot framework
    [Tags]    regression

    ${default_implicite_wait} =  Get Selenium Implicit Wait
    Set Selenium Implicit Wait  20s
    ${custom_implicite_wait} =  Get Selenium Implicit Wait

    Open Browser  https://www.google.com/    ${browser}
    Maximize Browser Window
   
    Close Browser