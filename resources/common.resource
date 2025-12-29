*** Settings ***
Library    RequestsLibrary
Resource   variables.resource

*** Keywords ***
Create SWAPI Session
    Create Session    swapi    ${API_BASE_URL}