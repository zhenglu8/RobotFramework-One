*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
Begin Web Test
# Initialize Selenium
    #Set Selenium Speed     .2s
    Set Selenium Timeout   10s
    
    # Open a browser
    log                    Starting the test case!
    open browser           ${URL}    ${BROWSER}

    #Set Window Position    x=341    y=169
    Set Window Size    1935    1090
    

End Web Test
    Close All Browsers 