*** Settings ***
Library    Selenium2Library
#Suite Teardown    Close Browser

*** Variables ***
${BASE URL}    http://localhost:7272/
${BROWSER}    gc

*** Testcases ***
Login success
    Open login page
    Fill in username and password
    Press Login button
    Found welcome page

*** Keywords ***
Found welcome page
    Wait Until Element Contains    xpath=//*[@id="container"]/h1    Welcome Page
    Should back with link

Should back with link
    Page should Contain Element    xpath=//*[@id="container"]/p/a
    Click Element    xpath=//*[@id="container"]/p/a
    Wait Until Page Contains    Login page   
    
Press Login button
    Click Element    id=login_button

Fill in username and password
    Input Text    id=username_field    demo
    Input Text    id=password_field    mode     

Open login page
    Open Browser    ${BASE URL}    ${BROWSER}