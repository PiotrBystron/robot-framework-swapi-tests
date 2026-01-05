*** Settings ***
Resource    ../resources/api_keywords.resource
Suite Setup    Create SWAPI Session

*** Test Cases ***
Get Starship By ID - Death Star
    ${response}=    Get Starship By Id    9
    Status Should Be    200    ${response}
    ${data}=    Set Variable    ${response.json()}
    Validate Starship Data    ${data}    Death Star    1000000000000    1000000000000