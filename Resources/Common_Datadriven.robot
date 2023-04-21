*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${EXECUTABLE PATH}      D:\Python\robot_frameworks\Libraries\chromedriver.exe
${url}  https://www.saucedemo.com/
${browser}  Chrome
${txtbox_username}  id:user-name
${txtbox_password}  id:password
${btn_login}  xpath://*[@id="login-button"]
${txt_error}  xpath://*[@id="login_button_container"]/div/form/div[3]/h3

*** Keywords ***
Start TestCase
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Sleep  1s

Finish Testcase
    Close Browser

