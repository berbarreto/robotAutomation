*** Settings ***
Library      RequestsLibrary
Library      Collections
Library      JSONLibrary
Library      String
Variables    data.py

*** Keywords ***

I'm the API consumer
      Create Session    API    ${URL}

I try to get from the endpoint
      ${RESPONSE}=        Get Request    API   ${ENDPOINT}
      Log    ${RESPONSE.content}
      Set Global Variable    ${RESPONSE}

I try to post to the endpoint using the new data
      ${RESPONSE}=        Post Request    API    books
      ...                 data=${NEW_BOOK}
      ...                 headers=${HEADERS}
      Log    ${RESPONSE.content}
      Set Global Variable    ${RESPONSE}

I try to put to the endpoint to the item at variable ITEM_ID using the new data
      ${RESPONSE}=        Put Request    API    ${ENDPOINT}/${ITEM_ID}
      ...                 data=${UPDATE_BOOK}
      ...                 headers=${HEADERS}
      Log    ${RESPONSE.content}
      Set Global Variable    ${RESPONSE}

I try to delete from the endpoint the item at variable ITEM_ID
      ${RESPONSE}=        Delete Request    API    ${ENDPOINT}/${ITEM_ID}
      ...                 headers=${HEADERS}
      Log    ${RESPONSE.content}
      Set Global Variable    ${RESPONSE}

I persist the JSON field at variable ITEM_ID
      ${VALUE}=           Get Value From Json    ${RESPONSE.json()}    ${JSON_PATH}
      Set Global Variable    ${ITEM_ID}    ${VALUE[0]}

I should receive at json path containing "${TEXT}"
      ${VALUE}=           Get Value From Json    ${RESPONSE.json()}    ${COMPARE_PATH}
      ${VALUE}=           Convert To String    ${VALUE}
      Should Contain    ${VALUE}    ${TEXT}

I should receive the response code
      Should Be Equal As Integers    ${RESPONSE.status_code}    ${RESPONSE_CODE}
