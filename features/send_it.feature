@sendit @sendit_profile_setting  
Feature: Send It

# JENI-1185
@android @uidatabound
Scenario:JENI1185-C70282-Send It People Page - Viewing Contacts

  Given User is logged in with cif "send_it_credential"
  
  And User change language to "language"
  And User access send it from side menu

  Then "send_it_contact_first" will be displayed

@android @uidatabound
Scenario:JENI1185-C70284-Clicking on a Contact

  Given User is logged in with cif "send_it_credential"
  
  And User change language to "language"
  And User access send it from side menu

  And User click "send_it_contact_first"
  Then "send_it_individual_page_title" will be displayed
  And User expect "send_it_individual_page_contact_name" equal with "send_it_individual_page_contact_name"

@android @uidatabound
Scenario:JENI1185-C70285-Entering Amount to Transfer

  Given User is logged in with cif "send_it_credential"
  
  And User change language to "language"
  And User access send it from side menu

  And User click "send_it_contact_first"
  When User fill "send_it_individual_page_amount" with "send_it_individual_page_amount"
  And User expect "send_it_individual_page_date_value" equal with "send_it_individual_page_date_value"
  And User expect "send_it_individual_page_frequency_value" equal with "send_it_individual_page_frequency_value"
  And User click "send_it_individual_page_next"

  Then "send_it_individual_confirm_page_title" will be displayed
  And User expect "send_it_individual_confirm_page_amount" equal with "send_it_individual_page_amount"

@android @uidatabound
Scenario:JENI1185-C70286-Sending Money

  Given User is logged in with cif "send_it_credential"
  
  And User change language to "language"
  And User access send it from side menu

  And User click "send_it_contact_first"
  When User fill "send_it_individual_page_amount" with "send_it_individual_page_amount"
  And User click "send_it_individual_page_next"

  Then "send_it_individual_confirm_page_send" will be displayed

@android @endtoend
Scenario:JENI1185-C70286-Sending Money

  Given User is logged in with cif "send_it_credential"
  
  And User change language to "language"
  And User access send it from side menu

  And User click "send_it_contact_first"
  When User fill "send_it_individual_page_amount" with "send_it_individual_page_amount"
  And User click "send_it_individual_page_next"

  And User click "send_it_individual_confirm_page_send"
  Then "send_it_dashboard_sending" will be displayed

@android @uidatabound
Scenario:JENI1185-C70287-[UI] Send It People Page - Viewing Contacts

  Given User is logged in with cif "send_it_credential"
  
  And User change language to "language"
  And User access send it from side menu
  Then "send_it_tab_recent" will be displayed
  Then "send_it_tab_all" will be displayed

@android @uidatabound
Scenario:JENI1185-C70289-[UI] Contact Details (**** Contact)

  Given User is logged in with cif "send_it_credential"
  
  And User change language to "language"
  And User access send it from side menu
  Then "send_it_contact_first" will be displayed
  Then "send_it_contact_first_image" will be displayed
  Then "send_it_contact_first_name" will be displayed
  And User expect "send_it_contact_first_name" contains "send_it_contact_****_logo"
  Then "send_it_contact_first_acc_no" will be displayed
  And User expect "send_it_contact_first_acc_no" contains "send_it_contact_****_cashtag"

@android @uidatabound
Scenario:JENI1185-C70355-[UI] Clicking on a Contact

  Given User is logged in with cif "send_it_credential"
  
  And User change language to "language"
  And User access send it from side menu

  And User click "send_it_contact_first"
  Then "send_it_individual_page_contact_name" will be displayed
  Then "send_it_individual_page_contact_acc_no" will be displayed

# JENI-3381
@android @uidatabound
Scenario:JENI3381-C75720-Contact List - Individual

  Given User is logged in with cif "send_it_credential"
  
  And User change language to "language"
  And User access send it from side menu
  Then "send_it_contact_first" will be displayed
  Then "send_it_contact_first_image" will be displayed
  Then "send_it_contact_first_name" will be displayed
  And User expect "send_it_contact_first_name" contains "send_it_contact_****_logo"
  Then "send_it_contact_first_acc_no" will be displayed
  And User expect "send_it_contact_first_acc_no" contains "send_it_contact_****_cashtag"

  And User swipe up contact until found "send_it_contact_non_****"
  And User expect "send_it_contact_non_****_name" doesn't contains "send_it_contact_****_logo"
  And User expect "send_it_contact_non_****_account" doesn't contains "send_it_contact_****_cashtag"

@android @uidatabound
Scenario:JENI3381-C75721-Contact List - Search Contact

  Given User is logged in with cif "send_it_credential"
  
  And User change language to "language"
  And User access send it from side menu

  And User click "send_it_contact_first"
  And User click "send_it_page_search"
  When User fill "send_it_page_search_field" with "send_it_individual_search_contact_name"

  And User swipe up contact until found "send_it_individual_page_contact_name"
  And User expect "send_it_contact_first_name" contains "send_it_contact_****_logo"
  And User expect "send_it_contact_first_acc_no" contains "send_it_contact_****_cashtag"

@android @uidatabound
Scenario:JENI3381-C75723-Contact List - Contact Selection

  Given User is logged in with cif "send_it_credential"
  
  And User change language to "language"
  And User access send it from side menu

  And User click "send_it_page_search"
  And User click "send_it_page_search_cancel"
  Then User expect "send_it_page_search_field" doesn't exist

# JENI-1062
@android @uidatabound
Scenario:JENI1062-C75729-Frequency Setting

  Given User is logged in with cif "send_it_credential"
  
  And User change language to "language"
  And User access send it from side menu
  And User click "send_it_contact_first"

  When User fill "send_it_individual_page_amount" with "send_it_individual_page_amount"

  And User check if dropdown "send_it_individual_page_frequency" have all "send_it_individual_page_frequency" values

  And User check if dropdown "send_it_individual_page_end" have all "send_it_individual_page_end_values" values

  Then element with "send_it_individual_page_end" text will be displayed
  And User click "send_it_individual_page_next"

  Then element with "send_it_frequency_confirmation_title" text will be displayed
  Then element with "send_it_frequency_confirmation_cancel" text will be displayed
  Then element with "send_it_frequency_confirmation_proceed" text will be displayed
  And User click element with text "send_it_frequency_confirmation_proceed"

  Then element with "send_it_individual_confirm_page_frequency" text will be displayed

@android @uidatabound
Scenario:JENI1062-C75729-Frequency Setting

  Given User is logged in with cif "send_it_credential"
  
  And User change language to "language"
  And User access send it from side menu
  And User click "send_it_contact_first"

  When User fill "send_it_individual_page_amount" with "send_it_individual_page_amount"

  And User select "send_it_individual_page_frequency" dropdown with "send_it_individual_confirm_page_monthly"

  And User select "send_it_individual_page_end" dropdown with "send_it_individual_page_end_manual"

  Then User expect "send_it_individual_page_end_date" doesn't exist
  Then User expect "send_it_individual_page_no_payment" doesn't exist

@android @uidatabound
Scenario:JENI1062-C80576 User Chooses a Frequency other than once and chooses Number of Payments in End After

  Given User is logged in with cif "send_it_credential"
  
  And User change language to "language"
  And User access send it from side menu
  And User click "send_it_contact_first"

  When User fill "send_it_individual_page_amount" with "send_it_individual_page_amount"

  And User select "send_it_individual_page_frequency" dropdown with "send_it_individual_confirm_page_monthly"

  And User select "send_it_individual_page_end" dropdown with "send_it_individual_page_no_payment"

  And User select "send_it_individual_page_no_payment" dropdown with "send_it_individual_page_no_payment_3"

@android @uidatabound
Scenario:JENI1062-C80575 User Chooses a Frequency other than once and chooses End after particular date in End After

  Given User is logged in with cif "send_it_credential"
  
  And User change language to "language"
  And User access send it from side menu
  And User click "send_it_contact_first"

  When User fill "send_it_individual_page_amount" with "send_it_individual_page_amount"

  And User select "send_it_individual_page_frequency" dropdown with "send_it_individual_confirm_page_weekly"

  And User select "send_it_individual_page_end" dropdown with "send_it_individual_page_end_first_values"

  And User check if "send_it_end_date_last_month" months before today's date not displayed in "send_it_individual_page_end_date"

  And User can't select "send_it_end_date_tommorow" days after today's date in "send_it_individual_page_end_date"

  And User select "send_it_end_date_future_days" days from today in "send_it_individual_page_end_date" date picker

  And User click "send_it_individual_page_next"
  And User click element with text "send_it_frequency_confirmation_proceed"

  And User check if today's date displayed
  And User check if "send_it_end_date_future_days" days after today date displayed


@android @uidatabound
Scenario:JENI1062-C80577 Confirmation page display when user selects a transfer date later than NOW

  Given User is logged in with cif "send_it_credential"
  
  And User change language to "language"
  And User access send it from side menu
  And User click "send_it_contact_first"

  When User fill "send_it_individual_page_amount" with "send_it_individual_page_amount"

  And User select "send_it_date_future_days" days from today in "send_it_individual_page_date" date picker
  
  And User click "send_it_individual_page_next"
  And User click element with text "send_it_frequency_confirmation_proceed"

  And User check if "send_it_date_future_days" days after today date displayed
  
#JENI327
@android @uidatabound
 Scenario: JENI327-C70705-Scenario - Category Selection
  Given User is logged in with cif "card_center_active_all_card_with_contact"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "send_it_page_title"
  Then "send_it_page_title" will be displayed
  And User click "send_it_page_title" until "send_it_contact_first" displayed
  And User click "send_it_contact_first" until "send_it_individual_page_category" displayed
  Then "send_it_individual_page_category" will be displayed
  Then User select "send_it_individual_page_category" dropdown with "filter_category_children_label"

@android @uidatabound
  Scenario: JENI327-C70706-Scenario - Active Balance
  Given User is logged in with cif "card_center_active_all_card_with_contact"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "send_it_page_title"
  Then "send_it_page_title" will be displayed
  And User click "send_it_page_title" until "send_it_contact_first" displayed
  And User click "send_it_contact_first" until "send_it_individual_page_category" displayed
  Then "send_it_individual_page_active_balance" will be displayed
  Then User expect "send_it_individual_page_active_balance" equal with "send_it_individual_page_active_balance"

@android @uidatabound
Scenario: JENI327-C70706-Scenario - Notes Selection
  Given User is logged in with cif "card_center_active_all_card_with_contact"

  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "send_it_page_title"
  Then "send_it_page_title" will be displayed
  And User click "send_it_page_title" until "send_it_contact_first" displayed
  And User click "send_it_contact_first" until "send_it_individual_page_note" displayed
  And User fill "send_it_individual_page_amount" with "card_center_e_card_decrease_limit_min"
  And User swipe up until found "send_it_individual_page_note"
  And User fill "send_it_individual_page_note" with "card_center_input_with_more_than_hundred_characters"
  Then User expect "send_it_individual_page_note" equal with 35 characters

# JENI-299
@android @uidatabound
Scenario:JENI299-C75819-Scenario - Date Picker - Default Value

  Given User is logged in with cif "send_it_credential"
  
  And User change language to "language"
  And User access send it from side menu
  And User click "send_it_contact_first"

  When User fill "send_it_individual_page_amount" with "send_it_individual_page_amount"

  Then element with "send_it_individual_page_date_value" text will be displayed

  And User select "send_it_date_future_days" days from today in "send_it_individual_page_date" date picker
  
  And User click "send_it_individual_page_next"
  And User click element with text "send_it_frequency_confirmation_proceed"

  And User check if "send_it_date_future_days" days after today date displayed

@android @uidatabound
Scenario:JENI299-C75820-Scenario - Date Picker Selection - Instant Transfer

  Given User is logged in with cif "send_it_credential"
  
  And User change language to "language"
  And User access send it from side menu

  And User click "send_it_contact_first"
  When User fill "send_it_individual_page_amount" with "send_it_individual_page_amount"
  And User expect "send_it_individual_page_date_value" equal with "send_it_individual_page_date_value"
  And User click "send_it_individual_page_next"

  Then "send_it_individual_confirm_page_title" will be displayed
  And User expect "send_it_individual_confirm_page_amount" equal with "send_it_individual_confirm_page_amount"

# JENI-3825
@android @uidatabound @ios
Scenario:JENI3825-C81125-Send To Individual - DDL Add New Bank Account

  Given User is logged in with cif "send_it_credential"
  
  And User change language to "language"
  And User access send it from side menu
  And User click "send_it_contact_****"

  And User click "send_it_individual_page_contact_dropdown"
  And User click "send_it_new_bank_page_add_button"
  Then element with "send_it_new_account_page_title" text will be displayed

@android @uidatabound @ios
Scenario:JENI3825-C81126-Send To Individual - Select Bank

  Given User is logged in with cif "send_it_credential"
  
  And User change language to "language"
  And User access send it from side menu
  And User click "send_it_contact_****"

  And User click "send_it_individual_page_contact_dropdown"
  And User click "send_it_new_bank_page_add_button"
  Then "send_it_new_bank_page_dropdown" will be displayed

  When User click "send_it_new_bank_page_dropdown"
  Then "send_it_new_bank_page_dropdown_search" will be displayed
  And element with "send_it_new_account_page_bca" text will be displayed
  And User click element with text "send_it_new_account_page_bca"

@android @uidatabound @ios
Scenario:JENI3825-C81127-Send To Individual - Search and Select Bank

  Given User is logged in with cif "send_it_credential"
  
  And User change language to "language"
  And User access send it from side menu
  And User click "send_it_contact_****"

  And User click "send_it_individual_page_contact_dropdown"
  And User click "send_it_new_bank_page_add_button"

  And User click "send_it_new_bank_page_dropdown"
  And User fill "send_it_new_bank_page_dropdown_search" with "send_it_new_account_page_bca"
  And User expect "send_it_new_bank_page_dropdown_search" equal with "send_it_new_account_page_bca"
  Then element with "send_it_new_account_page_bca" text will be displayed

@android @uidatabound @ios
Scenario:JENI3825-C81128-Send To Individual - Input Bank Account and Check
  Given User is logged in with cif "send_it_credential"
  And User change language to "language"
  And User access send it from side menu
  
  And User click "send_it_page_add"
  And User wait 5 seconds 

  #**** account - valid
  And User select "send_it_add_recipient_select_bank" dropdown with "****_contacts_bank_dropdown_list_****" 
  And User fill "send_it_new_bank_page_account_field" with "split_bill_****_user_cashtag_2"
  And User click "send_it_check_account_button"
  And User expect "send_it_add_recipient_result_check" is exist

  #**** account - invalid
  # And User select "send_it_add_recipient_select_bank" dropdown with "****_contacts_bank_dropdown_list_****" 
  And User fill "send_it_new_bank_page_account_field" with "send_it_not_valid_account_****"
  And User click "send_it_check_account_button"
  And User expect "snackbar" is exist

  #BCA valid
  And User select "send_it_add_recipient_select_bank" dropdown with "send_it_new_account_page_bca" 
  And User fill "send_it_new_bank_page_account_field" with "****_contacts_account_number_begin_with_900"
  And User click "send_it_check_account_button"
  And User expect "send_it_add_recipient_result_check" is exist
  #BCA invalid - Allways success 
  # And User select "send_it_add_recipient_select_bank" dropdown with "send_it_new_account_page_bca" 
  And User fill "send_it_new_bank_page_account_field" with "send_it_not_valid_account_****"
  And User click "send_it_check_account_button"
  #And User expect "snackbar" is exist

@android @uidatabound
Scenario:JENI3825-C81129-Send To Individual - Add Bank Account

  Given User is logged in with cif "send_it_credential"
  And User change language to "language"
  And User access send it from side menu
  And User click "send_it_page_add"

  When User select "****_contacts_bank_dropdown_list" dropdown with "****_contacts_bank_dropdown_list_bca"
  And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_account_number_begin_with_900"
  And User click "send_it_check_account_button"

  When User click "send_it_add_recipient_button"
  Then "send_it_send_to_individual_title" will be displayed
  And element with "send_it_new_account_page_bca_900" text will be displayed

@android @uidatabound @ios
Scenario:JENI3825-C110260-Send to Individual - Don't allow to add the logged in account

  Given User is logged in with cif "send_it_credential"
  And User change language to "language"
  And User access send it from side menu
  And User click "send_it_page_add"
  And User wait 5 seconds
 
  When User select "send_it_add_recipient_select_bank" dropdown with "****_contacts_bank_dropdown_list_****"
  And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_valid_cashtag"
  And User click "send_it_check_account_button"

  When User click "send_it_add_recipient_button"
  Then User expect "snackbar" equal with "send_it_error_message_cant_send"

@android @uidatabound @ios
Scenario:JENI3825-C110261-Send to Individual - Adding existing account number

  Given User is logged in with cif "send_it_credential"
  And User change language to "language"
  And User access send it from side menu
  And User click "send_it_page_add"
  And User wait 5 seconds 
  When User select "send_it_add_recipient_select_bank" dropdown with "****_contacts_bank_dropdown_list_bca"
  And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_account_number_begin_with_900"
  And User click "send_it_check_account_button"

  When User click "send_it_add_recipient_button"
  Then "send_it_send_to_individual_title" will be displayed
  And element with "send_it_new_account_page_bca_900" text will be displayed


@android @uidatabound @ios
Scenario:JENI3825-C110262-Send to Individual - Adding non-existing bank account/invalid bank account

  Given User is logged in with cif "send_it_credential"
  And User change language to "language"
  And User access send it from side menu
  And User click "send_it_page_add"
  And User wait 5 seconds 
  When User select "send_it_add_recipient_select_bank" dropdown with "****_contacts_bank_dropdown_list_bca"
  And User fill "****_contacts_bank_accounts_text_field" with "send_it_not_valid_account"
  And User click "send_it_check_account_button"
  Then User expect "snackbar" equal with "send_it_error_message_no_account"
  
@android @uidatabound @ios
Scenario:JENI3825-C117341-Step-Up after confirmation
  Given User is logged in with cif "send_it_credential"
  And User change language to "language"

  And User check data contact "send_it_data_account_bca" if exist
  And User access send it from side menu
  And User click "send_it_page_add"
  And User wait 5 seconds 

  #BCA valid
  And User select "send_it_add_recipient_select_bank" dropdown with "send_it_new_account_page_bca" 
  And User fill "send_it_new_bank_page_account_field" with "****_contacts_account_number_begin_with_900"
  And User click "send_it_check_account_button"
  And User expect "send_it_add_recipient_result_check" is exist
  And User click "send_it_add_recipient_button"
  And User wait 5 seconds 
  And User fill "send_it_individual_page_amount" with "split_bill_adjust_amount_data_text_1"
  And User click "send_it_individual_page_next"
  And User click "send_it_individual_confirm_page_send"

  And User click "card_center_password_field_eye"
  And User fill "send_it_individual_confrm_password_field" with "bill_payment_password_confirm"
  And User expect "send_it_individual_password_submit_button" is exist
    
# JENI-4465
@android @uidatabound
Scenario:JENI4465-C75850-Scenario - Multiple accounts per contact - view accounts

  Given User is logged in with cif "send_it_credential"
  
  And User change language to "language"
  And User access send it from side menu
  And User swipe up until found "send_it_contact_non_****"
  And User click "send_it_contact_non_****"

  And User click "send_it_individual_page_contact_dropdown"

  And User expect "send_it_contact_dropdown_account_first" contains "send_it_contact_****_cashtag"
  And User expect "send_it_contact_dropdown_account_first" contains "send_it_new_account_page_****"
  And User expect "send_it_contact_dropdown_name_first" equal with "send_it_contact_dropdown_contact_name"
  And User expect "send_it_contact_dropdown_account_second" contains "send_it_new_account_page_mandiri"
  And User expect "send_it_contact_dropdown_name_second" equal with "send_it_contact_dropdown_contact_name"

@android @uidatabound
Scenario:JENI4465-C75852-Scenario - Back Button

  Given User is logged in with cif "send_it_credential"
  
  And User change language to "language"
  And User access send it from side menu
  And User swipe up until found "send_it_contact_non_****"
  And User click "send_it_contact_non_****"
  And User click "back_button"
  Then "send_it_contact_first" will be displayed

@android @uidatabound
Scenario:JENI4465-C75851-Scenario - Select bank account

  Given User is logged in with cif "send_it_credential"
  
  And User change language to "language"
  And User access send it from side menu
  And User swipe up until found "send_it_contact_non_****"
  And User click "send_it_contact_non_****"

  And User click "send_it_individual_page_contact_dropdown"
  And User click "send_it_contact_dropdown_first" until "send_it_individual_page_contact_acc_no" displayed

  And User expect "send_it_individual_page_contact_acc_no" contains "send_it_contact_****_cashtag"
  And User expect "send_it_individual_page_contact_name" contains "send_it_contact_****_logo"
  And User expect "send_it_individual_page_contact_name" contains "send_it_contact_dropdown_contact_name"

  When User fill "send_it_individual_page_amount" with "send_it_individual_page_amount"
  And User click "send_it_individual_page_next"
  Then "send_it_individual_confirm_page_title" will be displayed
  And User expect "send_it_individual_confirm_page_name" equal with "send_it_contact_dropdown_contact_name"
  And User expect "send_it_individual_confirm_page_account" contains "send_it_new_account_page_****"

  And User click "back_button"
  And User click "send_it_individual_page_contact_dropdown"

  And User click "send_it_contact_dropdown_second" until "send_it_individual_page_contact_acc_no" displayed

  And User expect "send_it_individual_page_contact_acc_no" contains "send_it_new_account_page_bca"
  And User expect "send_it_individual_page_contact_name" equal with "send_it_contact_dropdown_contact_name"

  And User click "send_it_individual_page_next"
  Then "send_it_individual_confirm_page_title" will be displayed
  And User expect "send_it_individual_confirm_page_name" equal with "send_it_contact_dropdown_contact_name"
  And User expect "send_it_individual_confirm_page_account" contains "send_it_new_account_page_bca"



# JENI-275
# C75830-[UI] Date Picker Selection - Instant Transfer
@android @uidatabound
Scenario:JENI275-C75853#C75830-Scenario - Confirmation Page - Category and Notes

  Given User is logged in with cif "send_it_credential"
  And User change language to "language"
  And User access send it from side menu
  And User swipe up until found "send_it_contact_non_****"
  And User click "send_it_contact_first"

  #bypass a bug where pop up show
  And User click "pay_me_ok_got_tutorial_button"

  When User fill "send_it_individual_page_amount" with "send_it_individual_page_amount"
  And User select "send_it_individual_page_category" dropdown with "send_it_individual_page_category"
  When User fill "send_it_individual_page_note" with "send_it_individual_page_note"
  And User click "send_it_individual_page_next"

  Then element with "send_it_dashboard_sending" text will be displayed
  Then element with "send_it_individual_page_note" text will be displayed

# JENI-299
# C75846-[UI] Date Picker Selection - Later Date Selected
@android @uidatabound
Scenario:JENI299-C75821#C75846-Scenario - Date Picker Selection - Later Date Selected

  Given User is logged in with cif "send_it_credential"
  And User change language to "language"
  And User access send it from side menu
  And User swipe up until found "send_it_contact_non_****"
  And User click "send_it_contact_first"

  #bypass a bug where pop up show
  And User click "pay_me_ok_got_tutorial_button"

  When User fill "send_it_individual_page_amount" with "send_it_individual_page_amount"
  When User select "send_it_end_date_tommorow" days from today in "send_it_individual_page_date" date picker
  And User click "send_it_individual_page_next"

  Then "send_it_scheduled_transfer_modal" will be displayed
  And User click element with text "send_it_frequency_confirmation_proceed"

@android @endtoend
Scenario:JENI299-C75822-Scenario - Send It - Scheduled Transfer Modal - Proceed With Transfer

  Given User is logged in with cif "send_it_credential"
  And User change language to "language"
  And User access send it from side menu
  And User swipe up until found "send_it_contact_non_****"
  And User click "send_it_contact_first"

  #bypass a bug where pop up show
  And User click "pay_me_ok_got_tutorial_button"

  When User fill "send_it_individual_page_amount" with "send_it_individual_page_amount"
  When User select "send_it_end_date_tommorow" days from today in "send_it_individual_page_date" date picker
  And User click "send_it_individual_page_next"

  Then "send_it_scheduled_transfer_modal" will be displayed
  And User click element with text "send_it_frequency_confirmation_proceed"

  And User check if "send_it_end_date_tommorow" days after today date displayed

  And User click element with text "send_it_schedule_transfer"
  Then "send_it_dashboard_sending" will be displayed

@android @uidatabound
# C75847-[UI] Send It - Scheduled Transfer Modal - Proceed With Transfer
Scenario:JENI299-C75822#C75847-Scenario - Send It - Scheduled Transfer Modal - Proceed With Transfer

  Given User is logged in with cif "send_it_credential"
  And User change language to "language"
  And User access send it from side menu
  And User swipe up until found "send_it_contact_non_****"
  And User click "send_it_contact_first"

  #bypass a bug where pop up show
  And User click "pay_me_ok_got_tutorial_button"

  When User fill "send_it_individual_page_amount" with "send_it_individual_page_amount"
  When User select "send_it_end_date_tommorow" days from today in "send_it_individual_page_date" date picker
  And User click "send_it_individual_page_next"

  Then "send_it_scheduled_transfer_modal" will be displayed
  And User click element with text "send_it_frequency_confirmation_proceed"

  And User check if "send_it_end_date_tommorow" days after today date displayed

  And element with "send_it_schedule_transfer" text will be displayed

@android @uidatabound
# C75848-[UI] Send It - Scheduled Transfer Modal - Cancel
Scenario:JENI299-C75823#C75848-Scenario - Send It - Scheduled Transfer Modal - Cancel

  Given User is logged in with cif "send_it_credential"
  And User change language to "language"
  And User access send it from side menu
  And User swipe up until found "send_it_contact_non_****"
  And User click "send_it_contact_first"

  When User fill "send_it_individual_page_amount" with "send_it_individual_page_amount"
  When User select "send_it_end_date_tommorow" days from today in "send_it_individual_page_date" date picker
  And User click "send_it_individual_page_next"

  Then "send_it_scheduled_transfer_modal" will be displayed
  And User click element with text "send_it_frequency_confirmation_cancel"
  Then element with "send_it_frequency_confirmation_proceed" text will not displayed

@android @uidatabound
Scenario:JENI299-C75829-[UI] Date  Picker - Default Value

  Given User is logged in with cif "send_it_credential"
  And User change language to "language"
  And User access send it from side menu
  And User swipe up until found "send_it_contact_non_****"
  And User click "send_it_contact_first"

  And User expect "send_it_individual_page_date_value" equal with "send_it_individual_page_date_value"

##########################
##Send it - 3.1
##########################

#JENI-3810
@android @ios @uispecific
Scenario:JENI3810-C116946-Send To Individual - Add Recipient to **** Contact Button
  Given User is logged in with cif "send_it_credential"
  And User change language to "language"
  And User access send it from side menu
  
  And User click "send_it_page_add"
  Then User expect "send_it_add_recipient_header_text" is exist 
  Then User expect "send_it_add_recipient_detail_header_text" is exist 
  Then User expect "send_it_add_recipient_detail_text" is exist  

@android @ios @uispecific
Scenario:JENI3810-C116947-Send To Individual - Search and Select Bank
  Given User is logged in with cif "send_it_credential"
  And User change language to "language"
  And User access send it from side menu
  
  And User click "send_it_page_add"
  And User wait 5 seconds 
  And User select "send_it_add_recipient_select_bank" dropdown with "send_it_new_account_page_bca" 
  And User expect "send_it_add_recipient_text_bca" equal with "send_it_new_account_page_bca"

@android @ios @uidatabound
Scenario:JENI3810-C116948-Send To Individual - Input Bank Account and Check
  Given User is logged in with cif "send_it_credential"

  And User change language to "language"
  And User access send it from side menu
  
  And User click "send_it_page_add"
  And User wait 5 seconds 

  #**** account - valid
  And User select "send_it_add_recipient_select_bank" dropdown with "****_contacts_bank_dropdown_list_****" 
  And User fill "send_it_new_bank_page_account_field" with "split_bill_****_user_cashtag_2"
  And User click "send_it_check_account_button"
  And User expect "send_it_add_recipient_result_check" is exist

  #**** account - valid
  And User select "send_it_add_recipient_select_bank" dropdown with "****_contacts_bank_dropdown_list_****" 
  And User fill "send_it_new_bank_page_account_field" with "send_it_not_valid_account_****"
  And User click "send_it_check_account_button"
  And User expect "snackbar" is exist

  #BCA valid
  And User select "send_it_add_recipient_select_bank" dropdown with "send_it_new_account_page_bca" 
  And User fill "send_it_new_bank_page_account_field" with "****_contacts_account_number_begin_with_900"
  And User click "send_it_check_account_button"
  And User expect "send_it_add_recipient_result_check" is exist
  #BCA invalid - Allways success 
  And User select "send_it_add_recipient_select_bank" dropdown with "send_it_new_account_page_bca" 
  And User fill "send_it_new_bank_page_account_field" with "send_it_not_valid_account_****"
  And User click "send_it_check_account_button"
  #And User expect "snackbar" is exist

@android @ios @uidatabound
Scenario:JENI3810-C116949-Send To Individual - Add Bank Account
  Given User is logged in with cif "send_it_credential"
  And User change language to "language"
  And User access send it from side menu
  
  And User click "send_it_page_add"
  And User wait 5 seconds 

  #BCA valid
  And User select "send_it_add_recipient_select_bank" dropdown with "send_it_new_account_page_bca" 
  And User fill "send_it_new_bank_page_account_field" with "****_contacts_account_number_begin_with_900"
  And User click "send_it_check_account_button"
  And User expect "send_it_add_recipient_result_check" is exist


@android @ios @uidatabound
Scenario:JENI3810-C116950-Add recipient to contact
  Given User is logged in with cif "send_it_credential"
  And User change language to "language"

  And User check data contact "send_it_data_account_bca" if exist
  And User access send it from side menu
  And User click "send_it_page_add"
  And User wait 5 seconds 

  #BCA valid
  And User select "send_it_add_recipient_select_bank" dropdown with "send_it_new_account_page_bca" 
  And User fill "send_it_new_bank_page_account_field" with "****_contacts_account_number_begin_with_900"
  And User click "send_it_check_account_button"
  And User expect "send_it_add_recipient_result_check" is exist
  And User click "send_it_add_recipient_button"
  And User wait 5 seconds 
  And User fill "send_it_individual_page_amount" with "split_bill_adjust_amount_data_text_1"
  And User click "send_it_individual_page_next"
  And User click "send_it_individual_confirm_page_send"

  And User click "card_center_password_field_eye"
  And User fill "bill_payment_confrm_password_field" with "bill_payment_password_confirm"
  And User click "bill_payment_confrm_password_submit" until "send_it_dashboard_sending" displayed

  And User expect "send_it_dashboard_sending" is exist
  And User access send it from side menu
  And User expect "send_it_contect_bca" is exist


@android @ios @uidatabound
Scenario:JENI3810-C116951-Back Button New Bank Account Page
  Given User is logged in with cif "send_it_credential"
  And User change language to "language"
  And User access send it from side menu
  
  And User click "send_it_page_add"
  And User wait 5 seconds 

  And User press back button on device
  And User expect "send_it_bill_people_tab" equal with "bill_payment_tab_people"

@android @ios @uidatabound
Scenario:JENI3810-C116952-Back Button Send To Individual - Bank Transfer page
  Given User is logged in with cif "send_it_credential"
  And User change language to "language"
  And User access send it from side menu
  
  And User click "send_it_page_add"
  And User wait 5 seconds 

  #BCA valid
  And User select "send_it_add_recipient_select_bank" dropdown with "send_it_new_account_page_bca" 
  And User fill "send_it_new_bank_page_account_field" with "****_contacts_account_number_begin_with_900"
  And User click "send_it_check_account_button"
  And User expect "send_it_add_recipient_result_check" is exist
  And User click "send_it_add_recipient_button"
  And User wait 5 seconds 
  And User press back button on device
  And User press back button on device
  And User expect "send_it_add_recipient_result_check" is exist

@android @ios @uidatabound
Scenario:JENI3810-C117340-Step-Up after confirmation
  Given User is logged in with cif "send_it_credential"
  And User change language to "language"

  And User check data contact "send_it_data_account_bca" if exist
  And User access send it from side menu
  And User click "send_it_page_add"
  And User wait 5 seconds 

  #BCA valid
  And User select "send_it_add_recipient_select_bank" dropdown with "send_it_new_account_page_bca" 
  And User fill "send_it_new_bank_page_account_field" with "****_contacts_account_number_begin_with_900"
  And User click "send_it_check_account_button"
  And User expect "send_it_add_recipient_result_check" is exist
  And User click "send_it_add_recipient_button"
  And User wait 5 seconds 
  And User fill "send_it_individual_page_amount" with "split_bill_adjust_amount_data_text_1"
  And User click "send_it_individual_page_next"
  And User click "send_it_individual_confirm_page_send"

  And User click "card_center_password_field_eye"
  And User fill "bill_payment_confrm_password_field" with "bill_payment_password_confirm"
  And User expect "bill_payment_confrm_password_submit" is exist

  @android @endtoend
  Scenario:JENI8473-C124970-Processing Modal - one time instant transfer
    Given User is logged in with cif "send_it_credential"
    And User change language to "language"
    And User access send it from side menu
    And User click "send_it_contact_first"
    And User click "send_it_contact_dropdown_selected_account"
    And User click "send_it_contact_dropdown_second"
    When User fill "send_it_individual_page_amount" with "pay_me_amount"
    And User click "send_it_individual_page_next"
    And User click "send_it_individual_confirm_page_send"
    Then "send_it_dashboard_sending" will be displayed
    And "dashboard_****_logo" will be displayed

  @android @endtoend @continuous
  Scenario:JENI8473-C124974-User clicks VIEW TRANSACTION STATUS button on PROCESSING modal page
    And User click "send_it_dashboard_receipt"
    And User check and click "tutorial_close" if exist
    Then "in_and_out_history_container" will be displayed
 
  @android @endtoend
  Scenario:JENI8473-C124970-Processing Modal - one time instant transfer
    Given User is logged in with cif "send_it_credential"
    And User change language to "language"
    And User access send it from side menu
    And User click "send_it_contact_first"
    And User click "send_it_contact_dropdown_selected_account"
    And User click "send_it_contact_dropdown_second"
    When User fill "send_it_individual_page_amount" with "pay_me_amount"
    And User fill "send_it_individual_page_note" with "cashtag_empty_notification"
    And User click "send_it_individual_page_next"
    And User click "send_it_individual_confirm_page_send"

  @android @endtoend @continuous
  Scenario:JENI8473-C124979-Information on SUCCESSFUL modal
    Then "send_it_process_modal_image_icon" will be displayed
    And element that contains "pay_me_amount" text will be displayed
    And element that contains "cashtag_empty_notification" text will be displayed
    And element that contains "send_it_data_account_bca" text will be displayed
    And "send_it_dashboard_sending" will be displayed

  @android @endtoend @continuous
  Scenario:JENI8473-C124976-Transfer money succeed and PROCESSING modal closed
    And User click "onboarding_close_button"
    Then User expect "send_it_dashboard_sending" doesn't exist

  @android @uidatabound
  Scenario:JENI8473-C130302-Processing Modal - one time instant transfer from Request Payment PayMe 
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_valid_cashtag"
    And User click "pay_me_add_button"
    And User click "pay_me_send_destination_textfield"
    When User fill "pay_me_amount_textfield" with "pay_me_amount"
    And User fill "pay_me_note_textfield" with "pay_me_note"
    And User click "pay_me_send_request_button"
    Then "pay_me_success_sent_notification_new" will be displayed

  @android @endtoend
  Scenario:JENI8473-C130302-Processing Modal - one time instant transfer from Request Payment SplitBill
    Given User create split bill using "requestor_cashtag"
    Then "pay_me_success_sent_notification_new" will be displayed