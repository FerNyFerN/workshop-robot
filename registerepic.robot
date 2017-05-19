*** Settings ***
Library    Selenium2Library
Test Teardown    Close Browser

*** Variables ***



*** Testcases ***
Next Action Without Input
    Open Browser    https://epit.rd.go.th/EFILING/RegController?PRGID=R008T#    gc
    Click Element    name=link_RegType1
    Click Element    xpath=//*[@id="bOK1"]
    ${result}=    Get Alert Message
    Should Contain    ${result}    [E011]

Sign Out 
    Open Browser    https://epit.rd.go.th/EFILING/RegController?PRGID=R008T#    gc
    Click Element    name=link_RegType1

    #Choose Cancel On Next Confirmation
    Click Element    name=bExit1
    Get Alert Message    Choose OK
    Location Should Be    http://epit.rd.go.th/publish/index.php

Cancel Sign Out 
    Open Browser    https://epit.rd.go.th/EFILING/RegController?PRGID=R008T#    gc
    Click Element    name=link_RegType1

    Choose Cancel On Next Confirmation
    Click Element    name=bExit1
    Get Alert Message    Choose Cancel
    






