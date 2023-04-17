*** Settings ***
Documentation  Basic Search Functionality
Library  SeleniumLibrary
Resource  ../../Resources/CommonFunctionality.robot
Resource  ../../Resources/eBay_userDefinedKeywords.robot

Test Setup  CommonFunctionality.Start TestCase
Test Teardown  CommonFunctionality.Finish TestCase

*** Variables ***
${EXECUTABLE PATH}  D:\Python\robot_frameworks\Libraries\chromedriver.exe

*** Test Cases ***
Verify basic search functionality for eBay
    [Documentation]  This test case verifies the basic search
    [Tags]  Functional

       eBay_userDefinedKeywords.Verify Serach Results

*** Keywords ***
