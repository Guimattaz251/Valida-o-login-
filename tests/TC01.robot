*** Settings ***
Resource    ../steps/Steps_Login.robot


*** Test Cases ***
TC01: Putting the right Username and Password
    Given I access the login page
    When I put my Username and my password
    Then I'm redirected
