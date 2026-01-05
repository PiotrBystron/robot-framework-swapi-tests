*** Settings ***
Resource    ../resources/api_keywords.resource
Suite Setup    Create SWAPI Session

*** Test Cases ***
Get Starship By ID - Death Star
    ${response}=    Get Starship By Id    9
    Status Should Be    200    ${response}
    ${data}=    Set Variable    ${response.json()}
    Validate Starship Data    ${data}    Death Star    1000000000000    1000000000000

Get Starship By ID - CR90 corvette
    ${response}=    Get Starship By Id    2
    Status Should Be    200    ${response}
    ${data}=    Set Variable    ${response.json()}
    Validate Starship Data    ${data}    CR90 corvette    3500000    3000000

Get Starship By ID - J-type diplomatic barge
    ${response}=    Get Starship By Id    43
    Status Should Be    200    ${response}
    ${data}=    Set Variable    ${response.json()}
    Validate Starship Data    ${data}    J-type diplomatic barge    2000000    unknown