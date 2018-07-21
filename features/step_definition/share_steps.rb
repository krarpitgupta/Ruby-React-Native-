require 'appium_lib'
require 'appium_lib/android/mobile_methods'
require 'selenium-webdriver'
require 'rspec'
require_relative '../mappings/mapper'

Given(/^User is on onboarding language page$/) do
  steps %Q{
    Given User is on application screen
    And User check and click 2 times if allow or ok button exist
    When User click "onboarding_register_button"
  }
end

Given(/^User is on onboarding about you page$/) do
  steps %Q{
    Given User is on onboarding language page
    When User change language into "english_language"
    And User click "onboarding_language_ok_next_button"
  }
end

Given(/^User is on onboarding phone page$/) do
  steps %Q{
    Given User is on onboarding about you page
    And User click "onboarding_lets_start_button"
  }
end

Given(/^User is on onboarding OTP page$/) do
  steps %Q{
    Given User is on onboarding phone page
    And User fill "onboarding_email_address_textfield" with random "valid_email"
    And User fill "onboarding_phone_number_textfield" with random "onboarding_indonesia_phone_number"
    And User click "onboarding_next_button"
  }
end

Given(/^User is on onboarding photo page$/) do
  steps %Q{
    Given User is on onboarding OTP page
    And User fill "correct_otp" for OTP or PIN
    And User click "onboarding_next_button"
  }
end

Given(/^User is on onboarding identity page$/) do
  steps %Q{
    Given User is on onboarding photo page
    When User click "onboarding_your_ktp_photo_button"
    And User click "onboarding_your_ktp_photo_ok_button"
    And User check and click allow or ok button if exist
    And User click "onboarding_camera_button"
    And User click "onboarding_confirm_photo_button"
    When User click "onboarding_selfie_with_your_ktp_photo_button"
    And User click "onboarding_selfie_with_your_ktp_ok_got_it_button"
    When User click "onboarding_camera_button"
    And User click "onboarding_confirm_photo_button"
    When User click "onboarding_your_signature_photo_button"
    And User click "onboarding_your_signature_ok_button"
    And User click "onboarding_camera_button"
    And User click "onboarding_confirm_photo_button"
    And User click "onboarding_next_button"
  }
end

Given(/^User is on onboarding mailing page$/) do
  steps %Q{
    Given User is on onboarding identity page
    When User fill "onboarding_identity_fullname_textfield" with "valid_full_name"
    And User select "onboarding_identity_date_field" field and put "day" as day "month" as month "year" as year
    And User swipe up until found "onboarding_identity_ktp_textfield"
    And User fill "onboarding_identity_ktp_textfield" with "valid_ktp"
    And User click "onboarding_identity_fullname_underline_text"
    And User click "onboarding_next_button"
  }
end

Given(/^User is on onboarding question page$/) do
  steps %Q{
    Given User is on onboarding mailing page
    And User select "onboarding_mailing_build_dropdown" dropdown with "onboarding_mailing_build_dropdown"
    When User fill "onboarding_mailing_address_textfield" with "valid_address" 
    And User fill "onboarding_mailing_no" with "house_number" 
    And User fill "onboarding_mailing_rt_rw" with "house_rt_rw"
    And User swipe up until found "onboarding_mailing_zipcode_dropdown"
    And User select "onboarding_mailing_province_dropdown" dropdown with "onboarding_mailing_province_dropdown"
    And User select "onboarding_mailing_city_dropdown" dropdown with "onboarding_mailing_city_dropdown"
    And User select "onboarding_mailing_districts_dropdown" dropdown with "onboarding_mailing_districts_dropdown"
    And User select "onboarding_mailing_kelurahan_dropdown" dropdown with "onboarding_mailing_kelurahan_dropdown"
    And User select "onboarding_mailing_zipcode_dropdown" dropdown with "onboarding_mailing_zipcode_dropdown"
    And User click "onboarding_next_button"
  }
end

Given(/^User is on onboarding owner page$/) do
  steps %Q{
    Given User is on onboarding question page
    When User click "onboarding_question_no_radio_button"
    And User select "onboarding_question_purpose_dropdown" dropdown with "onboarding_question_purpose_dropdown_value_1"
    And User select "onboarding_question_income_dropdown" dropdown with "onboarding_question_income_dropdown_value_2"
    And User swipe up until found "onboarding_question_source_dropdown"  
    And User select "onboarding_question_spending_dropdown" dropdown with "onboarding_question_spending_dropdown_value_1"
    And User select "onboarding_question_source_dropdown" dropdown with "onboarding_question_source_dropdown_value_1"
    And User swipe up until found "onboarding_question_position_dropdown"
    And User select "onboarding_question_industry_dropdown" dropdown with "onboarding_question_industry_dropdown_value_1"
    And User select "onboarding_question_position_dropdown" dropdown with "onboarding_question_position_dropdown_value_1"
    And User swipe up until found "onboarding_question_phone_textfield"
    And User fill "onboarding_question_company_name_textfield" with "valid_company_name"
    And User fill "onboarding_question_company_address_textfield" with "valid_company_address"
    And User fill "onboarding_question_city_textfield" with "valid_city"
    And User fill "onboarding_question_phone_textfield" with "valid_office_phone"
    And User swipe up until found "onboarding_question_related_npwp_radio_button"
    And User select "onboarding_question_related_dropdown" dropdown with "onboarding_question_related_dropdown_value_1"
    And User click "onboarding_question_related_ktp_radio_button"
    And User click "onboarding_question_related_npwp_radio_button"
    And User click "onboarding_next_button"
  }
end

Given(/^User is on onboarding term and condition page$/) do
  steps %Q{
    Given User is on onboarding owner page
    # When User fill "onboarding_owner_fullname_textfield" with "valid_full_name"
    # And User select "onboarding_owner_industry_dropdown" dropdown with "onboarding_owner_industry_dropdown_value_1"
    # And User select "onboarding_owner_position_dropdown" dropdown with "onboarding_owner_position_dropdown_first_value_1"
    # And User swipe up until found "onboarding_owner_spending_dropdown"
    # And User select "onboarding_owner_source_dropdown" dropdown with "onboarding_owner_source_dropdown_value_1"
    # And User select "onboarding_owner_income_dropdown" dropdown with "onboarding_question_income_dropdown_value_2"
    # And User select "onboarding_owner_spending_dropdown" dropdown with "onboarding_question_spending_dropdown_value_1"
    # And User swipe up until found "onboarding_owner_officephone_textfield"
    # And User fill "onboarding_owner_companyname_textfield" with "valid_company_name"
    # And User fill "onboarding_owner_companyaddress_textfield" with "valid_company_address"
    # And User fill "onboarding_owner_city_textfield" with "valid_city"
    # And User fill "onboarding_owner_officephone_textfield" with "valid_office_phone"
    # And User click "onboarding_next_button"
  }
end

Given(/^User is on onboarding personalize page$/) do
  steps %Q{
    Given User is on onboarding term and condition page
    When User swipe up until found "onboarding_termandcondition_approval_2"
    And User click "onboarding_termandcondition_approval_1"
    And User click "onboarding_termandcondition_approval_2"
    And User click "onboarding_next_button"
  }
end

Given(/^User is on onboarding cashtag page$/) do
  steps %Q{
    Given User is on onboarding personalize page
    And User click "onboarding_lets_start_button"
  }
end

Given(/^User is on onboarding card page$/) do
  steps %Q{
    Given User is on onboarding cashtag page
    And User fill "onboarding_cashtag_textfield" with random "correct_cashtag_1"
    And User click "onboarding_next_button"
  }
end

Given(/^User is on onboarding password page$/) do
  steps %Q{
    Given User is on onboarding card page
    And User swipe up until found "onboarding_card_name_dropdown"
    When User select "onboarding_card_name_dropdown" dropdown with "onboarding_card_name_dropdown_middle_last_initial"
    And User click "onboarding_next_button"
    And User click "onboarding_lets_start_button"
  }
end

Given(/^User is on onboarding pin page$/) do
  steps %Q{
    Given User is on onboarding password page
    When User fill "onboarding_new_password_textfield" with "correct_password"
    And User fill "onboarding_confirm_password_textfield" with "correct_password"
    And User click "onboarding_next_button"
  }
end

Given(/^User is on onboarding success page$/) do
  steps %Q{
    Given User is on onboarding pin page
    When User fill "correct_pin" for OTP or PIN
    And User click "onboarding_next_button"
    When User fill "correct_pin" for OTP or PIN
    And User click "onboarding_next_button"
  }
end

Given(/^User is on Card Center menu$/) do
  steps %Q{
    Given User is on application screen
    And User swipe the left menu to the right
    And User click "card_center_menu"
  }
end

And(/^User check and click 4 times if allow or ok button exist$/) do
   steps %Q{
    And User check and click allow or ok button if exist
    And User check and click allow or ok button if exist
    And User check and click allow or ok button if exist
    And User check and click allow or ok button if exist
  }
end

And(/^User check and click 3 times if allow or ok button exist$/) do
   steps %Q{
    And User check and click allow or ok button if exist
    And User check and click allow or ok button if exist
    And User check and click allow or ok button if exist
  }
end

And(/^User check and click 2 times if allow or ok button exist$/) do
   steps %Q{
    And User check and click allow or ok button if exist
    And User check and click allow or ok button if exist
  }
end

And(/^User check and click 1 times if allow or ok button exist$/) do
   steps %Q{
    And User check and click allow or ok button if exist
  }
end

Given(/^User is on dashboard$/) do
  steps %Q{
    Given User is on application screen
    And User check and click 2 times if allow or ok button exist
    And User click "authentication_button"
    Then "onboarding_email_address_textfield" will be displayed
    And User swipe the left menu to the right
    Then "dashboard_menu" will be displayed
    And User click "dashboard_menu"
  }
end

#########################################################################################################
#       Description         : Used to open app again after press back in android
#       Created By          : Gilang Bintang
#       Parameters          : -
#       Return Value        : -
#       Example             : Given User back to dashboard
#       Modified By         : -
#       Date                : 5 Oktober 2017
#       Modify Description  : -
########################################################################################################


Given(/^User back to dashboard$/) do
  steps %Q{
    Given User is on application screen
    And User swipe the left menu to the right
    Then "dashboard_menu" will be displayed
    And User click "dashboard_menu"
  }
end

#########################################################################################################
#       Description         : Used to logged in with certain CIF
#       Created By          : Gilang Bintang
#       Parameters          : CIF
#       Return Value        : -
#       Example             : Given User is logged in with cif "card_center_active_m_card_cif"
#       Modified By         : Impola T
#       Date                : 5 Sept 2017
#       Modify Description  : Add OTP and PIN steps
########################################################################################################

Given(/^User is logged in with cif "([^"]*)"$/) do |cif|
  steps %Q{
    Given User is on application screen
    And User check and click 2 times if allow or ok button exist
    And User click "authentication_button"
    
    When User login with credential "#{cif}"
    And User click "onboarding_next_button" until "authentication_pin_numpad" displayed
    When User fill "correct_otp" for OTP or PIN
    And User fill "correct_pin" for OTP or PIN
    And User click "authentication_create_pin_next_button"
    And User fill "correct_pin" for OTP or PIN
    And User click "authentication_confirm_pin_next_button" until "****_top_logo" displayed
  }
end

#########################################################################################################
#       Description         : Used to logged in with certain email and password
#       Created By          : Gilang Bintang
#       Parameters          : CIF
#       Return Value        : -
#       Example             : Given User is logged in with email "google@gilang.com" and password "password"
#       Modified By         : -
#       Date                : -
#       Modify Description  : -
########################################################################################################
Given(/^User is logged in with email "([^"]*)" and password "([^"]*)"$/) do |email, password|
  steps %Q{
    Given User is on application screen
    And User check and click 2 times if allow or ok button exist
    And User click "authentication_button"
    When User fill "onboarding_email_address_textfield" with "#{email}"
    And User click "authentication_password_eye"
    When User fill "onboarding_password_textfield" with "#{password}"
    And User click "onboarding_next_button" until "dashboard" displayed
  }
end

#########################################################################################################
#       Description         : Used to check if app language is as expected
#       Created By          : Gilang Bintang
#       Parameters          : expected language
#       Return Value        : -
#       Example             : And User change language to "language"
#                           : expected language has already been set in each test data, so can be 
#                             directly used as example above
#       Modified By         : -
#       Date                : -
#       Modify Description  : -
########################################################################################################
And(/^User change language to "([^"]*)"$/) do |language|
  steps %Q{ 
    And User click "dashboard_hamburger_icon"
    And User swipe down until found "profile_and_setting_menu"
    And User wait 5 seconds
    And User click "profile_and_setting_menu"
    And User wait 5 seconds
    When User click "profile_and_setting_settings_button"
    And User check app language is "#{language}"
    And User click "dashboard_hamburger_icon"
    And User click "dashboard_menu"
  }
end

And(/^User access card center from side menu$/) do
  steps %Q{
    And User click "dashboard_hamburger_icon"
    And User click "card_center_menu"
  }
end

And(/^User access **** help from side menu$/) do
  steps %Q{
    And User swipe the left menu to the right
    And User swipe up until found "****_help_menu"
    And User click "****_help_menu"
  }
end

#########################################################################################################
#       Description         : Used to Access menu send it via drawer menu
#       Created By          : Eko Adi Prabowo
#       Parameters          : -
#       Return Value        : -
#       Example             : Given User go to sent it landing page from side menu
#       Modified By         : -
#       Date                : -
#       Modify Description  : -
########################################################################################################
And(/^User access send it from side menu$/) do
  steps %Q{
    And User click "dashboard_hamburger_icon"
    And User click "send_it_menu"
    And User check and click "card_center_close_tutorial" if exist
  }
end

And(/^User go to card center landing page from side menu$/) do
  steps %Q{
    And User click "dashboard_hamburger_icon"
    And User click "card_center_menu" until "card_center_close_tutorial" displayed
    And User check and click "card_center_close_tutorial" if exist
  }
end

And(/^User access card center from dashboard widget with cif "([^"]*)"$/) do |cif|
  steps %Q{
    Given User is logged in with cif "#{cif}"
    And User change language to "language"
    And User swipe up until found "card_center_widget"
    And User click "card_center_widget" until "card_center_close_tutorial" displayed
    And User check and click "card_center_close_tutorial" if exist
  }
end

And(/^User access card center from total balance with cif "([^"]*)"$/) do |cif|
  steps %Q{
    Given User is logged in with cif "#{cif}"
    And User change language to "language"
    And User click "card_center_image_on_total_balance" until "card_center_close_tutorial" displayed
    And User check and click "card_center_close_tutorial" if exist
  }
end

And(/^User access card center from left side menu with cif "([^"]*)"$/) do |cif|
  steps %Q{
    Given User is logged in with cif "#{cif}"
    And User change language to "language"
    And User click "dashboard_hamburger_icon"
    And User click "card_center_left_side_menu" until "card_center_close_tutorial" displayed
    And User check and click "card_center_close_tutorial" if exist
  }
end

And(/^User go to dashboard from card center list$/) do
  steps %Q{
    And User click "dashboard_hamburger_icon" until "dashboard_menu" displayed
    Then "dashboard_menu" will be displayed
    And User click "dashboard_menu"
    Then "dashboard" will be displayed
  }
end

And(/^User go to dashboard from card center detail$/) do
  steps %Q{
    And User click "dashboard_hamburger_icon" until "dashboard_menu" displayed
    Then "dashboard_menu" will be displayed
    And User click "dashboard_menu"
    Then "dashboard" will be displayed
  }
end

And(/^User activate m-Card$/)do
  steps %Q{
    And User swipe up until found "card_center_m_card_activate_dashboard"

    And User expect "card_center_m_card_activate_dashboard" equal with "card_center_activate"
    And User click "card_center_m_card_activate_dashboard"
    When User fill "card_center_card_cvv_field" with "card_center_m_card_cvv"
    When User fill "card_center_card_pin_field" with "card_center_correct_card_pin"
    When User fill "card_center_card_pin_confirm_field" with "card_center_correct_card_pin"
    And User click "card_center_x_activate_form_activate_button"

    And User expect "card_center_m_card_status_dashboard" equal with "card_center_active"
  }
end

#This steps currently working on SIT apk since there is a different steps between UAT and SIT application
#In SIT the first screen is about the tutorial screen with 2 buttons : Register, and I already have account
#In UAT the first screen is about login screen with default username and password already applied
Given (/^User can access pay me menu with "([^"]*)"$/) do |cif|
  steps %Q{
    Given User is logged in with cif "#{cif}"
    And User change language to "language"
    And User click "dashboard_hamburger_icon"
    And User swipe up until found "pay_me_menu"
    And User click "pay_me_menu"
    And User check and click "pay_me_close_button_on_popup_tutorial" if exist
  }
end

#########################################################################################################
#       Test Data                 : - Input using Account 1 email
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
Given(/^User create pay me by inputting pay me amount with "([^"]*)"$/) do |pay_me_cif|
  steps %Q{
    Given User can access pay me menu with "#{pay_me_cif}"

    When User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_****_recipient_user_email"
    And User click "pay_me_add_button"
    And User click "pay_me_send_destination_textfield"
    When User fill "pay_me_amount_textfield" with "pay_me_amount"
  }
end

Given(/^User check pay me notification of request money with "([^"]*)"$/) do |cif|
  steps %Q{
    Given User is logged in with cif "#{cif}" 
    And User change language to "language"
    And User wait 10 seconds
    And User click "payme_bell_icon"
  }
end

Given(/^User check split bill notification of request money with "([^"]*)"$/) do |cif|
  steps %Q{
    And User is logged in with cif "#{cif}" 
    And User change language to "language"
    And User wait 10 seconds
    And User click "split_bill_bell_icon"
  }
end

#This steps currently working on SIT apk since there is a different steps between UAT and SIT application
#In SIT the first screen is about the tutorial screen with 2 buttons : Register, and I already have account
#In UAT the first screen is about login screen with default username and password already applied
Given (/^User can access split bill menu with "([^"]*)"$/) do |cif|
  steps %Q{
    And User is logged in with cif "#{cif}"
    And User change language to "language"
    And User click "dashboard_hamburger_icon"
    And User swipe up until found "split_bill_menu"
    And User click "split_bill_menu"
    And User expect "split_bill_title_text" is exist
  }
end

Given (/^User can access **** contacts menu with "([^"]*)"$/) do |cif|
  steps %Q{
    Given User is logged in with cif "#{cif}"
    And User change language to "language"
    And User wait 5 seconds
    And User click "dashboard_hamburger_icon"
    And User swipe up until found "****_contacts_menu"
    And User click "****_contacts_menu"
    And User check and click "tutorial_close" if exist
  }
end

Given (/^User is on in and out page in English language with "([^"]*)"$/) do |cif|
  steps %Q{
    Given User is logged in with cif "#{cif}"
    And User wait 3 seconds
    When User change language to "language"
    And User click "dashboard_hamburger_icon"
    And User click "in_and_out_menu"
    And User check and click "tutorial_close" if exist
  }
end

Given (/^User is on in and out page in Indonesia language with "([^"]*)"$/) do |cif|
  steps %Q{
    Given User is logged in with cif "#{cif}"
    When User change language to "language_id"
    And User wait 3 seconds
    And User click "dashboard_hamburger_icon"  
    And User click "in_and_out_menu"
    And User check and click "tutorial_close" if exist
  }
end

Given (/^User is on in and out upcoming tab in English language with "([^"]*)"$/) do |cif|
  steps %Q{
    Given User is logged in with cif "#{cif}"
    When User change language to "language"
    And User wait 5 seconds
    And User click "dashboard_hamburger_icon"
    And User click "in_and_out_menu"
    And User check and click "tutorial_close" if exist
    And User click "in_and_out_upcoming_tab"
  }
end

Given (/^User is on in and out request tab in English language with "([^"]*)"$/) do |cif|
  steps %Q{
    Given User is logged in with cif "#{cif}"
    When User change language to "language"
    And User wait 3 seconds
    And User click "dashboard_hamburger_icon"
    And User click "in_and_out_menu"
    And User check and click "tutorial_close" if exist
    And User click "in_and_out_request_tab"
  }
end

Given (/^User is on in and out request tab in Indonesia language with "([^"]*)"$/) do |cif|
  steps %Q{
    Given User is logged in with cif "#{cif}"
    When User change language to "language_id"
    And User wait 3 seconds
    And User click "dashboard_hamburger_icon"
    And User click "in_and_out_menu"
    And User check and click "tutorial_close" if exist
    And User click "in_and_out_request_tab_id"
  }
end

Given (/^User is on in and out page in English language from dashboard with "([^"]*)"$/) do |cif|
  steps %Q{
    Given User is on application screen
    When User fill "cif_field" with "#{cif}"
    And User click "cif_submit"
    And User click "authentication_button"
    And User click "dashboard_hamburger_icon"
    And User scroll to "****_help"
    And User check the active language of "language_menu_id" should be Indonesia
    And User swipe down until found "dashboard_menu"    
    And User click "dashboard_menu"
    And User wait 5 seconds
  }
end

Given (/^User set filter for category to all$/) do
  steps %Q{
    And User click "in_and_out_filter_category"
    And User click "filter_select_all" until "in_and_out_selected_mark" displayed
    And User click "in_and_out_done_button" until "in_and_out_transaction_menu" displayed
  }
end

Given (/^User set filter for time range to this week$/) do
  steps %Q{
    And User click "in_and_out_time_menu"
    And User click "in_and_out_time_this_week_button"
    And User click "in_and_out_done_button"
  }
end

Given (/^User set filter for time range to this month$/) do
  steps %Q{
    And User click "in_and_out_time_menu"
    And User click "in_and_out_filter_time_range_this_month"
    And User click "in_and_out_done_button"
  }
end

Given (/^User set filter for time range to this year$/) do
  steps %Q{
    And User click "in_and_out_time_menu"
    And User click "in_and_out_filter_time_range_this_year"
    And User click "in_and_out_done_button"
  }
end

Given (/^User set filter for time range to last seven days$/) do
  steps %Q{
    And User click "in_and_out_time_menu"
    And User click "in_and_out_filter_time_range_last_seven_days"
    And User click "in_and_out_done_button"
  }
end

Given (/^User set filter for time range to last thirty days$/) do
  steps %Q{
    And User click "in_and_out_time_menu"
    And User click "in_and_out_filter_time_range_last_thirty_days"
    And User click "in_and_out_done_button"
  }
end

Given (/^User set filter for transaction type to all$/) do
  steps %Q{
    And User click "in_and_out_transaction_menu"
    And User wait 5 seconds
    And User click "filter_select_all"
    And User click "in_and_out_done_button" until "in_and_out_time_menu" displayed
  }
end

Given (/^User set the filters$/) do
  steps %Q{
    When User click "in_and_out_filter_button" until "in_and_out_transaction_menu" displayed
    And User set filter for amount range from 111 to 1111111
    And User set filter for category to all
    And User set filter for time range to this week
    And User set filter for transaction type to all
  }
end

Given (/^User is on save it page in English language with "([^"]*)"$/) do |cif|
  steps %Q{
    Given User is logged in with cif "#{cif}"
    And User wait 3 seconds
    And User click "dashboard_hamburger_icon"
    And User swipe down until found "save_it_menu"    
    And User click "save_it_menu"
    And User check and click "tutorial_close" if exist
    And User wait 5 seconds
  }
end

Given (/^User is on save it page in Indonesia language with "([^"]*)"$/) do |cif|
  steps %Q{
    Given User is on application screen
    And User check and click 2 times if allow or ok button exist
    When User fill "cif_field" with "#{cif}"
    And User click "cif_submit" until "authentication_button" displayed
    And User click "authentication_button" until "authentication_pin_numpad" displayed
    And User swipe the left menu to the right
    And User scroll to "****_help"
    And User check the active language of "language_menu_id" should be Indonesia
    And User swipe down until found "in_and_out_menu"    
    And User click "in_and_out_menu" until "in_and_out_filter_button" displayed
    And User wait 5 seconds
  }
end

Given (/^User is on dashboard page in English language with "([^"]*)"$/) do |cif|
  steps %Q{
    Given User is logged in with cif "#{cif}"
    And User check and click "later_button" if exist
    When User change language to "language"
    And User check and click "later_button" if exist
    And User wait 3 seconds
  }
end

Given (/^User is on dashboard page in Indonesia language with "([^"]*)"$/) do |cif|
  steps %Q{
    Given User is logged in with cif "#{cif}"
    When User change language to "language_id"
    And User wait 3 seconds
  }
end

Given (/^User is on authentication page$/) do
  steps %Q{
    # Given User reset app on pin page
    And User is on application screen
    And User check and click 2 times if allow or ok button exist
    And User click "onboarding_register_button"
    When User change language into "english_language"
    And User click "authentication_cancel_button"
    And User click "authentication_button"
  }
end

Given (/^User login using "([^"]*)" in English then log out$/) do |account|
  steps %Q{
    And User is logged in with cif "#{account}"
    When User change language to "language"
    And User click "dashboard_hamburger_icon"
    And User swipe up until found "logout_menu"
    And User click "logout_menu"
  }
end

Given (/^User login using inactive user in English then log out$/) do
  steps %Q{
    And User is logged in with cif "authentication_inactive_account"
    And User click "later_button"
    When User change language to "language"
    And User click "later_button"
    And User click "dashboard_hamburger_icon"
    And User swipe up until found "logout_menu"
    And User click "logout_menu"
  }
end

Given (/^User login using dormant user in English then log out$/) do
  steps %Q{
    And User is logged in with cif "authentication_dormant_account"
    When User fill "profile_and_setting_new_password_field" with "authentication_dormant_password_account"
    When User change language to "language"
    And User click "dashboard_hamburger_icon"
    And User swipe up until found "logout_menu"
    And User click "logout_menu"
  }
end

Given (/^User is on forgot password email page$/) do
  steps %Q{
    Given User is on authentication page
    When User click "authentication_reset_button"
  }
end  

Given (/^User is on forgot password otp page$/) do
  steps %Q{
    Given User is on forgot password email page
    And User fill "reset_password_email_address_textfield" with "authentication_active_email_account"
    And User click "onboarding_next_button"
  }
end  

Given (/^User is on forgot password cvv page$/) do
  steps %Q{
    Given User is on forgot password otp page
    And User fill "correct_otp" for OTP or PIN 
  }
end  

Given (/^User is logged in with cif "([^"]*)" in selected environment$/) do |cif|
  steps %Q{
    Given User is on application screen
    And User check and click 2 times if allow or ok button exist
    And User click "authentication_button"

    When User login with credential "#{cif}"
    #And User click "onboarding_next_button" until "dashboard" displayed 
    #follow pin page changes
    And User click "onboarding_next_button" until "back_button" displayed
  }
end

Given (/^User is on Save It screen in selected environment and logged with "([^"]*)"$/) do |cif|
  steps %Q{
    Given User is logged in with cif "#{cif}"
    And User change language to "language"

    And User click "dashboard_hamburger_icon"
    And User click "save_it_side_menu"
  }
end

Given (/^User is on Dashboard screen in selected environment and logged with "([^"]*)"$/) do |cif|
  steps %Q{
    Given User is logged in with cif "#{cif}"
    And User change language to "language"
  }
end

Given (/^User is on Dashboard screen in default environment without login$/) do
  steps %Q{
    Given User is on application screen
    And User check and click 2 times if allow or ok button exist
    And User click "authentication_button"
    And User click "onboarding_next_button" until "dashboard" displayed
    And User change language to "language"
  }
end

Given (/^User create pay me using "([^"]*)"$/) do |cashtag| 
  steps %Q{
    Given User is logged in with cif "pay_me_cif"
    And User swipe the left menu to the right
    And User scroll to "****_help"
    And User check app language is "language"
    And User click "pay_me_menu"
    And User click "pay_me_close_button_on_popup_tutorial"
    And User expect "pay_me_payme_title" is exist
    And User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "#{cashtag}"
    And User click "pay_me_add_button"
    And User click "pay_me_send_destination_textfield"
    And User fill "pay_me_amount_textfield" with "pay_me_amount"
    And User fill "pay_me_note_textfield" with "pay_me_note"
    And User click "pay_me_send_request_button"
  }
end

Given (/^User create split bill using "([^"]*)"$/) do |cashtag| 
  steps %Q{
    Given User is logged in with cif "cif_requestor"
    And User change language to "language"
    And User click "dashboard_hamburger_icon"
    And User click "split_bill_menu"
    And User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "#{cashtag}"
    And User click "split_bill_add_button"
    And User click "split_bill_done_button"
    And User fill "split_bill_input_amount_textfield" with "split_bill_input_amount_data_text"
    And User click "split_bill_send_request_button"
  }
end

Given (/^User is on **** contacts page in English language with "([^"]*)"$/) do |cif|
  steps %Q{
    Given User is logged in with cif "#{cif}"
    When User change language to "language"
    And User swipe the left menu to the right  
    And User click "****_contact_left_side_menu"
  }
end

Given (/^User expect active balance with cif "([^"]*)"$/) do |cif|
  steps %Q{
    Given User is logged in with cif "#{cif}"
    When User change language to "language"
    And User click "dashboard_hamburger_icon"
    And User click "in_and_out_menu"
    And User click "tutorial_close"
    And System save "in_and_out_amount_active_balance" value
  }
end

Given (/^User is on Dashboard screen without login$/) do
  steps %Q{
    Given User is on application screen
    And User check and click 2 times if allow or ok button exist
    And User click "authentication_button"
    And User swipe the left menu to the right
    And User swipe down until found "profile_and_setting_menu"
    And User click "profile_and_setting_menu"
    When User click "profile_and_setting_settings_button"
    And User check app language is "language"
    And User click "dashboard_hamburger_icon"
    And User click "dashboard_menu"
  }
end

Given (/^User is on profile and setting page in English language with "([^"]*)"$/) do |cif|
  steps %Q{
    And User is logged in with cif "#{cif}"
    And User wait 3 seconds
    When User change language to "language"
    And User click "dashboard_hamburger_icon"
    And User wait 3 seconds
    And User swipe up until found "profile_and_setting_menu"
    And User click "profile_and_setting_menu"
    And User click "profile_and_setting_profile_button"
  }
end

Given (/^User is on edit profile page in English language with "([^"]*)"$/) do |cif|
  steps %Q{
    Given User is on profile and setting page in English language with "([^"]*)"
    And User click "profile_and_setting_edit_button"
  }
end

Given (/^User is on flexi saver page from side menu with cif "([^"]*)" and language "([^"]*)"$/) do |cif, language|
  steps %Q{
    Given User is logged in with cif "#{cif}"
    And User change language to "#{language}"
    When User click "dashboard_hamburger_icon"
    And User click "save_it_side_menu"
    And User check and click "tutorial_close" if exist
    Then User expect "save_it_title" is exist
  }
end

Given (/^User is on flexi saver wigdet dashboard with cif "([^"]*)" and language "([^"]*)"$/) do |cif, language|
  steps %Q{
    Given User is logged in with cif "#{cif}"
    And User change language to "#{language}"
    And User swipe up until found "save_it_dream_saver_title_dashboard"
  }
end

#########################################################################################################
#       Description         : Used to Access menu Bill payment via drawer menu
#       Created By          : Eko Adi Prabowo
#       Parameters          : -
#       Return Value        : -
#       Example             : Given User go to sent it bill payment landing page from side menu
#       Modified By         : -
#       Date                : -
#       Modify Description  : -
########################################################################################################
And(/^User go to sent it bill payment landing page from side menu$/) do
  steps %Q{
    And User click "dashboard_hamburger_icon"
    And User click "send_it_menu"
    And User check and click "card_center_close_tutorial" if exist
    And User click "send_it_bill_payment_tab" 
  }
end

#########################################################################################################
#       Description         : Used to Access **** contacts menu using language option
#       Created By          : Faisal Yafi
#       Parameters          : cif, language
#       Return Value        : -
#       Example             : User can access **** contacts menu with "cif_requestor_3" using language "language"
#       Modified By         : -
#       Date                : 11/01/2017
#       Modify Description  : -
########################################################################################################
Given (/^User can access **** contacts menu with "([^"]*)" and language "([^"]*)"$/) do |cif,lang|
  steps %Q{
    Given User is logged in with cif "#{cif}"
    And User change language to "#{lang}"
    And User wait 5 seconds
    And User click "dashboard_hamburger_icon"
    And User swipe up until found "****_contacts_menu"
    And User click "****_contacts_menu"
  }
end

#########################################################################################################
#       Description         : Used to Access Split Bill menu using language option
#       Created By          : Faisal Yafi
#       Parameters          : cif, language
#       Return Value        : -
#       Example             : User can access Split Bill menu with "cif_requestor_3" using language "language"
#       Modified By         : -
#       Date                : 11/01/2017
#       Modify Description  : -
########################################################################################################
Given (/^User can access split bill menu with "([^"]*)" and language "([^"]*)"$/) do |cif,lang|
  steps %Q{
    And User is logged in with cif "#{cif}"
    And User change language to "#{lang}"
    And User wait 5 seconds
    And User click "dashboard_hamburger_icon"
    And User swipe up until found "split_bill_menu"
    And User click "split_bill_menu"
    And User expect "split_bill_title_text" is exist
  }
end

#########################################################################################################
#       Description         : Used access to **** contact and delete data user contact if exist
#       Created By          : Eko Adi Prabowo
#       Parameters          : user_data
#       Return Value        : -
#       Example             : Given User check data contact "data" if exist
#       Modified By         : -
#       Date                : -
#       Modify Description  : -
########################################################################################################
Given (/^User check data contact "([^"]*)" if exist$/) do |user_data|
  steps %Q{
    And User click "dashboard_hamburger_icon"
    And User swipe up until found "****_contacts_menu"
    And User click "****_contacts_menu"
    And User check and click "tutorial_close" if exist

    And User click "send_it_tab_favorites"
    And User click "send_it_bank_contacts_tab"
    And User click "****_contacts_header_search_icon"
    And User fill "****_contacts_header_search_input" with "#{user_data}"
    And User delete contact "#{user_data}" if exist

    And User click "dashboard_hamburger_icon"
    And User swipe down until found "dashboard_menu"
    And User click "dashboard_menu"
    And User wait 5 seconds 

  }
end

#########################################################################################################
#       Description         : Pre-condition for split bill using parameter data value 
#       Created By          : Eko Adi Prabowo
#       Parameters          : user_data, value_data
#       Return Value        : -
#       Example             : Given User check data contact "data" if exist
#       Modified By         : -
#       Date                : -
#       Modify Description  : -
########################################################################################################
Given (/^Precondition make split bill with fist login "([^"]*)" and value "([^"]*)"$/) do |user_data,value_data|
  steps %Q{
    Given User can access split bill menu with "#{user_data}"
    And User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_user_****"
    And User click "pay_me_add_button"
    And User click "split_bill_done_button"
    And User fill "split_bill_total_amount_field" with "#{value_data}"
    And User click "split_bill_send_request_button" until "split_bill_success_widget" displayed
    And User reset app

  }
end

#########################################################################################################
#       Description         : Pre-condition for create new **** contact specific to BCA bank account
#       Created By          : Helga Asastani
#       Parameters          : user_data, value_data
#       Return Value        : -
#       Example             :
#       Modified By         : -
#       Date                : -
#       Modify Description  : -
########################################################################################################
Given (/^User access **** contact using login as "([^"]*)" and create new bank account "([^"]*)"$/) do |user_data,value_data|
  steps %Q{
    Given User can access **** contacts menu with "#{user_data}" and language "language"
    And User check and click "tutorial_close" if exist
    And User click "****_contacts_add_contacts_button"
    And User click "****_contacts_add_new_bank_contacts_button"
    And User click "****_contacts_bank_dropdown_list"
    And User click "****_contacts_header_search_input"
    And User hide the keyboard
    And User fill "send_it_new_bank_page_dropdown_search" with "#{value_data}"
    And User click "****_contacts_drpdown_list_4"
    And User fill "****_contacts_bank_accounts_text_field" with random "****_contacts_random_bank_account_number"
    And User click "****_contacts_check_bank_account_button"
    And User click "****_contacts_add_****_bank_contact_submit"
  }
end


