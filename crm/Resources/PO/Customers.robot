*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${CUSTOMER_HEADER_LABEL} =    Our Happy Customers 
*** Keywords ***
Verify Page Loaded
    wait until page contains     ${CUSTOMER_HEADER_LABEL} 