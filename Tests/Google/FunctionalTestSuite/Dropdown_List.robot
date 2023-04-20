*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${EXECUTABLE PATH}      D:\Python\robot_frameworks\Libraries\chromedriver.exe
${browser}  Chrome

${select_xpath}  //*[@id="cars"]


*** Test Cases ***
This is a sample test case
    [Documentation]    Dropdown Handle Test
    [Tags]    regression

    Open Browser    https://www.w3schools.com/tags/tryit.asp?filename=tryhtml_select    ${browser}  alias=ChromeRCV
    Maximize Browser Window
    Select Frame  id:iframeResult

    Page Should Contain List  ${select_xpath}
    Page Should Not Contain List  xpath://*[@id="how-select2"]
    @{AllItems} =  Get List Items  ${select_xpath}
    ${ListLabel} =  Get Selected List Label  ${select_xpath}
    ${ListValue} =  Get Selected List Value  ${select_xpath}
    
    List Selection Should Be  ${select_xpath}  Volvo
    Select From List By Index  ${select_xpath}  1
    ${ListLabel1} =  Get Selected List Label  ${select_xpath}
    Sleep  1s

    Select From List By Label  ${select_xpath}  Audi
    ${ListLabel2} =  Get Selected List Label  ${select_xpath}
    Sleep  1s

    Select From List By Value  ${select_xpath}  opel
    ${ListLabel3} =  Get Selected List Label  ${select_xpath}
    Sleep  1s

    # multiselect fields
    Go to  https://www.w3schools.com/tags/tryit.asp?filename=tryhtml_select_multiple
    Select Frame  id:iframeResult
    Select All From List  xpath://*[@id="cars"]
    Sleep  1s

    @{ListLabels} =  Get Selected List Labels  xpath://*[@id="cars"]
    Sleep  1s
    Unselect From List By Value  xpath://*[@id="cars"]  audi
    Sleep  1s
    Unselect From List By Index  xpath://*[@id="cars"]  1
    Sleep  1s
    Unselect From List By Label  xpath://*[@id="cars"]  Volvo
    Sleep  1s


    @{ListValues} =  Get Selected List Values  xpath://*[@id="cars"]
    Sleep  1s
    Unselect All From List  xpath://*[@id="cars"]
    Sleep  1s
    List Should Have No Selections  xpath://*[@id="cars"]

    Close Browser