*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Serach Results
    Input Text  xpath : //*[@id="gh-ac"]  mobile
    Press Keys  id : gh-btn  [Return]
    Page Should Contain  results for mobile