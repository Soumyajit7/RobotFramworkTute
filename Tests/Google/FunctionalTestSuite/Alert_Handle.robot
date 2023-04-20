*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${EXECUTABLE PATH}      D:\Python\robot_frameworks\Libraries\chromedriver.exe
${browser}  Chrome

${select_xpath}  //*[@id="cars"]


*** Test Cases ***
This is a sample test case
    [Documentation]    Alert Handle Test
    [Tags]    regression

    Open Browser    https://www.w3schools.com/jsref/tryit.asp?filename=tryjsref_alert    ${browser}
    Wait Until Element Is Not Visible  xpath:/html/body/button
    Maximize Browser Window
    Select Frame  id:iframeResult
    Click button  xpath:/html/body/button
    Handle Alert  action=Accept  timeout=2s

    Go To  https://www.w3schools.com/js/tryit.asp?filename=tryjs_alert
    Wait Until Element Is Not Visible  xpath:/html/body/button
    Select Frame  id:iframeResult
    Click button  xpath:/html/body/button
    ${message1} =  Handle Alert  action=ACCEPT  timeout=2s

    Go to  https://www.w3schools.com/js/tryit.asp?filename=tryjs_confirm
    Wait Until Element Is Not Visible  xpath:/html/body/button
    Select Frame  id:iframeResult
    Click button  xpath:/html/body/button
    ${message2} =  Handle Alert  action=dismiss  timeout=2s

    Go To  https://www.w3schools.com/js/tryit.asp?filename=tryjs_prompt
    Wait Until Element Is Not Visible  xpath:/html/body/button
    Select Frame  id:iframeResult
    Click button  xpath:/html/body/button
    Input Text Into Alert  Soumyajit  action=DISMISS
    Sleep  2s

    Go To  https://www.w3schools.com/js/tryit.asp?filename=tryjs_alert2
    Wait Until Element Is Not Visible  xpath:/html/body/button
    Select Frame  id:iframeResult
    Click button  xpath:/html/body/button
    Alert Should Be Present  Hello How are you?  action=ACCEPT  timeout=2s

    Go To  https://www.w3schools.com/jsref/met_win_alert.asp
    Alert Should Not Be Present  action=ACCEPT  timeout=2s

    Close Browser