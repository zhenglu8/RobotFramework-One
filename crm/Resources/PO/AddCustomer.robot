*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${ADDCUSTOMER_HEADER_LABEL} =    Add Customer
${ADDCUSTOMER_SUBMIT_BUTTON} =    Submit
${ADDCUSTOMER_EMAIL_TEXTBOX} =    id=EmailAddress
${ADDCUSTOMER_FIRSTNAME_TEXTBOX} =    id=FirstName
${ADDCUSTOMER_LASTNAME_TEXTBOX} =    id=LastName
${ADDCUSTOMER_CITY_TEXTBOX} =    id=City
${ADDCUSTOMER_STATE_DROPDOWN} =    id=StateOrRegion
${ADDCUSTOMER_GENDER_RADIO} =    gender
${ADDCUSTOMER_PROMO_CHECKBOX} =    promos-name 
*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains     ${ADDCUSTOMER_HEADER_LABEL}
Add New Customer
    input text                   ${ADDCUSTOMER_EMAIL_TEXTBOX}           janedoe@gmail.com
    input text                   ${ADDCUSTOMER_FIRSTNAME_TEXTBOX}       Jane
    input text                   ${ADDCUSTOMER_LASTNAME_TEXTBOX}        Doe
    input text                   ${ADDCUSTOMER_CITY_TEXTBOX}            Dallas
    Select From List By Value    ${ADDCUSTOMER_STATE_DROPDOWN}          TX
    Select Radio Button          ${ADDCUSTOMER_GENDER_RADIO}            male
    Select Checkbox              ${ADDCUSTOMER_PROMO_CHECKBOX}   
    
    Click Button                 ${ADDCUSTOMER_SUBMIT_BUTTON}