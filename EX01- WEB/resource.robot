*** Settings ***
Library           SeleniumLibrary

*** Keywords ***
I open the page "${PAGE}"
    Open browser    ${PAGE}   chrome
    Maximize Browser Window

I search for "${TEXT}"
    Input Text    id=searchInput    ${TEXT}
    Click Element   //*[@id="search-form"]/fieldset/button/i

The result page should be regarding "${RESULT}"
    Wait Until Page Contains Element    id=firstHeading
    Element Should Contain    id=firstHeading    ${RESULT}
    Close Browser
