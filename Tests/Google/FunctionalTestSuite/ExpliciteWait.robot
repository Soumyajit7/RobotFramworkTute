*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${EXECUTABLE PATH}      D:\Python\robot_frameworks\Libraries\chromedriver.exe
${browser}  Chrome


*** Test Cases ***
This is a sample test case
    [Documentation]    Explicite Wait in robot framework
    [Tags]    regression

    Open Browser  https://www.sugarcrm.com/au/request-demo/    ${browser}
    Maximize Browser Window

    Wait Until Page Contains  Experience SugarCRM
    Wait Until Page Contains Element  xpath://*[@id="main"]/div[1]/div/div/div/h1

    Wait Until Page Does Not Contain  Experience SugarCRM 123
    Wait Until Page Does Not Contain Element  xpath://*[@id="main"]/div[1]/div/div/div/h2

    Wait Until Location Is  https://www.sugarcrm.com/au/request-demo/
    Wait Until Location Is Not  https://www.sugarcrm.com/au/request-demo2/

    Wait Until Location Contains  au
    Wait Until Location Does Not Contain  aud

    Wait Until Element Contains  xpath://*[@id="main"]/div[1]/div/div/div/h1  Experience SugarCRM
    Wait Until Element Does Not Contain  xpath://*[@id="main"]/div[1]/div/div/div/h1  Experience SugarCRM 123

    Wait Until Element Is Enabled  xpath://*[@id="main"]/div[1]/div/div/div/h1

    Wait Until Element Is Not Visible  xpath://*[@id="main"]/div[1]/div/div/div/h2
    Wait Until Element Is Visible  xpath://*[@id="main"]/div[1]/div/div/div/h1
   
    Close Browser