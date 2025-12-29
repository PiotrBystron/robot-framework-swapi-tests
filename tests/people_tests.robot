*** Settings ***
Resource    ../resources/api_keywords.resource
Suite Setup    Create SWAPI Session

*** Test Cases ***
Get Person By ID - Luke Skywalker
    ${response}=    Get People By Id    1
    Status Should Be    200    ${response}
    ${data}=    Set Variable    ${response.json()}
    Validate Person Data    ${data}    Luke Skywalker    172    19BBY

Get Person By ID - Invalid ID
    ${response}=    Get People By Id    9999    404
    Status Should Be    404    ${response}