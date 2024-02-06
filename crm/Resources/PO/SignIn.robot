*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SIGNIN_HEADER_LABEL} =         Login
${SIGNIN_EMAIL_TEXTBOX} =        name=email-name
${SIGNIN_PASSWORD_TEXTBOX} =     id=password
${SIGNIN_SUBMIT_BUTTON} =        Submit
*** Keywords ***
Verify Page Loaded
    wait until page contains    ${SIGNIN_HEADER_LABEL}   

Login With Valid Credentials
    [Arguments]    ${Email}    ${Password}
    input text             ${SIGNIN_EMAIL_TEXTBOX}           ${Email}
    input text             ${SIGNIN_PASSWORD_TEXTBOX}        ${Password}
    Click Button           ${SIGNIN_SUBMIT_BUTTON} 