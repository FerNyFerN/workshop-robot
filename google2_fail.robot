*** Settings ***
Resource    resources/share.robot
Suite Setup    Open browser to open google.com    
Suite Teardown    Close Browser

*** Variables ***
${BASEURL}    http://www.google.com
${BROWSER}    gc

*** Testcases ***
Search rule
Search not found rule
    [Template]    Search workflow
    pythonx    not found
    robotx     not found


