*** Settings ***
Library    Collections
Library    DateTime
Library    OperatingSystem
Library    String
Library    RPA.Crypto


*** Test Cases ***
OperatingSystem Test
    List Files In Directory    /app

Collections Test
    ${dict}    Create Dictionary    key=value
    Dictionary Should Contain Key    ${dict}    key
    Dictionary Should Contain Value    ${dict}    value

DateTime Test
    ${now}    Get Current Date
    Log    ${now}

Encrypt Decrypt Test
    ${key}    Generate Key
    Use Encryption Key    ${key}
    ${data}    Generate Random String
    ${encrypted}    Encrypt String    ${data}
    Should Not Be Equal    ${data}    ${encrypted}
    ${decrypted}    Decrypt String    ${encrypted}
    Should Be Equal    ${data}    ${decrypted}
