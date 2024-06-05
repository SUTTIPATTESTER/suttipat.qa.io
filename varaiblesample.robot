*** Variables ***
${locator_selectrole}               id=select-role
${locator_selectrole-admin}         id=option-select-role-1
${locator_selectrole-author}        id=option-select-role-2 
${locator_selectrole-editor}        id=option-select-role-3
${locator_selectrole-maintainer}    id=option-select-role-4
${locator_selectrole-subsciber}     id=option-select-role-5
${locator_selectplan}               id=select-plan
${locator_selectplan-basic}         id=option-select-plan-1
${locator_selectplan-company}       id=option-select-plan-2
${locator_selectplan-enterprise}    id=option-select-plan-3
${locator_selectplan-team}          id=option-select-plan-4
${locator_selectstatus}             id=select-status
${locator_selectstatus-pending}     id=option-select-status-1
${locator_selectstatus-active}      id=option-select-status-2
${locator_selectstatus-inactive}    id=option-select-status-3
${locator_searchbutton}        id=btn-search
${locator_clearbutton}         id=btn-clear
${locator_ADDUSER}             xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[2]/div/div[1]/div/a
${locator_role}                xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[2]/div/div[2]/div[2]/div[1]/div/div[3]
${locator_password1}         name=password
${URL}                       web
${browser}                   Chrome
${locator_btnlogin}          id=btn-login
${locator_firstname}         id=firstname
${locator_lastname}          id=lastname
${locator_email}             id=email
${locator_password}          id=password
${locator_phonenumber}       id=mobile-phone
${locator_gender}            validation-basic-radio
${locator_checkSql}          name=courses.SQL
${locator_select-role}       id=select-role
${locator select-role-li}    xpath=//*[@id="menu-"]/div[3]/ul/li[1]
${locator_btn-sign-up}       xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[3]/div/div/div/form/button
${locator_reset}             id=reset
${locator_checktestmual}     name=courses.Test Manual
${locator_checktestauto}     name=courses.Automate Test
${locator_checktestauto2}    name=courses.Automate Test2
${locator_nationality}       id=nationality
${locator_nationselect}      xpath=//*[@id="menu-"]/div[3]/ul/li[221]
${locator_planselect}        id=select-plan
${locator_planbasic}         xpath=//*[@id="menu-"]/div[3]/ul/li[1]
${locator_okbutton}          id=btn-ok
${locator_loginbutton}       id=btn-login
${locator_error-email}       id=error-email
${locator_error-firstname}   id=error-firstname
${locator_error-lastname}    id=error-lastname
${locator_error-email}       id=error-email
${locator_error-password}    id=error-password
${locator_error-mobile}      id=error-mobile-phone
${locator_error-gender}      id=validation-basic-gender
${locator_error-checkbox}    id=validation-basic-courses
${locator_error-nation}      id=validation-basic-nationality
${locator_error-role}        id=validation-role
${locator_error-plan}        id=validation-plan
${locator_tableadminuser1}   xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[2]/div/div[2]/div[2]/div[2]/div/div/div/div[1]/div[3]
${locator_tableadminuser2}   xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[2]/div/div[2]/div[2]/div[2]/div/div/div/div[2]/div[3]
${locator_tableadminuser3}   xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[2]/div/div[2]/div[2]/div[2]/div/div/div/div[3]/div[3]
${locator_plan_user1}        xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[2]/div/div[2]/div[2]/div[2]/div/div/div/div[1]/div[4]
${locator_plan_user2}        xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[2]/div/div[2]/div[2]/div[2]/div/div/div/div[2]/div[4]
${locator_plan_user3}        xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[2]/div/div[2]/div[2]/div[2]/div/div/div/div[3]/div[4]
${locator_status_user1}      xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[2]/div/div[2]/div[2]/div[2]/div/div/div/div[1]/div[5]
${locator_status_user2}      xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[2]/div/div[2]/div[2]/div[2]/div/div/div/div[2]/div[5]
${locator_status_user3}      xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[2]/div/div[2]/div[2]/div[2]/div/div/div/div[3]/div[5]
${locator_norownocolumn}     xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[2]/div/div[2]/div[2]/div[3]/div/div
${locator_clearrole}         id=select-role
${locator_clearplan}         id=select-plan
${locator_clearstatus}       id=select-status
${locator_backbutton}        xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[1]/button
${locator_profilelogout}     xpath=//*[@id="__next"]/div[1]/div[2]/header/div/div/div[2]/span/div
${locator_logout-li}         css=body > div.MuiModal-root.MuiPopover-root.MuiMenu-root.css-hxcdyb > div.MuiPaper-root.MuiPaper-elevation.MuiPaper-rounded.MuiPaper-elevation1.MuiMenu-paper.MuiPaper-root.MuiPaper-elevation.MuiPaper-rounded.MuiPaper-elevation8.MuiPopover-paper.css-1u9pw9f > ul > li
${locator_notifyicon}        xpath=//*[@id="__next"]/div[1]/div[2]/header/div/div/div[2]/button
${locator_notifybox}         css=body > div.MuiModal-root.MuiPopover-root.css-bdbmf5 > div.MuiPaper-root.MuiPaper-elevation.MuiPaper-rounded.MuiPaper-elevation1.MuiMenu-paper.MuiPaper-root.MuiPaper-elevation.MuiPaper-rounded.MuiPaper-elevation8.MuiPopover-paper.css-1u9pw9f > ul > div
${locator_buttonreadall}     css=body > div.MuiModal-root.MuiPopover-root.css-bdbmf5 > div.MuiPaper-root.MuiPaper-elevation.MuiPaper-rounded.MuiPaper-elevation1.MuiMenu-paper.MuiPaper-root.MuiPaper-elevation.MuiPaper-rounded.MuiPaper-elevation8.MuiPopover-paper.css-1u9pw9f > ul > li.MuiMenuItem-root.MuiMenuItem-gutters.MuiButtonBase-root.css-1p3ebxb > button
${locator_rowsperpage}       xpath=/html/body/div[1]/div[1]/div[2]/main/div/div[2]/div/div[2]/div[3]/div/div[2]/div/div[2]/div
${locator_25}                xpath=//*[@id="menu-"]/div[3]/ul/li[2]
${locator_1-25}              xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[2]/div/div[2]/div[3]/div/div[2]/div/p[2]
${locator_nextpage}          xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[2]/div/div[2]/div[3]/div/div[2]/div/div[3]/button[2]
${locator_previous}          xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[2]/div/div[2]/div[3]/div/div[2]/div/div[3]/button[1]
