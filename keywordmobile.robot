*** Settings ***
Library    AppiumLibrary
Resource   ${CURDIR}/variablemobile.robot



*** Keywords ***

open Settings App
    Open Application    ${Remote_URL}
    ...                 platformName=${Platform_name}
    ...                 platformVersion=${Platform_Version}
    ...                 deviceName=${Device_Name}
    ...                 automationName=UiAutomator2
    ...                 newCommandTimeout=2500
    ...                 appPackage=${App_Package} 
    ...                 appActivity=${App_Activity}

    Wait Until Page Contains    Settings

Input Search Data
    Click Element                    ${locator_Search}
    Wait Until Element Is Visible    ${locator_inputsearch}    5s
    Input Text                       ${locator_inputsearch}    Network
    Wait Until Element Is Visible    ${locator_selectlist}
    Click Element                    ${locator_selectlist}
    Wait Until Page Contains    Network


 open airplane   
    Wait Until Element Is Visible    ${locator_airplane}
    Click Element                    ${locator_airplane}

click back home
    Wait Until Element Is Visible    ${locator_backbutton}
    Click Element                    ${locator_backbutton}
    Wait Until Element Is Visible    ${locator_backbutton2}
    Click Element                    ${locator_backbutton2}


click select battery
    Wait Until Page Contains    Battery
    Click Element               ${locator_battery}
    Wait Until Page Contains    Battery


click open bettery percentage
    Wait Until Page Contains         Battery
    Click Element                    ${locator_battery}
    Wait Until Page Contains         Battery 
    Wait Until Element Is Visible    ${locator_batteryper}
    Click Element                    ${locator_batteryper}
    Click Element                    ${locator_backbutton}


swipe one
    Swipe    500    1000    500    400    


change thai langauege 
    Swipe    339     2100    339    715 
    Swipe    339     2100    339    165
    Wait Until Element Is Visible    ${locator_systembutton}
    Click Element                    ${locator_systembutton}
    Wait Until Element Is Visible    ${locator_languageinput}    15s
    Click Element                    ${locator_languageinput}
    Wait Until Element Is Visible    ${locator_language}
    Click Element                    ${locator_language}
    Wait Until Element Is Visible    ${locator_addlanguage}
    Click Element                    ${locator_addlanguage}
    Wait Until Element Is Visible    ${locator_searchlanguage}
    Click Element                    ${locator_searchlanguage}
    Wait Until Element Is Visible    ${locator_inputsearch1}
    Input Text                       ${locator_inputsearch1}    thai
    Wait Until Element Is Visible    ${locator_thai}
    Click Element                    ${locator_thai}
    Wait Until Element Is Visible    ${locator_thailand}    15s
    Click Element                    ${locator_backbutton7}
    Wait Until Element Is Visible    ${locator_language}    15s
    Click Element                    ${locator_backbutton7}
    Wait Until Element Is Visible    ${locator_backup}    15s    
    Click Element                    ${locator_backbutton7}
    Wait Until Page Contains         System    15s



    


