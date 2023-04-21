*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${EXECUTABLE PATH}      D:\Python\robot_frameworks\Libraries\chromedriver.exe
${url}  https://www.saucedemo.com/
${browser}  Chrome
${txtbox_username}  id:user-name
${txtbox_password}  id:password
${btn_login}  xpath://*[@id="login-button"]
${txt_error}  xpath://*[@id="login_button_container"]/div/form/div[3]/h3


*** Test Cases ***
Verify Login fails - Wrong Username
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Input Text  ${txtbox_username}  standard_us
    Input Password  ${txtbox_password}  secret_sauce
    Click Button  ${btn_login}
    Sleep  1s
    Element Should Contain  ${txt_error}  Epic sadface: Username and password do not match any user in this service
    Close Browser

Verify Login fails - LockedOut User
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Input Text  ${txtbox_username}  locked_out_user
    Input Password  ${txtbox_password}  secret_sauce
    Click Button  ${btn_login}
    Sleep  1s
    Element Should Contain  ${txt_error}  Epic sadface: Sorry, this user has been locked out.
    Close Browser

Verify Login fails - Wrong Password
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Input Text  ${txtbox_username}  standard_user
    Input Password  ${txtbox_password}  secret_sa
    Click Button  ${btn_login}
    Sleep  1s
    Element Should Contain  ${txt_error}  Epic sadface: Username and password do not match any user in this service
    Close Browser

Verify Login fails - Wrong Username and Password
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Input Text  ${txtbox_username}  standard_use
    Input Password  ${txtbox_password}  secret_sa
    Click Button  ${btn_login}
    Sleep  1s
    Element Should Contain  ${txt_error}  Epic sadface: Username and password do not match any user in this service
    Close Browser

Verify Login fails - Blank Username and Password
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Input Text  ${txtbox_username}  ${EMPTY}
    Input Password  ${txtbox_password}  ${EMPTY}
    Click Button  ${btn_login}
    Sleep  1s
    Element Should Contain  ${txt_error}  Epic sadface: Username is required
    Close Browser
