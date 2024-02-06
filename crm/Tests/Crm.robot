*** Settings ***
Documentation    This is some basic info about the whole suite  

Resource         ../Resources/Common.robot
Resource         ../Resources/CrmApp.robot
Test Setup       Begin Web Test
Test Teardown    End Web Test

# Run the script: robot -d results tests/crm.robot
# -i smoke will run the tags
# -v BROWSER:firefox will run with a veriable argument as command line
# Run multiple test suites: robot -d results tests
# Run single test case: robot -d results -t "Test case 1" tests/"product 1"/web/featureOne.robot
# if the single test case has a tag called CurrentTestCase: robot -d results -i CurrentTestCase tests
*** Variables ***
${BROWSER} =  safari
${URL} =  https://automationplayground.com/crm/
${VALID_LOGIN_EMAIL} =   admin@robotframeworktutorial.com
${VALID_LOGIN_PASSWORD} =  qwe

*** Test Cases ***
Home page should load
    [Documentation]        Test the home page
    [Tags]                 1001    Somke    Home
    
    CrmApp.Go to "Home" Page

Should be able to login with valid credentials
    [Documentation]        Test the login
    [Tags]                 1002    Somke    Login
    
    CrmApp.Go to "Home" Page
    CrmApp.Login With Valid Credentials    ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}

Should be able to log out
    [Documentation]        Test the logout
    [Tags]                 1004    Somke    Login
    
    CrmApp.Go to "Home" Page
    CrmApp.Login With Valid Credentials    ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}
    CrmApp.Sign Out

Should be able to add new customer
    [Documentation]        Test adding a new customer
    [Tags]                 1006    Somke    Contacts
    
    CrmApp.Go to "Home" Page
    CrmApp.Login With Valid Credentials    ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}
    CrmApp.Add New Customer
    CrmApp.Sign Out


