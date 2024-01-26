*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${Url}                  https://the-internet.herokuapp.com/login
${Browser}              chrome
${Username}             tomsmith
${Username_Wrong}       tomsmith12
${Password}             SuperSecretPassword!
${Password_Wrong}       SuperSecretPassword!!!
