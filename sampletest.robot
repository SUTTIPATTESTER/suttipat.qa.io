*** Settings ***
Library    SeleniumLibrary
Resource   ${CURDIR}/varaiblesample.robot
Resource   ${CURDIR}/keywordsample.robot
Suite Setup       Set Selenium Speed    0.5s
Suite Teardown    Close All Browsers
Test Setup        open webbrowser
Test Teardown     Close Browser

*** Test Cases ***
TC001-search filter
    [Documentation]    ใช้สำหรับทดสอบในกรณีDropdown  แสดงผลในรูปแบบตามที่ค้นหา
    [Tags]    test pass
    [Setup]
    [Template]    search filter
    user.test@krupbeam.com    123456789    1    0    0    Admin       ${EMPTY}    ${EMPTY}
    user.test@krupbeam.com    123456789    2    0    0    Author      ${EMPTY}    ${EMPTY}
    user.test@krupbeam.com    123456789    3    0    0    Editor      ${EMPTY}    ${EMPTY}
    user.test@krupbeam.com    123456789    4    0    0    Maintainer    ${EMPTY}    ${EMPTY}
    user.test@krupbeam.com    123456789    5    0    0    Subscriber    ${EMPTY}    ${EMPTY}

    user.test@krupbeam.com    123456789    1    1    0    Admin         Basic         ${EMPTY}
    user.test@krupbeam.com    123456789    2    2    0    Author        Company       ${EMPTY}
    user.test@krupbeam.com    123456789    3    3    0    Editor        Enterprise    ${EMPTY}
    user.test@krupbeam.com    123456789    4    4    0    Maintainer    Team          ${EMPTY}
    user.test@krupbeam.com    123456789    5    1    0    Subscriber    Basic         ${EMPTY}

    user.test@krupbeam.com    123456789    1    1    1    Admin         Basic         Pending
    user.test@krupbeam.com    123456789    2    2    2    Author        Company       Active
    user.test@krupbeam.com    123456789    3    3    3    Editor        Enterprise    Inactive
    user.test@krupbeam.com    123456789    4    4    1    Maintainer    Team          Pending
    [Teardown]
TC002-Clear search filter
    [Documentation]    ใช้สำหรับทดสอบในกรณีเคลียร์ข้อมูล
    [Tags]    test fail
    clear button    email    password

TC003-ADD USER pass
    [Documentation]    ใช้สำหรับกรอกข้อมูลครบถ้วน
    [Tags]    test pass
    ADD USER BUTTON pass    email    password


TC004-ADD USER fail
    [Documentation]    ใช้สำหรับทดสอบในกร๊กรกรอกข้อมูลไม่ครบถ้วน
    [Tags]    test fail
    [Setup]
    [Template]    ADD USER BUTTON fail
    user.test@krupbeam.com    123456789    ${EMPTY}    แก้วชิง      suttipat@gmail.com    123456    000000000    female    1    1    1    1    ${locator_error-firstname}    This field is required
    user.test@krupbeam.com    123456789    สุทธิพัฒน์     ${EMPTY}   suttipat@gmail.com    123456    000000000    female    1    1    1    1    ${locator_error-lastname}     This field is required
    user.test@krupbeam.com    123456789    สุทธิพัฒน์     แก้วชิง      ${EMPTY}              123456    000000000    female    1    1    1    1    ${locator_error-email}        This field is required
    user.test@krupbeam.com    123456789    สุทธิพัฒน์     แก้วชิง      suttipat@gmail.com    ${EMPTY}  000000000    female    1    1    1    1    ${locator_error-password}     This field is required
    user.test@krupbeam.com    123456789    สุทธิพัฒน์     แก้วชิง      suttipat@gmail.com    123456    ${EMPTY}     female    1    1    1    1    ${locator_error-mobile}       This field is required
    user.test@krupbeam.com    123456789    สุทธิพัฒน์     แก้วชิง      suttipat@gmail.com    123456    000000000        emp    1    1    1    1    ${locator_error-gender}      This field is required
    user.test@krupbeam.com    123456789    สุทธิพัฒน์     แก้วชิง      suttipat@gmail.com    123456    000000000    female     0    1    1    1    ${locator_error-checkbox}    This field is required
    user.test@krupbeam.com    123456789    สุทธิพัฒน์     แก้วชิง      suttipat@gmail.com    123456    000000000    female     1    0    1    1    ${locator_error-nation}      This field is required
    user.test@krupbeam.com    123456789    สุทธิพัฒน์     แก้วชิง      suttipat@gmail.com    123456    000000000    female     1    1    0    1    ${locator_error-role}        This field is required
    user.test@krupbeam.com    123456789    สุทธิพัฒน์     แก้วชิง      suttipat@gmail.com    123456    000000000    female     1    1    1    0    ${locator_error-plan}        This field is required
    [Teardown]
Tc005-back button
    [Documentation]    ใช้สำหรับทดสอบในกรณีกดปุ่มback ว่าสามารถกลับไปยังหน้าSearch Filtersได้
    [Tags]    test pass
    back button    email    password

TC006-logout button
    [Documentation]    ใช้สำหรับทดสอบในกรณีกดปุ่มlogout ว่าสามารถกลับไปยังหน้าloginได้
    [Tags]    test pass
    logout button    email    password

TC007-notify button
    [Documentation]    ใช้สำหรับทดสอบในกรณีกดปุ่มnotify ว่าสามารถแสดงผลแจ้งเตือนได้
    [Tags]    test pass
    notify button    email    password

TC008-rowsperpage
    [Documentation]    ใช้สำหรับทดสอบในกรณีกดปุ่มrowsperpage รูปแบบแสดงผลจำนวนแถวuser และกด nextpage previousได้
    [Tags]    test lass
    rowsperpage     email    password
       

        