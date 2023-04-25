*** Settings ***
Library  SeleniumLibrary
Resource  ../../../Resources/Common_Datadriven.robot
Library  DataDriver  ../../../Resources/TestData.xlsx  sheet_name=Sheet1

Suite Setup  Common_Datadriven.Start TestCase
Test Template  Invalid Login Scenarios
Suite Teardown  Common_Datadriven.Finish Testcase


*** Test Cases ***
Verify Login Fails with Invalid Creds


*** Keywords ***
Invalid Login Scenarios
    [Arguments]  ${username}  ${password}  ${error_msg}
    Input Text  ${txtbox_username}  ${username}
    Input Text  ${txtbox_password}  ${password}
    Click Button  ${btn_login}
    Sleep  1s
    Element Should Contain  ${txt_error}  ${error_msg}