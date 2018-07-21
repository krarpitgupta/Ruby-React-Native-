@r3_sendit_profile_setting
Feature: Release 3 - SEND IT module
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
  #And User expect "send_it_individual_page_date_value" equal with "send_it_individual_page_date_value"
  #And User expect "send_it_individual_page_frequency_value" equal with "send_it_individual_page_frequency_value"
  And User click "send_it_individual_page_next"

  Then "send_it_individual_confirm_page_title" will be displayed
  And User expect "send_it_individual_confirm_page_amount" equal with "send_it_individual_confirm_page_amount"

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
  #Then "send_it_tab_recent" will be displayed
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

# JENI-3825
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

@android @uidatabound
Scenario:JENI3825-C110260-Send to Individual - Don't allow to add the logged in account

  Given User is logged in with cif "send_it_credential"
  And User change language to "language"
  And User access send it from side menu
  And User click "send_it_page_add"

  When User select "****_contacts_bank_dropdown_list" dropdown with "****_contacts_bank_dropdown_list_****"
  And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_valid_cashtag"
  And User click "send_it_check_account_button"

  When User click "send_it_add_recipient_button"

@android @uidatabound
Scenario:JENI3825-C110261-Send to Individual - Adding existing account number

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




##########################
##Send it - 3.1
##########################

#JENI-3810
@android @ios @uispecific @R3_1
Scenario:JENI3810-C116946-Send To Individual - Add Recipient to **** Contact Button
  Given User is logged in with cif "send_it_credential"
  And User change language to "language"
  And User access send it from side menu
  
  And User click "send_it_page_add"
  Then User expect "send_it_add_recipient_header_text" is exist 
  Then User expect "send_it_add_recipient_detail_header_text" is exist 
  Then User expect "send_it_add_recipient_detail_text" is exist  

@android @ios @uispecific @R3_1
Scenario:JENI3810-C116947-Send To Individual - Search and Select Bank
  Given User is logged in with cif "send_it_credential"
  And User change language to "language"
  And User access send it from side menu
  
  And User click "send_it_page_add"
  And User wait 5 seconds 
  And User select "send_it_add_recipient_select_bank" dropdown with "send_it_new_account_page_bca" 
  And User expect "send_it_add_recipient_text_bca" equal with "send_it_new_account_page_bca"

@android @ios @uidatabound @R3_1
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

@android @ios @uidatabound @R3_1
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

@android @ios @uidatabound @R3_1
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

@android @ios @uidatabound @R3_1
Scenario:JENI3810-C116951-Back Button New Bank Account Page
  Given User is logged in with cif "send_it_credential"
  And User change language to "language"
  And User access send it from side menu
  
  And User click "send_it_page_add"
  And User wait 5 seconds 

  And User press back button on device
  And User expect "send_it_bill_people_tab" equal with "bill_payment_tab_people"

@android @ios @uidatabound @R3_1
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


@android @ios @uidatabound @R3_1
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



# JENI-3825
@android @uidatabound @ios @R3_1
Scenario:JENI3825-C81125-Send To Individual - DDL Add New Bank Account

  Given User is logged in with cif "send_it_credential"
  
  And User change language to "language"
  And User access send it from side menu
  And User click "send_it_contact_****"

  And User click "send_it_individual_page_contact_dropdown"
  And User click "send_it_new_bank_page_add_button"
  Then element with "send_it_new_account_page_title" text will be displayed

@android @uidatabound @ios @R3_1
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



@android @uidatabound @ios @R3_1
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



@android @uidatabound @ios @R3_1
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


@android @uidatabound @ios @R3_1
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



@android @uidatabound @ios @R3_1
Scenario:JENI3825-C110261-Send to Individual - Adding existing account number under same contact

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



@android @uidatabound @ios @R3_1
Scenario:JENI3825-C110262-Send to Individual - Adding non-existing bank account/invalid bank account

  Given User is logged in with cif "send_it_credential"
  And User change language to "language"
  And User access send it from side menu
  And User click "send_it_page_add"

  When User select "****_contacts_bank_dropdown_list" dropdown with "****_contacts_bank_dropdown_list_****_syariah"
  And User fill "****_contacts_bank_accounts_text_field" with "send_it_not_valid_account"
  And User click "send_it_check_account_button"

  And User check snackbar with static text "send_it_error_message_no_account"


@android @uidatabound @ios @R3_1 
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
  And User fill "bill_payment_confrm_password_field" with "bill_payment_password_confirm"
  And User expect "bill_payment_confrm_password_submit" is exist

# JENI-1188
@android @uidatabound @R3_1
Scenario:JENI1188-C117928-Password Authentication for New Bank account in Existing Contact
  Given User is logged in with cif "send_it_credential"
  
  And User change language to "language"
  And User access send it from side menu
  And User click "send_it_contact_first"

  And User click "send_it_individual_page_contact_dropdown"
  And User click element with text "send_it_new_bank_page_add_button"

  And User click "send_it_new_bank_page_dropdown"
  And User fill "send_it_new_bank_page_dropdown_search" with "send_it_new_account_page_bca"
  And User expect "send_it_new_bank_page_dropdown_search" equal with "send_it_new_account_page_bca"
  Then element with "send_it_new_account_page_bca" text will be displayed

  When User click element with text "send_it_add_recipient_text_bca"
  And User click "send_it_add_recipient_button"
  Then "card_center_password_verification_form" will be displayed

# JENI-8427
@android @uidatabound @ios @R3_1 @R3_2
Scenario:JENI8427-C117989-Password Authentication for Amount Over Threshold Limit
  Given User is logged in with cif "send_it_credential"
  And User change language to "language"
  And User access send it from side menu

  And User click "send_it_contact_first"
  When User fill "send_it_individual_page_amount" with "send_it_individual_page_amount_over"
  And User click "send_it_individual_page_next"

  And User click "send_it_individual_confirm_page_send"
  Then "card_center_password_verification_form" will be displayed

@android @uidatabound @ios @R3_1 @R3_2
Scenario:JENI8427-C117990-User Add New Recipient/ Add New Bank Account AND Exceed Treshold Limit
  Given User is logged in with cif "send_it_credential"
  
  And User change language to "language"
  And User access send it from side menu

  And User click "send_it_page_add"

  When User select "****_contacts_bank_dropdown_list" dropdown with "****_contacts_bank_dropdown_list_bca"
  And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_account_number_begin_with_900"
  And User click "send_it_check_account_button"

  When User click "send_it_add_recipient_button"
  When User fill "send_it_individual_page_amount" with "send_it_individual_page_amount_over"
  And User click "send_it_individual_page_next"

  And User click "send_it_individual_confirm_page_send"
  Then "card_center_password_verification_form" will be displayed


#Eko Adi Prabowo
#[JENI-5023]Send It - Pay me Request + Split Bill Request
@android @uidatabound @R3_4 
Scenario:JENI5023-C102432#C128008-Pay Me Request Notification
  Given User is logged in with cif "send_it_send_money"
  And User change language to "language"
  And User click "dashboard_notification_icon"
  And User expect "notification_message_one" is exist
  And User click "notification_send_money_button"
  And User expect "send_it_send_to_individual_title" is exist
  And User expect "send_it_individual_page_amount" is exist

  @android @uidatabound @R3_4 @continuous
Scenario:JENI5023-C128008-Split Bill Request Notification
  And User expect "send_it_send_to_individual_title" is exist
  And User expect "send_it_individual_page_amount" is exist


  @android @uidatabound @R3_4 
Scenario:JENI5023-C102433-Pay Me Request Details - Bank Transfer Page
  Given User is logged in with cif "send_it_send_money"
  And User change language to "language"
  And User click "dashboard_notification_icon"
  And User expect "notification_message_one" is exist
  And User click "notification_send_money_button"
  And User expect "****_contacts_text_name_in_confirm_contact_info_screen" is exist
  And User expect "send_it_send_to_individual_title" is exist
  And User expect "send_it_individual_page_amount" is exist
  And User expect "send_it_individual_page_active_balance" is exist
  And User expect "send_it_individual_page_note" is exist
  And User expect "send_it_individual_page_category" is exist


  @android @uidatabound @R3_4 @continuous
Scenario:JENI5023-C128009-Split Bill Request Details - Bank Transfer Page
  And User expect "****_contacts_text_name_in_confirm_contact_info_screen" is exist
  And User expect "send_it_send_to_individual_title" is exist
  And User expect "send_it_individual_page_amount" is exist
  And User expect "send_it_individual_page_active_balance" is exist
  And User expect "send_it_individual_page_note" is exist
  And User expect "send_it_individual_page_category" is exist


  @android @uidatabound @R3_4
Scenario:JENI5023-C128020-Pay Me Request Details - Confirmation Page
  Given User is logged in with cif "send_it_send_money"
  And User change language to "language"
  And User click "dashboard_notification_icon"
  And User expect "notification_message_one" is exist
  And User click "notification_send_money_button"
  And User expect "****_contacts_text_name_in_confirm_contact_info_screen" is exist
  And User click "send_it_individual_page_next"
  And User expect "send_it_text_immediate_transfer" is exist
  And User expect "send_it_individual_confirm_page_account" is exist
  And User expect "send_it_individual_confirm_page_name" is exist
  And User expect "send_it_individual_confirm_page_total" is exist
  And User expect "send_it_category_button" is exist

  @android @uidatabound @R3_4 @continuous
Scenario:JENI5023-C128021-Split Bill Request Details - Confirmation Page
  And User expect "send_it_text_immediate_transfer" is exist
  And User expect "send_it_individual_confirm_page_account" is exist
  And User expect "send_it_individual_confirm_page_name" is exist
  And User expect "send_it_individual_confirm_page_total" is exist
  And User expect "send_it_category_button" is exist


  @android @uidatabound @R3_4  
Scenario:JENI5023-C116941#C128010-Pay Me Request Details - Contact Name
  Given User is logged in with cif "send_it_send_money"
  And User change language to "language"
  And User click "dashboard_notification_icon"
  And User expect "notification_message_one" is exist
  And User click "notification_send_money_button"
  And User expect "****_contacts_text_name_in_confirm_contact_info_screen" is exist
  And User click "send_it_name_user_sender_text"
  And User expect "send_it_name_user_sender_text" is exist

  @android @uidatabound @R3_4 @continuous 
Scenario:JENI5023-C116942#C128011-Pay Me/Split bill Request Details - Amount IDR
  And User wait 5 seconds 
  #And User click "send_it_individual_page_amount"
  And User expect "send_it_individual_page_amount" is exist

  @android @uidatabound @R3_4 @continuous 
Scenario:JENI5023-C116943#C128012-Pay Me/Split bill Request Details - Category 
  And User wait 5 seconds 
  And element with "outgoing_text" text will be displayed
  When User select "in_and_out_upcoming_push_payment_category_dropdown" dropdown with "send_it_category_healthcare"
  And User wait 5 seconds 
  And element with "send_it_category_healthcare" text will be displayed

  @android @uidatabound @R3_4 @continuous 
Scenario:JENI5023-C116944#C128013-Pay Me/Split Bill Request Details - Add Notes
  And User wait 5 seconds 
  And User fill "send_it_individual_page_note" with "****_contacts_friendly_name_35_char"
  And User expect "send_it_individual_page_note_count" equal with "****_contacts_note_countdown_text_zero"

  @android @uidatabound @R3_4 @continuous 
Scenario:JENI5023-C128015-User click back on Bank Transfer Page
  And User wait 5 seconds 
  And User press back button on device
  And User expect "notification_title" is exist


  @android @uidatabound @R3_4 
Scenario:JENI5023-C128138-The requester is existed in sender contact
  Given User is logged in with cif "send_it_send_money"
  And User change language to "language"
  And User click "dashboard_notification_icon"
  And User expect "notification_message_one" is exist
  And User click "notification_send_money_button"
  And User expect "****_contacts_text_name_in_confirm_contact_info_screen" is exist
  And User click "send_it_individual_page_next"
  And User click "split_bill_send_money_button"

  And User click "card_center_password_field_eye"
  And User fill "bill_payment_confrm_password_field" with "bill_payment_password_confirm"
  And User expect "bill_payment_confrm_password_submit" is exist


  @android @uidatabound @R3_4
Scenario:JENI5023-C102434#C128014-Pay me Request Amount Greater than Active balance
  #need preconditions data ransaction and data contact null
  Given Precondition make split bill with fist login "cif_requestor_3" and value "split_bill_divided_amount"
  Given User is logged in with cif "send_it_send_money"
  And User change language to "language"
  And User check data contact "pay_me_split_bill_sander" if exist

  And User click "dashboard_notification_icon"
  And User expect "notification_message_one" is exist
  And User click "notification_send_money_button"
  And User expect "****_contacts_text_name_in_confirm_contact_info_screen" is exist
  And User click "send_it_individual_page_next"
  And User click "split_bill_send_money_button"
  And element with "jc_verification_header_text" text will be displayed


  @android @uidatabound @R3_4
Scenario:JENI5023-C116945-Requester is not existed in **** Contact
    Given User is logged in with cif "send_it_send_money"
    And User change language to "language"
    And User check data contact "pay_me_split_bill_sander" if exist
    #Access notification center
    And User click "dashboard_notification_icon"
    And User expect "notification_message_one" is exist
    And User click "notification_send_money_button"
    And User expect "****_contacts_text_name_in_confirm_contact_info_screen" is exist
    And User click "send_it_individual_page_next"
    And User click "split_bill_send_money_button"
    And element with "jc_verification_header_text" text will be displayed
    #step up - confirmation password
    And User click "card_center_password_field_eye"
    And User fill "bill_payment_confrm_password_field" with "bill_payment_password_confirm"
    And User click "bill_payment_confrm_password_submit"
    #check new contact now is axist
    And User wait 5 seconds
    And User click "dashboard_hamburger_icon"
    And User swipe up until found "****_contacts_menu"
    And User click "****_contacts_menu"
    And User click "****_contacts_header_search_icon"
    And User fill "****_contacts_search_bank_list" with "split_bill_user_****_sender"
    And User expect "****_contact_item_0_title" is exist

  @android @uidatabound @R3_4
Scenario:JENI5023-C127361-Requester is existed and amount is not exceed treshold limit
  #Need Pre-conditions amount transfer request => 2.000.000 and user existed

  Given Precondition make split bill with fist login "cif_requestor_3" and value "split_bill_high_amount"
  Given User is logged in with cif "send_it_send_money"
  And User change language to "language"

  And User click "dashboard_notification_icon"
  And User expect "notification_message_one" is exist
  And User click "notification_send_money_button"
  And User expect "****_contacts_text_name_in_confirm_contact_info_screen" is exist
  And User click "send_it_individual_page_next"
  And User click "split_bill_send_money_button"
  And element with "jc_verification_header_text" text will be displayed


  @android @uidatabound @R3_4 
Scenario:JENI5023-C127362-Requester is existed and amount is exceed treshold limit
  #Need Pre-conditions amount transfer request < 2.000.000 and user existed
  Given Precondition make split bill with fist login "cif_requestor_3" and value "split_bill_divided_amount"
  Given User is logged in with cif "send_it_send_money"
  And User change language to "language"

  And User click "dashboard_notification_icon"
  And User expect "notification_message_one" is exist
  And User click "notification_send_money_button"
  And User expect "****_contacts_text_name_in_confirm_contact_info_screen" is exist
  And User click "send_it_individual_page_next"
  And User click "split_bill_send_money_button"
  And element with "jc_verification_header_text" text will not displayed


  @android @uidatabound @R3_4
Scenario:JENI5023-C116945-Requester is not existed in **** Contact
    Given User is logged in with cif "send_it_send_money"
    And User change language to "language"
    And User check data contact "split_bill_user_****_sender" if exist
    #Access notification center
    And User click "dashboard_notification_icon"
    And User expect "notification_message_one" is exist
    And User click "notification_send_money_button"
    And User expect "****_contacts_text_name_in_confirm_contact_info_screen" is exist
    And User click "send_it_individual_page_next"
    And User expect "send_it_text_immediate_transfer" is exist
    And User expect "send_it_individual_confirm_page_account" is exist
    And User expect "send_it_individual_confirm_page_name" is exist
    And User expect "send_it_individual_confirm_page_total" is exist
    And User expect "send_it_category_button" is exist

  @android @uidatabound @R3_5
  Scenario:JENI5023-C128020-Pay Me Request Details - Confirmation Page
    Given User is logged in with cif "send_it_send_money"
    And User change language to "language"
    And User click "dashboard_notification_icon"
    And User expect "notification_message_one" is exist
    And System save "notification_desc" numeric value
    And User click "notification_send_money_button"
    And User click "send_it_individual_page_next"
    And User click "send_it_individual_confirm_page_send"

    And User click "card_center_password_field_eye"
    And User fill "bill_payment_confrm_password_field" with "bill_payment_password_confirm"
    And User click "bill_payment_confrm_password_submit" until "send_it_dashboard_sending" displayed

    And User expect "send_it_dashboard_sending" is exist
    And User click "dashboard_notification_icon"
    Then User expect element contains saved data number 1 not displayed

# JENI-4359
  @android @uidatabound @R3_5
  Scenario:JENI4359-C81099-Scenario : Later Date Transfer

    Given User is logged in with cif "send_it_credential"
    
    And User change language to "language"
    And User access send it from side menu
    And User click "send_it_contact_first"

    When User fill "send_it_individual_page_amount" with "send_it_individual_page_amount"

    And User select "send_it_date_future_days" days from today in "send_it_individual_page_date" date picker
    
    And User click "send_it_individual_page_next"
    Then element that contains "send_it_later_date_popup" text will be displayed
    Then element with "send_it_later_date_popup_confirm" text will be displayed
    And User click element with text "send_it_frequency_confirmation_proceed"

    And User check if "send_it_date_future_days" days after today date displayed

  @android @uidatabound @R3_5
  # JENI4359-C81106-Scenario : Send It - Scheduled Transfer Modal - Proceed With Transfer 
  Scenario:JENI4359-C81101-Scenario : Scheduled Repeating Transfer

    Given User is logged in with cif "send_it_send_money"
    
    And User change language to "language"
    And User access send it from side menu
    And User click "send_it_contact_first"

    When User fill "send_it_individual_page_amount" with "send_it_individual_page_amount"

    And User select "send_it_individual_page_frequency" dropdown with "send_it_individual_confirm_page_monthly"

    And User click "send_it_individual_page_next"
    Then element that contains "send_it_repeating_date_popup" text will be displayed
    Then element with "send_it_repeating_date_popup_confirm" text will be displayed
    And User click element with text "send_it_frequency_confirmation_proceed"

    Then element with "send_it_repeating_confirm_page_title" text will be displayed

  @android @uidatabound @R3_5
  Scenario:JENI4359-C81107-Scenario : Send It - Scheduled Transfer Modal - Cancel

    Given User is logged in with cif "send_it_send_money"
    
    And User change language to "language"
    And User access send it from side menu
    And User click "send_it_contact_first"

    When User fill "send_it_individual_page_amount" with "send_it_individual_page_amount"

    And User select "send_it_individual_page_frequency" dropdown with "send_it_individual_confirm_page_monthly"

    And User click "send_it_individual_page_next"
    Then element that contains "send_it_repeating_date_popup" text will be displayed
    Then element with "send_it_repeating_date_popup_confirm" text will be displayed
    And User click element with text "send_it_cancel_button"

    Then "send_it_individual_page_amount" will be displayed
    And User expect "send_it_individual_page_amount" equal with "send_it_individual_page_amount"
    And User expect "send_it_individual_page_frequency_value" equal with "send_it_individual_confirm_page_monthly"

# JENI-1062 C80578
  @android @uidatabound @R3_5
  # C75731-[Layout]Check frequency dropdown
  Scenario:JENI1062-C75729-Frequency Setting

    Given User is logged in with cif "send_it_individual"
    
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

  @android @uidatabound @R3_5
  # JENI1062-C75730-User Chooses a Frequency other than Once
  Scenario:JENI1062-C80574-User Chooses a Frequency other than once and chooses Manually Transfer in End After

    Given User is logged in with cif "send_it_individual"
    
    And User change language to "language"
    And User access send it from side menu
    And User click "send_it_contact_first"

    When User fill "send_it_individual_page_amount" with "send_it_individual_page_amount"

    And User select "send_it_individual_page_frequency" dropdown with "send_it_individual_confirm_page_monthly"

    And User select "send_it_individual_page_end" dropdown with "send_it_individual_page_end_manual"

    Then User expect "send_it_individual_page_end_date" doesn't exist
    Then User expect "send_it_individual_page_no_payment" doesn't exist

  @android @uidatabound @R3_5
  Scenario:JENI1062-C80576-User Chooses a Frequency other than once and chooses Number of Payments in End After

    Given User is logged in with cif "send_it_individual"
    
    And User change language to "language"
    And User access send it from side menu
    And User click "send_it_contact_first"

    When User fill "send_it_individual_page_amount" with "send_it_individual_page_amount"

    And User select "send_it_individual_page_frequency" dropdown with "send_it_individual_confirm_page_monthly"

    And User select "send_it_individual_page_end" dropdown with "send_it_individual_page_no_payment"

    And User select "send_it_individual_page_no_payment" dropdown with "send_it_individual_page_no_payment_3"

  @android @uidatabound @R3_5
  Scenario:JENI1062-C80575 User Chooses a Frequency other than once and chooses End after particular date in End After

    Given User is logged in with cif "send_it_individual"
    
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

  @android @uidatabound @R3_5
  Scenario:JENI1062-C80577 Confirmation page display when user selects a transfer date later than NOW

    Given User is logged in with cif "send_it_individual"
    
    And User change language to "language"
    And User access send it from side menu
    And User click "send_it_contact_first"

    When User fill "send_it_individual_page_amount" with "send_it_individual_page_amount"

    And User select "send_it_date_future_days" days from today in "send_it_individual_page_date" date picker
    
    And User click "send_it_individual_page_next"
    And User click element with text "send_it_frequency_confirmation_proceed"

    And User check if "send_it_date_future_days" days after today date displayed

  @android @uidatabound @R3_5
  Scenario:JENI1062-C80578-Confirmation Page display when user selects frequency other than once and other options

    Given User is logged in with cif "send_it_individual"
    
    And User change language to "language"
    And User access send it from side menu
    And User click "send_it_contact_first"

    When User fill "send_it_individual_page_amount" with "flexi_saver_add_amount_50k"
    And System save balance "send_it_individual_page_amount" value
    And User select "send_it_individual_page_frequency" dropdown with "send_it_individual_confirm_page_weekly"

    # end aftrer Date
    And User select "send_it_individual_page_end" dropdown with "send_it_individual_page_end_first_values"
    And User click "send_it_individual_page_next"
    And User click element with text "send_it_frequency_confirmation_proceed"
    # And User wait "pay_me_loading_bar" will be gone

    And User check if today's date displayed
    Then User check if "send_it_days_in_week" days after today date displayed
    And element with "send_it_individual_confirm_page_weekly" text will be displayed

    # end after Cancelled Manually
    And User click "back_button"
    And User select "send_it_individual_page_end" dropdown with "send_it_individual_page_end_manual"
    And User click "send_it_individual_page_next"
    And User click element with text "send_it_frequency_confirmation_proceed"
    # And User wait "pay_me_loading_bar" will be gone

    Then User check if today's date displayed
    And element with "send_it_individual_confirm_page_weekly" text will be displayed
    And element with "send_it_individual_page_end_manual" text will be displayed

    # end after Num. of Payments
    And User click "back_button"
    And User select "send_it_individual_page_end" dropdown with "send_it_individual_page_no_payment"
    And User select "send_it_individual_page_no_payment" dropdown with "send_it_individual_page_no_payment_3"
    And User click "send_it_individual_page_next"
    And User click element with text "send_it_frequency_confirmation_proceed"
    # And User wait "pay_me_loading_bar" will be gone

    Then User check if today's date displayed
    And element with "send_it_individual_confirm_page_weekly" text will be displayed
    And element with "send_it_individual_page_no_payment" text will be displayed
    And element with "send_it_individual_page_no_payment_3" text will be displayed

    #JENI327
  @android @uidatabound @R3_6
  Scenario: JENI327-C70705-Scenario - Category Selection
    Given User is logged in with cif "card_center_active_all_card_with_contact"
    And User change language to "language"
    Then "dashboard" will be displayed
    And User access send it from side menu
    Then "send_it_page_title" will be displayed
    And User click "send_it_page_title" until "send_it_contact_first" displayed
    And User click "send_it_contact_first" until "send_it_individual_page_category" displayed
    Then "send_it_individual_page_category" will be displayed
    Then User select "send_it_individual_page_category" dropdown with "filter_category_children_label"

  @android @uidatabound @R3_6
  Scenario: JENI327-C70706-Scenario - Active Balance
    Given User is logged in with cif "card_center_active_all_card_with_contact"
    And User change language to "language"
    Then "dashboard" will be displayed
    And User access send it from side menu
    Then "send_it_page_title" will be displayed
    And User click "send_it_page_title" until "send_it_contact_first" displayed
    And User click "send_it_contact_first" until "send_it_individual_page_category" displayed
    Then "send_it_individual_page_active_balance" will be displayed
    Then "card_center_refund_active_balance" will be displayed

  @android @uidatabound @R3_6
  Scenario: JENI327-C70706-Scenario - Notes Selection
    Given User is logged in with cif "card_center_active_all_card_with_contact"
    And User change language to "language"
    Then "dashboard" will be displayed
    And User access send it from side menu
    Then "send_it_page_title" will be displayed
    And User click "send_it_page_title" until "send_it_contact_first" displayed
    And User click "send_it_contact_first" until "send_it_individual_page_note" displayed
    And User fill "send_it_individual_page_amount" with "card_center_e_card_decrease_limit_min"
    And User swipe up until found "send_it_individual_page_note"
    And User fill "send_it_individual_page_note" with "card_center_input_with_more_than_hundred_characters"
    Then User expect "send_it_individual_page_note" equal with 35 characters

# JENI-299
@android @uidatabound @R3_5
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

@android @uidatabound @R3_5
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

  @android @endtoend @R3_6
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

  @android @endtoend @continuous @R3_6
  Scenario:JENI8473-C124974-User clicks VIEW TRANSACTION STATUS button on PROCESSING modal page
    And User click "send_it_dashboard_receipt"
    And User check and click "tutorial_close" if exist
    Then "in_and_out_history_container" will be displayed
 
  @android @endtoend @R3_6
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

  @android @endtoend @continuous @R3_6
  Scenario:JENI8473-C124979-Information on SUCCESSFUL modal
    Then "send_it_process_modal_image_icon" will be displayed
    And element that contains "pay_me_amount" text will be displayed
    And element that contains "cashtag_empty_notification" text will be displayed
    And element that contains "send_it_data_account_bca" text will be displayed
    And "send_it_dashboard_sending" will be displayed

  @android @endtoend @continuous @R3_6
  Scenario:JENI8473-C124976-Transfer money succeed and PROCESSING modal closed
    And User click "onboarding_close_button"
    Then User expect "send_it_dashboard_sending" doesn't exist

  @android @uidatabound @R3_6
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

  @android @endtoend @R3_6
  Scenario:JENI8473-C130302-Processing Modal - one time instant transfer from Request Payment SplitBill
    Given User create split bill using "requestor_cashtag"
    Then "pay_me_success_sent_notification_new" will be displayed