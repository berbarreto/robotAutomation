*** Settings ***
Library     Selenium2Library

*** Variables ***
${URL}    http://automationpractice.com
${BROWSER}    chrome
${TITLE}    Google
${FIELD_SEARCH}   xpath=//input[@id='search_query_top']
${BTN_SEARCH}     xpath=//button[@name='submit_search']
${MORE_SEARCH}    xpath=//img[@title='Faded Short Sleeve T-shirts']

*** Keywords ***
### Given
the user will stay in HOME screen of the site Automation Practice
  Open Browser    ${URL}    ${BROWSER}

the user to search "${Search}"
  # Agora complete o código abaixo.
  # Onde locator é o elemento que você deve encontrar na Página do Google.
  # Declarar o locator na varíavel ${FIELD_SEARCH} em *** Variables ***
  # Onde text é a sua varíavel ${SEARCH} que contém o assunto da sua pesquisa.
  Input Text    ${FIELD_SEARCH}    ${SEARCH}
  Sleep    2
  Click Element    ${BTN_SEARCH}

the user to click on the product for more details
  # Agora complete o código abaixo.
  # Onde locator é o elemento(botão) que você deve encontrar na Página do Google.
  # Dica # Para cliar o locator, você precisará usar o xpath=//...
  # Utilize a varíavel ${BTN_SEARCH} em *** Variables ***
  Click Element    ${MORE_SEARCH}
  Sleep     2

### Then
the search return with the result "${RESULT}"
  # Agora complete o código abaixo.
  # Onde text é a URL com o conteúdo da sua pesquisa
  Page Should Contain  ${RESULT}

close the browser
  Close Browser
