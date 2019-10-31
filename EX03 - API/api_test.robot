*** Settings ***
Documentation    This test was writed in the BDD form
...               using Given, When, And, Then.
Resource         resource.robot

*** Test Cases ***
Scenario: API Get all books
  Given I'm the API consumer
  When I try to get from the endpoint
  Then I should receive the response code

Scenario: API Create a new book
  Given I'm the API consumer
  When I try to post to the endpoint using the new data
  Then I should receive at json path containing "Escavadeira"
  And I should receive the response code

Scenario: API Update/Put a new book
  Given I'm the API consumer
  When I try to post to the endpoint using the new data
  Then I should receive the response code
  Given I persist the JSON field at variable ITEM_ID
  When I try to put to the endpoint to the item at variable ITEM_ID using the new data
  Then I should receive the response code

Scenario: API Delete a book
  Given I'm the API consumer
  When I try to post to the endpoint using the new data
  Then I should receive the response code
  Given I persist the JSON field at variable ITEM_ID
  When I try to delete from the endpoint the item at variable ITEM_ID
  Then I should receive the response code







Get all books
    Create Session    API    http://namstest.got.volvo.net:4000/api
    ${RESPONSE}=        Get Request    API   books
    Log    ${RESPONSE.content}
    Should Be Equal As Integers    ${RESPONSE.status_code}    200

Create new book
    Create Session    API    http://namstest.got.volvo.net:4000/api
    ${RESPONSE}=        Post Request    API    books
    ...                 data=${NEW_BOOK}
    ...                 headers=${HEADERS}
    Log    ${RESPONSE.content}
    Should Be Equal As Integers    ${RESPONSE.status_code}    200

    # Compare the response code with 200
