*** Settings ***
Library         SeleniumLibrary
Resource        ../keywords/RegisterPageKeywords.robot
Variables       ../resources/config/config.yaml
Variables       ../resources/testdata/testdata.yaml
Suite Setup        Open Browser    ${baseUrl}    chrome
Suite Teardown     Close Browser


***Test Cases***
As a user, I want to Register
    When user register to future skill platform with ${email}, ${newpassword} , ${confirmpassword} , ${firstname} , ${lastname} , ${tel}
    Then future skill should display otp page and display as "ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์"
    [Teardown]    Close Browser

