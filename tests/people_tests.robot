*** Settings ***
Resource    ../resources/api_keywords.resource
Suite Setup    Create SWAPI Session

*** Test Cases ***
Get Person By ID - Luke Skywalker
    ${response}=    Get People By Id    1
    Status Should Be    200    ${response}
    ${data}=    Set Variable    ${response.json()}
    Validate Person Data    ${data}    Luke Skywalker    172    19BBY

Get Person By ID - C-3PO
    ${response}=    Get People By Id    2
    Status Should Be    200    ${response}
    ${data}=    Set Variable    ${response.json()}
    Validate Person Data    ${data}    C-3PO    167    112BBY

Get Person By ID - Tion Medon
    ${response}=    Get People By Id    83
    Status Should Be    200    ${response}
    ${data}=    Set Variable    ${response.json()}
    Validate Person Data    ${data}    Tion Medon    206    unknown

Get Person By ID - Invalid ID 9999
    ${response}=    Get People By Id    9999    404
    Status Should Be    404    ${response}

Get Person By ID - Invalid ID -1
    ${response}=    Get People By Id    -1    404
    Status Should Be    404    ${response}

Get Person By ID - Invalid ID abc
    ${response}=    Get People By Id    abc    404
    Status Should Be    404    ${response}