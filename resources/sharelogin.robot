*** Settings ***
Library    Selenium2Library

*** Variables ***
${BASE URL}    http://localhost:7272/
${BROWSER}    gc

*** Keywords ***
Search workflow
    [Arguments]    ${search keyword}    ${expected result}
    Fill in data    ${search keyword}
    Press Enter
    Found in result page    ${expected result}
    Go To    ${BASEURL}

Login with wrong username
    Open login page
    Fill in username and password    ${username}    ${password}
    Press Login button
    Found error page

Found in result page
    [Arguments]    ${expected result}
    Wait Until Page Contains    ${expected result}

Fill in data
    [Arguments]    ${search keyword}
    Input Text    name=q    ${search keyword}    

Press Enter
    Press Key    name=q    \\13

Open login page
    Open Browser    ${BASEURL}    ${BROWSER}