*** Settings ***
Library     Selenium2Library

*** Variables ***
${URL}    https://www.google.com
${BROWSER}    Chrome
${TITLE}    Google
${FIELD_SEARCH}   name=q
${BTN_SEARCH}     xpath=//div[@class='VlcLAe']//center//input[@name='btnK']

*** Keywords ***
### Given
that I'm on the Google page
  Page Should Contain    ${URL}

I Verify Page Contains Google
  ${GET_TITLE}=      Get Title
  Should Be Equal As Strings     ${GET_TITLE}   ${TITLE}

### When
I insert a text in the search box: "${SEARCH}"
  Input Text    ${FIELD_SEARCH}    ${SEARCH}
  Sleep    10

I click on button Google Search
  Click Element    ${BTN_SEARCH}
  Sleep     5

### Then
Google return with the search: "${RESULT}"
  Page Should Contain    ${RESULT}
