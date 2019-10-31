*** Settings ***
Documentation    This test was writed in the Procedural form
...              and using the session *Keywords
Resource         ../Resource/TC001_Keywords.robot

*** Test Cases ***
Open Google
  Navigate To Google
  Verify Page Contains Google
  Insert your "ROBOT FRAMEWORK" in the search box
  Press Enter key
  Close the browser
