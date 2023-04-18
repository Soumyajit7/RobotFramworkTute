*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${EXECUTABLE PATH}      D:\Python\robot_frameworks\Libraries\chromedriver.exe


*** Test Cases ***
This is a sample test case
    [Documentation]    Google test
    [Tags]    regression

    Open Browser    https://www.google.com    Chrome  alias=ChromeRCV

    Open Browser    https://www.bing.com/    Chrome  alias=BingRCV

    &{alias}  Get Browser Aliases
    Log  ${alias.ChromeRCV}

    @{browser_ids}  Get Browser Ids
    Log  ${browser_ids}[0]

    Switch Browser  1
    Input Text  name:q  Robot
    Sleep  1s

    Switch Browser  2
    Input Text  name:q  Robot
    Sleep  1s

    Close Browser
