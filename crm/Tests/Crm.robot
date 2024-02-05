*** Settings ***
Documentation    This is some basic info about the whole suite 
Library          SeleniumLibrary   

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
Should be able to add new customer
    [Documentation]        This is some basic info about the test
    [Tags]                 1006    Somke    Contacts
    
    CrmApp.Go to "Home" Page

    Click Link             id=SignIn
    # or name=sign-in-link, id=SignIn, login.html (for href), xpath=, css=
    wait until page contains    Login
    
    input text             name=email-name    ${VALID_LOGIN_EMAIL}
    input text             id=password    ${VALID_LOGIN_PASSWORD}
    Click Button           Submit    
    
    wait until page contains    Our Happy Customers

    click link                  New Customer
    wait until page contains    Add Customer

    input text    id=EmailAddress    janedoe@gmail.com
    input text    id=FirstName       Jane
    input text    id=LastName        Doe
    input text    id=City            Dallas
    Select From List By Value    id=StateOrRegion    TX
    Select Radio Button          gender    male
    Select Checkbox              promos-name    
    
    Click Button    Submit
    wait until page contains    Success! New customer added.

    Click Link    Sign Out
    Wait Until Page Contains    Signed Out
    
    #sleep                  3s
     

*** Keywords ***

