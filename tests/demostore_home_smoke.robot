*** Settings ***
Library  SeleniumLibrary

Suite Setup  Open Browser  about:blank  Chrome
Suite Teardown  Close All Browsers


*** Test Cases ***
Verify Home Page Title

    [Tags]  smoke

    Go to               http://demostore.supersqa.com
    Title Should Be     DemoStore – Just another WordPress site

