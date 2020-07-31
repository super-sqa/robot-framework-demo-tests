*** Settings ***
Library  SeleniumLibrary
Resource  ./resources.robot


Test Setup     Open Browser        http://demostore.supersqa.com  Chrome
Suite Teardown  Close All Browsers

*** Test Cases ***
Add the first item on page to cart

    [Tags]  smoke  testCaseId-4

    Click element  ${first_add_to_cart}
    Wait until element is visible  css:a.added_to_cart.wc-forward


Add two items to cart and verify

    [Tags]  smoke  testCaseId-5

    Click element  ${first_add_to_cart}
    Wait until element is visible  css:a.added_to_cart.wc-forward

    Click element  ${second_add_to_cart}
    Wait until element is visible  css:li.product:nth-of-type(2) a.added_to_cart.wc-forward

    Element text should be  ${home_cart_qty}  2 items