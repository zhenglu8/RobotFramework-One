*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${TOPNAV_SIGNIN_LINK} =    id=SignIn
${TOPNAV_SIGNOUT_LINK} =   Sign Out
*** Keywords ***
Click "Sign In" Link
     Click Link    ${TOPNAV_SIGNIN_LINK}
     # or name=sign-in-link, id=SignIn, login.html (for href), xpath=, css=
Click "Sign Out" Link
    Click Link     ${TOPNAV_SIGNOUT_LINK}