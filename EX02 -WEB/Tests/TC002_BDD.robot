*** Settings ***
Documentation    This test was writed in the BDD form
...               using Given, When, And, Then.
Resource         ../Resource/TC002_BDD.robot

*** Test Cases ***
Scenario: Open Google
  Given that I navigate To Google
  When I Verify Page Contains Google
  Then Close the browser

Scenario: Open Google and do a search
  Given that I navigate To Google
  And I Verify Page Contains Google
  When I insert a text "Robot Framework" in the search box
  And I click on button Google Search
  Then Google return with the search "https://robotframework.org"
  And Close the browser
