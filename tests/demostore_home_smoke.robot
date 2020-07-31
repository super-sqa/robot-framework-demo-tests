*** Settings ***
Library  SeleniumLibrary
Resource  ./resources.robot

Suite Setup     Open Browser        http://demostore.supersqa.com  Chrome
Suite Teardown  Close All Browsers


*** Test Cases ***
Verify Home Page Title

    [Tags]  smoke  testCaseId-1

    Title Should Be     DemoStore – Just another WordPress site


Verify heading of page is 'Shop'

    [Tags]  smoke  testCaseId-2

    Element text should be  ${page_header}  Shop


Verify 16 items are displayed

    [Tags]  smoke  testCaseId-3

    ${products_on_page}  Get web elements  css:ul.products li.product
                         Length should be  ${products_on_page}  16
                         ...  msg=Unexpected number of products on page
