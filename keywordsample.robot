*** Settings ***
Library    SeleniumLibrary
Resource   ${CURDIR}/varaiblesample.robot


*** Keywords ***
open webbrowser
    Set Selenium Speed          0.5s
    Open Browser                ${URL}    ${browser}
    Wait Until Page Contains    Tester    5s
    Maximize Browser Window

select list role
    Click Element                    ${locator_select-role}
    Wait Until Element Is Visible    ${locator select-role-li}    3s
    Click Element                    ${locator select-role-li}

select list nationality
    Click Element                    ${locator_nationality}
    Wait Until Element Is Visible    ${locator_nationselect}    3s
    Click Element                    ${locator_nationselect}

select list plan
    Click Element                    ${locator_planselect}
    Wait Until Element Is Visible    ${locator_planbasic}    3s
    Click Element                    ${locator_planbasic}

error message test check
    [Arguments]    ${locator}    ${mgs}=${EMPTY}
    ${txt}=    Get Text           ${locator}
    Should Be Equal As Strings    ${txt}    ${mgs}

search filter
    
    [Arguments]  ${email}    ${password}    ${selectrole}    ${selectplan}    ${selectstatus}   ${role}    ${plan}    ${status}
    open webbrowser
    Wait Until Element Is Visible    ${locator_email}    5s
    Input Text       ${locator_email}        ${email}    
    Input Text       ${locator_password1}    ${password}
    Click Element    ${locator_btnlogin}   
    Wait Until Page Contains    Search Filters    5s
    

    IF       ${selectrole}== 1
        Click Element    ${locator_selectrole}
        Wait Until Element Is Visible    ${locator_selectrole-admin}    3s
        Click Element    ${locator_selectrole-admin}
    ELSE IF  ${selectrole}== 2
        Click Element    ${locator_selectrole}
        Wait Until Element Is Visible    ${locator_selectrole-author}    3s
        Click Element    ${locator_selectrole-author}
    ELSE IF  ${selectrole}== 3
        Click Element    ${locator_selectrole}
        Wait Until Element Is Visible    ${locator_selectrole-editor}    3s
        Click Element    ${locator_selectrole-editor}
    ELSE IF  ${selectrole}== 4
        Click Element    ${locator_selectrole}
        Wait Until Element Is Visible    ${locator_selectrole-maintainer}    3s
        Click Element    ${locator_selectrole-maintainer}
    ELSE IF  ${selectrole}== 5
        Click Element    ${locator_selectrole}
        Wait Until Element Is Visible    ${locator_selectrole-subsciber}    3s
        Click Element    ${locator_selectrole-subsciber}
    END    


    IF       ${selectplan}== 1
        Click Element    ${locator_selectplan}
        Wait Until Element Is Visible    ${locator_selectplan-basic}    3s
        Click Element    ${locator_selectplan-basic}
    ELSE IF  ${selectplan}== 2
        Click Element    ${locator_selectplan}
        Wait Until Element Is Visible    ${locator_selectplan-company}    3s
        Click Element    ${locator_selectplan-company}
    ELSE IF  ${selectplan}== 3
        Click Element    ${locator_selectplan}
        Wait Until Element Is Visible    ${locator_selectplan-enterprise}    3s
        Click Element    ${locator_selectplan-enterprise}
    ELSE IF  ${selectplan}== 4
        Click Element    ${locator_selectplan}
        Wait Until Element Is Visible    ${locator_selectplan-team}    3s
        Click Element    ${locator_selectplan-team}
    END    


    IF       ${selectstatus}== 1
        Click Element    ${locator_selectstatus}
        Wait Until Element Is Visible    ${locator_selectstatus-pending}    3s
        Click Element    ${locator_selectstatus-pending}
        
    ELSE IF  ${selectstatus}== 2
        Click Element    ${locator_selectstatus}
        Wait Until Element Is Visible    ${locator_selectstatus-active}    3s
        Click Element    ${locator_selectstatus-active}
        
    ELSE IF  ${selectstatus}== 3
        Click Element    ${locator_selectstatus}
        Wait Until Element Is Visible    ${locator_selectstatus-inactive}    3s
        Click Element    ${locator_selectstatus-inactive}
        
    END



    IF    "${role}" != "${EMPTY}"
        Click Element    ${locator_searchbutton}
        ${status1}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${locator_tableadminuser1}
        IF   '${status1}' == 'PASS'
            ${txt}=   Get Text   ${locator_tableadminuser1}
            Should Be Equal As Strings   ${txt}   ${role}
        END
        ${status2}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${locator_tableadminuser2}
        IF   '${status2}' == 'PASS'
            ${txt}=   Get Text   ${locator_tableadminuser2}
            Should Be Equal As Strings   ${txt}   ${role}
        END
        ${status3}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${locator_tableadminuser3}
        IF   '${status3}' == 'PASS'
            ${txt}=   Get Text   ${locator_tableadminuser3}
            Should Be Equal As Strings   ${txt}   ${role}
        END   
        
    END

    
    
    IF    "${plan}" != "${EMPTY}"
        Click Element    ${locator_searchbutton}
        ${status4}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${locator_plan_user1}
        IF   '${status4}' == 'PASS'
            ${txt}=   Get Text   ${locator_plan_user1}
            Should Be Equal As Strings   ${txt}   ${plan}
        END
        ${status5}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${locator_plan_user2}
        IF   '${status5}' == 'PASS'
            ${txt}=   Get Text   ${locator_plan_user2}
            Should Be Equal As Strings   ${txt}   ${plan}
        END
        ${status6}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${locator_plan_user3}
        IF   '${status6}' == 'PASS'
            ${txt}=   Get Text   ${locator_plan_user3}
            Should Be Equal As Strings   ${txt}   ${plan}
        END    
          
    END


     IF    "${status}" != "${EMPTY}"
         Click Element    ${locator_searchbutton}
        ${status7}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${locator_status_user1}
        IF   '${status7}' == 'PASS'
            ${txt}=   Get Text   ${locator_status_user1}
            Should Be Equal As Strings   ${txt}   ${status}
        END
        ${status8}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${locator_status_user2}
        IF   '${status8}' == 'PASS'
            ${txt}=   Get Text   ${locator_status_user2}
            Should Be Equal As Strings   ${txt}   ${status}
        END
        ${status9}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${locator_status_user3}
        IF   '${status9}' == 'PASS'
            ${txt}=   Get Text   ${locator_status_user3}
            Should Be Equal As Strings   ${txt}   ${status}
        END    
    
    END
    
    Close Browser



clear button
    
    
    [Arguments]  ${email}    ${password}    

    Wait Until Element Is Visible    ${locator_email}    5s
    Input Text       ${locator_email}        ${email}    
    Input Text       ${locator_password1}    ${password}
    Click Element    ${locator_btnlogin}   
    Wait Until Page Contains    Search Filters    5s

    Click Element                       ${locator_selectrole}
    Wait Until Element Is Visible       ${locator_selectrole-admin}    3s
    Click Element                       ${locator_selectrole-admin}
    Click Element                       ${locator_selectplan}
    Wait Until Element Is Visible       ${locator_selectplan-basic}    3s
    Click Element                       ${locator_selectplan-basic}
    Click Element                       ${locator_selectstatus}
    Wait Until Element Is Visible       ${locator_selectstatus-pending}    3s
    Click Element                       ${locator_selectstatus-pending}
    Click Element                       ${locator_searchbutton}
    Click Element                       ${locator_clearbutton}
    Wait Until Element Is Visible       ${locator_norownocolumn}    2s
    Wait Until Element Is Not Visible   ${locator_selectrole-admin}
    Wait Until Element Is Not Visible   ${locator_selectplan-basic}
    Wait Until Element Is Not Visible   ${locator_selectstatus-pending} 


    
    

ADD USER BUTTON pass
    
    [Arguments]  ${email}    ${password}    

    Wait Until Element Is Visible    ${locator_email}    5s
    Input Text       ${locator_email}        ${email}    
    Input Text       ${locator_password1}    ${password}
    Click Element    ${locator_btnlogin}   
    Wait Until Page Contains    Search Filters    5s


    Click Element    ${locator_ADDUSER}
    Input Text             ${locator_firstname}    สุทธิพัฒน์
    Input Text             ${locator_lastname}     แก้วชิง
    Input Text             ${locator_email}        Beam1234@gmail.com
    Input Text             ${locator_password}     1234567890
    Input Text             ${locator_phonenumber}  08222222222
    Select Radio Button    ${locator_gender}       female
    Select Checkbox        ${locator_checkSql}
    Select Checkbox        ${locator_checktestmual}
    Select Checkbox        ${locator_checktestauto}
    Select Checkbox        ${locator_checktestauto2}
    select list nationality
    select list role
    select list plan
    Click Element         ${locator_btn-sign-up}
    Wait Until Page Contains    Register Success    3s
    Click Element         ${locator_okbutton}
    Wait Until Page Contains    Search Filters    3s
    Click Element         ${locator_selectrole}
    Wait Until Element Is Visible    ${locator_selectrole-admin}    3s
    Click Element         ${locator_selectrole-admin}
    Click Element         ${locator_selectplan}
    Wait Until Element Is Visible    ${locator_selectplan-basic}    3s
    Click Element         ${locator_selectplan-basic}
    Click Element         ${locator_searchbutton}
    Wait Until Page Contains    สุทธิพัฒน์    3s
    
    









ADD USER BUTTON fail
    open webbrowser
    [Arguments]  ${mail}    ${pass}    ${firstname}    ${lastname}    ${email}    ${password}    ${mobile}    ${gender}    ${chkbox}    ${nation}    ${role}    ${plan}    ${locator}    ${msg}    

    Wait Until Element Is Visible    ${locator_email}    5s
    Input Text       ${locator_email}        ${mail}    
    Input Text       ${locator_password1}    ${pass}
    Click Element    ${locator_btnlogin}   
    Wait Until Page Contains    Search Filters    5s


    Click Element    ${locator_ADDUSER}    
    
       
    Input Text             ${locator_firstname}    ${firstname}
    Input Text             ${locator_lastname}     ${lastname}
    Input Text             ${locator_email}        ${email}
    Input Text             ${locator_password}     ${password}
    Input Text             ${locator_phonenumber}  ${mobile}


    IF    "${gender}"!="emp"
    Select Radio Button    ${locator_gender}       ${gender}
    END

    IF  ${chkbox}== 1
        Select Checkbox        ${locator_checkSql}
    
    ELSE IF  ${chkbox}== 2
        Select Checkbox        ${locator_checkSql}
        Select Checkbox        ${locator_checktestmual}
    
    ELSE IF  ${chkbox}== 3
        Select Checkbox        ${locator_checkSql}
        Select Checkbox        ${locator_checktestmual}
        Select Checkbox        ${locator_checktestauto}
    ELSE IF  ${chkbox}== 4
        Select Checkbox        ${locator_checkSql}
        Select Checkbox        ${locator_checktestmual}
        Select Checkbox        ${locator_checktestauto}
        Select Checkbox        ${locator_checktestauto2}
    END
    
    IF  ${nation}== 1
        select list nationality
        
    END
    IF  ${role}== 1
        select list role
        
    END
    IF  ${plan}== 1
        select list plan  
        
    END
   
    Click Element          ${locator_btn-sign-up}
    error message test check    ${locator}    ${msg}
    Close Browser    


back button
    
    [Arguments]  ${email}    ${password}    

    Wait Until Element Is Visible    ${locator_email}    5s
    Input Text       ${locator_email}        ${email}    
    Input Text       ${locator_password1}    ${password}
    Click Element    ${locator_btnlogin}   
    Wait Until Page Contains    Search Filters    5s


    Click Element    ${locator_ADDUSER}
    Click Element    ${locator_backbutton}
    Wait Until Page Contains    Search Filters    5s
    

logout button
    [Arguments]  ${email}    ${password}
    Wait Until Element Is Visible    ${locator_email}    5s
    Input Text       ${locator_email}        ${email}    
    Input Text       ${locator_password1}    ${password}
    Click Element    ${locator_btnlogin}   
    Wait Until Page Contains    Search Filters    5s
    Click Element    ${locator_profilelogout}
    Click Element    ${locator_logout-li}
    Wait Until Page Contains    Welcome to Kru P' Beam!    3s

notify button
    [Arguments]  ${email}    ${password}
    Wait Until Element Is Visible    ${locator_email}    5s
    Input Text       ${locator_email}        ${email}    
    Input Text       ${locator_password1}    ${password}
    Click Element    ${locator_btnlogin}   
    Wait Until Page Contains    Search Filters    5s
    Click Element    ${locator_notifyicon}
    Wait Until Page Contains    Notifications    3s
    Wait Until Element Is Visible    ${locator_notifybox}
    Wait Until Element Is Visible    ${locator_buttonreadall}

rowsperpage     
    [Arguments]  ${email}    ${password}
    Wait Until Element Is Visible    ${locator_email}    5s
    Input Text       ${locator_email}        ${email}    
    Input Text       ${locator_password1}    ${password}
    Click Element    ${locator_btnlogin}   
    Wait Until Page Contains    Search Filters    6s
    Click Element    ${locator_searchbutton}
    Wait Until Element Is Visible    ${locator_rowsperpage} 
    Click Element    ${locator_rowsperpage}    
    Click Element    ${locator_25}
    ${txt}=   Get Text    ${locator_1-25}
    Should Contain        ${txt}    1–25 of 53  
    Wait Until Element Is Visible    ${locator_nextpage}    7s
    Click Element    ${locator_nextpage}
    Wait Until Element Is Visible    ${locator_previous}    7s
    Click Element    ${locator_previous}   
       


    

        


        


    