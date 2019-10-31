*** Settings ***
Library     Selenium2Library

*** Variables ***
${URL}    https://www.google.com
${BROWSER}    chrome
${TITLE}    Google
${FIELD_SEARCH}   xpath=//input[@name='q']
${BTN_SEARCH}     xpath=//input[@name='btnK']

*** Keywords ***
### Given
that I navigate To Google
  Open Browser    ${URL}    ${BROWSER}

I Verify Page Contains Google
  ${GET_TITLE}=      Get Title
  Should Be Equal As Strings     ${GET_TITLE}   ${TITLE}

Close the browser
  Close Browser

### When
I insert a text "${SEARCH}" in the search box
  # Agora complete o código abaixo.
  # Onde locator é o elemento que você deve encontrar na Página do Google.
  # Declarar o locator na varíavel ${FIELD_SEARCH} em *** Variables ***
  # Onde text é a sua varíavel ${SEARCH} que contém o assunto da sua pesquisa.
  Input Text    ${FIELD_SEARCH}    ${SEARCH}
  Sleep    10

I click on button Google Search
  # Agora complete o código abaixo.
  # Onde locator é o elemento(botão) que você deve encontrar na Página do Google.
  # Dica # Para cliar o locator, você precisará usar o xpath=//...
  # Utilize a varíavel ${BTN_SEARCH} em *** Variables ***
  Click Element    ${BTN_SEARCH}
  Sleep     5

### Then
Google return with the search "${RESULT}"
  # Agora complete o código abaixo.
  # Onde text é a URL com o conteúdo da sua pesquisa
  Page Should Contain    text
