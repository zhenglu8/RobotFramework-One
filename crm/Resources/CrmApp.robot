*** Settings ***
Resource    ../Resources/PO/AddCustomer.robot
Resource    ../Resources/PO/Customers.robot
Resource    ../Resources/PO/Home.robot
Resource    ../Resources/PO/LoggedOut.robot
Resource    ../Resources/PO/SignIn.robot
Resource    ../Resources/PO/TopNav.robot

*** Variables ***

*** Keywords ***
Go to "Home" Page
    Home.Navigate To
    Home.Verify Page Loaded

Login With Valid Credentials
    [Arguments]    ${Email}    ${Password}
    TopNav.Click "Sign In" Link
    SignIn.Verify Page Loaded
    SignIn.Login With Valid Credentials    ${Email}    ${Password}
    Customers.Verify Page Loaded

       