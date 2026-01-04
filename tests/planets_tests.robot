*** Settings ***
Library    RequestsLibrary
Resource   ../resources/common.resource
Suite Setup    Create SWAPI Session

*** Test Cases ***
Get Planet By ID
    ${response}=    GET On Session    swapi    /planets/1
    Status Should Be    200    ${response}
    ${data}=    Set Variable    ${response.json()}
    Should Be Equal    ${data['name']}    Tatooine