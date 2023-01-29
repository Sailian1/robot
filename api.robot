*** Settings ***

Library    Collections
Library    RequestsLibrary

*** Variables ***
${token}    826d4df02789ebf18dfd5264e753013bdce6e8941dd57f491a6a919edd9bab71
${register_json2}    create dictionary   bookId=123     clientName=1aaaad
*** Test Cases ***
API_GET_TEST
    ${get_responce}     GET     https://simple-books-api.glitch.me/status
    Log to console  ${get_responce}

API_GET_TEST_2
    ${get_responce}     GET     https://simple-books-api.glitch.me/books
    Log to console  ${get_responce}

API_registration_TEST4
    ${register_json}    create dictionary   clientName=1aaaad    clientEmail=spam@sdpaaaam.pl
    ${post_register_json}     POST    https://simple-books-api.glitch.me/api-clients/    json=${register_json}

API_POST_TEST_2
    ${headers}  create dictionary   Content-Type=application/json   Authorization=Bearer    ${token}
    ${post_send}    POST    https://simple-books-api.glitch.me//orders/PF6MflPDcuhWobZcgmJy5    json=${register_json2}
    LOG to console ${responce}


#API_POST_TEST
#body={"accessToken":"826d4df02789ebf18dfd5264e753013bdce6e8941dd57f491a6a919edd9bab71"}