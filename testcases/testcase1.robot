*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
AddMobileCartTest
    Open Browser  https://www.flipkart.com/   chrome  alias
    Maximize Browser Window
    Click Button  xpath://button[contains(text(),'✕')]
    Input Text  name:q  mi
    Press Keys  name:q  ENTER
    Set Selenium Implicit Wait  15 seconds
    Set Selenium Speed  1 seconds
    Scroll Element Into View  xpath://div[contains(text(),'Redmi Note 9 (Pebble Grey, 128 GB)')]
    Click Element  xpath://div[contains(text(),'Redmi Note 9 (Pebble Grey, 128 GB)')]
    Set Selenium Implicit Wait  10 seconds
    Switch Window  locator=NEW
    Click Button  xpath://button[@class='_2AkmmA _2Npkh4 _2MWPVK']

VerifyMobileCartTest
    Open Browser  https://www.flipkart.com/   chrome  alias
    Set Selenium Implicit Wait  10 seconds
    Click Link  xpath://*[@id='container']/div/div[1]/div[1]/div[2]/div[5]/div/div/a
    Wait Until Page Contains  Redmi Note 9
    ${mobileName}=  Get Element Attribute  xpath://a[@class='_325-ji _3ROAwx']  text
    Should Be Equal As Strings  ${mobileName}  Redmi Note 9 (Pebble Grey, 128 GB)
    Close Browser

*** Keywords ***