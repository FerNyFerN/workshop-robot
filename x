Login rule
Login fail rule
    [Template]    Search workflow
    pythonx    not found
    robotx     not found

Login with wrong username
    Open login page
    Fill in username and password    mode    mode
    Press Login button
    Found error page

Login with wrong password
    Open login page
    Fill in username and password    demo    demo
    Press Login button
    Found error page

Login with wrong username and password
    Open login page
    Fill in username and password    test    test
    Press Login button
    Found error page

Login with missing username
    Open login page
    Fill in username and password    ${EMPTY}    mode
    Press Login button
    Found error page

Login with missing password
    Open login page
    Fill in username and password    demo    ${EMPTY}
    Press Login button
    Found error page

Login with missing username and password
    Open login page
    Fill in username and password    ${EMPTY}    ${EMPTY}
    Press Login button
    Found error page  