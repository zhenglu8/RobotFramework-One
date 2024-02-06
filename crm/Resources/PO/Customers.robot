*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${CUSTOMER_HEADER_LABEL} =         Our Happy Customers 
${CUSTOMER_ADD_CUSTOMER_LINK} =    New Customer
${CUSTOMER_ADD_SUCCESS_LABEL} =    Success! New customer added.
*** Keywords ***
Verify Page Loaded
    wait until page contains     ${CUSTOMER_HEADER_LABEL} 
Click Add Customer Link
    click link                   ${CUSTOMER_ADD_CUSTOMER_LINK}
Verify Customer Added Successfully
    wait until page contains     ${CUSTOMER_ADD_SUCCESS_LABEL}