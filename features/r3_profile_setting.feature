@r3_sendit_profile_setting
Feature: Release 3 - PROFILE SETTING module

  # Profile and Setting Module
  @android @ios @uispecific
  Scenario:JENI4531-C102152-[Scenario] Go to Profile screen
    Given User is on profile and setting page in English language with "flexi_saver_cif_2"
    Then "profile_and_setting_profile_container" will be displayed

  @android @ios @endtoend
  Scenario:JENI4531-C102146-[Scenario] Go to Change Password Screen
    Given User is on profile and setting page in English language with "flexi_saver_cif_2"
    When User click "profile_and_setting_settings_button"
    And User click "profile_and_setting_change_password_button"
    Then "profile_and_setting_password_verification_form" will be displayed

  @android @ios @uispecific
  Scenario:JENI4531-C102145-[Scenario] Go to Change PIN Screen 1
    Given User is on profile and setting page in English language with "flexi_saver_cif_2"
    When User click "profile_and_setting_settings_button"
    And User click "profile_and_setting_change_pin_button"
    Then "profile_and_setting_change_pin_container" will be displayed

  @android @ios @uispecific 
  Scenario:JENI4328-C92549-[Scenario] Go to Change PIN Screen 2
    Given User is on profile and setting page in English language with "flexi_saver_cif_2"
    When User click "profile_and_setting_settings_button"
    And User click "profile_and_setting_change_pin_button"
    Then "profile_and_setting_change_pin_container" will be displayed

  @continuous @android @ios @uispecific 
  Scenario:JENI4328-C92552-[Scenario] Enabling Submit Button on Input Your Current Password Screen
    When User fill "correct_pin" for OTP or PIN
    And User click "profile_and_setting_current_pin_next_button"
    Then "profile_and_setting_new_pin_container" will be displayed

  @continuous @android @ios @uispecific 
  Scenario:JENI4328-C92550-[Scenario] Enabling Next button on change PIN screens
    When User fill "correct_pin" for OTP or PIN
    And User click "profile_and_setting_new_pin_next_button"
    Then "profile_and_setting_confirm_pin_container" will be displayed

  @continuous @android @ios @uispecific 
  Scenario:JENI4328-C92551-[Scenario] Enabling Next button on change PIN confirmation screens
    When User fill "correct_pin" for OTP or PIN
    And User click "profile_and_setting_confirm_pin_next_button"
    And User fill "****_contacts_password_textfield" with "profile_account_old"
    And User click "authentication_password_eye"
    And User click "profile_and_setting_submit_button"
    And User wait 5 seconds
    #Then "profile_and_setting_settings_button" will be displayed

  @android @ios @uispecific 
  Scenario:JENI4328-C92548-[Scenario] Change PIN 1
    Given User is on profile and setting page in English language with "flexi_saver_cif_2"
    And User click "profile_and_setting_settings_button"
    And User click "profile_and_setting_change_pin_button"
    When User fill "correct_pin" for OTP or PIN
    And User click "profile_and_setting_current_pin_next_button"
    When User fill "predictable_pin" for OTP or PIN
    Then User expect "onboarding_otp_notification" equal with "notification_pin_too_predictable" 

  @android @ios @uispecific 
  Scenario:JENI4328-C92548-[Scenario] Change PIN 2
    Given User is on profile and setting page in English language with "flexi_saver_cif_2"
    And User click "profile_and_setting_settings_button"
    And User click "profile_and_setting_change_pin_button"
    When User fill "correct_pin" for OTP or PIN
    And User click "profile_and_setting_current_pin_next_button"
    When User fill "correct_pin" for OTP or PIN
    And User click "profile_and_setting_new_pin_next_button"
    When User fill "predictable_pin" for OTP or PIN
    Then User expect "onboarding_otp_notification" equal with "notification_pin_not_match"

  @android @ios @uispecific
  Scenario:JENI4328-C92548-[Scenario] Change PIN 3
    Given User is on profile and setting page in English language with "flexi_saver_cif_2"
    And User click "profile_and_setting_settings_button"
    And User click "profile_and_setting_change_pin_button"
    When User fill "correct_pin" for OTP or PIN
    And User click "profile_and_setting_current_pin_next_button"
    When User fill "correct_pin" for OTP or PIN
    And User click "profile_and_setting_new_pin_next_button"
    When User fill "correct_pin" for OTP or PIN
    And User click "profile_and_setting_confirm_pin_next_button"
    And User fill "****_contacts_password_textfield" with "profile_account_old"
    And User click "authentication_password_eye"
    And User click "profile_and_setting_submit_button"
    And User wait 5 seconds
    Then "profile_and_setting_settings_button" will be displayed

  @android @ios @uispecific
  Scenario:JENI4328-C92553-[Scenario] Back Button 1
    Given User is on profile and setting page in English language with "flexi_saver_cif_2"
    And User click "profile_and_setting_settings_button"
    And User click "profile_and_setting_change_pin_button"
    When User fill "correct_pin" for OTP or PIN
    And User click "profile_and_setting_current_pin_next_button"
    When User fill "correct_pin" for OTP or PIN
    And User click "profile_and_setting_new_pin_next_button"
    When User click "onboarding_back_button"
    Then User expect "profile_and_setting_pin_title" equal with "profile_and_setting_new_pin_title"

  @android @ios @uispecific
  Scenario:JENI4328-C92553-[Scenario] Back Button 2
    Given User is on profile and setting page in English language with "flexi_saver_cif_2"
    And User click "profile_and_setting_settings_button"
    And User click "profile_and_setting_change_pin_button"
    When User fill "correct_pin" for OTP or PIN
    And User click "profile_and_setting_current_pin_next_button"
    When User click "onboarding_back_button"
    Then User expect "profile_and_setting_pin_title" equal with "profile_and_setting_current_pin_title"

  @android @ios @uispecific
  Scenario:JENI4328-C92553-[Scenario] Back Button 3
    Given User is on profile and setting page in English language with "flexi_saver_cif_2"
    And User click "profile_and_setting_settings_button"
    And User click "profile_and_setting_change_pin_button"
    When User click "onboarding_back_button"
    Then "profile_and_setting_settings_button" will be displayed

  @android @ios @endtoend 
  Scenario:JENI4400-C102103-[Scenario] Go to Change Password Screen
    Given User is on profile and setting page in English language with "flexi_saver_cif_2"
    When User click "profile_and_setting_settings_button"
    And User click "profile_and_setting_change_password_button"
    Then "profile_and_setting_password_verification_form" will be displayed

  @android @ios @endtoend 
  Scenario:JENI4400-C102107-[Scenario] Enabling Submit Button on Input Your Current Password Screen 1
    Given User is on profile and setting page in English language with "flexi_saver_cif_2"
    When User click "profile_and_setting_settings_button"
    And User click "profile_and_setting_change_password_button"
    #And User click "profile_and_setting_submit_button"
    Then User expect "profile_and_setting_new_pin_next_button" doesn't exist

  @android @ios @endtoend @continuous 
  Scenario:JENI4400-C102107-[Scenario] Enabling Submit Button on Input Your Current Password Screen 2
    And User fill "authentication_forgot_pin_password_textfield" with "incorrect_password_4"
    And User click "authentication_change_password_next_button"
    #Then "top_notification_snackbar" will be displayed

  @android @ios @endtoend @continuous 
  Scenario:JENI4400-C102107-[Scenario] Enabling Submit Button on Input Your Current Password Screen 3
    And User fill "authentication_forgot_pin_password_textfield" with "authentication_dormant_password_account"
    And User click "authentication_change_password_next_button"
    #Then "top_notification_snackbar" will be displayed

  @android @ios @endtoend @continuous 
  Scenario:JENI4400-C102107-[Scenario] Enabling Submit Button on Input Your Current Password Screen 4
    And User fill "authentication_forgot_pin_password_textfield" with "authentication_active_password_account"
    And User click "authentication_change_password_next_button"
    #Then "top_notification_snackbar" will be displayed

  @android @ios @endtoend 
  Scenario:JENI4400-C102106-[Scenario] Enabling Next Button on Change Password Screen
    Given User is on profile and setting page in English language with "flexi_saver_cif_2"
    When User click "profile_and_setting_settings_button"
    And User click "profile_and_setting_change_password_button"
    And User fill "authentication_forgot_pin_password_textfield" with "authentication_active_password_account"
    And User fill "profile_and_setting_new_password_field" with "authentication_active_password_account"
    And User fill "profile_and_setting_confirm_password_field" with "authentication_active_password_account"
    And User click "onboarding_next_button"

  @android @ios @endtoend @continuous
  Scenario:JENI4400-C102106-[Scenario] Enabling Next Button on Change Password Screen
    And User fill "profile_and_setting_new_password_field" with "authentication_active_password_account"
    Then "profile_and_setting_new_password_field" will be displayed

  @android @ios @endtoend
  Scenario:JENI4400-C102103-[Scenario] Go to Change Password Screen
    Given User is on profile and setting page in English language with "flexi_saver_cif_2"
    And User wait 5 seconds
    When User click "profile_and_setting_settings_button"
    And User click "profile_and_setting_change_password_button"
    And User fill "authentication_forgot_pin_password_textfield" with "profile_account_old"
    #And User click "profile_and_setting_submit_button"
    #And User click "onboarding_next_button"
    And User fill "profile_and_setting_new_password_field" with "authentication_active_password_account"
    And User fill "profile_and_setting_confirm_password_field" with "flexi_saver_cif_2"
    Then User expect "profile_and_setting_confirm_password_underline" equal with "profile_and_setting_passowrd_not_match"

    And User fill "profile_and_setting_new_password_field" with "authentication_active_password_account"
    And User fill "profile_and_setting_confirm_password_field" with "authentication_dormant_password_account"
    Then User expect "profile_and_setting_confirm_password_underline" equal with "profile_and_setting_passowrd_not_match"

    And User fill "profile_and_setting_new_password_field" with "authentication_active_password_account"
    And User fill "profile_and_setting_confirm_password_field" with "in_and_out_history_bene"
    Then User expect "profile_and_setting_confirm_password_underline" equal with "profile_and_setting_passowrd_not_match"

    And User fill "profile_and_setting_new_password_field" with "in_and_out_category_1"
    Then User expect "profile_and_setting_new_password_underline" equal with "profile_and_setting_passowrd_contain_numeric"

    And User fill "profile_and_setting_new_password_field" with "find_us_withdraw_amount"
    Then User expect "profile_and_setting_new_password_underline" equal with "profile_and_setting_passowrd_contain_uppercase"

    And User fill "profile_and_setting_new_password_field" with "send_it_individual_page_active_balance"
    Then User expect "profile_and_setting_new_password_underline" equal with "profile_and_setting_passowrd_contain_lowercase"

    And User fill "profile_and_setting_new_password_field" with "incorrect_password_5"
    Then User expect "profile_and_setting_new_password_underline" equal with "profile_and_setting_passowrd_contain_too_short"

    And User fill "profile_and_setting_new_password_field" with "profile_account_new"
    And User fill "profile_and_setting_confirm_password_field" with "profile_account_new"
    And User click "onboarding_next_button"

  @android @ios @endtoend 
  Scenario:JENI4400-C102108-[Scenario] Back button
    Given User is on profile and setting page in English language with "flexi_saver_cif_2"

    When User click "profile_and_setting_settings_button"
    And User click "profile_and_setting_change_password_button"
    And User fill "authentication_forgot_pin_password_textfield" with "profile_account_old"
    #And User click "profile_and_setting_submit_button"
    And User fill "profile_and_setting_new_password_field" with "profile_account_new"
    And User fill "profile_and_setting_confirm_password_field" with "profile_account_new"
    #And User click "onboarding_next_button"
    And User wait 5 seconds
    And User click "back_button"
    And "profile_and_setting_settings_button" will be displayed

  @android @ios @endtoend
  Scenario:JENI4400-C102150-[Scenario] Language toggle
    Given User is on profile and setting page in English language with "flexi_saver_cif_2"
    When User click "profile_and_setting_settings_button"
    And User click "onboarding_change_language_button" 
    Then User expect "profile_and_setting_language" equal with "indonesian_language"

  @android @ios @uispecific @R3_6 
  Scenario:JENI8506-C133616-[Scenario] Step Up for edit profil change Phone Number
    Given User is on profile and setting page in English language with "authentication_active_account"
    And User click "profile_and_setting_edit_button"
    And User swipe up until found "profile_and_setting_phone_field"
    And User fill "onboarding_phone_number_textfield" with random "valid_phone_number"
    And User input texts "onboarding_phone_number_textfield" into variable
    When User click "profile_and_setting_save_button"
    And User fill "profile_and_setting_password_field" with "authentication_active_password_account"
    And User click "profile_and_setting_submit_button"
    Then User check snackbar with static text "profile_and_setting_profile_updated_notification"
    And "profile_and_setting_profile_container" will be displayed
    And User check texts

  @android @ios @uispecific @R3_6
  Scenario:JENI9307/8506-C130206#C133667-[Scenario] Back button 1
    Given User is on profile and setting page in English language with "flexi_saver_cif_2"
    And User click "profile_and_setting_edit_button"
    And User swipe up until found "profile_and_setting_phone_field"
    And User fill "profile_and_setting_phone_field" with random "valid_phone_number"
    When User click "onboarding_back_button"
    And User click "profile_and_setting_discard_button"
    Then "profile_and_setting_profile_container" will be displayed

  @android @ios @uispecific @R3_6
  Scenario:JENI9307/8506-C130206#C133667-[Scenario] Back button 2
    Given User is on profile and setting page in English language with "flexi_saver_cif_2"
    And User click "profile_and_setting_edit_button"
    And User swipe up until found "profile_and_setting_phone_field"
    And User fill "profile_and_setting_phone_field" with random "valid_phone_number"
    And User click "profile_and_setting_save_button"
    When User click "card_center_back_menu"
    Then "profile_and_setting_edit_profile_view" will be displayed

  @android @ios @uispecific @R3_6 
  Scenario:JENI9307-C133629-[Scenario] User change their Nickname
    Given User is on profile and setting page in English language with "authentication_active_account"
    And User click "profile_and_setting_edit_button"
    And User fill "onboarding_success_page_nickname_textfield" with "onboarding_user_nickname"
    When User click "profile_and_setting_save_button"
    And User fill "profile_and_setting_password_field" with "authentication_active_password_account"
    And User click "profile_and_setting_submit_button"
    Then User check snackbar with static text "profile_and_setting_profile_updated_notification"
    And "profile_and_setting_profile_container" will be displayed
    And User expect "profile_and_setting_nickname_view" equal with "onboarding_user_nickname"

  @android @ios @uispecific @R3_6 
  #JENI8506-C133615-[Scenario] Step Up for edit profil change Cashtag
  Scenario:JENI4262/8506-C128001#C133615-[Scenario] Change Cashtag
    Given User is on profile and setting page in English language with "authentication_active_account"
    And User click "profile_and_setting_edit_button"
    And User fill "onboarding_success_page_nickname_textfield" with "onboarding_user_nickname"
    And User fill "profile_and_setting_cashtag_field" with "profile_and_setting_change_cashtag_1"
    When User click "profile_and_setting_save_button"
    And User fill "profile_and_setting_password_field" with "authentication_active_password_account"
    And User click "profile_and_setting_submit_button"
    Then User check snackbar with static text "profile_and_setting_profile_updated_notification"
    And "profile_and_setting_profile_container" will be displayed
    And User expect "profile_and_setting_cashtag_view" equal with "profile_and_setting_change_cashtag_1"

  @android @ios @uispecific @R3_6 
  Scenario:JENI4262-C128001-[Scenario] Change Cashtag
    Given User is on profile and setting page in English language with "authentication_active_account"
    And User click "profile_and_setting_edit_button"
    And User fill "onboarding_success_page_nickname_textfield" with "onboarding_user_nickname"
    And User fill "profile_and_setting_cashtag_field" with "profile_and_setting_change_cashtag_2"
    When User click "profile_and_setting_save_button"
    And User fill "profile_and_setting_password_field" with "authentication_active_password_account"
    And User click "profile_and_setting_submit_button"
    Then User check snackbar with static text "profile_and_setting_profile_updated_notification"
    And "profile_and_setting_profile_container" will be displayed
    And User expect "profile_and_setting_cashtag_view" equal with "profile_and_setting_change_cashtag_2"

  @android @ios @uispecific @R3_6 
  Scenario:JENI4262-C128001-[Scenario] Change Cashtag
    Given User is on profile and setting page in English language with "authentication_active_account"
    And User click "profile_and_setting_edit_button"
    And User fill "onboarding_success_page_nickname_textfield" with "onboarding_user_nickname"
    And User fill "profile_and_setting_cashtag_field" with "profile_and_setting_change_cashtag_3"
    When User click "profile_and_setting_save_button"
    And User fill "profile_and_setting_password_field" with "authentication_active_password_account"
    And User click "profile_and_setting_submit_button"
    Then User check snackbar with static text "profile_and_setting_profile_updated_notification"
    And "profile_and_setting_profile_container" will be displayed
    And User expect "profile_and_setting_cashtag_view" equal with "profile_and_setting_change_cashtag_1"

  @android @ios @uispecific @R3_6 
  Scenario:JENI4262-C128001-[Scenario] Change Cashtag
    Given User is on profile and setting page in English language with "authentication_active_account"
    And User click "profile_and_setting_edit_button"
    And User fill "onboarding_success_page_nickname_textfield" with "onboarding_user_nickname"
    And User fill "profile_and_setting_cashtag_field" with "profile_and_setting_change_cashtag_4"
    When User click "profile_and_setting_save_button"
    And User fill "profile_and_setting_password_field" with "authentication_active_password_account"
    And User click "profile_and_setting_submit_button"
    Then User check snackbar with static text "profile_and_setting_profile_updated_notification"
    And "profile_and_setting_profile_container" will be displayed
    And User expect "profile_and_setting_cashtag_view" equal with "profile_and_setting_change_cashtag_4"

  @android @ios @uispecific @R3_6 
  Scenario:JENI4262-C128001-[Scenario] Change Cashtag
    Given User is on profile and setting page in English language with "authentication_active_account"
    And User click "profile_and_setting_edit_button"
    And User fill "onboarding_success_page_nickname_textfield" with "onboarding_user_nickname"
    And User fill "profile_and_setting_cashtag_field" with "profile_and_setting_change_cashtag_5"
    When User click "profile_and_setting_save_button"
    And User fill "profile_and_setting_password_field" with "authentication_active_password_account"
    And User click "profile_and_setting_submit_button"
    Then User check snackbar with static text "profile_and_setting_profile_updated_notification"
    And "profile_and_setting_profile_container" will be displayed
    And User expect "profile_and_setting_cashtag_view" equal with "profile_and_setting_change_cashtag_1"

  @android @ios @uispecific @R3_6 
  Scenario:JENI4262/9307-C128001#C133666-[Scenario] Change Cashtag
    Given User is on profile and setting page in English language with "authentication_active_account"
    And User click "profile_and_setting_edit_button"
    And User fill "onboarding_success_page_nickname_textfield" with "onboarding_user_nickname"
    And User fill "profile_and_setting_cashtag_field" with "profile_and_setting_change_wrong_cashtag_3"
    When User click "profile_and_setting_save_button"
    Then User check snackbar with dynamic text "profile_and_setting_cashtag_already_taken"

  @android @ios @uispecific 
  Scenario:JENI4262/9307-C130203#C133666-[Scenario] Change to minimum cashtag
    Given User is on profile and setting page in English language with "authentication_active_account"
    And User click "profile_and_setting_edit_button"
    And User fill "onboarding_success_page_nickname_textfield" with "onboarding_user_nickname"
    And User fill "profile_and_setting_cashtag_field" with "profile_and_setting_change_wrong_cashtag_1"
    When User click "profile_and_setting_save_button"
    Then User check snackbar with static text "profile_and_setting_cashtag_lower_than_minimum_notification"

  @android @ios @uispecific @R3_6 
  Scenario:JENI4262-C130202-[Scenario] Change to exceed maximum cashtag (> 15 character)
    Given User is on profile and setting page in English language with "authentication_active_account"
    And User click "profile_and_setting_edit_button"
    And User fill "onboarding_success_page_nickname_textfield" with "onboarding_user_nickname"
    And User fill "profile_and_setting_cashtag_field" with "profile_and_setting_change_cashtag_6"
    When User click "profile_and_setting_save_button"
    And User fill "profile_and_setting_password_field" with "authentication_active_password_account"
    And User click "profile_and_setting_submit_button"
    Then User check snackbar with static text "profile_and_setting_profile_updated_notification"
    And "profile_and_setting_profile_container" will be displayed
    And User expect "profile_and_setting_cashtag_view" equal with "profile_and_setting_change_cashtag_7"
    And User expect "profile_and_setting_cashtag_view" equal with 16 characters

  @android @ios @uispecific @R3_6 
  Scenario:JENI4262-C130204-[Scenario] Change to invalid cashtag
    Given User is on profile and setting page in English language with "authentication_active_account"
    And User click "profile_and_setting_edit_button"
    And User fill "onboarding_success_page_nickname_textfield" with "onboarding_user_nickname"
    And User fill "profile_and_setting_cashtag_field" with "profile_and_setting_change_wrong_cashtag_2"
    When User click "profile_and_setting_save_button"
    Then User check snackbar with static text "profile_and_setting_cashtag_contain_numeric_only_notification"

  @android @ios @uispecific @R3_6 
  Scenario:JENI5838-C137516-[Scenario] Updating/Uploading Profile Picture via Camera
    Given User is on profile and setting page in English language with "authentication_active_account"
    And User click "profile_and_setting_edit_button"
    And User click "profile_and_setting_upload_profile_picture_button"
    And User click "onboarding_question_choose_camera"
    And User click "onboarding_camera_button"
    And User click "onboarding_confirm_photo_button"
    And User click "profile_and_setting_save_button"
    And User fill "profile_and_setting_password_field" with "authentication_active_password_account"
    And User click "profile_and_setting_submit_button"
    Then "profile_and_setting_profile_container" will be displayed
    And User check snackbar with static text "profile_and_setting_upload_profile_picture_success_notification"

  @android @ios @uispecific @R3_6 
  Scenario:JENI5838-C102199-[Scenario] Scenario: Updating/Uploading Profile Picture via Library
    Given User is on profile and setting page in English language with "authentication_active_account"
    And User click "profile_and_setting_edit_button"
    And User click "profile_and_setting_upload_profile_picture_button"
    And User click "onboarding_question_choose_gallery"
    And User click "onboarding_question_choose_gallery_pic"
    And User click "profile_and_setting_save_button"
    And User fill "profile_and_setting_password_field" with "authentication_active_password_account"
    And User click "profile_and_setting_submit_button"
    Then "profile_and_setting_profile_container" will be displayed
    And User check snackbar with static text "profile_and_setting_upload_profile_picture_success_notification"

  @android @ios @uispecific @R3_6 
  #JENI8506-C133611-[Scenario] Step Up for edit profil upload KTP
  Scenario:JENI1144/8506-C117081#C133611-[Scenario] Go to KTP Details screen
    Given User is on profile and setting page in English language with "flexi_saver_cif_2"
    And User click "profile_and_setting_edit_button"
    And User swipe up until found "profile_and_setting_ktp_detail_button"
    When User click "profile_and_setting_ktp_detail_button"
    And User swipe up until found "profile_and_setting_change_ktp_button"
    And User click "profile_and_setting_change_ktp_button"
    And User fill "profile_and_setting_reason_change_ktp" with "profile_and_setting_change_ktp_reason"
    And User click "onboarding_next_button"
    Then "profile_and_setting_edit_ktp_detail_view" will be displayed

  @android @ios @uispecific @R3_6
  Scenario:JENI4300-C102177-[Scenario] Go to Mailing Address screen
    Given User is on profile and setting page in English language with "authentication_active_account"
    And User click "profile_and_setting_edit_button"
    And User swipe up until found "profile_and_setting_mailing_address_button"
    When User click "profile_and_setting_mailing_address_button"
    Then "onboarding_mailing_build_dropdown" will be displayed

  @android @ios @uispecific @R3_6
  Scenario:JENI4300-C102178-[Scenario] Changing Mailing Address 1
    Given User is on profile and setting page in English language with "authentication_active_account"
    And User click "profile_and_setting_edit_button"
    And User swipe up until found "profile_and_setting_mailing_address_button"
    When User click "profile_and_setting_mailing_address_button"
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
    And User click "profile_and_setting_save_button"
    And User fill "profile_and_setting_password_field" with "valid_address"
    And User click "profile_and_setting_submit_button"
    And User check snackbar with static text "card_center_change_pin_wrong_password"

  @android @ios @uispecific @continuous @R3_6
  Scenario:JENI4300/8506-C102178#C133613-[Scenario] Changing Mailing Address 2
    And User fill "profile_and_setting_password_field" with "authentication_active_password_account"
    And User click "profile_and_setting_submit_button"
    And User check snackbar with static text "profile_and_setting_personal_data_updated_notification"

  @android @ios @uispecific @R3_6
  Scenario:JENI4300-C102178-[Scenario] Changing Mailing Address 3
    Given User is on profile and setting page in English language with "authentication_active_account"
    And User click "profile_and_setting_edit_button"
    And User swipe up until found "profile_and_setting_mailing_address_button"
    When User click "profile_and_setting_mailing_address_button"
    And User select "onboarding_mailing_build_dropdown" dropdown with "onboarding_mailing_build_dropdown_2"
    And User click "profile_and_setting_save_button"
    And "onboarding_mailing_build_dropdown" will be displayed

  @android @ios @uispecific @continuous @R3_6
  Scenario:JENI4300-C102178-[Scenario] Changing Mailing Address 4
    And User select "onboarding_mailing_build_dropdown" dropdown with "onboarding_mailing_build_dropdown"
    When User fill "onboarding_mailing_address_textfield" with "valid_address" 
    And User fill "onboarding_mailing_no" with "house_number" 
    And User swipe up until found "onboarding_mailing_zipcode_dropdown"
    And User select "onboarding_mailing_province_dropdown" dropdown with "onboarding_mailing_province_dropdown"
    And User select "onboarding_mailing_city_dropdown" dropdown with "onboarding_mailing_city_dropdown"
    And User select "onboarding_mailing_zipcode_dropdown" dropdown with "onboarding_mailing_zipcode_dropdown"
    And User click "profile_and_setting_save_button"
    And "onboarding_mailing_build_dropdown" will be displayed

  @android @ios @uispecific @R3_6
  Scenario:JENI4300-C102178-[Scenario] Changing Mailing Address 5
    Given User is on profile and setting page in English language with "authentication_account_with_temporary_m_card"
    And User click "profile_and_setting_edit_button"
    And User swipe up until found "profile_and_setting_mailing_address_button"
    When User click "profile_and_setting_mailing_address_button"
    And User select "onboarding_mailing_build_dropdown" dropdown with "onboarding_mailing_build_dropdown"
    When User fill "onboarding_mailing_address_textfield" with "valid_address" 
    And User fill "onboarding_mailing_no" with "house_number" 
    And User swipe up until found "onboarding_mailing_zipcode_dropdown"
    And User select "onboarding_mailing_province_dropdown" dropdown with "onboarding_mailing_province_dropdown"
    And User select "onboarding_mailing_city_dropdown" dropdown with "onboarding_mailing_city_dropdown"
    And User select "onboarding_mailing_districts_dropdown" dropdown with "onboarding_mailing_districts_dropdown"
    And User select "onboarding_mailing_kelurahan_dropdown" dropdown with "onboarding_mailing_kelurahan_dropdown"
    And User select "onboarding_mailing_zipcode_dropdown" dropdown with "onboarding_mailing_zipcode_dropdown"
    And User click "profile_and_setting_save_button"
    And User fill "profile_and_setting_password_field" with "authentication_active_password_account"
    And User click "profile_and_setting_submit_button"
    And User check snackbar with static text "profile_and_setting_personal_data_updated_notification"

  @android @ios @uispecific @R3_6
  Scenario:JENI4300-C102179-[Scenario] Enabling the Save button on Mailing Address 1
    Given User is on profile and setting page in English language with "authentication_account_with_temporary_m_card"
    And User click "profile_and_setting_edit_button"
    And User swipe up until found "profile_and_setting_mailing_address_button"
    When User click "profile_and_setting_mailing_address_button"
    And User select "onboarding_mailing_build_dropdown" dropdown with "onboarding_mailing_build_dropdown"
    When User fill "onboarding_mailing_address_textfield" with "save_it_dream_saver_empty" 
    And User fill "onboarding_mailing_no" with "house_number" 
    And User fill "onboarding_mailing_rt_rw" with "house_rt_rw"
    And User swipe up until found "onboarding_mailing_zipcode_dropdown"
    And User select "onboarding_mailing_province_dropdown" dropdown with "onboarding_mailing_province_dropdown"
    And User select "onboarding_mailing_city_dropdown" dropdown with "onboarding_mailing_city_dropdown"
    And User select "onboarding_mailing_districts_dropdown" dropdown with "onboarding_mailing_districts_dropdown"
    And User select "onboarding_mailing_kelurahan_dropdown" dropdown with "onboarding_mailing_kelurahan_dropdown"
    And User select "onboarding_mailing_zipcode_dropdown" dropdown with "onboarding_mailing_zipcode_dropdown"
    And User click "profile_and_setting_save_button"
    And "onboarding_mailing_zipcode_dropdown" will be displayed

  @android @ios @uispecific @continuous @R3_6
  Scenario:JENI4300-C102179-[Scenario] Enabling the Save button on Mailing Address 2
    And User swipe down until found "onboarding_mailing_no"
    And User fill "onboarding_mailing_no" with "save_it_dream_saver_empty" 
    And User click "profile_and_setting_save_button"
    And "onboarding_mailing_no" will be displayed

  @android @ios @uispecific @continuous @R3_6
  Scenario:JENI4300-C102179-[Scenario] Enabling the Save button on Mailing Address 3
    And User swipe down until found "onboarding_mailing_address_textfield"
    When User fill "onboarding_mailing_address_textfield" with "valid_address" 
    And User fill "onboarding_mailing_no" with "house_number"
    And User click "profile_and_setting_save_button"
    And "profile_and_setting_password_field" will be displayed

  @android @ios @uispecific @R3_6 
  Scenario:JENI4300-C102180-[Scenario] Enabling Submit Button on Input Your Current Password Screen 1
    Given User is on profile and setting page in English language with "authentication_active_account"
    And User click "profile_and_setting_edit_button"
    And User swipe up until found "profile_and_setting_mailing_address_button"
    When User click "profile_and_setting_mailing_address_button"
    And User select "onboarding_mailing_build_dropdown" dropdown with "onboarding_mailing_build_dropdown"
    When User fill "onboarding_mailing_address_textfield" with "valid_address" 
    And User fill "onboarding_mailing_no" with "house_number" 
    And User swipe up until found "onboarding_mailing_zipcode_dropdown"
    And User select "onboarding_mailing_province_dropdown" dropdown with "onboarding_mailing_province_dropdown"
    And User select "onboarding_mailing_city_dropdown" dropdown with "onboarding_mailing_city_dropdown"
    And User select "onboarding_mailing_districts_dropdown" dropdown with "onboarding_mailing_districts_dropdown"
    And User select "onboarding_mailing_kelurahan_dropdown" dropdown with "onboarding_mailing_kelurahan_dropdown"
    And User select "onboarding_mailing_zipcode_dropdown" dropdown with "onboarding_mailing_zipcode_dropdown"
    And User click "profile_and_setting_save_button"
    And User click "profile_and_setting_submit_button"
    Then "profile_and_setting_password_field" will be displayed

  @android @ios @uispecific @continuous @R3_6 
  Scenario:JENI4300-C102180-[Scenario] Enabling Submit Button on Input Your Current Password Screen 2
    And User fill "profile_and_setting_password_field" with "incorrect_password_4"
    And User click "profile_and_setting_submit_button"
    And User check snackbar with static text "card_center_change_pin_wrong_password"
    #Then "top_notification_snackbar" will be displayed

  @android @ios @uispecific @continuous @R3_6 
  Scenario:JENI4300-C102180-[Scenario] Enabling Submit Button on Input Your Current Password Screen 3
    And User fill "profile_and_setting_password_field" with "authentication_active_password_account"
    And User click "profile_and_setting_submit_button"
    And "profile_and_setting_edit_profile_view" will be displayed
    Then "top_notification_snackbar" will be displayed

  @android @ios @uispecific @R3_6 
  Scenario:JENI4300-C102181-[Scenario] Back button 1
    Given User is on profile and setting page in English language with "flexi_saver_cif_2"
    And User click "profile_and_setting_edit_button"
    And User swipe up until found "profile_and_setting_mailing_address_button"
    When User click "profile_and_setting_mailing_address_button"
    And User select "onboarding_mailing_build_dropdown" dropdown with "onboarding_mailing_build_dropdown"
    When User fill "onboarding_mailing_address_textfield" with "valid_address" 
    And User fill "onboarding_mailing_no" with "house_number" 
    And User fill "onboarding_mailing_rt_rw" with "save_it_dream_saver_empty"
    And User swipe up until found "onboarding_mailing_zipcode_dropdown"
    And User select "onboarding_mailing_province_dropdown" dropdown with "onboarding_mailing_province_dropdown"
    And User select "onboarding_mailing_city_dropdown" dropdown with "onboarding_mailing_city_dropdown"
    And User select "onboarding_mailing_districts_dropdown" dropdown with "onboarding_mailing_districts_dropdown"
    And User select "onboarding_mailing_kelurahan_dropdown" dropdown with "onboarding_mailing_kelurahan_dropdown"
    And User select "onboarding_mailing_zipcode_dropdown" dropdown with "onboarding_mailing_zipcode_dropdown"
    And User click "profile_and_setting_save_button"
    And User click "card_center_back_menu"
    Then "profile_and_setting_save_button" will be displayed

  @android @ios @uispecific @continuous @R3_6
  Scenario:JENI4300-C102181-[Scenario] Back button 2
    And User click "back_button"
    And User click "profile_and_setting_discard_button"
    Then "profile_and_setting_edit_profile_view" will be displayed

  @android @ios @endtoend @R3_6
  Scenario:JENI4725-C102218-[Scenario] Go to Edit Profile screen
    Given User is on profile and setting page in English language with "authentication_active_account"
    And User click "profile_and_setting_edit_button"
    Then "profile_and_setting_edit_profile_view" will be displayed

  @android @ios @uispecific @R3_6
  Scenario:JENI4725-C102238-[Scenario] User can go back by clicking Back button
    Given User is on profile and setting page in English language with "authentication_active_account"
    And User click "profile_and_setting_edit_button"
    And User fill "onboarding_success_page_nickname_textfield" with "profile_and_setting_change_limit_value_1"
    When User click "onboarding_back_button"
    And User click "profile_and_setting_discard_button"
    And User click "profile_and_setting_edit_button"
    Then User expect "onboarding_success_page_nickname_textfield" is not equal with "profile_and_setting_change_limit_value_1"

  @android @ios @uispecific @R3_6
  Scenario:JENI4725-C102238-[Scenario] User can go back by clicking Back button
    Given User is on profile and setting page in English language with "authentication_active_account"
    And User click "profile_and_setting_edit_button"
    And User fill "onboarding_success_page_nickname_textfield" with "profile_and_setting_change_limit_value_1"
    When User click "onboarding_back_button"
    And User click "profile_and_setting_cancel_button"
    Then User expect "onboarding_success_page_nickname_textfield" equal with "profile_and_setting_change_limit_value_1"

  @android @ios @uispecific @R3_6
  Scenario:JENI4725-C102219-[Scenario] Go to KTP Details screen
    Given User is on profile and setting page in English language with "authentication_active_account"
    And User click "profile_and_setting_edit_button"
    And User swipe up until found "profile_and_setting_ktp_detail_button"
    When User click "profile_and_setting_ktp_detail_button"
    Then "profile_and_setting_edit_ktp_detail_view" will be displayed

  @android @ios @uispecific @R3_6
  Scenario:JENI4725-C102220-[Scenario] Go to NPWP & Regulatory Detail screen
    Given User is on profile and setting page in English language with "authentication_active_account"
    And User click "profile_and_setting_edit_button"
    And User swipe up until found "profile_and_setting_npwp_detail_button"
    When User click "profile_and_setting_npwp_detail_button"
    Then "profile_and_setting_edit_npwp_detail_view" will be displayed

  @android @ios @uispecific @R3_6
  Scenario:JENI4725-C102236-[Scenario] Go to Mailing Address screen
    Given User is on profile and setting page in English language with "authentication_active_account"
    And User click "profile_and_setting_edit_button"
    And User swipe up until found "profile_and_setting_mailing_address_button"
    When User click "profile_and_setting_mailing_address_button"
    Then "onboarding_mailing_build_dropdown" will be displayed

  @android @ios @uispecific @R3_6
  Scenario:JENI6055-C99159-[Scenario] Go to NPWP & Regulatory Details via Edit Profile
    Given User is on profile and setting page in English language with "flexi_saver_cif_2"
    When User click "profile_and_setting_edit_button"
    And User swipe up until found "profile_and_setting_npwp_detail_button"
    When User click "profile_and_setting_npwp_detail_button"
    Then "profile_and_setting_edit_npwp_detail_view" will be displayed

  @android @ios @uispecific @R3_6
  Scenario:JENI6055-C99160-[Scenario] Go to NPWP & Regulatory detail from Profile(With BO)
    Given User is on profile and setting page in English language with "profile_and_setting_active_account_with_bo_over_min_wage"
    When User click "profile_and_setting_edit_button"
    And User swipe up until found "profile_and_setting_npwp_detail_button"
    When User click "profile_and_setting_npwp_detail_button"
    Then "profile_and_setting_edit_npwp_detail_view" will be displayed

  @android @ios @uispecific @R3_6
  Scenario:JENI6055-C99160-[Scenario] Go to NPWP & Regulatory detail from Profile(Without BO)
    Given User is on profile and setting page in English language with "profile_and_setting_active_account_without_npwp_less_min_wage"
    When User click "profile_and_setting_edit_button"
    And User swipe up until found "profile_and_setting_npwp_detail_button"
    When User click "profile_and_setting_npwp_detail_button"
    Then "profile_and_setting_edit_npwp_detail_view" will be displayed

  # #blocked may be for temporary, maybe
  # @android @ios @uispecific @R3_6
  # Scenario:JENI6055/8506-C99161#C133612-[Scenario] Uploading NPWP/ BO NPWP via Take picture(hasn't uploaded their NPWP)
  #   Given User is on profile and setting page in English language with "profile_and_setting_active_account_with_not_uploaded_npwp"
  #   When User click "profile_and_setting_edit_button"
  #   And User swipe up until found "profile_and_setting_npwp_detail_button"
  #   When User click "profile_and_setting_npwp_detail_button"
  #   And User click "onboarding_question_npwp_button"
  #   And User click "onboarding_question_choose_camera"
  #   And User click "profile_and_setting_discard_button"
  #   And User click "onboarding_camera_button"
  #   And User click "onboarding_retake_photo_button"
  #   And User click "onboarding_camera_button"
  #   When User click "onboarding_confirm_photo_button"
  #   Then "profile_and_setting_edit_profile_view" will be displayed
  #   And User expect "top_notification_snackbar" equal with "profile_and_setting_npwp_upload_success"

  # #blocked may be for temporary, maybe
  # @android @ios @uispecific @R3_6
  # Scenario:JENI6055/8506-C99161#C133612-[Scenario] Uploading NPWP/ BO NPWP via Take picture(hasn't uploaded their BO's NPWP)
  #   Given User is on profile and setting page in English language with "profile_and_setting_active_account_with_not_uploaded_bo"
  #   When User click "profile_and_setting_edit_button"
  #   And User swipe up until found "profile_and_setting_npwp_detail_button"
  #   When User click "profile_and_setting_npwp_detail_button"
  #   And User click "onboarding_question_npwp_button"
  #   And User click "onboarding_question_choose_camera"
  #   And User click "profile_and_setting_discard_button"
  #   And User click "onboarding_camera_button"
  #   And User click "onboarding_retake_photo_button"
  #   And User click "onboarding_camera_button"
  #   When User click "onboarding_confirm_photo_button"
  #   Then "profile_and_setting_edit_profile_view" will be displayed
  #   And User expect "top_notification_snackbar" equal with "profile_and_setting_npwp_upload_success"

  # #blocked may be for temporary, maybe
  # @android @ios @uispecific @R3_6
  # Scenario:JENI6055/8506-C99162#C133612-[Scenario] Uploading NPWP/ BO NPWP via Take picture(hasn't uploaded their NPWP)
  #   Given User is on profile and setting page in English language with "profile_and_setting_active_account_with_not_uploaded_npwp"
  #   When User click "profile_and_setting_edit_button"
  #   And User swipe up until found "profile_and_setting_npwp_detail_button"
  #   When User click "profile_and_setting_npwp_detail_button"
  #   And User click "onboarding_question_npwp_button"
  #   And User click "onboarding_question_choose_gallery"
  #   And User click "onboarding_question_choose_gallery_pic"
  #   Then "profile_and_setting_edit_profile_view" will be displayed
  #   And User expect "top_notification_snackbar" equal with "profile_and_setting_npwp_upload_success"

  # #blocked may be for temporary, maybe
  # @android @ios @uispecific @R3_6
  # Scenario:JENI6055/8506-C99162#C133612-[Scenario] Uploading NPWP/ BO NPWP via Take picture(hasn't uploaded their BO's NPWP)
  #   Given User is on profile and setting page in English language with "profile_and_setting_active_account_with_not_uploaded_bo"
  #   When User click "profile_and_setting_edit_button"
  #   And User swipe up until found "profile_and_setting_npwp_detail_button"
  #   When User click "profile_and_setting_npwp_detail_button"
  #   And User click "onboarding_question_npwp_button"
  #   And User click "onboarding_question_choose_gallery"
  #   And User click "onboarding_question_choose_gallery_pic"
  #   Then "profile_and_setting_edit_profile_view" will be displayed
  #   And User expect "top_notification_snackbar" equal with "profile_and_setting_npwp_upload_success"

  # #blocked may be for temporary, maybe
  # @android @ios @uispecific @R3_6
  # Scenario:JENI6055/8506-C99163#C133612-[Scenario] Uploading NPWP/ BO NPWP via Take picture(has NPWP)
  #   Given User is on profile and setting page in English language with "flexi_saver_cif_2"
  #   When User click "profile_and_setting_edit_button"
  #   And User swipe up until found "profile_and_setting_npwp_detail_button"
  #   When User click "profile_and_setting_npwp_detail_button"
  #   And User click "onboarding_question_npwp_button"
  #   And User click "onboarding_question_choose_camera"
  #   And User click "profile_and_setting_discard_button"
  #   And User click "onboarding_camera_button"
  #   And User click "onboarding_retake_photo_button"
  #   And User click "onboarding_camera_button"
  #   When User click "onboarding_confirm_photo_button"
  #   Then "profile_and_setting_edit_profile_view" will be displayed
  #   And User expect "top_notification_snackbar" equal with "profile_and_setting_npwp_upload_success"

  # #blocked may be for temporary, maybe
  # @android @ios @uispecific @R3_6
  # Scenario:JENI6055/8506-C99163#C133612-[Scenario] Uploading NPWP/ BO NPWP via Take picture(has BO's)
  #   Given User is on profile and setting page in English language with "profile_and_setting_active_account_with_bo_over_min_wage"
  #   When User click "profile_and_setting_edit_button"
  #   And User swipe up until found "profile_and_setting_npwp_detail_button"
  #   When User click "profile_and_setting_npwp_detail_button"
  #   And User click "onboarding_question_npwp_button"
  #   And User click "onboarding_question_choose_camera"
  #   And User click "profile_and_setting_discard_button"
  #   And User click "onboarding_camera_button"
  #   And User click "onboarding_retake_photo_button"
  #   And User click "onboarding_camera_button"
  #   When User click "onboarding_confirm_photo_button"
  #   Then "profile_and_setting_edit_profile_view" will be displayed
  #   And User expect "top_notification_snackbar" equal with "profile_and_setting_npwp_upload_success"

  # #blocked may be for temporary, maybe
  # @android @ios @uispecific @R3_6
  # Scenario:JENI6055/8506-C99163#C133612-[Scenario] Uploading NPWP/ BO NPWP via Take picture(has NPWP)
  #   Given User is on profile and setting page in English language with "flexi_saver_cif_2"
  #   When User click "profile_and_setting_edit_button"
  #   And User swipe up until found "profile_and_setting_npwp_detail_button"
  #   When User click "profile_and_setting_npwp_detail_button"
  #   And User click "onboarding_question_npwp_button"
  #   And User click "onboarding_question_choose_gallery"
  #   And User click "onboarding_question_choose_gallery_pic"
  #   Then "profile_and_setting_edit_profile_view" will be displayed
  #   And User expect "top_notification_snackbar" equal with "profile_and_setting_npwp_upload_success"

  # #blocked may be for temporary, maybe
  # @android @ios @uispecific @R3_6
  # Scenario:JENI6055/8506-C99163#C133612-[Scenario] Uploading NPWP/ BO NPWP via Take picture(has BO's)
  #   Given User is on profile and setting page in English language with "profile_and_setting_active_account_with_bo_over_min_wage"
  #   When User click "profile_and_setting_edit_button"
  #   And User swipe up until found "profile_and_setting_npwp_detail_button"
  #   When User click "profile_and_setting_npwp_detail_button"
  #   And User click "onboarding_question_npwp_button"
  #   And User click "onboarding_question_choose_gallery"
  #   And User click "onboarding_question_choose_gallery_pic"
  #   Then "profile_and_setting_edit_profile_view" will be displayed
  #   And User expect "top_notification_snackbar" equal with "profile_and_setting_npwp_upload_success"

  @android @ios @uispecific @R3_6
  Scenario:JENI4401-C102298-[Scenario] Back button
    Given User is on profile and setting page in English language with "flexi_saver_cif_2"
    And User click "profile_and_setting_edit_button"
    And User fill "profile_and_setting_phone_field" with random "valid_phone_number"
    When User click "onboarding_back_button"
    And User click "profile_and_setting_discard_button"
    Then "profile_and_setting_profile_container" will be displayed

  @android @ios @uispecific @R3_6
  Scenario:JENI4401-C102298-[Scenario] Back button
    Given User is on profile and setting page in English language with "flexi_saver_cif_2"
    And User click "profile_and_setting_edit_button"
    And User fill "profile_and_setting_phone_field" with random "valid_phone_number"
    And User click "profile_and_setting_save_button"
    When User click "card_center_back_menu"
    Then "profile_and_setting_edit_profile_view" will be displayed

  @android @ios @uispecific @R3_6
  Scenario:JENI1141-C84783-[Scenario] Go to Edit Profile Screen
    Given User is on profile and setting page in English language with "flexi_saver_cif_2"
    When User click "profile_and_setting_edit_button"
    Then "profile_and_setting_profile_container" will be displayed

  @continuous @android @ios @uidatabound @R3_6
  Scenario:JENI1141-C84787-[Scenario] Enabling Submit Button on Input Your Current Password Screen
    When User click "profile_and_setting_settings_button"
    And User click "profile_and_setting_change_password_button"
    And User fill "authentication_forgot_pin_password_textfield" with "profile_account_old"
    And User fill "profile_and_setting_new_password_field" with "profile_account_new"
    And User fill "profile_and_setting_confirm_password_field" with "profile_account_new"
    And User click "onboarding_next_button"
    Then "profile_and_setting_profile_container" will be displayed

  #take out edit profile
  @android @ios @endtoend @R3_6
  Scenario:JENI1141-C84784-[Scenario] Change Email
    Given User is on profile and setting page in English language with "flexi_saver_cif_2"
    When User click "profile_and_setting_edit_button"
    And User fill "profile_and_setting_email_field" with random "flexi_saver_cif_2"
    And User click "profile_and_setting_save_button"
    And User fill "onboarding_password_textfield" with "correct_password"
    And User fill "onboarding_confirm_password_textfield" with "correct_password"
    And User click "profile_and_setting_submit_button"
    Then "profile_and_setting_profile_container" will be displayed

  #take out edit profile
  @android @ios @uispecific @R3_6
  Scenario:JENI1141-C84799-[Scenario] Back button
    Given User is on edit profile page in English language with "flexi_saver_cif_2"
    And User fill "profile_and_setting_email_field" with random "flexi_saver_cif_2"
    And User click "profile_and_setting_save_button"
    When User click "onboarding_back_button"
    Then "profile_and_setting_edit_profile_view" will be displayed
    When User click "onboarding_back_button"
    Then "profile_and_setting_profile_container" will be displayed

  @android @ios @endtoend @R3_7
  Scenario:JENI5808-C140980-[Scenario] User access Valdo KYC via Onboarding
    Given User is on onboarding success page
    And User click "onboarding_activate_now_button"
    Then "onboarding_valdo_page_content" will be displayed

  @android @ios @endtoend @R3_7
  Scenario:JENI5808-C140980-[Scenario] User access Valdo KYC via Onboarding
    Given User is logged in with cif "awards_inactive_account"
    And User click "onboarding_meet_****_crew"  
    Then "onboarding_valdo_page_content" will be displayed

  @android @ios @uispecific @R3_7
  Scenario:JENI4319-C102299-[Scenario] Go to Transaction Authentication Screen
    Given User is on profile and setting page in English language with "flexi_saver_cif_2"
    When User click "profile_and_setting_settings_button"
    And User click "profile_and_setting_transaction_limit" 
    Then "profile_and_setting_transaction_limit_container" will be displayed

  @android @ios @uispecific @R3_7
  Scenario:JENI4319-C102300-[Scenario] Changing Transaction Authentication Limit 1
    Given User is on profile and setting page in English language with "authentication_active_account"
    When User click "profile_and_setting_settings_button"
    And User click "profile_and_setting_transaction_limit_amount" 
    And User fill "profile_and_setting_change_limit_field" with "profile_and_setting_change_limit_value_1"
    And User click "profile_and_setting_change_limit_button"
    And User fill "profile_and_setting_password_field" with "authentication_active_password_account"
    And User click "profile_and_setting_submit_button"
    And User expect "top_notification_snackbar" equal with "profile_and_setting_success_change_limit"

  @android @ios @uispecific @R3_7
  Scenario:JENI4319-C102300-[Scenario] Changing Transaction Authentication Limit 2
    Given User is on profile and setting page in English language with "authentication_active_account"
    When User click "profile_and_setting_settings_button"
    And User click "profile_and_setting_transaction_limit_amount" 
    And User fill "profile_and_setting_change_limit_field" with "profile_and_setting_change_limit_value_2"
    And User click "profile_and_setting_change_limit_button"
    And User fill "profile_and_setting_password_field" with "authentication_active_password_account"
    And User click "profile_and_setting_submit_button"
    And User expect "top_notification_snackbar" equal with "profile_and_setting_success_change_limit"

  @android @ios @uispecific @R3_7
  Scenario:JENI4319-C102300-[Scenario] Changing Transaction Authentication Limit 3
    Given User is on profile and setting page in English language with "authentication_active_account"
    When User click "profile_and_setting_settings_button"
    And User click "profile_and_setting_transaction_limit_amount" 
    And User fill "profile_and_setting_change_limit_field" with "profile_and_setting_change_limit_value_3"
    And User click "profile_and_setting_change_limit_button"
    And User fill "profile_and_setting_password_field" with "authentication_active_password_account"
    And User click "profile_and_setting_submit_button"
    And User expect "top_notification_snackbar" equal with "profile_and_setting_success_change_limit"

  @android @ios @uispecific @R3_7
  Scenario:JENI4319-C102300-[[Scenario] Changing Transaction Authentication Limit 4
    Given User is on profile and setting page in English language with "authentication_active_account"
    When User click "profile_and_setting_settings_button"
    And User click "profile_and_setting_transaction_limit_amount" 
    And User fill "profile_and_setting_change_limit_field" with "profile_and_setting_change_limit_value_4"
    And User click "profile_and_setting_change_limit_button"
    And User fill "profile_and_setting_password_field" with "authentication_active_password_account"
    And User click "profile_and_setting_submit_button"
    And User expect "top_notification_snackbar" equal with "profile_and_setting_success_change_limit"

  @android @ios @uispecific @R3_7
  Scenario:JENI4319-C102301-[Scenario] Enabling Submit Button on Input Your Current Password Screen 1
    Given User is on profile and setting page in English language with "authentication_active_account"
    When User click "profile_and_setting_settings_button"
    And User click "profile_and_setting_transaction_limit_amount" 
    And User fill "profile_and_setting_change_limit_field" with "profile_and_setting_change_limit_value_1"
    And User click "profile_and_setting_change_limit_button"
    And User fill "profile_and_setting_password_field" with "incorrect_password_5"
    And User click "profile_and_setting_submit_button"
    And "profile_and_setting_password_field" will be displayed

  @android @ios @uispecific @continuous @R3_7
  Scenario:JENI4319-C102301#C141218-[Scenario] Enabling Submit Button on Input Your Current Password Screen 2
    And User fill "profile_and_setting_password_field" with "incorrect_password_1"
    And User click "profile_and_setting_submit_button"
    And "profile_and_setting_password_field" will be displayed

  @android @ios @uispecific @continuous @R3_7
  Scenario:JENI4319-C102301#C141218-[Scenario] Enabling Submit Button on Input Your Current Password Screen 3
    And User fill "profile_and_setting_password_field" with "incorrect_password_2"
    And User click "profile_and_setting_submit_button"
    And "profile_and_setting_password_field" will be displayed

  @android @ios @uispecific @continuous @R3_7
  Scenario:JENI4319-C102301#C141218-[Scenario] Enabling Submit Button on Input Your Current Password Screen 4
    And User fill "profile_and_setting_password_field" with "incorrect_password_3"
    And User click "profile_and_setting_submit_button"
    And "profile_and_setting_password_field" will be displayed

  @android @ios @uispecific @continuous @R3_7
  Scenario:JENI4319-C102301#C141218-[Scenario] Enabling Submit Button on Input Your Current Password Screen 5
    And User fill "profile_and_setting_password_field" with "incorrect_password_4"
    And User click "profile_and_setting_submit_button"
    And "profile_and_setting_password_field" will be displayed

  @android @ios @uispecific @continuous @R3_7
  Scenario:JENI4319-[Scenario] Enabling Submit Button on Input Your Current Password Screen 6
    And User fill "profile_and_setting_password_field" with "authentication_active_password_account"
    And User click "profile_and_setting_submit_button"
    And User expect "top_notification_snackbar" equal with "profile_and_setting_success_change_limit"

  @android @ios @uispecific @R3_7
  Scenario:JENI4319-C102300-[Scenario] Changing Transaction Authentication Limit 5
    Given User is on profile and setting page in English language with "authentication_active_account"
    When User click "profile_and_setting_settings_button"
    And User click "profile_and_setting_transaction_limit_amount" 
    And User fill "profile_and_setting_change_limit_field" with "profile_and_setting_change_limit_value_5"
    And User click "profile_and_setting_change_limit_button"
    And User fill "profile_and_setting_password_field" with "profile_and_setting_passowrd_wrong"
    And User click "profile_and_setting_submit_button"
    And User expect "top_notification_snackbar" equal with "profile_and_setting_passowrd_wrong"

  @android @ios @uispecific @R3_7
  Scenario:JENI4319-C102302#C141219-[Scenario] Back button 1
    Given User is on profile and setting page in English language with "authentication_active_account"
    When User click "profile_and_setting_settings_button"
    And User click "profile_and_setting_transaction_limit_amount"
    And User fill "profile_and_setting_change_limit_field" with "profile_and_setting_change_limit_value_5"
    And User click "profile_and_setting_change_limit_button"
    And User click "onboarding_otp_back_button" 
    Then "profile_and_setting_transaction_limit_container" will be displayed

  @android @ios @uispecific @continuous @R3_7
  Scenario:JENI4319-C102302-[Scenario] Back button 2
    And User click "onboarding_otp_back_button"
    Then "profile_and_setting_settings_container" will be displayed

  @android @ios @uispecific @R3_7
  Scenario:JENI4319-C141217-[Scenario] Cancel to change transaction limit
    Given User is on profile and setting page in English language with "authentication_active_account"
    When User click "profile_and_setting_settings_button"
    And User click "profile_and_setting_transaction_limit_amount" 
    And User fill "profile_and_setting_change_limit_field" with "profile_and_setting_change_limit_value_5"
    And User click "back_button"
    And User click "profile_and_setting_discard_button"
    Then User expect "profile_and_setting_transaction_limit_amount" doesn't contains "profile_and_setting_change_limit_value_5"
    And "profile_and_setting_settings_button" will be displayed

  @android @ios @uispecific @R3_7
  Scenario:JENI4319-C141217-[Scenario] Cancel to change transaction limit
    Given User is logged in with cif "authentication_active_account"
    And User change language to "language"
    And User access send it from side menu
    And User click "send_it_contact_first"
    And User click "send_it_contact_dropdown_selected_account"
    And User click "send_it_contact_dropdown_second"
    When User fill "send_it_individual_page_amount" with "flexi_saver_add_amount_20k"
    And User click "send_it_individual_page_next"
    And User click "send_it_individual_confirm_page_send"
    Then User expect "profile_and_setting_password_field" doesn't exist

  @android @ios @uispecific @R3_7
  Scenario:JENI4319-C141217-[Scenario] Cancel to change transaction limit
    Given User is logged in with cif "authentication_active_account"
    And User change language to "language"
    And User access send it from side menu
    And User click "send_it_contact_first"
    And User click "send_it_contact_dropdown_selected_account"
    And User click "send_it_contact_dropdown_second"
    When User fill "send_it_individual_page_amount" with "split_bill_input_amount_one_million"
    And User click "send_it_individual_page_next"
    And User click "send_it_individual_confirm_page_send"
    Then "profile_and_setting_password_field" will be displayed

  @android @ios @uispecific @R3_7
  Scenario:JENI8912-C141214-[Scenario] Change language in setting to english
    And User is logged in with cif "authentication_active_account"
    And User wait 3 seconds
    And User click "dashboard_hamburger_icon"
    And User swipe down until found "profile_and_setting_menu"
    And User wait 5 seconds
    And User click "profile_and_setting_menu"
    And User wait 5 seconds
    When User click "profile_and_setting_settings_button"
    And User check app language is "language"
    And User expect "profile_and_setting_language" equal with "language_en"

  @android @ios @uispecific @continuous @R3_7
  Scenario:JENI8912-C141213-[Scenario] Change language in setting to bahasa
    And User check app language is "language_id"
    And User expect "profile_and_setting_language" equal with "language_id"

  @android @ios @uispecific @R3_7
  Scenario:JENI1149-C117073-[Scenario] Go to Authorized Device Screen
    Given User is logged in with cif "authentication_active_account"
    And User wait 3 seconds
    And User click "dashboard_hamburger_icon"
    And User swipe down until found "profile_and_setting_menu"
    And User wait 5 seconds
    And User click "profile_and_setting_menu"
    And User wait 5 seconds
    When User click "profile_and_setting_settings_button"
    And User swipe up until found "profile_and_setting_authorized_button"
    And User click "profile_and_setting_authorized_button"
    Then "profile_and_setting_authorized_container" will be displayed

  @android @ios @uispecific @R3_7
  Scenario:JENI1149-C117075-[Scenario] Change Primary Device
    Given User is logged in with cif "authentication_active_account"
    And User change language to "language"
    And User wait 3 seconds
    And User click "dashboard_hamburger_icon"
    And User swipe down until found "profile_and_setting_menu"
    And User wait 5 seconds
    And User click "profile_and_setting_menu"
    And User wait 5 seconds
    When User click "profile_and_setting_settings_button"
    And User swipe up until found "profile_and_setting_authorized_button"
    And User click "profile_and_setting_authorized_button"
    And User click "profile_and_setting_authorized_device_list_2_three_dots"
    And User click "profile_and_setting_authorized_set_as_primary_button"
    And User click "profile_and_setting_authorized_proceed_button"
    And User fill "profile_and_setting_password_field" with "authentication_active_password_account"
    And User click "profile_and_setting_submit_button"
    Then User check snackbar with static text "profile_and_setting_set_as_primary_success_notification"
    And "profile_and_setting_authorized_container" will be displayed
    And User click "profile_and_setting_authorized_device_list_1_three_dots"
    And User click "profile_and_setting_authorized_set_as_primary_button"
    And User click "profile_and_setting_authorized_proceed_button"
    And User fill "profile_and_setting_password_field" with "authentication_active_password_account"
    And User click "profile_and_setting_submit_button"
    Then User check snackbar with static text "profile_and_setting_set_as_primary_success_notification"
    And "profile_and_setting_authorized_container" will be displayed

  @android @ios @uispecific @R3_7
  Scenario:JENI1149-C117076-[Scenario] Remove/Delete/Unlink device
    Given User is logged in with cif "active_user"
    And User change language to "language"
    And User wait 3 seconds
    And User click "dashboard_hamburger_icon"
    And User swipe down until found "profile_and_setting_menu"
    And User wait 5 seconds
    And User click "profile_and_setting_menu"
    And User wait 5 seconds
    When User click "profile_and_setting_settings_button"
    And User swipe up until found "profile_and_setting_authorized_button"
    And User click "profile_and_setting_authorized_button"
    And User click "profile_and_setting_authorized_device_list_2_three_dots"
    And User click "profile_and_setting_authorized_remove_button"
    And User click "profile_and_setting_authorized_ok_button"
    And User fill "profile_and_setting_password_field" with "authentication_active_password_account"
    And User click "profile_and_setting_submit_button"
    Then User check snackbar with static text "profile_and_setting_delete_success_notification"
    And "profile_and_setting_authorized_container" will be displayed

  @android @ios @uispecific @R3_7
  Scenario:JENI1149-C117077-[Scenario] Remove/Delete/Unlink Primary Device
    Given User is logged in with cif "authentication_active_account"
    And User change language to "language"
    And User wait 3 seconds
    And User click "dashboard_hamburger_icon"
    And User swipe down until found "profile_and_setting_menu"
    And User wait 5 seconds
    And User click "profile_and_setting_menu"
    And User wait 5 seconds
    When User click "profile_and_setting_settings_button"
    And User swipe up until found "profile_and_setting_authorized_button"
    And User click "profile_and_setting_authorized_button"
    And User click "profile_and_setting_authorized_device_list_1_three_dots"
    And User click "profile_and_setting_authorized_remove_button"
    And User click "profile_and_setting_authorized_new_primary_device_list_1"
    And User fill "profile_and_setting_password_field" with "authentication_active_password_account"
    And User click "profile_and_setting_submit_button"
    Then User check snackbar with static text "profile_and_setting_set_as_primary_success_notification"

  @android @ios @uispecific @R3_7
  Scenario:JENI1149-C117078-[Scenario] Delete device when there are no other device left
    Given User is logged in with cif "authentication_active_account"
    And User change language to "language"
    And User wait 3 seconds
    And User click "dashboard_hamburger_icon"
    And User swipe down until found "profile_and_setting_menu"
    And User wait 5 seconds
    And User click "profile_and_setting_menu"
    And User wait 5 seconds
    When User click "profile_and_setting_settings_button"
    And User swipe up until found "profile_and_setting_authorized_button"
    And User click "profile_and_setting_authorized_button"
    And User click "profile_and_setting_authorized_device_list_1_three_dots"
    And User click "profile_and_setting_authorized_remove_button"
    And User click "profile_and_setting_authorized_delete_primary_ok_button"
    And User click "profile_and_setting_submit_button"
    Then "Pilot_Login_Button_title" will be displayed

  @android @ios @uispecific @R3_7
  Scenario:JENI1149-C117079-[Scenario] Delete Active Device
    Given User is logged in with cif "authentication_active_account"
    And User change language to "language"
    And User wait 3 seconds
    And User click "dashboard_hamburger_icon"
    And User swipe down until found "profile_and_setting_menu"
    And User wait 5 seconds
    And User click "profile_and_setting_menu"
    And User wait 5 seconds
    When User click "profile_and_setting_settings_button"
    And User swipe up until found "profile_and_setting_authorized_button"
    And User click "profile_and_setting_authorized_button"
    And User click "profile_and_setting_authorized_device_list_1_three_dots"
    And User click "profile_and_setting_authorized_remove_button"
    And User click "profile_and_setting_authorized_ok_button"
    And User fill "profile_and_setting_password_field" with "authentication_active_password_account"
    And User click "profile_and_setting_submit_button"
    Then "Pilot_Login_Button_title" will be displayed