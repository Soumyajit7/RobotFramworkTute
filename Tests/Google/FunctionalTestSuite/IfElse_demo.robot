*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${EXECUTABLE PATH}      D:\Python\robot_frameworks\Libraries\chromedriver.exe
${browser}  Chrome


*** Test Cases ***
This is a sample test case
    [Documentation]    If Else in robot framework
    [Tags]    regression

    Open Browser  https://www.saucedemo.com/    ${browser}
    Maximize Browser Window

    Input Text  id:user-name  standard_user
    Input Password  id:password  secret_sauce
    Click Button  xpath://*[@id="login-button"]

    ${items_on_page} =  Get Element Count  //*[@id="inventory_container"]/div/div[1]

    Run Keyword If    ${items_on_page} == 10    Test Keyword 1
    ...    ELSE IF    ${items_on_page} < 10 and ${items_on_page} > 6    Test Keyword 2
    ...    ELSE    Test Keyword 3



*** Keywords ***

Test Keyword 1
    Log To Console  Execute Keyword1 - Found Items as expected
    Close Browser

Test Keyword 2
    Log To Console  Execute Keyword2 - Found less than expected Items
    Close Browser

Test Keyword 3
    Log To Console  Execute Keyword3 - Found no Items
    Close Browser    