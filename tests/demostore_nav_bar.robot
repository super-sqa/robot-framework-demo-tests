*** Settings ***
Library  SeleniumLibrary


Suite Setup     Open Browser        http://demostore.supersqa.com  Chrome
Suite Teardown  Close All Browsers

*** Variables ***
${nav_bar_locator}  css:ul.nav-menu

*** Test Cases ***
Nav bar should contain 'Home'

    [Tags]  smoke  testCaseId-6

    Element should contain  ${nav_bar_locator}  Home

Nav bar should contain 'Cart'

    [Tags]  smoke  testCaseId-7

    Element should contain  ${nav_bar_locator}  Cart

Nav bar should contain 'Checkout'

    [Tags]  smoke  testCaseId-8

    Element should contain  ${nav_bar_locator}  Checkout

Nav bar should contain 'My account'

    [Tags]  smoke  testCaseId-9

    Element should contain  ${nav_bar_locator}  My account

Nav bar should contain 'Sample Page'

    [Tags]  smoke  testCaseId-10

    Element should contain  ${nav_bar_locator}  Checkout

Nav bar should contain 'About Us'

    [Tags]  smoke  testCaseId-11  failing-test

    Element should contain  ${nav_bar_locator}  About Us
