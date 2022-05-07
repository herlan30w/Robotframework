*** Settings ***
Documentation    This script starts apps on two phones
Library          AppiumLibrary
Library          Collections

*** Variables ***
${PASS}         
${REMOTE_URL}  http://localhost:4723/wd/hub
${PLATFORM_NAME_ANDROID}  Android
${DEVICE_NAME_ANDROID}  emulator-5554
#${APP_ANDROID} ../Traveloka_Test/FileApk/Traveloka Lifestyle Superapp_3.51.2.apk
${APP_PACKAGE}  com.ruangguru.livestudents
${AUTOMATION_NAME}  Uiautomator2
${RESET_OFF}  true
${AppAct}  com.ruangguru.livestudents.modules.front.ui.splash.SplashActivity
${EMAIL}        

*** Test Cases ***
User should be able to login use username and password are valid
    [Documentation]             User should be able to input flight Jakarta to Padang
    [Tags]                      Testid = 1
    Given Open Android app
    And Tap login
    And Tap input email
    And email sukses
    And input password
    When Tap submit
    Then Verify login sukses

# User should be able to logout
#     [Documentation]             User should be able to input flight Jakarta to Padang
#     [Tags]                      Testid = 1
#     Given Open Android app
#     And Tap lainnya


*** Keywords ***
Open Android app
    Open Application    ${REMOTE_URL}  automationName=${AUTOMATION_NAME}  platformName=${PLATFORM_NAME_ANDROID}  deviceName=${DEVICE_NAME_ANDROID}  appPackage=${APP_PACKAGE}  noReset=${RESET_OFF}  appActivity=${AppAct}
    # wait until element is visible       	com.ruangguru.livestudents:id/user_edittext_inputemail_emailphonenumber

Tap login
    wait until element is visible           com.ruangguru.livestudents:id/home_v5_button_register_login
    ClickElement                            com.ruangguru.livestudents:id/home_v5_button_register_login

Tap input email
    wait until element is visible       com.ruangguru.livestudents:id/user_edittext_inputemail_emailphonenumber
    input text                          com.ruangguru.livestudents:id/user_edittext_inputemail_emailphonenumber          ${EMAIL}
    ClickElement                        com.ruangguru.livestudents:id/user_button_chooseclass_next

email sukses
    wait until element is visible       com.ruangguru.livestudents:id/user_textview_login_email
    element should be visible           com.ruangguru.livestudents:id/user_textview_login_email

input password 
    input text                          com.ruangguru.livestudents:id/user_edittext_login_password                      ${PASS}

Tap submit 
    Click Element                       com.ruangguru.livestudents:id/user_button_login_next    

Verify login sukses
    wait until element is visible       com.ruangguru.livestudents:id/user_image_completeprofile_close
    ClickElement                        com.ruangguru.livestudents:id/user_image_completeprofile_close
    element should be visible           com.ruangguru.livestudents:id/home_v5_textview_header_bottom_user_name


Tap Lainnya
    wait until element is visible       com.ruangguru.livestudents:id/nav_lainnya
    click element                       com.ruangguru.livestudents:id/nav_lainnya
    wait until element is visible       com.ruangguru.livestudents:id/toolbar
    swipe by percent                    50     50     50    70  2000
# Choose Departure
#     click element                       com.traveloka.android.flight:id/text_field_origin
#     input text                          com.traveloka.android:id/edit_text_field[@text,"Cari kota atau bandara"]        ${DEPARTURE}
#     wait until element is visible       com.traveloka.android.flight:id/text_view_location[@text,${DEPARTURE}]
#     click element                       com.traveloka.android.flight:id/text_view_location[@text,${DEPARTURE}]
#     wait until element is visible       com.traveloka.android:id/text_view_toolbar_title[@test,${ID}]

# Choose Arrival
#     click element                       com.traveloka.android.flight:id/text_field_destination
#     input text                          com.traveloka.android:id/edit_text_field[@text,"Cari kota atau bandara"]        ${ARRIVAL}
#     wait until element is visible       com.traveloka.android.flight:id/text_view_location[@text,${ARRIVAL}]
#     click element                       com.traveloka.android.flight:id/text_view_location[@text,${ARRIVAL}]
#     wait until element is visible       com.traveloka.android:id/text_view_toolbar_title[@test,${ID}]

# Search
#     click element                       com.traveloka.android.flight:id/btn_search[@text"Search"]

