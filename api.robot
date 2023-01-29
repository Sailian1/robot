*** Settings ***

Library    Collections
Library    RequestsLibrary

*** Test Cases ***
API_GET_TEST
    ${get_responce}     GET     https://simple-books-api.glitch.me/status
    Log to console  ${get_responce}

API_GET_TEST_2
    ${get_responce}     GET     https://simple-books-api.glitch.me/books
    Log to console  ${get_responce}
    POST    https://simple-books-api.glitch.me/status/api-client
    
#API_POST_TEST
