*** Settings ***
Resource    ../elements/Login_Elements.robot
Resource    ../resources/Login.resource


*** Keywords ***
Given I access the login page
    Open Browser    ${Url}    ${Browser}
    Maximize Browser Window

When I put my Username and my password
    Input Text    ${Elements.Input_Username}    ${Username}
    Input Text    ${Elements.Input_Password}    ${Password}
    Click Button    ${Elements.Button_Login}

When I put my wrong Username and password
    Input Text    ${Elements.Input_Username}    ${Username_Wrong}
    Input Text    ${Elements.Input_Password}    ${Password_Wrong}
    Click Button    ${Elements.Button_Login}

Then I'm redirected
    Wait Until Element Is Visible    ${Elements.Button_Logout}
    Element Should Be Visible    ${Elements.Button_Logout}
    Close Browser

Then shows the message that is invalid
    Wait Until Element Is Visible    ${Elements.Prove_Wrong}
    Element Should Be Visible    ${Elements.Prove_Wrong}
    Close Browser
