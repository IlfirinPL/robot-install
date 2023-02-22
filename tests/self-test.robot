*** Settings ***
Library    Collections
Library    OperatingSystem


*** Test Cases ***
OperatingSystem Test
    List Files In Directory    /app

Collections Test
    ${dict}    Create Dictionary    key=value
    Dictionary Should Contain Key    ${dict}    key
    Dictionary Should Contain Value    ${dict}    value
