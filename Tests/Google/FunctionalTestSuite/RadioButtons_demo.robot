*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${EXECUTABLE PATH}      D:\Python\robot_frameworks\Libraries\chromedriver.exe

${radio_btn}  xpath://*[@id="mat-radio-2-input"]


*** Test Cases ***
This is a sample test case
    [Documentation]    Google test
    [Tags]    regression

    Open Browser    https://material.angular.io/components/radio/overview    Chrome  alias=ChromeRCV
    Maximize Browser Window
    Sleep  1s
    
    Page Should Contain Radio Button    ${radio_btn}
    Page Should Not Contain Radio Button    xpath://*[@id="mat-radio-0-input"]
    Radio Button Should Not Be Selected  mat-radio-group-0
    Select Radio Button    mat-radio-group-0    1
    Radio Button Should Be Set To  mat-radio-group-0  1
    Sleep  1s

    Scroll Element Into View    id:accessibility
    Sleep  1s

    Close Browser