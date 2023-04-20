*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${EXECUTABLE PATH}      D:\Python\robot_frameworks\Libraries\chromedriver.exe
${browser}  Chrome

${select_xpath}  //*[@id="cars"]


*** Test Cases ***
This is a sample test case
    [Documentation]    Mouse Operation Handle Test
    [Tags]    regression

    Open Browser    https://www.sugarcrm.com/au/request-demo/    ${browser}
    Maximize Browser Window
    Wait Until Element Is Visible  xpath://*[@id="how-select"]

    Mouse Down  xpath://*[@id="field0"]/div/input
    Sleep  3s
    Mouse Up  xpath://*[@id="field0"]/div/input
    Sleep  3s

    Scroll Element Into View  xpath://*[@id="menu-item-18904"]/a
    Sleep  1s

    Mouse Down On Link  xpath://*[@id="menu-item-16777"]/a
    Sleep  2s

    Mouse Over  xpath://*[@id="menu-item-18905"]/a
    Sleep  2s

    Mouse Out  xpath://*[@id="menu-item-18905"]/a
    Sleep  1s

    Mouse Down On Image  xpath://footer//div[1]/a/img
    Sleep  2s

    # Drag and drop example 
    Go To  https://demoqa.com/droppable/
    Drag And Drop  xpath://*[@id="draggable"]  xpath://*[@id="droppable"]
    Sleep  1s

    # Right click on element
    Open Context Menu  xpath://*[@id="droppableExample-tab-revertable"]
    Sleep  1s
   
    Close Browser