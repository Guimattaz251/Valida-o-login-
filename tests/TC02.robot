*** Settings ***
Resource    ../steps/Steps_Login.robot


*** Test Cases ***
TC02: Putting the wrong Username and Password
    Given I access the login page
    When I put my wrong Username and password
    Then shows the message that is invalid
