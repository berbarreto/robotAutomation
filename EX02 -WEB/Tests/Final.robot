*** Settings ***
Documentation    This test was writed in the BDD form
...               using Given, When, And, Then.
Resource         ../Resource/Final.robot

*** Test Cases ***

Scenario: Automation Practice
  Given the user will stay in HOME screen of the site Automation Practice
  When the user to search "Faded Short Sleeve T-shirts"
  And the user to click on the product for more details
  Then the search return with the result "Faded Short Sleeve T-shirts"
  And Close the browser
