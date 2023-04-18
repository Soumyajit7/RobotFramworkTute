*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${EXECUTABLE PATH}      D:\Python\robot_frameworks\Libraries\chromedriver.exe
${url}  https://www.w3schools.com/jsref/tryit.asp?filename=tryjsref_alert

${checkbox}  xpath://*[@id="doi0"]


*** Test Cases ***
This is a sample test case
    [Documentation]    Google test
    [Tags]    regression

    Open Browser    ${url}    Chrome  alias=ChromeRCV
    Maximize Browser Window

    Select Frame    id:iframeResult
    Current Frame Should Contain    The Window Object
    Current Frame Should Not Contain    The JavaScript Object
    Unselect Frame
    Frame Should Contain    id:iframeResult    The Window Object

    Close Browser