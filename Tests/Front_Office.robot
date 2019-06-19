*** Settings ***
Documentation  Talk about what this suite of tests does
Resource  ../Resources/FrontOfficeApp.robot
Resource  ../Resources/CommonWeb.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test

# robot -d results tests/Front_Office.robot

*** Variables ***
${BROWSER} =  ie
${URL} =  http://www.robotframeworktutorial.com/front-office

*** Test Cases ***
Should be able to access "Team" page
    [Documentation]  This is test 1
    [Tags]  Page1
    # A change from IDE
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Go to "Team" Page

"Team" page should match requirements
    [Documentation]  This is test 2
    [Tags]  Page2 
    # A change from Git
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Go to "Team" Page
    FrontOfficeApp.Validate "Team" Page
