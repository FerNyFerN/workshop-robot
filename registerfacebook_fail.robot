*** Settings ***
Library    Selenium2Library
Library    Screenshot


*** Variables ***



*** Testcases ***
Create Facebook Account with Invalid Email
    Open Browser to register page
    Input Name and Surname
    Input Email
    Repeat input Email
    Input New Password
    Select Birthday
    Select Gender
    Click Create Account Button
    Found Error Message


*** Keywords ***
Open Browser to register page
    Open Browser    http://www.facebook.com    gc    
Input Name and Surname
    Input Text    name=firstname    onjira
    Input Text    name=lastname    wongchaicharn
    Take Screenshot
Input Email
    Input Text    name=reg_email__    onjira_wcc@gmaill.com
    Take Screenshot
Repeat input Email
    Input Text    name=reg_email_confirmation__    onjira_wcc@gmaill.com
    Take Screenshot
Input New Password
    Input Text    name=reg_passwd__    ferny
    Take Screenshot
Select Birthday
    Select From List By Value    name=birthday_day    8
    Select From List By Value    name=birthday_month    9
    Select From List By Value    name=birthday_year    1984
    Take Screenshot
Select Gender
    #Select Radio Button    sex    1
    Click Element    xpath=//*[@id="u_0_g"]
    Take Screenshot
Click Create Account Button
    Click Element    name=websubmit
Found Error Message
    Wait Until Element Is Visible    id=reg_error_inner
    ${text}=    Get Text    id=reg_error_inner
    Log to console    ${text}
    Take Screenshot
    #Should Be Equal    ${text}    a    not match
    #Wait Until Element Contains    id=reg_error_inner    ดูเหมือนว่าคุณอาจป้อนที่อยู่อีเมลที่ไม่ถูกต้อง โปรดแก้ไข จากนั้นคลิกเพื่อดำเนินการต่อ