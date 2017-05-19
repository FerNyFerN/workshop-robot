*** Settings ***
Library    Selenium2Library
Suite Setup    Open login page
Suite Teardown    Close Browser
Test Teardown    Go back to login page
Test Template    Login fail flow

*** Variables ***
${BASE URL}    http://localhost:7272/
${BROWSER}    gc

*** Testcases ***                     username    password
Wrong Username                        test        mode
Wrong Password                        demo        test
Wrong Username and password           test        test
Missing Password                      demo        ${EMPTY}
Missing Username                      ${EMPTY}    mode
Missing Username and Password         ${EMPTY}    ${EMPTY}


*** Keywords ***
Go back to login page
    Go to    ${BASE URL}

Login fail flow
    [Arguments]    ${username}    ${password}
    Fill in username and password    ${username}    ${password} 
    Press Login button
    Found error page

Found error page
    Wait Until Element Contains    xpath=//*[@id="container"]/h1    Error Page
  
    
Press Login button
    Click Element    id=login_button

Fill in username and password
    [Arguments]    ${username}    ${password}
    Input Text    id=username_field    ${username}
    Input Text    id=password_field    ${password}  

Open login page
    Open Browser    ${BASE URL}    ${BROWSER}