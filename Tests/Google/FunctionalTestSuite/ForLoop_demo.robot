*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${EXECUTABLE PATH}      D:\Python\robot_frameworks\Libraries\chromedriver.exe
${browser}  Chrome


*** Test Cases ***
This is a sample test case
    [Documentation]    For Loop in robot framework
    [Tags]    regression

    Open Browser  https://www.google.com/    ${browser}
    Maximize Browser Window

    Input Text  name:q  Infosys
    Press Keys  xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[4]/center/input[1]  Return

    @{results_on_page} =  Get WebElements  xpath://*[@id="rso"]/div

    FOR  ${element}  IN  @{results_on_page}
        ${text} =  Get Text  ${element}
    END

    Close Browser

*** Keywords ***
