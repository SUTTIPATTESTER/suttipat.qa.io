*** Settings ***
Library    AppiumLibrary
Resource         ${CURDIR}/variablemobile.robot
Resource         ${CURDIR}/keywordmobile.robot
Suite Teardown   Close All Applications
Test Setup       open Settings App
Test Teardown    Close Application  






*** Test Cases ***
TC-001 open airplane mode
    [Documentation]    ใช้สำหรับทดสอบในกรณีการเปิดโหมดเครื่องบินและเช็คแบต
    [Tags]    test pass
    Input Search Data
    open airplane
    click back home
    swipe one
    click select battery
    



Tc-002 open battery percentage
    [Documentation]    ใช้สำหรับทดสอบในกรณีการเปิดเปอร์เซ็นแบบตเตอรี่
    [Tags]    test pass
    click open bettery percentage 

Tc-003 change thai langauege  
    [Documentation]    ใช้สำหรับทดสอบในกรณีเปลี่ยนภาษาเป็นภาษาไทย
    [Tags]    test pass    
    change thai langauege 


    



