*** Settings ***
Documentation    This test was writed for showing the use of Suite Setup,
..               Test Setup, Suite Teardown and Test Teardown.
Resource         ../Resource/TC003_Setup_Teardown.robot

*** Test Cases ***
Scenario: Open Google
  Given that I'm on the Google page
  And I Verify Page Contains Google

Scenario: Open Google and do a search
  Given that I'm on the Google page
  And I Verify Page Contains Google
  When I insert a text in the search box: "Robot Framework"
  And I click on button Google Search
  Then Google return with the search: "https://robotframework.org"
