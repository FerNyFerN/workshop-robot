*** Settings ***
Library    Selenium2Library
Test Teardown    Close Browser

*** Variables ***
${BASE URL}    http://www.google.com
${BROWSER}    gc

*** Testcases ***
Search robot
    Open browser to open google.com
    Fill in data    robot
    Press Enter
    Found in result page    robot

Search python
    [Tags]    testing
    Open browser to open google.com
    Fill in data    python
    Press Enter
    Found in result page    python    

*** Keywords ***
Found in result page
    [Arguments]    ${expected result}
    Wait Until Page Contains    ${expected result}

Fill in data
    [Arguments]    ${search keyword}
    Input Text    name=q    ${search keyword}    

Press Enter
    Press Key    name=q    \\13

Open browser to open google.com
    Open Browser    ${BASE URL}    ${BROWSER}
   
