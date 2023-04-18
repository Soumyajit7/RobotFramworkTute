*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${EXECUTABLE PATH}      D:\Python\robot_frameworks\Libraries\chromedriver.exe


*** Test Cases ***
This is a sample test case
    [Documentation]    Google test
    [Tags]    regression

    Open Browser    https://www.salesforce.com    Chrome  alias=ChromeRCV
    Maximize Browser Window
    Wait Until Element Is Visible    xpath://*[@id="main"]/div[2]/div/div/div/div[2]/div[1]/div[2]/div/a/img
    Press Keys  xpath://*[@id="main"]/div[2]/div/div/div/div[2]/div[1]/div[1]/div[3]/div/div[2]/div/a/span  [Return]
    
    @{WindowHandles} =  GetWindow Handles
    Log  ${WindowHandles}[0]
    Log  ${WindowHandles}[1]
    Sleep  1s

    @{WindowIdentifiers} =  Get Window Identifiers
    Sleep  1s

    @{WindowNames} =  Get Window Names
    Sleep  1s

    @{WindowTitle} =  Get Window Titles
    Sleep  1s

    Set Window Position    100    200
    ${x}  ${y} =  Get Window Position
    Log  ${x}
    Log  ${y}
    Sleep  1s

    Set Window Size    800    600
    ${height}  ${width} =  Get Window Size
    Log  ${height}
    Log  ${width}
    Sleep  1s

    Switch Window  ${WindowHandles}[1]
    Sleep  1s
    Close Window

    Switch Window  ${WindowHandles}[0]
    Sleep  1s
    Close Window

