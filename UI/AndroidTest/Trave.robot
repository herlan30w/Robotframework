5.	*** Settings ***
Documentation    This script starts apps on two phones
Library          AppiumLibrary
Library          Collections

*** Variables ***
${REMOTE_URL}  http://localhost:4723/wd/hub
${PLATFORM_NAME_ANDROID}  Android
${DEVICE_NAME_ANDROID}  emulator-5554
${APP_ANDROID} ../Traveloka_Test/FileApk/Traveloka Lifestyle Superapp_3.51.2.apk
${APP_PACKAGE}  com.traveloka.android
${AUTOMATION_NAME}  Uiautomator2
${RESET_OFF}  true
${DEPARTURE}    ${DEPARTURE}
${ARRIVAL}      ${ARRIVAL}
${ID}           ${ID}
${ENG}          ${ENG}
${DATE}


*** Test Cases ***
User should be able to input flight Jakarta to Padang
    [Documentation]             User should be able to input flight 
    [Tags]                      Testid = 1
    Given Open Android app
    And Tap flight feature
    Choose Departure
    Choose Arrival
    Search


*** Keywords ***
Open Android app
    Open Application  ${REMOTE_URL}  automationName=${AUTOMATION_NAME}  platformName=${PLATFORM_NAME_ANDROID}  deviceName=${DEVICE_NAME_ANDROID}  appPackage=${APP_PACKAGE}  noReset=${RESET_OFF}  appActivity=${AppAct}
    wait until element is visible       com.traveloka.android:id/text_view_product_text

Tap flight feature
    click element                       com.traveloka.android:id/text_view_product_text[@text,"Tiket Pesawat"]
    element should be visible           com.traveloka.android:id/text_view_toolbar_title[@test,${ID}]

Choose Departure
    click element                       com.traveloka.android.flight:id/text_field_origin
    input text                          com.traveloka.android:id/edit_text_field[@text,"Cari kota atau bandara"]        ${DEPARTURE}
    wait until element is visible       com.traveloka.android.flight:id/text_view_location[@text,${DEPARTURE}]
    click element                       com.traveloka.android.flight:id/text_view_location[@text,${DEPARTURE}]
    wait until element is visible       com.traveloka.android:id/text_view_toolbar_title[@test,${ID}]

Choose Arrival
    click element                       com.traveloka.android.flight:id/text_field_destination
    input text                          com.traveloka.android:id/edit_text_field[@text,"Cari kota atau bandara"]        ${ARRIVAL}
    wait until element is visible       com.traveloka.android.flight:id/text_view_location[@text,${ARRIVAL}]
    click element                       com.traveloka.android.flight:id/text_view_location[@text,${ARRIVAL}]
    wait until element is visible       com.traveloka.android:id/text_view_toolbar_title[@test,${ID}]

Search
    click element                       com.traveloka.android.flight:id/btn_search[@text"Search"]
