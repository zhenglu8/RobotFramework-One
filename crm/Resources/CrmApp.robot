*** Settings ***
Resource    ../Resources/PO/Home.robot

*** Variables ***

*** Keywords ***
Go to "Home" Page
    Home.Navigate To
    Home.Verify Page Loaded
       