*** Settings ***
Library           SeleniumLibrary

*** Variable ***
${URL}        https://www.wikipedia.org/
${BROWSER}    chrome

*** Test Case ***
Search in Wikipedia
      [Tags]
      ...     front_end
      ...     wikipedia

      Open browser    ${URL}   ${BROWSER}
      Maximize Browser Window

      Input Text    id=searchInput    Test Automation
      Click Element   //*[@id="search-form"]/fieldset/button/i
      Wait Until Page Contains Element    id=firstHeading

      Element Should Contain    id=firstHeading    Test automation
      Close Browser
