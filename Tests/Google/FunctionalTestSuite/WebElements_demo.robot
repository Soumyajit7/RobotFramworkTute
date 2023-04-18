*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${EXECUTABLE PATH}      D:\Python\robot_frameworks\Libraries\chromedriver.exe


*** Test Cases ***
This is a sample test case
    [Documentation]    Google test
    [Tags]    regression

    Open Browser    https://www.google.com    Chrome  alias=ChromeRCV
    Maximize Browser Window
    Sleep  1s
    
    ${attr}=  Get Element Attribute    name:q    class
    ${count}=  Get Element Count    name:q
    ${width}  ${height}=  Get Element Size    name:q
    Get WebElement    name:q
    @{webelements}=  Get WebElements    tagname:a
    Capture Element Screenshot    name:q
    Assign Id To Element    xpath:/html/body/div[1]/div[2]/div/img    MYID
    Page Should Contain Element    MYID

    Element Should Be Focused  name:q
    Element Should Be Visible  name:q

    Input Text  name:q  Robot
    Sleep  1s
    Clear Element Text  name:q
    Cover Element    name:q

    Element Attribute Value Should Be    name:btnK    value    Google Search
    Element Should Be Enabled  name:btnK
    Element Should Not Be Visible  name:btnKgf
    Element Should Contain  xpath:/html/body/div[1]/div[5]/div[2]/div[1]/a[4]   How Search
    Element Should Not Contain    xpath:/html/body/div[1]/div[5]/div[2]/div[1]/a[4]    Google Search
    Element Text Should Be  xpath:/html/body/div[1]/div[5]/div[2]/div[1]/a[4]   How Search works 
    Element Text Should Not Be  xpath:/html/body/div[1]/div[5]/div[2]/div[1]/a[4]   How Search

    Double Click Element    xpath:/html/body/div[1]/div[4]/div[1]/div/a

    Wait Until Element Is Visible  xpath://*[@id="yDmH0d"]/div[2]/div[1]/div[2]/a[2]/span/div
    Click Element At Coordinates    xpath://*[@id="yDmH0d"]/div[2]/div[1]/div[2]/a[2]/span/div    66    36

    Close Browser


