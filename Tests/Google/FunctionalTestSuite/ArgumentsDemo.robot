*** Settings ***

*** Test Cases ***
Argument demo Test
    Arguments demo keyword  soumyajit  pan

Argument demo Test
    Arguments demo keyword  Sai  Srujana


*** Keywords ***
Arguments demo keyword
    [Arguments]  ${arg1}  ${arg2}
    Log  ${arg1}
    log  ${arg2}