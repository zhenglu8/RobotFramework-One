*** Settings ***
Documentation    This is some basic info about the whole suite 
Library          SeleniumLibrary   

# Run the script: robot -d results tests/crm.robot
# -i smoke will run the tags
# -v BROWSER:firefox will run the specific browser
# Run multiple test suites: robot -d results tests
# Run single test case: robot -d results -t "Test case 1" tests/"product 1"/web/featureOne.robot
# if the single test case has a tag called CurrentTestCase: robot -d results -i CurrentTestCase tests
*** Variables ***

*** Test Cases ***
Should be able to add new customer
    [Documentation]        This is some basic info about the test
    [Tags]                 1006    Somke    Contacts
    # Initialize Selenium
    Set Selenium Speed     .2s
    Set Selenium Timeout   10s
    
    # Open a browser
    log                    Starting the test case!
    open browser           https://automationplayground.com/crm/    safari

    #Set Window Position    x=341    y=169
    Set Window Size    1935    1090
    
    wait until page contains    Customers Are Priority One

    Click Link             id=SignIn
    # or name=sign-in-link, id=SignIn, login.html (for href), xpath=, css=
    page should contain    Login
    
    input text             name=email-name    admin@robotframeworktutorial.com
    input text             id=password    qwe
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

    sleep                  3s
    close browser  

*** Keywords ***

