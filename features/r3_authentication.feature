@r3_authentication_cardcenter
Feature: Release 3 - AUTHENTICATION module

  #Authentication
  @android @ios @endtoend
  Scenario:JENI3320-C75804-[Functionality][Native App] User is able to insert 'Email' and 'Password'
    Given User is on authentication page
    When User fill "authentication_email_textfield" with "authentication_active_email_account"
    And User fill "authentication_password_textfield" with "authentication_active_password_account"
    And User click "onboarding_next_button"
    Then "authentication_pin_numpad" will be displayed
    And "onboarding_otp_notification" will be displayed

  @continuous @android @ios @endtoend
  Scenario:JENI2120-C67728-[Functionality] User login with wrong PIN
    And User kill app and reopen app
    And User fill "incorrect_pin" for OTP or PIN
    Then User expect "onboarding_otp_notification" equal with "incorrect_pin_notification"

  @continuous @android @ios @endtoend
  Scenario:JENI2120-C70691-[Functionality][Active User] Insert incorrect PIN once
    # And User click "dashboard_hamburger_icon"
    # And User swipe up until found "logout_menu"
    # And User click "logout_menu"
    # And User fill "incorrect_pin" for OTP or PIN
    Then User expect "incorrect_pin_notification_number_1" equal with "incorrect_pin_notification_number_1"

  @continuous @android @ios @endtoend
  Scenario:JENI2120-C75738-[Functionality][Active User] Insert incorrect PIN twice
    And User fill "incorrect_pin" for OTP or PIN
    Then User expect "incorrect_pin_notification_number_2" equal with "incorrect_pin_notification_number_2"

  @continuous @android @ios @endtoend
  Scenario:JENI2120-C75739-[Functionality][Active User] Insert incorrect PIN 3 times
    And User fill "incorrect_pin" for OTP or PIN
    Then User expect "incorrect_pin_notification_number_3" equal with "incorrect_pin_notification_number_3"

  @continuous @android @ios @endtoend
  Scenario:JENI2120-C75740-[Functionality][Active User] Insert incorrect PIN 4 times
    And User fill "incorrect_pin" for OTP or PIN
    Then User expect "incorrect_pin_notification_number_4" equal with "incorrect_pin_notification_number_4"

  @continuous @android @ios @uispecific
  Scenario:JENI2120-C70692-[Functionality][Active User] Insert incorrect PIN 5 times
    And User fill "incorrect_pin" for OTP or PIN
    Then User expect "incorrect_pin_notification_number_5" equal with "incorrect_pin_notification_number_5"

  @android @ios @endtoend
  Scenario:JENI2120-C75741-[Functionality][Inactive User] Insert incorrect PIN once
    Given User login using "authentication_inactive_account" in English then log out
    And User fill "incorrect_pin" for OTP or PIN
    Then User expect "incorrect_pin_notification_number_1" equal with "incorrect_pin_notification_number_1"

  @continuous @android @ios @endtoend
  Scenario:JENI2120-C75742-[Functionality][Inactive User] Insert incorrect PIN twice
    When User fill "incorrect_pin" for OTP or PIN
    Then User expect "incorrect_pin_notification_number_2" equal with "incorrect_pin_notification_number_2"

  @continuous @android @ios @endtoend
  Scenario:JENI2120-C75743-[Functionality][Inactive User] Insert incorrect PIN 3 times
    And User fill "incorrect_pin" for OTP or PIN
    Then User expect "incorrect_pin_notification_number_3" equal with "incorrect_pin_notification_number_3"

  @continuous @android @ios @endtoend
  Scenario:JENI2120-C75744-[Functionality][Inactive User] Insert incorrect PIN 4 times
    And User fill "incorrect_pin" for OTP or PIN
    Then User expect "incorrect_pin_notification_number_4" equal with "incorrect_pin_notification_number_4"

  @continuous @android @ios @uispecific
  Scenario:JENI2120-C75745-[Functionality][Inactive User] Insert incorrect PIN 5 times
    And User fill "incorrect_pin" for OTP or PIN
    Then User expect "incorrect_pin_notification_number_5" equal with "incorrect_pin_notification_number_5"

  @android @ios @uispecific
  Scenario:JENI2120-C70682-[Functionality][Inactive User] Insert correct PIN
    Given User login using "authentication_inactive_account" in English then log out
    When User fill "correct_pin" for OTP or PIN 
    Then "later_button" will be displayed

  @continuous @android @ios @uispecific
  Scenario:JENI2120-C67724-[Functionality] Login using PIN Only
    When User fill "correct_pin" for OTP or PIN 
    Then "dashboard_hamburger_icon" will be displayed

  @continuous @android @ios @uispecific
  Scenario:JENI2124-C70196-[Functionality] Log out from the application  
    When User click "dashboard_hamburger_icon"
    And User swipe up until found "logout_menu"
    And User click "logout_menu"
    Then User expect "authentication_login_pin_page" equal with "authentication_login_pin_page"

  @android @ios @uispecific
  Scenario:JENI2120-C70352-[Functionality][Active User] Insert correct PIN
    Given User make sure is on login with PIN page using "authentication_inactive_account"
    When User fill "correct_pin" for OTP or PIN 
    Then "dashboard_hamburger_icon" will be displayed
    Then "dashboard_account_active_button" will be displayed

  @android @ios @endtoend
  Scenario:JENI3320-C75804-[Functionality][Native App] User is able to insert 'Email' and 'Password'
    Given User is on authentication page
    When User fill "authentication_email_textfield" with "authentication_active_email_account"
    And User fill "authentication_password_textfield" with "authentication_active_password_account"
    And User click "onboarding_next_button"
    Then "authentication_pin_numpad" will be displayed
    And "onboarding_otp_notification" will be displayed

  @android @ios @endtoend
  Scenario:JENI3320-C75753-[Functionality][Native App] User inserts incorrect password once(BLOCKED)
    Given User is on authentication page
    When User fill "authentication_email_textfield" with "authentication_active_email_account"
    And User fill "authentication_password_textfield" with "create_password_page_title"
    And User click "onboarding_next_button"
    Then "authentication_email_textfield" will be displayed
    And User expect "onboarding_otp_notification" equal with "authentication_invalid_login_top_notification"
    And User expect "authentication_email_underline_text" equal with "authentication_invalid_email_underline_notification"
    And User expect "authentication_password_underline_text" equal with "authentication_invalid_password_underline_notification"

  @android @ios @uispecific
  Scenario:JENI3320-C75807-[Functionality][Native App] User is able to insert valid OTP
    Given User is on authentication page
    When User fill "authentication_email_textfield" with "authentication_active_email_account"
    And User fill "authentication_password_textfield" with "authentication_active_password_account"
    And User click "onboarding_next_button"
    When User fill "correct_otp" for OTP or PIN
    And User expect "authentication_pin_page_title" equal with "authentication_create_pin_page_title"

  @android @ios @uispecific
  Scenario:JENI3320-C75808-[Functionality][Native App] User is able to create new PIN
    Given User is on authentication page
    When User fill "authentication_email_textfield" with "authentication_active_email_account"
    And User fill "authentication_password_textfield" with "authentication_active_password_account"
    And User click "onboarding_next_button"
    When User fill "correct_otp" for OTP or PIN
    And User fill "correct_pin" for OTP or PIN
    And User click "authentication_create_pin_next_button"
    And User expect "authentication_pin_page_title" equal with "authentication_confirm_pin_page_title"

  @android @ios @uispecific
  Scenario:JENI3320-C75809-[Functionality][Native App] User is able to confirm the previously decided PIN 
    Given User is on authentication page
    When User fill "authentication_email_textfield" with "authentication_active_email_account"
    And User fill "authentication_password_textfield" with "authentication_active_password_account"
    And User click "onboarding_next_button"
    When User fill "correct_otp" for OTP or PIN  
    And User fill "correct_pin" for OTP or PIN
    And User click "authentication_create_pin_next_button"  
    And User fill "correct_pin" for OTP or PIN
    And User click "authentication_confirm_pin_next_button"
    Then "****_top_logo" will be displayed 

  @android @ios @uispecific
  Scenario:JENI3320-C70259-[Functionality][Native App] Reaching the Dashboard from Pilot
    Given User is logged in with cif "authentication_active_account"
    Then "****_top_logo" will be displayed 

  @android @ios @endtoend @R3_2 @R3_3
  Scenario:JENI3322-C75805-[Functionality][Native App] User is able to insert 'Email' and 'Password' (Inactive User)
    Given User is on authentication page
    When User fill "authentication_email_textfield" with "authentication_inactive_email_account"
    And User fill "authentication_password_textfield" with "authentication_inactive_password_account"
    And User click "onboarding_next_button"
    Then "authentication_pin_numpad" will be displayed
    When User fill "correct_otp" for OTP or PIN  
    And User fill "correct_pin" for OTP or PIN
    And User click "authentication_create_pin_next_button"  
    #And "onboarding_otp_notification" will be displayed

  @android @ios @endtoend @R3_2 @R3_3
  Scenario:JENI3322-C70280-[Functionality] Inactive user login using email and password (Mobile Phone)
    Given User is on authentication page
    When User fill "authentication_email_textfield" with "authentication_inactive_email_account"
    And User fill "authentication_password_textfield" with "authentication_inactive_password_account"
    And User click "onboarding_next_button"
    When User fill "correct_otp" for OTP or PIN
    And User fill "correct_pin" for OTP or PIN
    And User click "authentication_create_pin_next_button"
    And User fill "correct_pin" for OTP or PIN
    And User click "authentication_confirm_pin_next_button"
    And User check and click "later_button" if exist
    Then "****_top_logo" will be displayed

  @android @ios @endtoend @R3_2 @R3_3
  Scenario:JENI3322-C70288-[[Functionality] Inactive user login using wrong email and password (Mobile Phone)
    Given User is on authentication page
    When User fill "authentication_email_textfield" with "authentication_inactive_password_account"
    And User fill "authentication_password_textfield" with "authentication_inactive_email_account"
    Then User expect "authentication_email_underline_text" equal with "email_address_underline_text_wrong"

    When User fill "authentication_email_textfield" with "authentication_inactive_email_account"
    And User fill "authentication_password_textfield" with "password_confirm"
    And User click "onboarding_next_button"
    When User expect "authentication_email_underline_text" equal with "authentication_invalid_email_underline_notification"
    And User expect "authentication_password_underline_text" equal with "authentication_invalid_password_underline_notification"

  @android @ios @uispecific
  Scenario:JENI3905-C70625-[Functionality] User log in using email and password
    Given User is on dashboard page in English language with "pay_me_cif"
    Then "****_top_logo" will be displayed

  @android @ios @endtoend @R3_1 @R3_2 @R3_3
  Scenario:JENI6745-C117052-[Layout] Verify activate account pop up before heading to dashboard
    Given User is on onboarding success page 
    When User click "onboarding_activate_now_button"
    Then "onboarding_see_how_to_button" will be displayed
    And "later_button" will be displayed

  @android @ios @endtoend @continuous @R3_1 @R3_2 @R3_3
  Scenario:JENI6745-C117055-[Functionallity] Button "later" will dismiss the pop up and landing to the dashboard screen (after onboarding)
    And User click "later_button"
    Then "****_top_logo" will be displayed

  @android @ios @endtoend @R3_1 @R3_2 @R3_3
  Scenario:JENI6745-C117056-[Functionality] Inactive user do outgoing Funds Transfer (send it) will show activation pop u
    Given User is logged in with cif "authentication_inactive_account"
    And User click "later_button"
    And User change language to "language"
    And User click "later_button"
    And User access send it from side menu
    And User click "send_it_contact_first"
    When User fill "send_it_individual_page_amount" with "send_it_individual_page_amount"
    And User wait 5 seconds
    And User click "send_it_individual_confirm_page_send"
    Then "onboarding_see_how_to_button" will be displayed
    And "later_button" will be displayed

  @android @ios @endtoend @R3_1 @R3_2 @R3_3
  Scenario:JENI6745-C117057-[Functionality] Inactive user do Bill Payment will show activation pop up
    Given User is logged in with cif "authentication_inactive_account"
    And User click "later_button"
    And User change language to "language"
    And User click "later_button"
    And User go to sent it bill payment landing page from side menu
    And User click "bill_payment_header_search_button"  
    And User fill "bill_payment_header_search_field" with "bill_payment_search_data_mobile_top_up"
    And User wait 5 seconds 
    And User click "bill_payment_text_smartfren_mobile_top_up"
    #input phone number with special Character
    And User fill "bill_payment_text_field_input_phone" with "bill_payment_phone_number_smart"
    And User wait 3 seconds 
    And User select "bill_payment_text_field_top_up_amount" dropdown with "bill_payment_amount_100k"
    And User click "save_it_dream_saver_next_button"
    And User click "save_it_dream_saver_pay_now_button"
    Then "onboarding_see_how_to_button" will be displayed
    And "later_button" will be displayed

  @android @ios @endtoend @R3_1 @R3_2 @R3_3
  Scenario:JENI6745-C117059-[Functionality] Inactive user Create New Flexi Saver will show activation pop up
    Given User is logged in with cif "authentication_inactive_account"
    And User click "later_button"
    And User change language to "language"
    And User click "later_button"
    And User click "dashboard_hamburger_icon"
    And User click "save_it_side_menu"
    And User check and click "tutorial_close" if exist
    And User click "save_it_flexi_saver_start_button"
    And User fill "save_it_flexi_saver_first_balance_textfield" with "send_it_individual_page_amount"
    And User click "save_it_flexi_saver_withdraw_confirm_button"
    Then "onboarding_see_how_to_button" will be displayed
    And "later_button" will be displayed
    # Status failed in testrail, missing step in new build

  @android @ios @endtoend @R3_1 @R3_2 @R3_3
  Scenario:JENI6745-C117060-[Functionality] Inactive user Create New Dream Saver will show activation pop up
    Given User is logged in with cif "authentication_inactive_account"
    And User click "later_button"
    And User change language to "language"
    And User click "later_button"
    And User click "dashboard_hamburger_icon"
    And User click "save_it_side_menu"
    And User check and click "tutorial_close" if exist
    When User click "save_it_create_new_dream_saver"
    And User fill "save_it_dream_saver_name_input_field" with "save_it_dream_saver_name_input_1"
    And User fill "save_it_dream_saver_target_amount_input_field" with "save_it_dream_saver_one_million_target_amount"
    And User click "save_it_dream_saver_next_button"
    Then "onboarding_see_how_to_button" will be displayed
    And "later_button" will be displayed
    #Status failed in testrail, missing step in new build

  @android @ios @endtoend @R3_1 @R3_2 @R3_3
  Scenario:JENI6745-C117061-[Functionality] Inactive user Create New Maxi Saver will show activation pop up
    Given User is logged in with cif "authentication_inactive_account"
    And User click "later_button"
    And User change language to "language"
    And User click "later_button"
    And User click "dashboard_hamburger_icon"
    And User click "save_it_side_menu"
    And User check and click "tutorial_close" if exist
    And User swipe up until found "save_it_create_new_maxi_saver"
    And User click "save_it_create_new_maxi_saver"
    And User click "save_it_maxi_saver_overview_ok_got_it_button"
    And User click "save_it_dream_saver_next_button"
    Then "onboarding_see_how_to_button" will be displayed
    And "later_button" will be displayed
    #Status failed in testrail, missing step in new build

  @android @ios @endtoend @R3_1 @R3_2 @R3_3
  Scenario:JENI6745-C117062-[Functionality] Inactive user do Top up e-Card will show activation pop up
    Given User is logged in with cif "authentication_inactive_account"
    And User click "later_button"
    And User change language to "language"
    And User click "later_button"
    And User click "dashboard_hamburger_icon"
    And User click "card_center_left_side_menu"
    And User check and click "tutorial_close" if exist
    When User click "card_center_activate_account_now_button"
    Then "onboarding_see_how_to_button" will be displayed
    And "later_button" will be displayed

  @android @ios @endtoend @R3_1 @R3_2 @R3_3
  Scenario:JENI6745-C117063-[Functionality] Inactive user respond to incoming Money Request / Bill Split Request from another **** user acceptance will show activation pop up
    Given User is logged in with cif "account_inactive_11"
    And User click "later_button"
    And User change language to "language"
    And User click "later_button"
    When User click "payme_bell_icon"
    And User click "split_bill_send_money_button"
    And User click "send_it_individual_page_next"
    Then "onboarding_see_how_to_button" will be displayed
    And "later_button" will be displayed
    #Status failed in testrail, missing step in new build

  #JENI-6460
  @android @ios @endtoend @R3_1
  Scenario:JENI6460/8152-C117195-[Scenario] Go to Forgot Password/Reset Password Page from Login page
    Given User is on authentication page
    When User click "authentication_reset_button"
    Then "authentication_header_page_title" will be displayed

  @android @ios @endtoend @R3_1
  Scenario:JENI6460/8152-C117196-[Scenario] Reset Password 1
    Given User is on authentication page
    When User click "authentication_reset_button"
    And User fill "reset_password_email_address_textfield" with "authentication_incorrect_email_account"
    And User click "reset_password_next_button"
    Then "email_address_textfield" will be displayed

  @android @ios @endtoend @continuous @R3_1
  Scenario:JENI6460/8152-C117214-[Scenario] Input unregistered email in reset password page
    Then "email_address_textfield" will be displayed

  @android @ios @endtoend @R3_1
  Scenario:JENI6460/8152-C117196-[Scenario] Reset Password 2
    Given User is on authentication page
    When User click "authentication_reset_button"
    And User fill "reset_password_email_address_textfield" with "authentication_active_email_account"
    And User click "reset_password_next_button"
    And User fill "incorrect_otp_1" for OTP or PIN
    Then User expect "snackbar" equal with "profile_and_setting_wrong_otp"

  @android @ios @endtoend @R3_1
  Scenario:JENI6460/8152-C117196-[Scenario] Reset Password 3
    Given User is on authentication page
    When User click "authentication_reset_button"
    And User fill "reset_password_email_address_textfield" with "authentication_active_email_account"
    And User click "reset_password_next_button"
    And User fill "correct_otp" for OTP or PIN
    And User fill "authentication_cvv_textfield" with "authentication_incorrect_cvv"
    And User fill "authentication_expiry_textfield" with "authentication_correct_expiry_date"
    And User click "authentication_change_password_next_button"
    Then User expect "snackbar" equal with "authentication_invalid_cvvorexpiry_notification"

  @android @ios @endtoend @continuous @R3_1
  Scenario:JENI6460/8152-C117196-[Scenario] Reset Password 4
    And User fill "authentication_cvv_textfield" with "authentication_correct_cvv"
    And User fill "authentication_expiry_textfield" with "authentication_incorrect_expiry_date"
    And User click "authentication_change_password_next_button"
    Then User expect "top_notification_snackbar" equal with "authentication_invalid_cvvorexpiry_notification"

  @android @ios @endtoend @continuous @R3_1
  Scenario:JENI6460/8152-C117196-[Scenario] Reset Password 5
    And User fill "authentication_cvv_textfield" with "authentication_incorrect_cvv"
    And User fill "authentication_expiry_textfield" with "authentication_incorrect_expiry_date"
    And User click "authentication_change_password_next_button"
    Then User expect "top_notification_snackbar" equal with "authentication_invalid_cvvorexpiry_notification"

  @android @ios @endtoend @continuous @R3_1
  Scenario:JENI6460/8152-C117196-[Scenario] Reset Password 6
    And User fill "authentication_cvv_textfield" with "authentication_correct_cvv"
    And User fill "authentication_expiry_textfield" with "authentication_correct_expiry_date"
    And User click "authentication_change_password_next_button"
    Then "profile_and_setting_new_password_field" will be displayed

  @android @ios @endtoend @R3_1
  Scenario:JENI6460/8152-C117197-[Scenario] Create a new password 1
    Given User is on authentication page
    When User click "authentication_reset_button"
    And User fill "reset_password_email_address_textfield" with "authentication_active_email_account"
    And User click "reset_password_next_button"
    And User fill "correct_otp" for OTP or PIN
    And User fill "authentication_cvv_textfield" with "authentication_correct_cvv"
    And User fill "authentication_expiry_textfield" with "authentication_correct_expiry_date"
    And User click "authentication_change_password_next_button"
    And User click "onboarding_view_password"
    And User click "onboarding_view_confirm_password"
    And User fill "profile_and_setting_new_password_field" with "incorrect_password_1"
    And User fill "profile_and_setting_confirm_password_field" with "incorrect_password_1"
    And User click "authentication_change_password_next_button"
    Then "profile_and_setting_new_password_field" will be displayed

  @android @ios @endtoend @continuous @R3_1
  Scenario:JENI6460/8152-C117197-[Scenario] Create a new password 2
    And User fill "profile_and_setting_new_password_field" with "incorrect_password_2"
    And User fill "profile_and_setting_confirm_password_field" with "incorrect_password_2"
    And User click "authentication_change_password_next_button"
    Then "profile_and_setting_new_password_field" will be displayed

  @android @ios @endtoend @continuous @R3_1
  Scenario:JENI6460/8152-C117197-[Scenario] Create a new password 3
    And User fill "profile_and_setting_new_password_field" with "incorrect_password_3"
    And User fill "profile_and_setting_confirm_password_field" with "incorrect_password_3"
    And User click "authentication_change_password_next_button"
    Then "profile_and_setting_new_password_field" will be displayed

  @android @ios @endtoend @continuous @R3_1
  Scenario:JENI6460/8152-C117197-[Scenario] Create a new password 4
    And User fill "profile_and_setting_new_password_field" with "incorrect_password_4"
    And User fill "profile_and_setting_confirm_password_field" with "incorrect_password_4"
    And User click "authentication_change_password_next_button"
    Then "profile_and_setting_new_password_field" will be displayed

  @android @ios @endtoend @R3_1
  Scenario:JENI6460/8152-C117197-[Scenario] Create a new password 5
    Given User is on authentication page
    When User click "authentication_reset_button"
    And User fill "reset_password_email_address_textfield" with "authentication_active_email_account"
    And User click "reset_password_next_button"
    And User fill "correct_otp" for OTP or PIN
    And User fill "authentication_cvv_textfield" with "authentication_correct_cvv"
    And User fill "authentication_expiry_textfield" with "authentication_correct_expiry_date"
    And User click "authentication_change_password_next_button"
    And User fill "profile_and_setting_new_password_field" with "new_correct_password"
    And User fill "profile_and_setting_confirm_password_field" with "new_correct_password"
    And User click "authentication_change_password_next_button"
    Then "authentication_login_pin_page" will be displayed

  @android @ios @endtoend @R3_1
  Scenario:JENI6460/8152-C117215-[Scenario] Go to Forgot Password/Reset Password Page from reset PIN page
    Given User login using "authentication_active_account" in English then log out
    When User click "authentication_use_password_button"
    And User click "authentication_forgot_reset_button"
    Then "reset_password_email_address_textfield" will be displayed

  @android @ios @endtoend @R3_1
  Scenario:JENI6460/8152-C117209-[Scenario] Reset password for Active account but card not activate
    Given User is on authentication page
    When User click "authentication_reset_button"
    And User fill "reset_password_email_address_textfield" with "authentication_active_email_account"
    And User click "reset_password_next_button"
    And User fill "correct_otp" for OTP or PIN
    And User fill "authentication_cvv_textfield" with "authentication_correct_cvv"
    And User fill "authentication_expiry_textfield" with "authentication_correct_expiry_date"
    And User click "authentication_change_password_next_button"
    And User fill "profile_and_setting_new_password_field" with "new_correct_password"
    And User fill "profile_and_setting_confirm_password_field" with "new_correct_password"
    And User click "reset_password_next_button"
    Then "authentication_pin_page_title" will be displayed
  
  @android @ios @endtoend @R3_1
  Scenario:JENI6460/8152-C117210-[Scenario] Reset password for account who has Permanent Blocked m-card
    Given User is on authentication page
    When User click "authentication_reset_button"
    And User fill "reset_password_email_address_textfield" with "authentication_account_with_permanent_m_card"
    And User click "reset_password_next_button"
    And User fill "correct_otp" for OTP or PIN
    And User fill "authentication_cvv_textfield" with "authentication_permanent_m_card_correct_cvv"
    And User fill "authentication_expiry_textfield" with "authentication_correct_expiry_date"
    And User click "authentication_change_password_next_button"
    Then User expect "top_notification_snackbar" equal with "authentication_invalid_cvvorexpiry_notification"

  @android @ios @endtoend @R3_1
  Scenario:JENI6460/8152-C117213-[Scenario] Reset password for account who has temporary blocked m-card
    Given User is on authentication page
    When User click "authentication_reset_button"
    And User fill "reset_password_email_address_textfield" with "authentication_account_with_temporary_m_card"
    And User click "reset_password_next_button"
    And User fill "correct_otp" for OTP or PIN
    And User fill "authentication_cvv_textfield" with "authentication_temporary_m_card_correct_cvv"
    And User fill "authentication_expiry_textfield" with "authentication_correct_expiry_date"
    And User click "authentication_change_password_next_button"
    Then "profile_and_setting_new_password_field" will be displayed

  @android @ios @endtoend @R3_1
  Scenario:JENI6460/8152-C117211-[Scenario] Reset password for inactive account
    Given User is on authentication page
    When User click "authentication_reset_button"
    And User fill "reset_password_email_address_textfield" with "authentication_inactive_email_account"
    And User click "reset_password_next_button"
    And User fill "correct_otp" for OTP or PIN
    Then "onboarding_see_how_to_button" will be displayed

  @android @ios @uispecific @R3_2 @R3_3
  Scenario:JENI6745-C117058-[Functionality] Inactive user do Mobile Top up will show activation pop 
    Given User is logged in with cif "authentication_inactive_account"
    And User click "later_button"
    When User change language to "language"
    And User click "later_button"
    And User go to sent it bill payment landing page from side menu
    When User click "bill_payment_mobile_top_up_button"
    And User click "bill_payment_text_smartfren_mobile_top_up"
    Then "onboarding_see_how_to_button" will be displayed
    And "later_button" will be displayed

  @android @ios @uispecific @R3_3 
  Scenario:JENI7105-C117345-[Scenario] User is auto logged out for being idle more than 2 minutes and not responding 1
    Given User is logged in with cif "active_user"
    When User swipe up until found "awards_widget_container"
    And User swipe down until found "dashboard_wealth_widget_total_balance"
    When User swipe up until found "awards_widget_container"
    And User swipe down until found "dashboard_wealth_widget_total_balance"
    When User swipe up until found "awards_widget_container"
    And User swipe down until found "dashboard_wealth_widget_total_balance"
    When User swipe up until found "awards_widget_container"
    Then User expect "onboarding_session_time_out_pop_up" doesn't exist

  @android @ios @uispecific @R3_3
  Scenario:JENI7105-C117345-[Scenario] User is auto logged out for being idle more than 2 minutes and not responding 2
    Given User is logged in with cif "active_user"
    When User change language to "language"
    And User access send it from side menu
    And User go to card center landing page from side menu
    And User access send it from side menu
    And User go to card center landing page from side menu
    And User access send it from side menu
    And User go to card center landing page from side menu
    And User access send it from side menu
    And User go to card center landing page from side menu
    And User access send it from side menu
    Then User expect "onboarding_session_time_out_pop_up" doesn't exist

  @android @ios @uispecific @R3_3
  Scenario:JENI7105-C117345-[Scenario] User is auto logged out for being idle more than 2 minutes and not responding 3
    Given User is logged in with cif "active_user"
    When User change language to "language"
    And User click "dashboard_hamburger_icon"
    And User click "in_and_out_menu"
    And User check and click "card_center_close_tutorial" if exist
    And User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_overlimit"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_overlimit"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_overlimit"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_overlimit"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_overlimit"
    Then User expect "onboarding_session_time_out_pop_up" doesn't exist

  @android @ios @uispecific @R3_3
  Scenario:JENI7105-C117345-[Scenario] User is auto logged out for being idle more than 2 minutes and not responding 4
    Given User is logged in with cif "active_user"
    When User wait 140 seconds
    Then "authentication_login_with_pin_page" will be displayed

  @android @ios @uispecific @R3_3 
  Scenario:JENI7105-C117714-[Scenario] User is auto logged out for being idle more than 2 minutes and responding
    Given User is logged in with cif "active_user"
    And User click "dashboard_hamburger_icon"
    And User click "profile_and_setting_menu"
    When User wait 120 seconds
    And User click "onboarding_session_time_out_pop_up_still_here_button"
    Then "profile_and_setting_settings_tab" will be displayed

  @android @ios @uispecific @R3_3 
  Scenario:JENI7105-C117988-[Edge Cases] Checking for 2 minutes idle
    Given User is logged in with cif "active_user"
    And User click "dashboard_hamburger_icon"
    And User click "profile_and_setting_menu"
    When User wait 135 seconds
    And User fill "correct_pin" for OTP or PIN
    And User click "dashboard_hamburger_icon"
    And User click "profile_and_setting_menu"
    And User wait 120 seconds
    And User click "onboarding_session_time_out_pop_up_still_here_button"
    And User wait 120 seconds
    Then "onboarding_session_time_out_pop_up" will be displayed

  @android @ios @uispecific @R3_3
  Scenario:JENI7105-C125008-[Scenario] User put the app on the background and open the app again after 30 seconds
    Given User is logged in with cif "active_user"
    When User close app for 30 seconds and reopen app
    Then "authentication_login_with_pin_page" will be displayed

  @android @ios @uispecific @R3_4
  Scenario:JENI8235-C130207-[Scenario] Redirect to request OTP
    Given User is on authentication page
    When User click "authentication_reset_button"
    And User fill "reset_password_email_address_textfield" with "authentication_active_email_account"
    And User click "reset_password_next_button"
    And User wait 310 seconds
    Then "onboarding_session_time_out_pop_up" will be displayed

  @android @ios @uispecific @R3_4
  Scenario:JENI8181-C130210-[Scenario] Redirect to request OTP
    Given User is on authentication page
    When User fill "authentication_email_textfield" with "authentication_active_email_account"
    And User fill "authentication_password_textfield" with "authentication_active_password_account"
    And User click "onboarding_next_button"
    And User wait 310 seconds
    Then "onboarding_session_time_out_pop_up" will be displayed

  