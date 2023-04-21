*** Settings ***
Library     SeleniumLibrary
Resource  ../../../Resources/Common_Datadriven.robot

Suite Setup  Common_Datadriven.Start TestCase
Test Template  Invalid Login Scenarios
Suite Teardown  Common_Datadriven.Finish Testcase

*** Test Cases ***                                  UserName         Password         Error Message
Verify Login fails - Blank Username and Password    ${EMPTY}         ${EMPTY}         Epic sadface: Username is required
Verify Login fails - Blank Password                 standard_user    ${EMPTY}         Epic sadface: Password is required
Verify Login fails - Wrong Username and Password    standard_use     secret_sa        Epic sadface: Username and password do not match any user in this service
Verify Login fails - Wrong Password                 standard_user    secret_sa        Epic sadface: Username and password do not match any user in this service
Verify Login fails - LockedOut User                 locked_out_user  secret_sauce     Epic sadface: Sorry, this user has been locked out.
Verify Login fails - Wrong Username                 standard_us      secret_sauce     Epic sadface: Username and password do not match any user in this service

*** Keywords ***
Invalid Login Scenarios
    [Arguments]  ${username}  ${password}  ${error_msg}
    Input Text  ${txtbox_username}  ${username}
    Input Text  ${txtbox_password}  ${password}
    Click Button  ${btn_login}
    Sleep  2s
    Element Should Contain  ${txt_error}  ${error_msg}