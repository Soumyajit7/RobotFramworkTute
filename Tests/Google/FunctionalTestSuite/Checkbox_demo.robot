*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${EXECUTABLE PATH}      D:\Python\robot_frameworks\Libraries\chromedriver.exe

${checkbox}  xpath://*[@id="doi0"]


*** Test Cases ***
This is a sample test case
    [Documentation]    Google test
    [Tags]    regression

    Open Browser    https://www.sugarcrm.com/request-demo/    Chrome  alias=ChromeRCV
    Maximize Browser Window
    Wait Until Element Is Visible  ${checkbox}
    
    Page Should Contain Checkbox  ${checkbox}
    Scroll Element Into View    xpath://*[@id="field1"]/div/input
    Page Should Not Contain Checkbox    xpath://*[@id="doi1"]
    Select Checkbox    id:doi0
    Checkbox Should Be Selected  id:doi0
    Capture Page Screenshot
    Sleep  1s

    Unselect Checkbox  id:doi0
    Checkbox Should Not Be Selected  id:doi0
    Sleep  1s

    Close Browser