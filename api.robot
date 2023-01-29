*** Settings ***

Library    Collections
Library    RequestsLibrary

*** Test Cases ***
API_GET_TEST
    GET     https://simple-books-api.glitch.me

