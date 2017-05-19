*** Settings ***
Library    Selenium2Library

*** Variables ***



*** Testcases ***
Upload Single File
    Open Browser to File Upload page
    Click Choose File
    Count Number of uploaded files
    Click Upload All Button

*** Keywords ***
Open Browser to File Upload page
    Open Browser    https://goo.gl/YE27iy    gc
    Element Should Be Disabled    xpath=//div[2]/div/button[1]  

Click Choose File  
    Choose File    xpath=//*[@id="ng-app"]/body/div/div[2]/div[1]/input[2]    C:/Users/abc/Desktop/test/Chaning1.xlsx
    Choose File    xpath=//*[@id="ng-app"]/body/div/div[2]/div[1]/input[2]    C:/Users/abc/Desktop/test/Chaning2.xlsx

Count Number of uploaded files
    Wait Until Element Contains    xpath=//*[@id="ng-app"]/body/div/div[2]/div[2]/p    Queue length: 2

    Xpath Should Match X Times    //*[@id="ng-app"]/body/div/div[2]/div[2]/table/tbody/tr    2

    Table Cell Should Contain    xpath=//*[@id="ng-app"]/body/div/div[2]/div[2]/table    2    1    Chaning1.xlsx
    Table Cell Should Contain    xpath=//*[@id="ng-app"]/body/div/div[2]/div[2]/table    3    1    Chaning2.xlsx

Click Romove File
    Click Element     xpath=//*[@id="ng-app"]/body/div/div[2]/div[2]/table/tbody/tr[1]/td[5]/button[3]
Count Number of uploaded files after remove
    Wait Until Element Contains    xpath=//*[@id="ng-app"]/body/div/div[2]/div[2]/p    Queue length: 1

Click Upload All Button
    Click Element    xpath=//div[2]/div/button[1]
    Wait Until Page Contains Element    xpath=//div[@style="width: 100%;"]




