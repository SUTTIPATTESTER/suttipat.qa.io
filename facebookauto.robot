*** Settings ***
Library    SeleniumLibrary
Library    ExcelRobot
Library    re



*** Variables ***
${URL}            https://mbasic.facebook.com/
${browser}        Chrome
${input_email}    id=m_login_email
${input_pass}     xpath=//*[@id="password_input_with_placeholder"]/input
${btn_login}      xpath=//*[@id="login_form"]/ul/li[3]/input
${btn_group}      xpath=//*[@id="header"]/nav/a[8]
${groupbox}       xpath=//*[@id="objects_container"]
${group1}         xpath=//*[@id="root"]/table/tbody/tr/td/div[2]/ul/li[1]
${group2}         xpath=//*[@id="root"]/table/tbody/tr/td/div[2]/ul/li[2]
${group3}         xpath=//*[@id="root"]/table/tbody/tr/td/div[2]/ul/li[3]
${submit}         xpath=//*[@id="root"]/table/tbody/tr/td/div/form/div/input
${td}             driver.find_elements(By.CSS_SELECTOR, 'td.u')  
${storyextend}    xpath=//*[@id="root"]/div[1]/a/span
${searchbutton}    xpath=//*[@id="search_div"]/form/div/table/tbody/tr/td[3]/input
${storyex}         xpath=/html/body/div/div/div[2]/div/div[5]/a
${searchinput}     xpath=/html/body/div/div/div[1]/div/form/table/tbody/tr/td[2]/input
${op}              1





*** Keywords ***
open webbrowser
    Set Selenium Speed          0.5s
    Open Browser                ${URL}    ${browser}
    Wait Until Page Contains    Phone number or email address    5s
    Maximize Browser Window

login facebook and join group
    [Arguments]    ${email}     ${password}
    open webbrowser
    Wait Until Element Is Visible    ${input_email}    5s
    Input Text                       ${input_email}    ${email}
    Wait Until Element Is Visible    ${input_pass}     5s    
    Input Text                       ${input_pass}     ${password}
    Click Button                     ${btn_login}
    Wait Until Element Is Visible    ${submit}          5s
    Click Button                     ${submit}
    FOR  ${item}  IN RANGE    0    99
    Scroll Element Into View         ${searchbutton}
    #Wait Until Element Is Visible    ${storyex}    10s
    #Click Element                    ${storyex}    
    Wait Until Element Is Visible    ${searchinput}
    Click Element                    ${btn_group}
    Wait Until Element Is Visible    xpath=//td[@class="u"]
    ${GROUP_NAME}    Get Text        xpath=//td[@class="u"]
      
    Reload Page
    
    END 
    

    
    


    





*** Test Cases ***

TC-001 LOGIN FACEBOOK AND CARE FACEBOOK
    [Documentation]    ใช้ทดสอบในกรณีล็อคอินเฟสบุ๊คและเลื่อนดูเรื่องราวๆ 100ครั้ง
    [Tags]    testpass
    login facebook and join group    email      password
    

