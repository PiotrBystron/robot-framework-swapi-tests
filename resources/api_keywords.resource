*** Settings ***
Library    RequestsLibrary
Resource   common.resource

*** Keywords ***
Get People By Id
    [Arguments]    ${person_id}    ${expected_status}=200
    Create Session    swapi    ${API_BASE_URL}
    ${response}=    GET On Session    swapi    /people/${person_id}    expected_status=${expected_status}
    RETURN        ${response}

Validate Person Data
    [Arguments]    ${data}    ${name}    ${height}    ${birth_year}
    Should Be Equal    ${data['name']}         ${name}
    Should Be Equal    ${data['height']}       ${height}
    Should Be Equal    ${data['birth_year']}   ${birth_year}


Get Planet By Id
    [Arguments]    ${planet_id}    ${expected_status}=200
    Create Session    swapi    ${API_BASE_URL}
    ${response}=    GET On Session    swapi    /planets/${planet_id}    expected_status=${expected_status}
    RETURN        ${response}

Validate Planet Data
    [Arguments]    ${data}    ${name}    ${diameter}    ${population}
    Should Be Equal    ${data['name']}         ${name}
    Should Be Equal    ${data['diameter']}     ${diameter}
    Should Be Equal    ${data['population']}   ${population}


Get Starship By Id
    [Arguments]    ${starship_id}    ${expected_status}=200
    Create Session    swapi    ${API_BASE_URL}
    ${response}=    GET On Session    swapi    /starships/${starship_id}    expected_status=${expected_status}
    RETURN        ${response}

Validate Starship Data
    [Arguments]    ${data}    ${name}    ${cost_in_credits}    ${cargo_capacity}
    Should Be Equal    ${data['name']}              ${name}
    Should Be Equal    ${data['cost_in_credits']}   ${cost_in_credits}
    Should Be Equal    ${data['cargo_capacity']}    ${cargo_capacity}