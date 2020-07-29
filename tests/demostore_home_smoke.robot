*** Settings ***
Library  SeleniumLibrary




*** Test Cases ***
adfrun keyword if any tests failed

    [Tags]  smoke

    Open browser  http://demostore.supersqa.com  Chrome