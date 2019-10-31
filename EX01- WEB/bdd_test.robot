*** Settings ***
Resource      Resource.robot

*** Test Cases ***
Search in Wikipedia for Test automation
      [Tags]
      ...     front_end
      ...     wikipedia

      Given I open the page "https://www.wikipedia.org/"
      When I search for "Test Automation"
      Then The result page should be regarding "Test automation"
