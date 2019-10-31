*** Settings ***
Library     Selenium2Library

*** Keywords ***
Navigate To Google
  Open Browser      https://www.google.com   browser=chrome

Verify Page Contains Google
  ${GET_TITLE}=      Get Title
  Should Be Equal As Strings     ${GET_TITLE}   Google

Insert your "${SEARCH}" in the search box
  # Agora complete o código abaixo.
  # Onde locator é o elemento que você deve encontrar na Página do Google.
  # Onde text é a sua varíavel ${SEARCH} que contém o assunto da sua pesquisa.
  Input Text    name=q    ${SEARCH}
  Sleep    2

Press Enter key
# Agora complete o código abaixo.
# Onde locator é o elemento(botão) que você deve encontrar na Página do Google.
# Onde *Keys é a tecla que você deseja usar. Exemplo: Enter
# A tecla Enter = RETURN
  Press Keys   name=btnK  RETURN

Close the browser
  Close Browser
