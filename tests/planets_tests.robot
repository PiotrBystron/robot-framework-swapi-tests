*** Settings ***
Resource    ../resources/api_keywords.resource
Suite Setup    Create SWAPI Session

*** Test Cases ***
Get Planet By ID - Tatooine
    ${response}=    Get Planet By Id    1
    Status Should Be    200    ${response}
    ${data}=    Set Variable    ${response.json()}
    Validate Planet Data    ${data}    Tatooine    10465    200000

Get Planet By ID - Yavin IV
    ${response}=    Get Planet By Id    3
    Status Should Be    200    ${response}
    ${data}=    Set Variable    ${response.json()}
    Validate Planet Data    ${data}    Yavin IV    10200    1000

Get Planet By ID - Umbara
    ${response}=    Get Planet By Id    60
    Status Should Be    200    ${response}
    ${data}=    Set Variable    ${response.json()}
    Validate Planet Data    ${data}    Umbara    unknown    unknown
