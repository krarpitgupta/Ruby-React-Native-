@r3_****contacts_biller
Feature: Release 3 - **** CONTACTS module

#JENI-1201 
  @android @ios @uispecific 
  Scenario: JENI1201-C80919-Empty **** Contact screen
    Given User can access **** contacts menu with "cif_requestor_no_contact"
    And User wait 5 seconds
    Then User expect "****_contact_no_device_contact_label" is exist

  @android @ios @uispecific
  Scenario: JENI1201-C80925/C80924-[Translation]Content of **** Contact list show correctly with Bahasa/EN version
    Given User can access **** contacts menu with "cif_requestor_3"
    Then User expect "****_contacts_contact_tab" equal with "****_contacts_title_text"
    Then User expect "****_contacts_bills_tab" equal with "****_contatcs_bills_text"
    Then User expect "****_contacts_add_contact_button" equal with "****_contatcs_add_contact_button_text"

  #issue click save after input password not working on apps
  @android @uidatabound 
  Scenario: JENI1201-C80917-**** contact that only has 1 **** account associated with it
    Given User can access **** contacts menu with "cif_requestor_3"
    And User click "****_contacts_add_contacts_button"
    And User click "****_contacts_add_new_bank_contacts_button"
    And User click "****_contacts_bank_dropdown_list"
    And User click "****_contacts_header_search_input"
    And User hide the keyboard
    Then User select "****_contacts_dropdown_list" dropdown with "****_contacts_bank_dropdown_list_****"
    And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_****_account_number_2"
    And User click "****_contacts_check_bank_account_button"
    And User click "****_contacts_add_****_bank_contact_submit"
    And User wait 5 seconds
    And User check and click "****_contacts_move_here_button" if exist
    And User fill "****_contacts_friendly_name_text_field" with "****_contacts_friendly_name_****_1_cashtag"
    And User click "****_contacts_edit_contact_save_button"
    And User wait 5 seconds
    And User check and click "****_contacts_move_here_button" if exist
    #And User fill "****_contacts_password_textfield" with "****_contacts_password"
    #And User click "****_contacts_password_verification_button"
    #And User click "****_contacts_header_search_icon"
    #And User fill "****_contacts_header_search_input" with "****_contacts_friendly_name_****_1_char"

    And User wait 5 seconds
    Then User expect "****_contact_title_expect" equal with "****_contacts_item_0_title_text_mobius"
    Then User expect "****_contacts_item_0_avatar" is exist
    Then User expect "****_contacts_item_0_cashtag" equal with "****_contacts_item_0_cashtag_text"

  @android @uidatabound 
  Scenario: JENI1201-C80918-**** contact that has at least 1 **** account and has another or more bank accounts associated with it
    Given User can access **** contacts menu with "cif_requestor_3"
    #And User click "****_contacts_header_search_icon"
    #And User fill "****_contacts_header_search_input" with "****_contacts_friendly_name_****_1_char"
    #And User wait 3 seconds
    #Then User expect "****_contact_item_0_title" equal with "****_contacts_item_0_title_text_mobius"
    And User click "****_contact_item_0_title"
    And User click "****_contacts_edit_contact_button"
    And User click "****_contacts_edit_add_bank_contact"
    And User click "****_contacts_bank_dropdown_list"
    And User click "****_contacts_header_search_input"
    And User hide the keyboard
    Then User select "****_contacts_dropdown_list" dropdown with "****_contacts_bank_dropdown_list_bca"
    And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_other_bank_account_number"
    And User click "****_contacts_edit_check_bank_account_number_button"
    And User swipe up until found "****_contacts_edit_check_bank_account_name"
    And User click "****_contacts_edit_next_button"
    And User wait 5 seconds
    And User check and click "****_contacts_move_here_button" if exist
    And User click "****_contacts_edit_contact_save_button"
    #And User fill "****_contacts_password_textfield" with "****_contacts_password"
    #And User click "****_contacts_password_verification_button"
    And User click "back_button"
    #And User click "****_contacts_header_search_icon"
    #And User fill "****_contacts_header_search_input" with "****_contacts_friendly_name_****_1_char"
    And User wait 5 seconds
    Then User expect "****_contact_item_0_title" is exist

  @android @uidatabound 
  Scenario: JENI1201-C80919-Empty **** Contact screen
    Given User can access **** contacts menu with "cif_requestor_no_contact"
    Then User expect "****_contact_no_device_contact_label" is exist

#JENI-3900
 @android @ios @uispecific
  Scenario: JENI3900-C81076-add contact manually option (mobile version)
    Given User can access **** contacts menu with "pay_me_cif"
    When User click "****_contacts_add_contacts_button"
    Then User expect "****_contacts_add_new_bank_contacts_button" is exist
    And User expect "****_contacts_add_from_phone_contacts_button" is exist

  @android @ios @uispecific 
  Scenario: JENI3900-C81078-add new bank contact screen
    Given User can access **** contacts menu with "pay_me_cif"
    When User click "****_contacts_add_contacts_button"
    Then User expect "****_contacts_add_new_bank_contacts_button" is exist
    And User click "****_contacts_add_new_bank_contacts_button"
    Then User expect "****_contacts_bank_dropdown_list" is exist
    And User expect "****_contacts_bank_accounts_text_field" is exist
    #This is commenting out since to check enable/disabled button is not implemented yet by developer
    #And User expect "****_contacts_next_button" is disabled
    #And User expect "****_contacts_check_bank_account_button" is disabled

  @android @ios @uispecific
  Scenario: JENI3900-C81079-bank selection field
    Given User can access **** contacts menu with "pay_me_cif"
    When User click "****_contacts_add_contacts_button"
    Then User expect "****_contacts_add_new_bank_contacts_button" is exist
    And User click "****_contacts_add_new_bank_contacts_button"
    Then User expect "****_contacts_bank_dropdown_list" is exist
    And User click "****_contacts_bank_dropdown_list"
    Then User expect "****_contacts_search_bank_list" is exist

  @android @ios @uispecific 
  Scenario: JENI3900-C81080-search bank
    Given User can access **** contacts menu with "pay_me_cif"
    When User click "****_contacts_add_contacts_button"
    Then User expect "****_contacts_add_new_bank_contacts_button" is exist
    And User click "****_contacts_add_new_bank_contacts_button"
    Then User expect "****_contacts_bank_dropdown_list" is exist
    And User click "****_contacts_bank_dropdown_list"
    Then User expect "****_contacts_search_bank_list" is exist
    #User search bank account with search criteria as "BCA"
    And User fill "****_contacts_search_bank_list" with "****_contacts_selected_bank_from_search_field"

  @android @uispecific 
  Scenario: JENI3900-C81086-rename Friendly Name (Display Name)
    Given User can access **** contacts menu with "cif_requestor_3"
    And User click "****_contacts_add_contacts_button"
    And User click "****_contacts_add_new_bank_contacts_button"
    And User click "****_contacts_bank_dropdown_list"
    And User click "****_contacts_header_search_input"
    And User hide the keyboard
    Then User select "****_contacts_dropdown_list" dropdown with "****_contacts_bank_dropdown_list_****"
    And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_****_account_number_2"
    And User click "****_contacts_check_bank_account_button"
    And User click "****_contacts_add_****_bank_contact_submit"
    And User wait 5 seconds
    And User check and click "****_contacts_move_here_button" if exist
    And User fill "****_contacts_friendly_name_text_field" with "****_contacts_friendly_name_35_char"
    Then User expect "****_contacts_note_countdown_text" equal with "****_contacts_note_countdown_text_zero"

  @android @uispecific
  Scenario: JENI3900-C81087-empty name field
    Given User can access **** contacts menu with "cif_requestor_3"
    And User click "****_contacts_add_contacts_button"
    And User click "****_contacts_add_new_bank_contacts_button"
    And User click "****_contacts_bank_dropdown_list"
    And User click "****_contacts_header_search_input"
    And User hide the keyboard
    Then User select "****_contacts_dropdown_list" dropdown with "****_contacts_bank_dropdown_list_****"
    And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_****_account_number_2"
    And User click "****_contacts_check_bank_account_button"
    And User click "****_contacts_add_****_bank_contact_submit"
    And User wait 5 seconds
    And User check and click "****_contacts_move_here_button" if exist
    And User fill "****_contacts_friendly_name_text_field" with "****_contacts_friendly_name_0_char"
    And User click "****_contacts_edit_contact_save_button"
    Then User expect "****_contacts_password_verification_form" doesn't exist

  @android @uispecific 
  Scenario: JENI3900-C81090-select Back button
    Given User can access **** contacts menu with "cif_requestor_3"
    And User click "****_contacts_add_contacts_button"
    And User click "****_contacts_add_new_bank_contacts_button"
    And User click "****_contacts_bank_dropdown_list"
    And User click "****_contacts_header_search_input"
    And User hide the keyboard
    Then User select "****_contacts_dropdown_list" dropdown with "****_contacts_bank_dropdown_list_****"
    And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_****_account_number_2"
    And User click "****_contacts_check_bank_account_button"
    And User click "****_contacts_add_****_bank_contact_submit"
    And User wait 5 seconds
    And User check and click "****_contacts_move_here_button" if exist
    And User click "back_button"
    Then User expect "****_contacts_discard_popup_window" is exist
    Then User expect "****_contacts_discard_changes_cancel_button" is exist
    Then User expect "****_contacts_discard_changes_yes_button" is exist

  @android @uispecific 
  Scenario: JENI3900-C81091-Discard Change
    Given User can access **** contacts menu with "cif_requestor_3"
    And User click "****_contacts_add_contacts_button"
    And User click "****_contacts_add_new_bank_contacts_button"
    And User click "****_contacts_bank_dropdown_list"
    And User click "****_contacts_header_search_input"
    And User hide the keyboard
    Then User select "****_contacts_dropdown_list" dropdown with "****_contacts_bank_dropdown_list_****"
    And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_****_account_number_2"
    And User click "****_contacts_check_bank_account_button"
    And User click "****_contacts_add_****_bank_contact_submit"
    And User wait 5 seconds
    And User check and click "****_contacts_move_here_button" if exist
    And User fill "****_contacts_friendly_name_text_field" with "****_contacts_friendly_name_aaa_char"
    And User click "back_button"
    And User click "****_contacts_discard_changes_yes_button" 
    Then "****_contacts_menu_screen" will be displayed
    Then User expect "****_contacts_selected_contact_list" doesn't exist 

  @android @uispecific
  Scenario: JENI3900-C81081-Scenario : enable check button
    Given User can access **** contacts menu with "cif_requestor_3"
    And User click "****_contacts_add_contacts_button"
    And User click "****_contacts_add_new_bank_contacts_button"
    And User click "****_contacts_bank_dropdown_list"
    Then User click "****_contacts_header_search_input"
    And User hide the keyboard
    Then User select "****_contacts_dropdown_list" dropdown with "****_contacts_selected_bank_from_search_field_1"
    And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_other_bank_account_number"
    Then User expect "****_contacts_check_bank_account_button" is exist
    And User click "****_contacts_check_bank_account_button"
    Then User click "****_contacts_next_button"
    #This step to replace the step for checking about the button is enabled
    And User expect "****_contacts_check_bank_account_button" doesn't exist

  @android @uispecific
  Scenario: JENI3900-C81082-check bank account - success
    Given User can access **** contacts menu with "cif_requestor_3"
    And User click "****_contacts_add_contacts_button"
    And User click "****_contacts_add_new_bank_contacts_button"
    And User click "****_contacts_bank_dropdown_list"
    Then User click "****_contacts_header_search_input"
    And User hide the keyboard
    Then User select "****_contacts_dropdown_list" dropdown with "****_contacts_selected_****_bank_from_search_field"
    And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_valid_cashtag_text"
    Then User click "****_contacts_check_bank_account_button"
    And User expect "****_contacts_account_holder_name" is exist
    And User expect "****_contacts_avatar" is exist
    Then User click "****_contacts_next_button"
    #This step to replace the step for checking about the button is enabled
    And User expect "****_contacts_check_bank_account_button" doesn't exist
    And User expect "****_contacts_next_button" doesn't exist

  @android @uispecific 
  Scenario: JENI3900-C81083-RE-enable check button
    Given User can access **** contacts menu with "cif_requestor_3"
    And User click "****_contacts_add_contacts_button"
    And User click "****_contacts_add_new_bank_contacts_button"
    And User click "****_contacts_bank_dropdown_list"
    Then User click "****_contacts_header_search_input"
    And User hide the keyboard
    Then User select "****_contacts_dropdown_list" dropdown with "****_contacts_selected_****_bank_from_search_field"
    And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_valid_cashtag_text"
    Then User click "****_contacts_check_bank_account_button"
    And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_valid_cashtag_text_2"
    Then User expect "****_contacts_check_bank_account_button" is exist
    And User click "****_contacts_check_bank_account_button"
    Then User click "****_contacts_next_button"
    #This step to replace the step for checking about the button is enabled
    And User expect "****_contacts_check_bank_account_button" doesn't exist

  @android @uispecific 
  Scenario: JENI3900-C81084-check bank account - fail
    Given User can access **** contacts menu with "cif_requestor_3"
    And User click "****_contacts_add_contacts_button"
    And User click "****_contacts_add_new_bank_contacts_button"
    And User click "****_contacts_bank_dropdown_list"
    Then User click "****_contacts_header_search_input"
    And User hide the keyboard
    Then User select "****_contacts_dropdown_list" dropdown with "****_contacts_selected_****_bank_from_search_field"
    And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_invalid_cashtag"
    And User click "****_contacts_check_bank_account_button"
    Then User expect "****_contacts_invalid_cashtag_error_message" equal with "****_contacts_error_message_notification"
    And User click "****_contacts_check_bank_account_button"
    Then User click "****_contacts_next_button"
    #This step to replace the step for checking about the button is disabled
    And User expect "****_contacts_next_button" is exist

  @android @endtoend
  Scenario: JENI3900-C84232#C84233 [Translation] Add New Contact show correctly with EN and Bahasa Version
    Given User can access **** contacts menu with "cif_requestor_3" and language "language"
    When User click "****_contacts_add_contacts_button"
    Then User expect "****_contacts_add_new_bank_contacts_button_text" equal with "****_contacts_add_new_bank_contact"
    And User expect "****_contacts_add_from_phone_contacts_button_text" equal with "****_contacts_add_from_phone_contacts"
    And User expect "****_contacts_button_cancel_text" equal with "****_contacts_cancel_button"
    Then User click "****_contacts_add_new_bank_contacts_button"
    And User expect "****_contacts_new_contact_title" equal with "****_contacts_new_contact_title"
    Then User expect "****_contacts_add_new_bank_contact_title" equal with "****_contacts_add_new_bank_contact"
    And User expect "****_contacts_add_new_bank_contact_description" equal with "****_contacts_add_new_bank_contact_description"
    And User expect "****_contacts_select_bank_dropdown_title" equal with "****_contacts_select_bank_dropdown_title"
    And User expect "****_contacts_check_bank_account_button_title" equal with "****_contacts_check_bank_account_button_title"
    And User expect "****_contacts_next_button" equal with "****_contact_next_button_text"
    And User click "****_contacts_bank_dropdown_list"
    And User click "****_contacts_header_search_input"
    And User hide the keyboard
    Then User click "****_contacts_drpdown_list_1"
    And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_valid_cashtag"
    And User click "****_contacts_check_bank_account_button"
    Then User expect "****_contacts_account_input_hint" equal with "****_contacts_account_input_hint"
    Then User expect "****_contatcs_dropdown_head" equal with "****_contatcs_dropdown_head"
    And User click "****_contacts_add_****_bank_contact_submit"
    And User check and click "****_contacts_move_here_button" if exist
    And User fill "****_contacts_friendly_name_text_field" with "****_contacts_friendly_name_automation_2"
    Then User expect "****_contacts_edit_screen_title" equal with "****_contacts_edit_screen_title"
    Then User expect "****_contacts_edit_contact_save_button" equal with "****_contacts_edit_screen_save_button"
    Then User expect "****_contacts_edit_screen_name_label" equal with "****_contacts_edit_screen_name_label"
    Then User expect "****_contacts_edit_screen_name_field_hint" equal with "****_contacts_edit_screen_name_field_hint"
    Then User expect "****_contacts_edit_add_bank_contact" equal with "****_contacts_add_bank_account_button"
    And User click "****_contacts_edit_add_bank_contact"
    Then User expect "****_contacts_edit_screen_add_new_bank_contact_title" equal with "****_contacts_edit_screen_add_new_bank_contact_title"
    Then User expect "****_contacts_edit_screen_add_new_bank_contact_description" equal with "****_contacts_edit_screen_add_new_bank_contact_description"
    Then User expect "****_contacts_check_bank_account_button_title" equal with "****_contacts_check_bank_account_button_title"
    Then User expect "****_contacts_next_button_title" equal with "****_contact_next_button_text"
    And User click "****_contacts_next_button_title"
    And User click "****_contacts_edit_contact_save_button"
    Then User expect "top_notification_snackbar" equal with "****_contacts_success_snackbar_automation_2"

#JENI-3898

#JENI-4454
  @android @uispecific
  Scenario: JENI4454-C92503-add contact manually option (mobile version)
    Given User can access **** contacts menu with "pay_me_cif"
    When User click "****_contacts_add_contacts_button"
    Then User expect "****_contacts_add_new_bank_contacts_button" is exist
    And User expect "****_contacts_add_from_phone_contacts_button" is exist

  @android @uispecific 
  Scenario: JENI4454-C92505-add new bank contact screen
    Given User can access **** contacts menu with "pay_me_cif"
    When User click "****_contacts_add_contacts_button"
    Then User expect "****_contacts_add_new_bank_contacts_button" is exist
    And User click "****_contacts_add_new_bank_contacts_button"
    Then User expect "****_contacts_bank_dropdown_list" is exist
    And User expect "****_contacts_bank_accounts_text_field" is exist
    And User click "****_contacts_check_bank_account_button"
    Then User expect "****_contacts_check_bank_account_name" doesn't exist
    And User click "****_contacts_add_****_bank_contact_submit"
    Then User expect "****_contacts_move_here_button" doesn't exist

  @android @uispecific   
  Scenario: JENI4454-C92507-bank selection field
    Given User can access **** contacts menu with "pay_me_cif"
    When User click "****_contacts_add_contacts_button"
    Then User expect "****_contacts_add_new_bank_contacts_button" is exist
    And User click "****_contacts_add_new_bank_contacts_button"
    And User click "****_contacts_bank_dropdown_list"
    And User click "****_contacts_header_search_input"
    And User hide the keyboard
    Then User expect "****_contacts_drpdown_list_1" equal with "****_contacts_bank_dropdown_list_****"
    Then User expect "****_contacts_drpdown_list_2" equal with "****_contacts_bank_dropdown_list_sinaya"
    Then User expect "****_contacts_drpdown_list_3" equal with "****_contacts_bank_dropdown_list_syariah"
    Then User expect "****_contacts_drpdown_list_4" equal with "****_contacts_bank_dropdown_list_bni"
    Then User expect "****_contacts_drpdown_list_5" doesn't exist
    Then User expect "****_contacts_header_search_input" is exist

  @android @uispecific
  Scenario: JENI4454-C92508-search bank
    Given User can access **** contacts menu with "pay_me_cif"
    And User click "****_contacts_add_contacts_button"
    And User click "****_contacts_add_new_bank_contacts_button"
    And User click "****_contacts_bank_dropdown_list"
    When User fill "****_contacts_header_search_input" with "****_contacts_bank_dropdown_list_****"
    Then User expect "****_contacts_drpdown_list_1" equal with "****_contacts_bank_dropdown_list_****"

  @android @uispecific
  Scenario: JENI4454-C92509-display info text (select **** case)
    Given User can access **** contacts menu with "pay_me_cif"
    And User click "****_contacts_add_contacts_button"
    And User click "****_contacts_add_new_bank_contacts_button"
    And User click "****_contacts_bank_dropdown_list"
    And User click "****_contacts_header_search_input"
    And User hide the keyboard
    Then User select "****_contacts_dropdown_list" dropdown with "****_contacts_bank_dropdown_list_****"
    Then User expect "****_contacts_account_input_hint" is exist

  @android @uispecific 
  Scenario: JENI4454-C92510-display info text (select other Banks case)
    Given User can access **** contacts menu with "pay_me_cif"
    And User click "****_contacts_add_contacts_button"
    And User click "****_contacts_add_new_bank_contacts_button"
    And User click "****_contacts_bank_dropdown_list"
    And User click "****_contacts_header_search_input"
    #And User hide the keyboard
    Then User select "****_contacts_dropdown_list" dropdown with "****_contacts_bank_dropdown_list_bca"
    Then User expect "****_contacts_account_input_hint" is exist

  @android @uispecific 
  Scenario: JENI4454-C92512-check bank account - success (**** case) - cashtag
    Given User can access **** contacts menu with "pay_me_cif"
    And User click "****_contacts_add_contacts_button"
    And User click "****_contacts_add_new_bank_contacts_button"
    And User click "****_contacts_bank_dropdown_list"
    And User click "****_contacts_header_search_input"
    And User hide the keyboard
    Then User select "****_contacts_dropdown_list" dropdown with "****_contacts_bank_dropdown_list_****"
    And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_valid_cashtag"
    And User click "****_contacts_check_bank_account_button"
    Then User expect "****_contacts_check_bank_account_name" is exist
    And User click "****_contacts_next_button"
    And User click "back_button"
    And User check and click "****_contacts_discard_changes_yes_button" if exist
    And User click "****_contacts_check_bank_account_button"
    Then User expect "****_contacts_check_bank_account_name" doesn't exist

  @android @uispecific 
  Scenario: JENI4454-C92513-check bank account - success (other bank case)
    Given User can access **** contacts menu with "pay_me_cif"
    And User click "****_contacts_add_contacts_button"
    And User click "****_contacts_add_new_bank_contacts_button"
    And User click "****_contacts_bank_dropdown_list"
    And User click "****_contacts_header_search_input"
    And User fill "****_contacts_header_search_input" with "****_contacts_bank_dropdown_list_bca"
    #And User hide the keyboard
    Then User select "****_contacts_dropdown_list" dropdown with "****_contacts_bank_dropdown_list_bca"
    And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_other_bank_account_number"    
    And User click "****_contacts_check_bank_account_button"
    Then User expect "****_contacts_check_bank_account_name" is exist
    And User click "****_contacts_next_button"
    And User check and click "****_contacts_discard_changes_yes_button" if exist
    And User click "back_button"
    And User click "****_contacts_check_bank_account_button"
    Then User expect "****_contacts_check_bank_account_name" doesn't exist

  @android @uispecific 
  Scenario: JENI4454-C92514-RE-enable check button
    Given User can access **** contacts menu with "pay_me_cif"
    And User click "****_contacts_add_contacts_button"
    And User click "****_contacts_add_new_bank_contacts_button"
    And User click "****_contacts_bank_dropdown_list"
    And User click "****_contacts_header_search_input"
    #And User hide the keyboard
    Then User select "****_contacts_dropdown_list" dropdown with "****_contacts_bank_dropdown_list_bca"
    And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_****_account_number"
    And User click "****_contacts_check_bank_account_button"
    Then User expect "****_contacts_check_bank_account_name" is exist
    And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_****_account_number_2"
    And User click "****_contacts_check_bank_account_button"
    Then User expect "****_contacts_check_bank_account_name" is exist

  @android @uispecific
  Scenario: JENI4454-C92515-check bank account - fail (**** Case)
    Given User can access **** contacts menu with "pay_me_cif"
    And User click "****_contacts_add_contacts_button"
    And User click "****_contacts_add_new_bank_contacts_button"
    And User click "****_contacts_bank_dropdown_list"
    And User click "****_contacts_header_search_input"
    And User fill "****_contacts_header_search_input" with "****_contacts_bank_dropdown_list_****"
    #And User hide the keyboard
    Then User select "****_contacts_dropdown_list" dropdown with "****_contacts_bank_dropdown_list_****"
    And User fill "****_contacts_bank_accounts_text_field" with "****_contacts__invalid_****_account_number"
    And User click "****_contacts_check_bank_account_button"
    Then "top_notification" will be displayed

  @android @uispecific
  Scenario: JENI4454-C92516-check bank account - fail (other Bank Case)
    Given User can access **** contacts menu with "****_contacts_cif"
    And User click "****_contacts_add_contacts_button"
    And User click "****_contacts_add_new_bank_contacts_button"
    And User click "****_contacts_bank_dropdown_list"
    And User click "****_contacts_header_search_input"
    And User hide the keyboard
    Then User click "****_contacts_drpdown_list_2"
    And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_invalid_other_bank_account_number"
    And User click "****_contacts_check_bank_account_button"
    Then "top_notification" will be displayed

  @android @uispecific
  Scenario: JENI4454-C93209-add bank account
    Given User can access **** contacts menu with "****_contacts_cif"
    And User click "****_contacts_add_contacts_button"
    And User click "****_contacts_add_new_bank_contacts_button"
    And User click "****_contacts_bank_dropdown_list"
    And User click "****_contacts_header_search_input"
    And User hide the keyboard
    #Then User select "****_contacts_dropdown_list" dropdown with "****_contacts_bank_dropdown_list_****"
    Then User click "****_contacts_drpdown_list_1"
    And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_valid_cashtag"
    And User click "****_contacts_check_bank_account_button"
    Then User expect "****_contacts_check_bank_account_name" is exist
    And User click "****_contacts_next_button"
    Then User expect "****_contacts_edit_contact_save_button" is exist

  @android @uispecific
  Scenario: JENI4454-C92517-Confirm/Edit contact info screen
    Given User can access **** contacts menu with "****_contacts_cif"
    And User click "****_contacts_add_contacts_button"
    And User click "****_contacts_add_new_bank_contacts_button"
    And User click "****_contacts_bank_dropdown_list"
    And User click "****_contacts_header_search_input"
    And User hide the keyboard
    #Then User select "****_contacts_dropdown_list" dropdown with "****_contacts_bank_dropdown_list_****"
    Then User click "****_contacts_drpdown_list_1"
    And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_valid_cashtag"
    And User click "****_contacts_check_bank_account_button"
    Then User expect "****_contacts_check_bank_account_name" is exist
    And User click "****_contacts_next_button"
    Then User expect "****_contacts_edit_contact_display_name" is exist
    And User expect "****_contacts_text_name_in_confirm_contact_info_screen" is exist
    And User expect "****_contacts_edit_mobius_icon_contact_list" is exist
    And User expect "****_contacts_add_bank_account_button" is exist
    And User expect "****_contacts_edit_contact_save_button" is exist

  @android @uispecific
  Scenario: JENI4454-C92518-rename Friendly Name (Display Name)
    Given User can access **** contacts menu with "****_contacts_cif"
    And User click "****_contacts_add_contacts_button"
    And User click "****_contacts_add_new_bank_contacts_button"
    And User click "****_contacts_bank_dropdown_list"
    And User click "****_contacts_header_search_input"
    And User hide the keyboard
    #Then User select "****_contacts_dropdown_list" dropdown with "****_contacts_bank_dropdown_list_****"
    Then User click "****_contacts_drpdown_list_4"
    And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_other_bank_account_1"
    And User click "****_contacts_check_bank_account_button"
    And User click "****_contacts_add_****_bank_contact_submit"
    And User check and click "****_contacts_move_here_button" if exist
    And User fill "****_contacts_friendly_name_text_field" with "****_contacts_friendly_name_35_char"
    Then User expect "****_contacts_note_countdown_text" equal with "****_contacts_note_countdown_text_zero"

  #This scenario required to have at least 1 **** contact as pre-requisite
  @android @uispecific
  Scenario: JENI4454-C92519-empty name field
    Given User can access **** contacts menu with "cif_requestor_3"
    And User click "****_contacts_add_contacts_button"
    And User click "****_contacts_add_new_bank_contacts_button"
    And User click "****_contacts_bank_dropdown_list"
    And User click "****_contacts_header_search_input"
    And User hide the keyboard
   #Then User select "****_contacts_dropdown_list" dropdown with "****_contacts_bank_dropdown_list_****"
    Then User click "****_contacts_drpdown_list_4"
    And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_other_bank_account_1"
    And User click "****_contacts_check_bank_account_button"
    And User click "****_contacts_add_****_bank_contact_submit"
    And User check and click "****_contacts_move_here_button" if exist
    And User fill "****_contacts_friendly_name_text_field" with "****_contacts_friendly_name_0_char"
    And User click "****_contacts_edit_contact_save_button"
    Then User expect "****_contacts_password_verification_form" doesn't exist

  #This scenario required to have at least 1 **** contact as pre-requisite
  @android @uispecific
  Scenario: JENI4454-C92520-Add additional bank account screen (select add bank account button in confirm contact info screen)
    Given User can access **** contacts menu with "****_contacts_cif"
    And User click "****_contact_item_0_title"
    When User click "****_contacts_edit_button_on_edit_screen"
    And User click "****_contacts_edit_add_bank_contact"
    Then User expect "****_contacts_bank_dropdown_list" is exist
    And User expect "****_contacts_bank_accounts_text_field" is exist
    And User expect "****_contacts_account_name" is exist
    When User click "****_contacts_check_bank_account_button"
    Then User expect "****_contacts_check_bank_account_button" is exist
    When User click "****_contacts_edit_next_button"
    Then User expect "****_contacts_edit_next_button" is exist

  #This scenario required to have at least 1 **** contact as pre-requisite
  @android @uispecific
  Scenario: JENI4454-C92521-add additional bank account
    Given User can access **** contacts menu with "****_contacts_cif"
    Then System save "****_contact_item_0_acct_name" value
    And User click "****_contact_item_0_title"
    When User click "****_contacts_edit_button_on_edit_screen"
    And User click "****_contacts_edit_add_bank_contact"
    And User click "****_contacts_bank_dropdown_list"
    And User click "****_contacts_header_search_input"
    And User hide the keyboard
   #Then User select "****_contacts_dropdown_list" dropdown with "****_contacts_bank_dropdown_list_****"
    Then User click "****_contacts_drpdown_list_4"
    And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_other_bank_account_1"
    Then System save the value of "****_contacts_dropdown_bank_txt_on_edit_screen"
    And User click "****_contacts_check_bank_account_button"
    Then System save the value of "****_contacts_bank_act_no_on_edit_screen"
    And User click "****_contacts_edit_next_button"
    Then User expect this "****_contacts_friendly_name_text_field" is displayed as expected
    And User swipe up until all bank account display
    And User expect bank account "****_contacts_list_bank_accounts_on_ctc_details" is displayed
    And User expect delete each bank account "****_contacts_list_bank_accounts_on_ctc_details" is displayed
    And User click "****_contacts_edit_contact_save_button"

  #This scenario required to have at least 1 **** contact as pre-requisite
  @android @uispecific
  Scenario: JENI4454-C93211-can't have contact without account
    Given User can access **** contacts menu with "****_contacts_cif"
    And User click "****_contact_item_0_title"
    When User click "****_contacts_edit_button_on_edit_screen"
    And User expect delete each bank account "****_contacts_list_bank_accounts_on_ctc_details" is displayed
    Then User click delete each account "****_contacts_list_bank_accounts_on_ctc_details"
    And User click "****_contacts_edit_contact_save_button"
    Then User expect "****_contacts_edit_contact_save_button" is exist

  @android @uispecific
  Scenario: JENI4454-C92522-select Back button
    Given User can access **** contacts menu with "****_contacts_cif"
    And User click "****_contacts_add_contacts_button"
    And User click "****_contacts_add_new_bank_contacts_button"
    And User click "****_contacts_bank_dropdown_list"
    And User click "****_contacts_header_search_input"
    And User hide the keyboard
    Then User click "****_contacts_drpdown_list_4"
    And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_invalid_other_bank_account_number"
    And User click "****_contacts_check_bank_account_button"
    And User click "****_contacts_add_****_bank_contact_submit"
    And User wait 5 seconds
    And User check and click "****_contacts_move_here_button" if exist
    Then User click "****_contacts_back_button"
    And User expect "****_contacts_pop_up_discard_changes" is exist
    And User expect "****_contacts_no_button_on_pop_up" is exist
    And User expect "****_contacts_yes_discrd_button_on_pop_up" is exist

  @android @uispecific
  Scenario: JENI4454-C92523-Discard Change
    Given User can access **** contacts menu with "****_contacts_cif"
    And User click "****_contacts_add_contacts_button"
    And User click "****_contacts_add_new_bank_contacts_button"
    And User click "****_contacts_bank_dropdown_list"
    And User click "****_contacts_header_search_input"
    And User hide the keyboard
    Then User click "****_contacts_drpdown_list_1"
    And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_valid_cashtag"
    And User click "****_contacts_check_bank_account_button"
    And User click "****_contacts_add_****_bank_contact_submit"
    And User wait 5 seconds
    And User check and click "****_contacts_move_here_button" if exist
    Then User fill "****_contacts_friendly_name_text_field" with "****_contacts_new_acct_name"
    And User click "****_contacts_back_button"
    And User click "****_contacts_yes_discrd_button_on_pop_up"
    Then User expect **** contact of "****_contacts_list_on_jns_ctc_screen" is not contain "****_contacts_new_acct_name"

  @android @uispecific
  Scenario: JENI4454-C92524-Add contact to **** Contact
    Given User can access **** contacts menu with "****_contacts_cif"
    And User click "****_contacts_add_contacts_button"
    And User click "****_contacts_add_new_bank_contacts_button"
    And User click "****_contacts_bank_dropdown_list"
    And User click "****_contacts_header_search_input"
    And User hide the keyboard
    Then User click "****_contacts_drpdown_list_1"
    And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_valid_cashtag"
    And User click "****_contacts_check_bank_account_button"
    And User click "****_contacts_add_****_bank_contact_submit"
    And User wait 5 seconds
    And User check and click "****_contacts_move_here_button" if exist
    And User click "****_contacts_edit_contact_save_button"

  @android @uispecific 
  Scenario: JENI4454-C92511-Scenario : enable check button
    Given User can access **** contacts menu with "pay_me_cif"
    And User click "****_contacts_add_contacts_button"
    And User click "****_contacts_add_new_bank_contacts_button"
    And User click "****_contacts_bank_dropdown_list"
    And User click "****_contacts_header_search_input"
    #And User hide the keyboard
    Then User select "****_contacts_dropdown_list" dropdown with "****_contacts_bank_dropdown_list_bca"
    And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_****_account_number"
    And User click "****_contacts_check_bank_account_button"
    Then User expect "****_contacts_check_bank_account_name" is exist
    Then User click "****_contacts_edit_next_button"
    #And User check and click "****_contacts_move_here_button" if exis
    Then User expect "****_contacts_edit_contact_save_button" is exist

#JENI-5175
  @android @uispecific 
  Scenario: JENI5175-C92500-**** Bank - Valid Account Number - begin with 900
    Given User can access **** contacts menu with "cif_requestor_3"
    And User click "****_contacts_add_contacts_button"
    And User click "****_contacts_add_new_bank_contacts_button"
    And User click "****_contacts_bank_dropdown_list"
    And User click "****_contacts_header_search_input"
    And User hide the keyboard
    Then User select "****_contacts_dropdown_list" dropdown with "****_contacts_bank_dropdown_list_****"
    And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_account_number_begin_with_900"
    And User click "****_contacts_check_bank_account_button"
    Then User expect "****_contacts_friendly_name_text" is exist

  @android @uispecific 
  Scenario: JENI5175-C92500-**** Bank - Valid Account Number - begin with 001
    Given User can access **** contacts menu with "cif_requestor_3"
    And User click "****_contacts_add_contacts_button"
    And User click "****_contacts_add_new_bank_contacts_button"
    And User click "****_contacts_bank_dropdown_list"
    And User click "****_contacts_header_search_input"
    And User hide the keyboard
    Then User select "****_contacts_dropdown_list" dropdown with "****_contacts_bank_dropdown_list_****"
    And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_account_number_begin_with_001"
    And User click "****_contacts_check_bank_account_button"
    Then User expect "****_contacts_friendly_name_text" is exist 

  @android @uispecific
  Scenario: JENI5175-C92501-**** Bank - Enable Check button - **** account number
    Given User can access **** contacts menu with "cif_requestor_3"
    And User click "****_contacts_add_contacts_button"
    And User click "****_contacts_add_new_bank_contacts_button"
    And User click "****_contacts_bank_dropdown_list"
    And User click "****_contacts_header_search_input"
    And User hide the keyboard
    Then User select "****_contacts_dropdown_list" dropdown with "****_contacts_bank_dropdown_list_****"
    And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_****_account_number"
    And User click "****_contacts_check_bank_account_button"
    Then User expect "****_contacts_check_bank_account_name" is exist 

  @android @uispecific 
  Scenario: JENI5175-C92501-**** Bank - Enable Check button - begin with 08
    Given User can access **** contacts menu with "cif_requestor_3"
    And User click "****_contacts_add_contacts_button"
    And User click "****_contacts_add_new_bank_contacts_button"
    And User click "****_contacts_bank_dropdown_list"
    And User click "****_contacts_header_search_input"
    And User hide the keyboard
    Then User select "****_contacts_dropdown_list" dropdown with "****_contacts_bank_dropdown_list_****"
    And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_****_account_number"
    And User click "****_contacts_check_bank_account_button"
    Then User expect "****_contacts_check_bank_account_name" is exist

  @android @uispecific
  Scenario: JENI5175-C92501-**** Bank - Enable Check button - begin with 628
    Given User can access **** contacts menu with "cif_requestor_3"
    And User click "****_contacts_add_contacts_button"
    And User click "****_contacts_add_new_bank_contacts_button"
    And User click "****_contacts_bank_dropdown_list"
    And User click "****_contacts_header_search_input"
    And User hide the keyboard
    Then User select "****_contacts_dropdown_list" dropdown with "****_contacts_bank_dropdown_list_****"
    And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_phone_number_begin_with_628"
    And User click "****_contacts_check_bank_account_button"
    Then User expect "****_contacts_check_bank_account_name" is exist 

  @android @uispecific
  Scenario: JENI5175-C92501-**** Bank - Enable Check button - begin with +628
    Given User can access **** contacts menu with "cif_requestor_3"
    And User click "****_contacts_add_contacts_button"
    And User click "****_contacts_add_new_bank_contacts_button"
    And User click "****_contacts_bank_dropdown_list"
    And User click "****_contacts_header_search_input"
    And User hide the keyboard
    Then User select "****_contacts_dropdown_list" dropdown with "****_contacts_bank_dropdown_list_****"
    And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_phone_number_begin_with_+628"
    And User click "****_contacts_check_bank_account_button"
    Then User expect "****_contacts_check_bank_account_name" doesn't exist

  @android @uispecific 
  Scenario: JENI5175-C92502-Other Bank - Enable Check button
    Given User can access **** contacts menu with "cif_requestor_3"
    And User click "****_contacts_add_contacts_button"
    And User click "****_contacts_add_new_bank_contacts_button"
    And User click "****_contacts_bank_dropdown_list"
    And User click "****_contacts_header_search_input"
    And User hide the keyboard
    Then User select "****_contacts_dropdown_list" dropdown with "****_contacts_bank_dropdown_list_bca"
    And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_phone_number_begin_with_+628"
    And User click "****_contacts_check_bank_account_button"
    Then User expect "****_contacts_check_bank_account_name" is exist


#JENI-3902
  @android @uispecific 
  Scenario: JENI3902-C92497-View Contact detail (**** Account Only)
    Given User can access **** contacts menu with "cif_requestor_3"
    And User click "****_contacts_add_contacts_button"
    And User click "****_contacts_add_new_bank_contacts_button"
    And User click "****_contacts_bank_dropdown_list"
    Then User click "****_contacts_header_search_input"
    And User hide the keyboard
    Then User select "****_contacts_dropdown_list" dropdown with "****_contacts_selected_****_bank_from_search_field"
    And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_valid_cashtag_text"
    Then User click "****_contacts_check_bank_account_button"
    Then User expect "****_contacts_display_account" is exist
    And User click "****_contacts_next_button"
    And User check and click "****_contacts_move_here_button" if exist
    And User expect "****_contacts_edit_contact_display_name" is exist
    And User expect "****_contacts_edit_contact_account_name" is exist
    And User expect "****_contacts_edit_contact_account_number" is exist
    And User expect "****_contacts_add_bank_account_button" is exist

  @android @uispecific
  Scenario: JENI3902-C92498-View Contact detail (other Bank Accounts Only)
    Given User can access **** contacts menu with "cif_requestor_3"
    And User click "****_contacts_add_contacts_button"
    And User click "****_contacts_add_new_bank_contacts_button"
    And User click "****_contacts_bank_dropdown_list"
    Then User click "****_contacts_header_search_input"
    And User hide the keyboard
    Then User select "****_contacts_dropdown_list" dropdown with "****_contacts_selected_bank_from_search_field"
    And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_other_bank_account_1"
    When User click "****_contacts_check_bank_account_button"
    Then User expect "****_contacts_display_account" is exist
    And User click "****_contacts_next_button"
    And User check and click "****_contacts_move_here_button" if exist
    And User expect "****_contacts_edit_contact_display_name" is exist
    And User expect "****_contacts_edit_contact_account_name" is exist
    And User expect "****_contacts_edit_contact_account_number" is exist
    And User expect "****_contacts_add_bank_account_button" is exist

  @android @uispecific
  Scenario: JENI3902-C92499-View Contact detail (**** + other Bank Accounts)- Case **** Only
    Given User can access **** contacts menu with "cif_requestor_3"
    And User click "****_contacts_add_contacts_button"
    And User click "****_contacts_add_new_bank_contacts_button"
    And User click "****_contacts_bank_dropdown_list"
    Then User click "****_contacts_header_search_input"
    And User hide the keyboard
    Then User select "****_contacts_dropdown_list" dropdown with "****_contacts_selected_****_bank_from_search_field"
    And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_valid_cashtag_text"
    Then User click "****_contacts_check_bank_account_button"
    Then User expect "****_contacts_display_account" is exist
    And User click "****_contacts_next_button"
    And User check and click "****_contacts_move_here_button" if exist
    And User expect "****_contacts_edit_contact_display_name" is exist
    And User expect "****_contacts_edit_contact_account_name" is exist
    And User expect "****_contacts_edit_contact_account_number" is exist
    And User expect "****_contacts_add_bank_account_button" is exist

  @android @uispecific @continuous
  Scenario: JENI3902-C92499-View Contact detail (**** + other Bank Accounts)- Case **** + Other Bank
    And User click "****_contacts_add_bank_account_button"
    And User click "****_contacts_bank_dropdown_list"
    Then User click "****_contacts_header_search_input"
    And User hide the keyboard
    Then User select "****_contacts_dropdown_list" dropdown with "****_contacts_selected_bank_from_search_field"
    And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_other_bank_account_1"
    When User click "****_contacts_check_bank_account_button"
    Then User expect "****_contacts_display_account" is exist
    And User click "****_contacts_next_button"
    And User check and click "****_contacts_move_here_button" if exist
    Then User expect "****_contacts_add_bank_account_button" is exist

    And User click "****_contacts_add_bank_account_button"
    And User click "****_contacts_bank_dropdown_list"
    Then User click "****_contacts_header_search_input"
    And User hide the keyboard
    Then User select "****_contacts_dropdown_list" dropdown with "****_contacts_selected_bank_from_search_field_1"
    And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_other_bank_account_2"
    When User click "****_contacts_check_bank_account_button"
    Then User expect "****_contacts_display_account" is exist
    And User click "****_contacts_next_button"
    And User check and click "****_contacts_move_here_button" if exist

  @android @uispecific @continuous
  Scenario: JENI3902-C92499-View Contact detail (**** + other Bank Accounts)- Case Other Bank Only
    Given User can access **** contacts menu with "cif_requestor_3"
    And User click "****_contacts_add_contacts_button"
    And User click "****_contacts_add_new_bank_contacts_button"
    And User click "****_contacts_bank_dropdown_list"
    Then User click "****_contacts_header_search_input"
    And User hide the keyboard
    Then User select "****_contacts_dropdown_list" dropdown with "****_contacts_selected_bank_from_search_field"
    And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_other_bank_account_1"
    Then User click "****_contacts_check_bank_account_button"
    Then User expect "****_contacts_display_account" is exist
    And User click "****_contacts_next_button"
    And User check and click "****_contacts_move_here_button" if exist
    And User expect "****_contacts_edit_contact_display_name" is exist
    And User expect "****_contacts_edit_contact_account_name" is exist
    And User expect "****_contacts_edit_contact_account_number" is exist
    And User expect "****_contacts_add_bank_account_button" is exist

#JENI-3899
  @android @ios @uispecific
  Scenario: JENI3899-C84104-add from device contact option
    Given User can access **** contacts menu with "cif_requestor_3"
    And User click "****_contacts_add_contacts_button"
    Then User expect "****_contacts_add_new_bank_contacts_button" is exist
    Then User expect "****_contacts_add_from_phone_contacts_button" is exist

  @android @ios @uispecific 
  Scenario: JENI3899-C84106-no device contact
    Given User can access **** contacts menu with "cif_requestor_3"
    And User click "****_contacts_add_contacts_button"
    And User click "****_contacts_add_from_phone_contacts_button"
    Then User expect "****_contact_no_device_contact_label" is exist


#JENI-4370
  @android @uispecific 
  Scenario: JENI4370-C93212-No **** in Bank list (Add new contact case)
    Given User can access **** contacts menu with "cif_requestor_3"
    And User click "****_contacts_add_contacts_button"
    And User click "****_contacts_add_new_bank_contacts_button"
    And User click "****_contacts_bank_dropdown_list"
    And User click "****_contacts_header_search_input"
    And User hide the keyboard
    Then User click "****_contacts_drpdown_list_1"
    And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_****_account_number"
    And User click "****_contacts_check_bank_account_button"
    And User click "****_contacts_add_****_bank_contact_submit"
    And User wait 5 seconds
    And User check and click "****_contacts_move_here_button" if exist
    And User expect "****_contacts_account_****" is exist
    And User click "****_contacts_add_bank_account_button"
    Then User expect "****_contacts_bank_accounts_text_field" is exist
    Then User click "****_contacts_check_bank_account_button"
    And User expect "****_contacts_check_bank_account_name" doesn't exist
    And User click "****_contacts_add_****_bank_contact_submit"
    Then User expect "****_contacts_add_bank_account_button" doesn't exist
    And User click "****_contacts_add_bank_contact_dropdown"
    Then User expect "****_contacts_drpdown_list_1" doesn't exist

#JENI-6230
  @android @uispecific 
  Scenario: JENI6230-C93220-Scenario : Detect Account Duplication in New Bank Contact screen - Precondition
    # This scenario need to recheck again since currently we dont know **** contacts list exactly in every user account
    Given User can access **** contacts menu with "cif_requestor_3"
    And User click "****_contacts_add_contacts_button"
    And User click "****_contacts_add_new_bank_contacts_button"
    And User click "****_contacts_bank_dropdown_list"
    And User click "****_contacts_header_search_input"
    And User hide the keyboard
    Then User click "****_contacts_drpdown_list_1"
    And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_valid_cashtag_text"
    And User click "****_contacts_check_bank_account_button"
    And User click "****_contacts_add_****_bank_contact_submit"
    And User check and click "****_contacts_move_here_button" if exist
    And User fill "****_contacts_friendly_name_text_field" with "****_contacts_friendly_name_automation_1"
    And User click "****_contacts_edit_contact_save_button"

    And User fill "****_contacts_password_textfield" with "password_confirm"
    And User click "****_contacts_password_verification_button"

  Scenario: JENI6230-C93220-Scenario : Detect Account Duplication in New Bank Contact screen 
    # This scenario need to recheck again since currently we dont know **** contacts list exactly in every user account
    And User click "****_contacts_add_contacts_button"
    And User click "****_contacts_add_new_bank_contacts_button"
    And User click "****_contacts_bank_dropdown_list"
    And User click "****_contacts_header_search_input"
    And User hide the keyboard
    Then User click "****_contacts_drpdown_list_1"
    And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_valid_cashtag_text"
    And User click "****_contacts_check_bank_account_button"
    And User click "****_contacts_add_****_bank_contact_submit"
    And User wait 5 seconds
    And User expect "****_contacts_move_here_button" is exist

    And User click "****_contacts_duplicate_cancel_button"
    And User click "back_button"

  @android @uispecific @continuous
  Scenario: JENI6230-C93222-Scenario : Detect Account Duplication in New Bank Account screen (additional bank account)
    # This scenario need to recheck again since currently we dont know **** contacts list exactly in every user account
    And User click "****_contacts_add_contacts_button"
    And User click "****_contacts_add_new_bank_contacts_button"
    And User click "****_contacts_bank_dropdown_list"
    And User click "****_contacts_header_search_input"
    And User hide the keyboard
    Then User click "****_contacts_drpdown_list_4"
    And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_invalid_other_bank_account_number"
    And User click "****_contacts_check_bank_account_button"
    And User click "****_contacts_add_****_bank_contact_submit"
    And User wait 5 seconds
    And User check and click "****_contacts_move_here_button" if exist
    And User click "****_contacts_add_bank_account_button"
    And User click "****_contacts_add_bank_contact_dropdown"
    Then User click "****_contacts_drpdown_list_1"
    Then User fill "****_contacts_bank_accounts_text_field" with "****_contacts_valid_cashtag_text"
    Then User click "****_contacts_check_bank_account_button"
    And User click "****_contacts_add_****_bank_contact_submit"
    Then User expect "****_contacts_move_here_button" is exist

    And User click "****_contacts_duplicate_cancel_button"
    And User click "back_button"

  @android @uispecific @continuous
  Scenario: JENI6230-C93223-Scenario : See existing accounts in Confirm contact info screen
    # This scenario need to recheck again since currently we dont know **** contacts list exactly in every user account
    Given User can access **** contacts menu with "cif_requestor_3"
    And User click "****_contacts_add_contacts_button"
    And User click "****_contacts_add_new_bank_contacts_button"
    And User click "****_contacts_bank_dropdown_list"
    And User click "****_contacts_header_search_input"
    And User hide the keyboard
    Then User click "****_contacts_drpdown_list_1"
    And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_valid_cashtag_text"
    And User click "****_contacts_check_bank_account_button"
    And User click "****_contacts_add_****_bank_contact_submit"
    And User wait 5 seconds
    And User click "****_contacts_move_here_button"
    And System save "****_contacts_check_bank_account_name" value
    Then User expect "****_contacts_text_name_in_confirm_contact_info_screen" equal with saved data number 1

    And User click "back_button"
    And User click "****_contacts_discard_changes_yes_button"

  @android @uidatabound @continuous
  Scenario: JENI6230-C93224-Scenario : Move Accounts from Existing Contact to Newly created Contact
    # This scenario need to recheck again since currently we dont know **** contacts list exactly in every user account
    Given User expect "****_contact_list_automation_1" is exist
    And User click "****_contacts_add_contacts_button"
    And User click "****_contacts_add_new_bank_contacts_button"
    And User click "****_contacts_bank_dropdown_list"
    And User click "****_contacts_header_search_input"
    And User hide the keyboard
    Then User click "****_contacts_drpdown_list_1"
    And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_valid_cashtag_text"
    And User click "****_contacts_check_bank_account_button"
    And User click "****_contacts_add_****_bank_contact_submit"
    And User wait 5 seconds
    And User check and click "****_contacts_move_here_button" if exist
    And User fill "****_contacts_friendly_name_text_field" with "****_contacts_friendly_name_automation_2"
    And User click "****_contacts_edit_contact_save_button"
    Then User expect "****_contact_list_automation_1" doesn't exist
    

  @android @uispecific
  Scenario: JENI6230-C93402-Check no account duplication translation
    # This scenario need to recheck again since currently we dont know **** contacts list exactly in every user account
    Given User can access **** contacts menu with "cif_requestor_3" and language "language"
    And User click "****_contacts_add_contacts_button"
    And User click "****_contacts_add_new_bank_contacts_button"
    And User click "****_contacts_bank_dropdown_list"
    And User click "****_contacts_header_search_input"
    And User hide the keyboard
    Then User click "****_contacts_drpdown_list_1"
    And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_valid_cashtag_text_3"
    And User click "****_contacts_check_bank_account_button"
    And User click "****_contacts_add_****_bank_contact_submit"
    And User wait 5 seconds
    Then User expect "****_contatcs_pop_up_duplication_title" equal with "****_contatcs_pop_up_duplication_title"
    Then User expect "****_contatcs_pop_up_duplication_manage_text" equal with "****_contatcs_pop_up_duplication_manage_text"
    Then User expect "****_contacts_move_here_button" equal with "****_contacts_move_here_button"
    Then User expect "****_contacts_duplicate_cancel_button" equal with "****_contacts_duplicate_cancel_button"

#JENI-3903
  @android @uispecific
  Scenario: JENI3903-C93227-Edit Contact Screen
    # This scenario need to recheck again since currently we dont know **** contacts list exactly in every user account
    Given User can access **** contacts menu with "cif_requestor_3"
    And User swipe up contact until found "****_contacts_mobius_icon_list"
    And User click "****_contacts_mobius_icon_list"
    And User click "****_contacts_edit_button"
    Then User expect "****_contacts_edit_screen_title" is exist
    And User expect "****_contacts_friendly_name_text_field" is exist
    And User expect "****_contacts_note_countdown_text" is exist
    And User click "****_contacts_edit_contact_save_button"
    Then User expect "top_notification_snackbar" doesn't exist

  @android @uispecific
  Scenario: JENI3903-C93228-Rename Friendly Name (Display Name)
    # This scenario need to recheck again since currently we dont know **** contacts list exactly in every user account
    Given User can access **** contacts menu with "cif_requestor_3"
    And User swipe up contact until found "****_contacts_mobius_icon_list"
    And User click "****_contacts_mobius_icon_list"
    And User click "****_contacts_edit_button"
    Then User expect "****_contacts_edit_screen_title" is exist
    And User fill "****_contacts_friendly_name_text_field" with "****_contacts_friendly_name_0_char"
    And User click "****_contacts_edit_contact_save_button"
    Then User expect "top_notification_snackbar" doesn't exist
    And User fill "****_contacts_friendly_name_text_field" with "****_contacts_friendly_name_35_char"
    And User expect "****_contacts_note_countdown_text" equal with "****_contacts_note_countdown_text_zero"
    And User click "****_contacts_edit_contact_save_button"
    Then User expect "top_notification_snackbar" is exist

  @android @uispecific
  Scenario: JENI3903-C93229-Select "X" (Delete Account)
    # This scenario need to recheck again since currently we dont know **** contacts list exactly in every user account
    Given User can access **** contacts menu with "cif_requestor_3"
    And User swipe up contact until found "****_contacts_mobius_icon_list"
    And User click "****_contacts_mobius_icon_list"
    And User click "****_contacts_edit_button"
    Then User expect "****_contacts_edit_screen_title" is exist
    Then User expect "****_contacts_text_name_in_confirm_contact_info_screen" is exist
    And User click "****_contacts_edit_x_button"
    Then User expect "****_contacts_text_name_in_confirm_contact_info_screen" doesn't exist

  @android @uispecific
  Scenario: JENI3903-C93230-Select Arrow Back button
    # This scenario need to recheck again since currently we dont know **** contacts list exactly in every user account
    Given User can access **** contacts menu with "cif_requestor_3"
    And User swipe up contact until found "****_contacts_mobius_icon_list"
    And User click "****_contacts_mobius_icon_list"
    And User click "****_contacts_edit_button"
    Then User expect "****_contacts_edit_screen_title" is exist
    And User click "back_button"
    Then User expect "****_contacts_discard_popup_window" is exist
    Then User expect "****_contacts_discard_changes_yes_button" is exist
    Then User expect "****_contacts_discard_changes_cancel_button" is exist

  @android @uispecific
  Scenario: JENI3903-C109166-Add additional bank account screen (select add bank account button in edit contact screen)
    # This scenario need to recheck again since currently we dont know **** contacts list exactly in every user account
    Given User can access **** contacts menu with "cif_requestor_3"
    And User swipe up contact until found "****_contacts_mobius_icon_list"
    And User click "****_contacts_mobius_icon_list"
    And User click "****_contacts_edit_button"
    Then User expect "****_contacts_edit_screen_title" is exist
    And User click "****_contacts_edit_add_bank_contact"
    Then User expect "****_contacts_edit_add_new_contacts_title_screen" is exist
    And User click "****_contacts_add_bank_contact_dropdown"
    Then User expect "****_contacts_search_bank_list" is exist
    Then User expect "****_contacts_drpdown_list_1" is exist
    Then User expect "****_contacts_drpdown_list_2" is exist
    Then User expect "****_contacts_drpdown_list_3" is exist
    Then User expect "****_contacts_drpdown_list_4" is exist
    And User click "back_button"
    Then User expect "****_contacts_bank_accounts_text_field" is exist
    When User click "****_contacts_check_bank_account_button"
    Then User expect "****_contacts_check_bank_account_name" doesn't exist
    And User click "****_contacts_next_button"
    Then User expect "****_contacts_add_bank_account_button" doesn't exist
    Then User expect "****_contacts_text_name_in_edit_add_new_contact_screen" is exist

  @android @uidatabound
  Scenario: JENI3903-C109167-add additional bank account
    # This scenario need to recheck again since currently we dont know **** contacts list exactly in every user account
    Given User can access **** contacts menu with "cif_requestor_3"
    And User swipe up contact until found "****_contacts_mobius_icon_list"
    And User click "****_contacts_mobius_icon_list"
    And User click "****_contacts_edit_button"
    Then User expect "****_contacts_text_name_in_edit_contact_screen" is exist
    And System save "****_contacts_friendly_name_text_field" value
    And User click "****_contacts_edit_add_bank_contact"
    And User click "****_contacts_add_bank_contact_dropdown"
    And User click "****_contacts_search_bank_list"
    And User click "****_contacts_drpdown_list_4" 
    And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_other_bank_account_number"
    And User click "****_contacts_check_bank_account_button"
    Then System save "****_contacts_check_bank_account_name" value
    And User click "****_contacts_next_button"
    And User check and click "****_contacts_move_here_button" if exist
    And User swipe up contact until found "****_contacts_bank_accounts_bca"
    Then User expect "****_contacts_text_name_in_edit_contact_screen_2" equal with saved data number 2
    Then User expect "****_contacts_friendly_name_text_field" equal with saved data number 1

  @android @uidatabound
  Scenario: JENI3903-C109172-No **** in Bank list (Add contact from edit contact screen)
    # This scenario need to recheck again since currently we dont know **** contacts list exactly in every user account
    Given User can access **** contacts menu with "cif_requestor_3"
    And User swipe up contact until found "****_contacts_mobius_icon_list"
    And User click "****_contacts_mobius_icon_list"
    And User click "****_contacts_edit_button"
    Then User expect "****_contacts_text_name_in_edit_contact_screen" is exist
    And User click "****_contacts_edit_add_bank_contact"
    Then User expect "****_contacts_edit_add_new_contacts_title_screen" is exist
    And User click "****_contacts_add_bank_contact_dropdown"
    Then User expect "****_contacts_search_bank_list" is exist
    Then User expect "****_contacts_drpdown_list_2" is exist
    Then User expect "****_contacts_drpdown_list_3" is exist
    Then User expect "****_contacts_drpdown_list_4" is exist
    And User expect "****_contacts_drpdown_list_1" doesn't exist
    And User click "****_contacts_drpdown_list_2"
    Then User expect "****_contacts_bank_accounts_text_field" is exist
    When User click "****_contacts_check_bank_account_button"
    Then User expect "****_contacts_check_bank_account_name" doesn't exist
    And User click "****_contacts_next_button"
    Then User expect "****_contacts_add_bank_account_button" doesn't exist
    Then User expect "****_contacts_text_name_in_edit_add_new_contact_screen" is exist

  @android @uidatabound
  Scenario: JENI3903-C93233-Discard Change
    # This scenario need to recheck again since currently we dont know **** contacts list exactly in every user account
    Given User can access **** contacts menu with "cif_requestor_3"
    And User swipe up contact until found "****_contacts_mobius_icon_list"
    And User click "****_contacts_mobius_icon_list"
    And User click "****_contacts_edit_button"
    And User fill "****_contacts_friendly_name_text_field" with "****_contacts_friendly_name_****_1_char"
    And User click "back_button"
    Then User expect "****_contacts_discard_popup_window" is exist
    Then User click "****_contacts_discard_changes_yes_button"
    Then User expect "****_contacts_display_name" is not equal with "****_contacts_friendly_name_****_1_char"

  @android @uidatabound
  Scenario: JENI3903-C93234-Save Change
    # This scenario need to recheck again since currently we dont know **** contacts list exactly in every user account
    Given User can access **** contacts menu with "cif_requestor_3"
    And User swipe up contact until found "****_contacts_mobius_icon_list"
    And User click "****_contacts_mobius_icon_list"
    And User click "****_contacts_edit_button"
    And User fill "****_contacts_friendly_name_text_field" with "****_contacts_friendly_name_****_1_char"
    And System save "****_contacts_friendly_name_text_field" value
    And User click "****_contacts_edit_contact_save_button"
    Then User expect "****_contacts_display_name" equal with "****_contacts_friendly_name_****_1_char"

  @android @uispecific
  Scenario: JENI3903-C93410-Content : Check edit contact layout translation
    # This scenario need to recheck again since currently we dont know **** contacts list exactly in every user account
    Given User can access **** contacts menu with "cif_requestor_3" and language "language"
    And User swipe up contact until found "****_contacts_mobius_icon_list"
    And User click "****_contacts_mobius_icon_list"
    And User click "****_contacts_edit_button"
    Then User expect "****_contacts_edit_screen_title" equal with "****_contacts_edit_screen_title"
    Then User expect "****_contacts_edit_contact_save_button" equal with "****_contacts_edit_screen_save_button"
    Then User expect "****_contacts_edit_screen_name_label" equal with "****_contacts_edit_screen_name_label"
    Then User expect "****_contacts_edit_screen_name_field_hint" equal with "****_contacts_edit_screen_name_field_hint"
    Then User expect "****_contacts_edit_add_bank_contact" equal with "****_contacts_add_bank_account_button"
    And User click "****_contacts_edit_add_bank_contact"
    Then User expect "****_contacts_edit_screen_add_new_bank_contact_title" equal with "****_contacts_edit_screen_add_new_bank_contact_title"
    Then User expect "****_contacts_edit_screen_add_new_bank_contact_description" equal with "****_contacts_edit_screen_add_new_bank_contact_description"
    Then User expect "****_contacts_check_bank_account_button_title" equal with "****_contacts_check_bank_account_button_title"
    Then User expect "****_contacts_next_button_title" equal with "****_contact_next_button_text"

#JENI-4464
  @android @uispecific
  Scenario: JENI4464-C93255-Delete Contact from Contact Details - pop up confirmation
    # This scenario need to recheck again since currently we dont know **** contacts list exactly in every user account
    Given User can access **** contacts menu with "cif_requestor_3"
    And User swipe up contact until found "****_contacts_mobius_icon_list"
    And User click "****_contacts_mobius_icon_list"
    And User click "****_contacts_delete_contact_button"
    Then "****_contacts_delete_pop_up_information_title" will be displayed
    Then User expect "****_contacts_delete_pop_up_information_cancel_button" is exist
    Then User expect "****_contacts_delete_pop_up_information_delete_button" is exist

  @android @uidatabound
  Scenario: JENI4464-C93256-Delete Contact from Contact Details - contact deleted
    # This scenario need to recheck again since currently we dont know **** contacts list exactly in every user account
    Given User can access **** contacts menu with "cif_requestor_3"
    And User swipe up contact until found "****_contacts_mobius_icon_list"
    Then System save "****_contacts_first_contact_list_name" value
    And User click "****_contacts_mobius_icon_list"
    And User click "****_contacts_delete_contact_button"
    Then "****_contacts_delete_pop_up_information_title" will be displayed
    When User click "****_contacts_delete_pop_up_information_delete_button" 
    Then "top_notification_snackbar" will be displayed
    And User wait 3 seconds
    Then User expect "****_contacts_first_contact_list_name" not equal with saved data number 1

  @android @uispecific
  Scenario: JENI4464-C93258-Delete Contact from 3 dots icon - select delete
    # This scenario need to recheck again since currently we dont know **** contacts list exactly in every user account
    Given User can access **** contacts menu with "cif_requestor_3"
    And User click "****_contacts_3_dots_button"
    And User click "****_contacts_3_dots_delete_button"
    Then User expect "****_contacts_delete_contacts_screen_title" is exist
    And User expect "****_contacts_delete_button_in_delete_contacts_screen" is exist
    Then User expect "****_contacts_3_dots_button" doesn't exist
    Then User expect "****_contacts_number_of_selected_contact" is exist

  @android @uispecific
  Scenario: JENI4464-C93259-Delete Contact from 3 dots icon - disabled delete button
    # This scenario need to recheck again since currently we dont know **** contacts list exactly in every user account
    Given User can access **** contacts menu with "cif_requestor_3"
    And User click "****_contacts_3_dots_button"
    And User click "****_contacts_3_dots_delete_button"
    And User click "****_contacts_delete_button_in_delete_contacts_screen"
    Then User expect "****_contacts_delete_pop_up_information_title" doesn't exist

  @android @uispecific
  Scenario: JENI4464-C93260-Delete Contact from 3 dots icon - multiple selection
    # This scenario need to recheck again since currently we dont know **** contacts list exactly in every user account
    Given User can access **** contacts menu with "cif_requestor_3"
    And User click "****_contacts_3_dots_button"
    And User click "****_contacts_3_dots_delete_button"
    And System save "****_contacts_first_contact_list_name" value
    And User click "****_contacts_first_delete_check_button"
    Then User expect "****_contatcs_first_selected_contact_name" equal with saved data number 1
    When User click "****_contacts_delete_button_in_delete_contacts_screen"
    Then User expect "****_contacts_delete_pop_up_information_title" is exist

  @android @uispecific
  Scenario: JENI4464-C93261-Delete Contact from 3 dots icon - add/remove contact from Contact Deletion list (deselect contact)
    # This scenario need to recheck again since currently we dont know **** contacts list exactly in every user account
    Given User can access **** contacts menu with "cif_requestor_3"
    And User click "****_contacts_3_dots_button"
    And User click "****_contacts_3_dots_delete_button"
    And User click "****_contacts_first_delete_check_button"
    Then User expect "****_contatcs_first_selected_contact_name" is exist
    And User click "****_contacts_first_delete_uncheck_button"
    Then User expect "****_contatcs_first_selected_contact_name" doesn't exist    

  @android @uispecific
  Scenario: JENI4464-C93261-Delete Contact from 3 dots icon - add/remove contact from Contact Deletion list (click remove button x)
    # This scenario need to recheck again since currently we dont know **** contacts list exactly in every user account
    Given User can access **** contacts menu with "cif_requestor_3"
    And User click "****_contacts_3_dots_button"
    And User click "****_contacts_3_dots_delete_button"
    And User click "****_contacts_first_delete_check_button"
    Then User expect "****_contatcs_first_selected_contact_name" is exist
    And User click "****_contatcs_first_delete_x_button"
    Then User expect "****_contatcs_first_selected_contact_name" doesn't exist 

  @android @uispecific
  Scenario: JENI4464-C93262-Delete Contact from 3 dots icon - pop up confirmation
    # This scenario need to recheck again since currently we dont know **** contacts list exactly in every user account
    Given User can access **** contacts menu with "cif_requestor_3"
    And User click "****_contacts_3_dots_button"
    And User click "****_contacts_3_dots_delete_button"
    And User click "****_contacts_first_delete_check_button"
    When User click "****_contacts_delete_button_in_delete_contacts_screen"
    Then User expect "****_contacts_delete_pop_up_information_title" is exist
    Then User expect "****_contacts_delete_pop_up_information_cancel_button" is exist
    Then User expect "****_contacts_delete_pop_up_information_delete_button" is exist

  @android @uidatabound
  Scenario: JENI4464-C93263-Delete Contact from 3 dots icon - contacts deleted
    # This scenario need to recheck again since currently we dont know **** contacts list exactly in every user account
    Given User can access **** contacts menu with "cif_requestor_3"
    And User swipe up contact until found "****_contacts_mobius_icon_list"
    Then System save "****_contacts_first_contact_list_name" value
    And User click "****_contacts_3_dots_button"
    And User click "****_contacts_3_dots_delete_button"
    And User click "****_contacts_first_delete_check_button"
    When User click "****_contacts_delete_button_in_delete_contacts_screen"
    Then "****_contacts_delete_pop_up_information_title" will be displayed
    When User click "****_contacts_delete_pop_up_information_delete_button" 
    Then "top_notification_snackbar" will be displayed
    And User wait 3 seconds
    Then User expect "****_contacts_first_contact_list_name" not equal with saved data number 1
    Then User expect "****_contacts_title" is exist

  @android @uispecific
  Scenario: JENI4464-C93416-[Content] Check translation delete contact from contacts details
    # This scenario need to recheck again since currently we dont know **** contacts list exactly in every user account
    Given User can access **** contacts menu with "cif_requestor_3" and language "language"
    And User swipe up contact until found "****_contacts_mobius_icon_list"
    And User click "****_contacts_mobius_icon_list"
    And User click "****_contacts_delete_contact_button"
    Then User expect "****_contacts_delete_pop_up_information_title" equal with "****_contacts_delete_pop_up_information_title"
    Then User expect "****_contacts_delete_pop_up_information_message" equal with "****_contacts_delete_pop_up_information_message"
    Then User expect "****_contacts_delete_pop_up_information_cancel_button" equal with "****_contacts_delete_pop_up_information_cancel_button"
    Then User expect "****_contacts_delete_pop_up_information_delete_button" equal with "****_contacts_delete_pop_up_information_delete_button"

  @android @uispecific
  Scenario: JENI4464-C93417-[Content] Check translation delete contact from 3 dots icon
    # This scenario need to recheck again since currently we dont know **** contacts list exactly in every user account
    Given User can access **** contacts menu with "cif_requestor_3" and language "language"
    And User click "****_contacts_3_dots_button"
    And User click "****_contacts_3_dots_delete_button"
    And User click "****_contacts_first_delete_check_button"
    When User click "****_contacts_delete_button_in_delete_contacts_screen"
    Then User expect "****_contacts_delete_pop_up_information_title" equal with "****_contacts_delete_pop_up_information_title"
    Then User expect "****_contacts_delete_pop_up_information_message" equal with "****_contacts_delete_pop_up_information_message"
    Then User expect "****_contacts_delete_pop_up_information_cancel_button" equal with "****_contacts_delete_pop_up_information_cancel_button"
    Then User expect "****_contacts_delete_pop_up_information_delete_button" equal with "****_contacts_delete_pop_up_information_delete_button"

#JENI-6511
  @android @uidatabound @R3_3
  Scenario: JENI6511-C109154-Scenario : Step Up Authentication on Adding new account in Edit Screen
    Given User can access **** contacts menu with "cif_requestor_3" and language "language"  
    And User check and click "tutorial_close" if exist
    And User click "****_contact_item_0_title"
    When User click "****_contacts_edit_button_on_edit_screen"
    And User click "****_contacts_edit_add_bank_contact"
    And User select "****_contacts_bank_dropdown_list" dropdown with "send_it_new_account_page_bca"      
    And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_valid_other_bank_account_number"

    And User click "****_contacts_check_bank_account_button"
    Then User expect "****_contacts_check_bank_account_name" is exist
    And User click "****_contacts_edit_next_button"

    And User click "****_contacts_edit_contact_save_button"
    Then "****_contacts_password_verification_form" will be displayed

  @android @continuous @uidatabound @R3_3
  Scenario: JENI6511-C109155-Scenario : Step Up Authentication : failed
    And User click "authentication_view_password"
    And User fill "****_contacts_password_textfield" with "save_it_password"
    And User click "****_contacts_password_verification_button"
    Then User check snackbar with dynamic text "****_contacts_check_popup_text_wording_error"

  @android @continuous @endtoend @R3_3
  Scenario: JENI6511-C109156-Scenario : Step Up Authentication : Success
    And User fill "****_contacts_password_textfield" with "new_password_confirm"
    And User click "****_contacts_password_verification_button"
    Then User check snackbar with dynamic text "****_contacts_check_popup_text_wording_update_success"
    And "****_contacts_edit_button_on_edit_screen" will be displayed
    And User swipe up contact until found "****_contacts_new_valid_other_bank_account"

  @android @uidatabound @R3_3
  Scenario: JENI6511-C109157-Scenario : No new account, No step up
    # This scenario need to recheck again since currently we dont know **** contacts list exactly in every user account
    Given User can access **** contacts menu with "cif_requestor_3" and language "language"  
    And User check and click "tutorial_close" if exist
    And User click "****_contact_item_0_title"
    # And User wait "card_center_loading_screen" will be gone
    When User click "****_contacts_edit_button_on_edit_screen"
    # And User wait "card_center_loading_screen" will be gone
    And User click "****_contacts_edit_contact_save_button"
    Then User expect "****_contacts_password_verification_form" doesn't exist
    And User expect "****_contacts_edit_contact_save_button" is exist

  @android @uidatabound @R3_3
  Scenario: JENI6511-C117987-Scenario : No new account, No step up (No Acc duplication & Merge contact case)
    # This scenario need to recheck again since currently we dont know **** contacts list exactly in every user account
    Given User can access **** contacts menu with "cif_requestor_3" and language "language"  
    And User check and click "tutorial_close" if exist
    And User click "****_contact_item_0_title"
    When User click "****_contacts_edit_button_on_edit_screen"
    And User click "****_contacts_edit_add_bank_contact"
    And User select "****_contacts_bank_dropdown_list" dropdown with "send_it_new_account_page_bca"      
    And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_valid_other_bank_account_number"

    And User click "****_contacts_check_bank_account_button"
    Then User expect "****_contacts_check_bank_account_name" is exist
    And User click "****_contacts_next_button"

    And User click "****_contacts_edit_contact_save_button"
    Then User expect "****_contacts_password_verification_form" doesn't exist
    And User expect "****_contacts_edit_contact_save_button" is exist

# JENI-5710
  @android @uidatabound @R3_3
  Scenario: JENI5710-C117130-Scenario : See Merge contact from **** Contact List
    Given User can access **** contacts menu with "cif_requestor_3_merge" and language "language"  
    And User check and click "tutorial_close" if exist
    And User click "****_contacts_3_dots_button"
    Then "****_contacts_3_dots_merge_button" will be displayed

  @continuous @android @uidatabound @R3_3
  Scenario: JENI5710-C117132-Scenario : disabled merge button
    And User click "****_contacts_3_dots_merge_button"
    And User click "****_contacts_merge_button"
    Then User expect "****_contacts_merge_confirm_profile_picture" doesn't exist
    And User expect "****_contacts_merge_button" is exist

  @android @uidatabound @R3_3
  # C117133-Scenario : Select multiple contacts
  Scenario: JENI5710-C117131-Scenario : Select Merge
    Given User can access **** contacts menu with "cif_requestor_3_merge" and language "language"  
    And User check and click "tutorial_close" if exist
    And User click "****_contacts_3_dots_button"
    And User click "****_contacts_3_dots_merge_button"
    And User click "****_contacts_with_cashtag_1"
    And User click "****_contacts_with_non_cashtag_2"
    Then User expect there are 2 of "****_contacts_merge_checked_icon"
    And User expect there are 2 of "****_contacts_merge_delete_participant_icon"
    Then "****_contacts_merge_button" will be displayed
    And User click "****_contacts_merge_button"
    Then "****_contacts_merge_confirm_profile_picture" will be displayed

  @android @uidatabound @R3_3
  Scenario: JENI5710-C117134-Scenario : can't select multiple **** account
    Given User can access **** contacts menu with "cif_requestor_3_merge" and language "language"  
    And User check and click "tutorial_close" if exist
    And User click "****_contacts_3_dots_button"
    And User click "****_contacts_3_dots_merge_button"
    And User click "****_contacts_with_cashtag_1"
    And User click "****_contacts_with_cashtag_2"
    And User click "****_contacts_with_cashtag_3"
    And User click "****_contacts_with_cashtag_4"
    And User swipe up until found "****_contacts_with_cashtag_5"
    And User click "****_contacts_with_cashtag_5"
    Then User check snackbar with dynamic text "****_contacts_select_two_****_contact_error"

  @android @uidatabound @R3_3
  Scenario: JENI5710-C117135-Scenario : remove contact from merge participant list
    Given User can access **** contacts menu with "cif_requestor_3_merge" and language "language"  
    And User check and click "tutorial_close" if exist
    And User click "****_contacts_3_dots_button"
    And User click "****_contacts_3_dots_merge_button"
    And User click "****_contacts_with_cashtag"
    And User click "****_contacts_non_cashtag"
    Then User expect there are 2 of "****_contacts_merge_checked_icon"
    And User expect there are 2 of "****_contacts_merge_delete_participant_icon"

    And User click "****_contacts_with_cashtag"
    Then User expect there are 1 of "****_contacts_merge_checked_icon"
    And User expect there are 1 of "****_contacts_merge_delete_participant_icon"

    And User click "****_contacts_merge_delete_participant_icon"
    Then User expect "****_contacts_merge_checked_icon" doesn't exist
    And User expect "****_contacts_merge_delete_participant_icon" doesn't exist

  @android @uidatabound @R3_3
  Scenario: JENI5710-C127306-Scenario : error snackbar in case of no contact
    Given User can access **** contacts menu with "cif_requestor_no_contact" and language "language"
    And User check and click "tutorial_close" if exist
    And User click "****_contacts_3_dots_button"
    And User click "****_contacts_3_dots_merge_button"
    Then User check snackbar with dynamic text "****_contacts_merge_no_contact_exist"

  @android @uidatabound @R3_3
  Scenario: JENI5710-C127308-Scenario: Merge Contact - Back/Cancel button without action
    Given User can access **** contacts menu with "cif_requestor_3_merge" and language "language"  
    And User check and click "tutorial_close" if exist
    And User click "****_contacts_3_dots_button"
    And User click "****_contacts_3_dots_merge_button"
    And User click "back_button"
    Then "****_contacts_tab_bank_contacts" will be displayed

  @android @uidatabound @R3_3
  Scenario: JENI5710-C127309-Scenario: Merge Contact - Back/Cancel button with action
    Given User can access **** contacts menu with "cif_requestor_3_merge" and language "language"  
    And User check and click "tutorial_close" if exist
    And User click "****_contacts_3_dots_button"
    And User click "****_contacts_3_dots_merge_button"
    And User click "****_contacts_with_cashtag_1"
    And User click "****_contacts_with_non_cashtag_2"
    Then User expect there are 2 of "****_contacts_merge_checked_icon"
    And User click "back_button"
    Then "****_contacts_tab_bank_contacts" will be displayed
    And User click "****_contacts_3_dots_button"
    And User click "****_contacts_3_dots_merge_button"
    Then User expect "****_contacts_merge_checked_icon" doesn't exist
    And User click "****_contacts_merge_button"
    Then User expect "****_contacts_merge_confirm_profile_picture" doesn't exist
    And User expect "****_contacts_merge_button" is exist

@android @uidatabound @R3_3
  Scenario: JENI5710-C127313-Scenario: Modify Display name
    Given User can access **** contacts menu with "cif_requestor_3_merge" and language "language"  
    And User check and click "tutorial_close" if exist
    And User click "****_contacts_3_dots_button"
    And User click "****_contacts_3_dots_merge_button"
    And User click "****_contacts_with_cashtag"
    And User click "****_contacts_non_cashtag"
    And User click "****_contacts_merge_button"
    # assert if name is empty
    And User clear "****_contacts_friendly_name_text_field"
    Then User expect "****_contacts_note_countdown_text" equal with "****_contacts_max_name_chars"
    And User click "****_contacts_edit_contact_save_button"
    Then User expect "****_contacts_merge_confirm_profile_picture" is exist
    # input too long name
    And User fill "****_contacts_friendly_name_text_field" with "****_contacts_friendly_name_35_char"
    Then User expect "****_contacts_note_countdown_text" equal with "****_contacts_note_countdown_text_zero"

@android @uidatabound @R3_3
  Scenario: JENI5710-C127317-Scenario: Merge Contact - select merge option
    Given User can access **** contacts menu with "cif_requestor_3_merge" and language "language"  
    And User check and click "tutorial_close" if exist
    And User click "****_contacts_3_dots_button"
    And User click "****_contacts_3_dots_merge_button"
    Then "****_contacts_merge_select_contact_screen" will be displayed
    And User expect "****_contacts_merge_button" is exist
    And User expect "****_contacts_3_dots_button" doesn't exist
    And User expect "****_contacts_selected_contact_number" is exist

@android @uidatabound @R3_3
  Scenario: JENI5710-C127318-Scenario : disabled merge button after unchecking
    Given User can access **** contacts menu with "cif_requestor_3_merge" and language "language"  
    And User check and click "tutorial_close" if exist
    And User click "****_contacts_3_dots_button"
    And User click "****_contacts_3_dots_merge_button"
    And User click "****_contacts_with_cashtag_1"
    And User click "****_contacts_with_non_cashtag_2"
    Then User expect there are 2 of "****_contacts_merge_checked_icon"

    And User click "****_contacts_merge_checked_icon"
    And User click "****_contacts_merge_checked_icon"
    Then User expect "****_contacts_merge_checked_icon" doesn't exist

    And User click "****_contacts_merge_button"
    Then User expect "****_contacts_merge_confirm_profile_picture" doesn't exist
    And User expect "****_contacts_merge_button" is exist

@android @uidatabound @R3_3
  Scenario: JENI5710-C127320-Scenario : disabled merge button after clicking X on the merged contact list
    Given User can access **** contacts menu with "cif_requestor_3_merge" and language "language"  
    And User check and click "tutorial_close" if exist
    And User click "****_contacts_3_dots_button"
    And User click "****_contacts_3_dots_merge_button"
    And User click "****_contacts_with_cashtag_1"
    And User click "****_contacts_with_non_cashtag_2"
    Then User expect there are 2 of "****_contacts_merge_checked_icon"

    And User click "****_contacts_merge_delete_participant_icon"
    And User click "****_contacts_merge_delete_participant_icon"
    Then User expect "****_contacts_merge_checked_icon" doesn't exist

    And User click "****_contacts_merge_button"
    Then User expect "****_contacts_merge_confirm_profile_picture" doesn't exist
    And User expect "****_contacts_merge_button" is exist
    
@android @uidatabound @R3_3
  Scenario: JENI5710-C127321-Scenario : disabled merge button - Clear selected list
    Given User can access **** contacts menu with "cif_requestor_3_merge" and language "language"  
    And User check and click "tutorial_close" if exist
    And User click "****_contacts_3_dots_button"
    And User click "****_contacts_3_dots_merge_button"
    And User click "****_contacts_with_cashtag_1"
    And User click "****_contacts_with_non_cashtag_2"
    Then User expect there are 2 of "****_contacts_merge_checked_icon"

    And User click "****_contacts_clear_participant_button"
    Then User expect "****_contacts_merge_checked_icon" doesn't exist

    And User click "****_contacts_merge_button"
    Then User expect "****_contacts_merge_confirm_profile_picture" doesn't exist
    And User expect "****_contacts_merge_button" is exist

@android @uidatabound @R3_3
  Scenario: JENI5710-C117136-Scenario : merge overview in edit contact screen
    Given User can access **** contacts menu with "cif_requestor_3_merge" and language "language"  
    And User check and click "tutorial_close" if exist
    And User click "****_contacts_3_dots_button"
    And User click "****_contacts_3_dots_merge_button"
    And User click "****_contact_selected_contact_1"
    And System save "****_contact_selected_contact_1_name" value
    And User click "****_contact_selected_contact_2"
    And System save "****_contact_selected_contact_2_name" value
    And User click "****_contacts_merge_button"
    Then "****_contacts_merge_confirm_profile_picture" will be displayed
    And User expect "****_contacts_edit_contact_display_name" equal with saved data number 1

@android @uidatabound @R3_3
  Scenario: JENI5710-C117140-Scenario : Discard Change
    Given User can access **** contacts menu with "cif_requestor_3_merge" and language "language"  
    And User check and click "tutorial_close" if exist
    And User click "****_contacts_3_dots_button"
    And User click "****_contacts_3_dots_merge_button"
    And User click "****_contacts_with_cashtag"
    And User click "****_contacts_non_cashtag"
    And User click "****_contacts_merge_button"
    And User click "back_button"
    Then "****_contacts_pop_up_discard_changes" will be displayed
    And User click "****_contacts_yes_discrd_button_on_pop_up"
    Then "****_contacts_merge_select_contact_screen" will be displayed
    And User expect there are 2 of "****_contacts_merge_checked_icon"

@android @uidatabound @R3_3
  Scenario: JENI5710-C117141-Scenario : Save Change - Merge Contact
    Given User can access **** contacts menu with "cif_requestor_3" and language "language"  
    And User check and click "tutorial_close" if exist
    And User click "****_contacts_3_dots_button"
    And User click "****_contacts_3_dots_merge_button"
    And User wait "card_center_loading_screen" will be gone
    And User wait 5 seconds
    And User click "****_contact_selected_contact_4"
    And System save "****_contact_selected_contact_4_name" value
    And User wait 5 seconds
    And User click "****_contact_selected_contact_1"
    And System save "****_contact_selected_contact_1_name" value
    And User click "****_contacts_merge_button"
    
    And User click "****_contacts_merge_contact_save_button"
    Then "top_notification_snackbar" will be displayed
    And "****_contacts_tab_bank_contacts" will be displayed

# JENI-5711
@android @uispecific @R3_6
Scenario:JENI5711-C116919-Scenario: Create Group from **** Contact List - See create group from **** Contact List
    Given User can access **** contacts menu with "****_contacts_create_group"
    And User click "tutorial_close"
    And User click "****_contacts_3_dots_button"
    Then User expect "****_contacts_3_dots_create_group_button" is exist

@android @uidatabound @R3_6
Scenario:JENI5711-C116920-Scenario: Create Group from **** Contact List - Select create group
    Given User can access **** contacts menu with "****_contacts_create_group"
    And User click "tutorial_close"
    And User click "****_contacts_3_dots_button"
    And User click "****_contacts_3_dots_create_group_button"
    And User click "****_contacts_create_group_contact_1_circle"
    And User click "****_contacts_create_group_contact_2_circle"
    Then User expect "****_contacts_create_group_create_button" is exist
    Then element with "****_contacts_selected_vs_max_account" text will be displayed

@android @uispecific @R3_6
Scenario:JENI5711-C116921-Scenario: Create Group from **** Contact List - Disabled create group button
    Given User can access **** contacts menu with "****_contacts_create_group"
    And User click "tutorial_close"
    And User click "****_contacts_3_dots_button"
    And User click "****_contacts_3_dots_create_group_button"
    And User click "****_contacts_create_group_create_button"
    Then element with "****_contacts_default_selected_vs_max_account" text will be displayed

@android @uispecific @R3_6
Scenario:JENI5711-C133968-Scenario: Create Group from Favorite List - See create group from Favorite List Contact List
    Given User can access **** contacts menu with "****_contacts_create_group"
    And User click "tutorial_close"
    And User click "****_contacts_favorite_tab"
    And User click "****_contacts_favorite_add"
    Then User expect "****_contacts_favorite_add_popup_add_group" is exist

@android @uidatabound @R3_6
Scenario:JENI5711-C133969-Scenario: Create Group from Favorite List - Select Create Group
    Given User can access **** contacts menu with "****_contacts_create_group"
    And User click "tutorial_close"
    And User click "****_contacts_favorite_tab"
    And User click "****_contacts_favorite_add"
    And User click "****_contacts_favorite_add_popup_add_group"
    And User click "****_contacts_create_group_contact_1_circle"
    And User click "****_contacts_create_group_contact_2_circle"
    Then User expect "****_contacts_create_group_create_button" is exist
    Then element with "****_contacts_selected_vs_max_account" text will be displayed

@android @uispecific @R3_6
Scenario:JENI5711-C133970-Scenario: Create Group from Favorite List - Disabled create group button
    Given User can access **** contacts menu with "****_contacts_create_group"
    And User click "tutorial_close"
    And User click "****_contacts_favorite_tab"
    And User click "****_contacts_favorite_add"
    And User click "****_contacts_favorite_add_popup_add_group"
    Then element with "****_contacts_default_selected_vs_max_account" text will be displayed

@android @uidatabound @R3_6
Scenario:JENI5711-C133977-Scenario: Select multiple accounts
    Given User can access **** contacts menu with "****_contacts_create_group"
    And User click "tutorial_close"
    And User click "****_contacts_3_dots_button"
    And User click "****_contacts_3_dots_create_group_button"
    And User click "****_contacts_create_group_contact_1_circle"
    And System save "****_contacts_create_group_contact_1_name" value
    Then User expect "****_contacts_create_group_contact_1_circle_selected" is exist
    Then User expect "****_contacts_create_group_contact_1_selected_name" equal with saved data text 1
    And User click "****_contacts_create_group_contact_2_circle"
    And System save "****_contacts_create_group_contact_2_name" value
    Then User expect "****_contacts_create_group_contact_2_circle_selected" is exist
    Then User expect "****_contacts_create_group_contact_2_selected_name" equal with saved data text 2

@android @uidatabound @continuous @R3_6
Scenario:JENI5711-C133977-Scenario: Select multiple accounts
    And User click "****_contacts_create_group_contact_1_circle_selected"
    Then User expect "****_contacts_create_group_contact_1_circle" is exist
    And User expect "****_contacts_create_group_contact_1_selected_name" equal with "****_contacts_create_group_selected_name_1" doesn't exist

@android @uidatabound @continuous @R3_6
Scenario:JENI5711-C133979-Scenario: Press Clear button on select contact screen
    And User click "****_contacts_create_group_clear_button"
    Then User expect "****_contacts_create_group_contact_2_circle" is exist
    Then User expect "****_contacts_create_group_contact_2_selected_name" doesn't exist
    Then element with "****_contacts_default_selected_vs_max_account" text will be displayed

@android @uidatabound @R3_6
Scenario:JENI5711-C116922-Scenario: Navigate back form Select Contact screen
    Given User can access **** contacts menu with "****_contacts_create_group"
    And User click "tutorial_close"
    And User click "****_contacts_3_dots_button"
    And User click "****_contacts_3_dots_create_group_button"
    And User click "back_button"
    Then User expect "****_contacts_3_dots_button" is exist
    And User click "****_contacts_favorite_tab"
    And User click "****_contacts_favorite_add"
    And User click "****_contacts_favorite_add_popup_add_group"
    And User click "back_button"
    Then User expect "****_contacts_3_dots_button" doesn't exist

@android @uidatabound @R3_6
Scenario: JENI5711-C133971-Scenario: Group confirmation screen
    Given User can access **** contacts menu with "cif_contacts_group" and language "language"
    And User check and click "tutorial_close" if exist
    And User click "****_contacts_3_dots_button"
    And User click "****_contacts_3_dots_create_group_button"
    And User wait "card_center_loading_screen" will be gone

    And User swipe up until found "****_contacts_with_cashtag"
    And System save "****_contacts_with_cashtag_name" value
    And User click "****_contacts_with_cashtag"
    And User swipe up until found "****_contacts_non_cashtag"
    And System save "****_contacts_non_cashtag_name" value
    And User click "****_contacts_non_cashtag"
    And User click "****_contacts_create_group_create_button"

    And User expect "****_contact_group_name_field" equal with "****_contacts_default_group_name"
    And User expect "****_contact_group_name_counter" equal with "****_contacts_default_group_name_counter"
    And User expect saved data number 1 displayed
    And "****_contact_group_display_****_name" will be displayed
    And "****_contact_group_****_account" will be displayed
    And "****_contact_group_mobius_icon" will be displayed
    And User swipe up to element contains saved data number 2
    And User expect saved data number 2 displayed
    And "****_contact_group_display_other_bank_name" will be displayed
    And "****_contact_group_other_bank_account" will be displayed

@android @uidatabound @R3_6
# C116927-Scenario: Delete contact in group confirmation screen
Scenario: JENI5711-C116925-Scenario: Disable save button in edit group confirmation screen
    Given User can access **** contacts menu with "cif_contacts_group" and language "language"
    And User check and click "tutorial_close" if exist
    And User click "****_contacts_3_dots_button"
    And User click "****_contacts_3_dots_create_group_button"
    And User swipe up until found "****_contacts_non_cashtag"
    And User click "****_contacts_non_cashtag"
    And User click "****_contacts_create_group_create_button"

    # save button disabled if there is no group name filled
    And User clear "****_contact_group_name_field"
    And User click "****_contact_group_save_button"
    Then User expect "****_contact_group_save_button" is exist

    # save button disabled if there is no contact selected
    And User fill "****_contact_group_name_field" with "****_contacts_group_1"
    And User click "****_contact_group_remove_non_****_contact"
    And User expect "****_contacts_with_cashtag" doesn't exist
    And User click "****_contact_group_save_button"
    Then User expect "****_contact_group_save_button" is exist

@android @uidatabound @R3_6
Scenario: JENI5711-C116926-Scenario: Navigate back from edit group confirmation screen
    Given User can access **** contacts menu with "cif_contacts_group" and language "language"
    And User check and click "tutorial_close" if exist
    And User click "****_contacts_3_dots_button"
    And User click "****_contacts_3_dots_create_group_button"
    And User wait "card_center_loading_screen" will be gone

    And User swipe up until found "****_contacts_with_cashtag"
    And User click "****_contacts_with_cashtag"
    And User swipe up until found "****_contacts_non_cashtag"
    And User click "****_contacts_non_cashtag"
    And User click "****_contacts_create_group_create_button"
    And User wait 5 seconds
    Then "****_contact_group_save_button" will be displayed

    And User click "back_button"
    Then User expect there are 2 of "****_contact_group_delete_contact_list_button"
    And "****_contacts_non_cashtag_selected_icon" will be displayed
    And User swipe down until found "****_contacts_with_cashtag_selected_icon"
    And "****_contacts_with_cashtag_selected_icon" will be displayed

@android @uidatabound @R3_6
Scenario: JENI5711-C133973-Scenario: Save - Create Group
    Given User can access **** contacts menu with "cif_contacts_group" and language "language"
    And User check and click "tutorial_close" if exist
    And User click "****_contacts_3_dots_button"
    And User click "****_contacts_3_dots_create_group_button"
    And User wait "card_center_loading_screen" will be gone

    And User swipe up until found "****_contacts_non_cashtag"
    And User click "****_contacts_non_cashtag"
    And User click "****_contacts_create_group_create_button"
    And User fill "****_contact_group_name_field" with "****_contacts_group_1"
    And User click element with text "****_contatcs_edit_screen_bank_account_label"
    And User wait 10 seconds
    And User click "****_contact_group_save_button"

    Then "****_contact_favorite_tab" will be displayed
    And element with "****_contacts_group_1" text will be displayed

@android @uidatabound @R3_6
# C133974-Scenario: Remove group favorite from list - pop up
# C116928-Scenario: Remove group favorite from list - cancel removal
# C133975-Scenario: Remove group favorite from list - confirm removal
Scenario: JENI5711-C133974#C116928#C133975-Scenario: Remove group favorite from list
    Given User can access **** contacts menu with "cif_contacts_group" and language "language"
    And User check and click "tutorial_close" if exist
    And User click "****_contact_favorite_tab"
    And User click "****_contact_group_star_icon"

    # C133974 - pop up removal
    Then "****_contact_group_remove_group_pop_up" will be displayed

    # C116928 - cancel removal
    And User click "****_contact_group_remove_group_cancel_button"
    Then User expect "****_contact_group_remove_group_pop_up" doesn't exist
    And element with "****_contacts_group_1" text will be displayed

    # C133975 - comfirm removal
    And User click "****_contact_group_star_icon"
    And User click "****_contact_group_remove_group_confirm_button"
    Then User check snackbar with dynamic text "****_contact_remove_group_msg"
    And element with "****_contacts_group_1" text will not displayed

  #JENI-5713
  @android @uidatabound @R3_6
  Scenario:JENI5713-C110406-Scenario : select source of picture - (no picture yet)
    Given User access **** contact using login as "cif_requestor_3" and create new bank account "****_contacts_bank_dropdown_list_bca"
    And User wait 5 seconds
    And User check and click "****_contacts_move_here_button" if exist
    And User expect "****_contact_avatar_tom" is exist
    When User click "profile_and_setting_upload_profile_picture_button"
    Then User expect "onboarding_question_choose_gallery" is exist
    And User check and click "send_it_new_bank_page_account_next_button" if exist
    And User expect "onboarding_question_choose_camera" is exist

  @android @uidatabound @R3_6
  Scenario:JENI5713-C110407-Scenario : select source of picture - (already has picture)
    Given User access **** contact using login as "cif_requestor_3" and create new bank account "****_contacts_bank_dropdown_list_bca"
    And User wait 5 seconds
    And User check and click "****_contacts_move_here_button" if exist
    And User click "profile_and_setting_upload_profile_picture_button"
    And User click "onboarding_question_choose_camera"
    And User click "onboarding_camera_button"
    And User click "onboarding_confirm_photo_button"
    And User click "in_and_out_request_splitbill_details_delete_button"
    And User wait 8 seconds
    And User click "card_center_password_field_eye"
    And User fill "bill_payment_confrm_password_field" with "bill_payment_password_confirm"
    And User click "bill_payment_confrm_password_submit"
    And User wait 5 seconds
    And User click "****_contact_item_0_title"
    When User click "****_contacts_edit_button_on_edit_screen"
    And User click "profile_and_setting_upload_profile_picture_button"
    Then User expect "onboarding_question_choose_gallery" is exist
    And User expect "onboarding_question_choose_camera" is exist
    And User expect "****_contact_remove_avatar" is exist

  @android @uidatabound @R3_6
  Scenario:JENI5713-C110408-Scenario : access camera
    Given User can access **** contacts menu with "cif_requestor_3" and language "language"
    And User check and click "tutorial_close" if exist
    And User click "****_contact_item_0_title"
    And User click "****_contacts_edit_button_on_edit_screen"
    When User click "profile_and_setting_upload_profile_picture_button"
    Then User click "onboarding_question_choose_camera"
    And User click "onboarding_reverse_camera_button"

  @android @uidatabound @R3_6
  Scenario:JENI5713-C110409-Scenario : take picture from camera
    Given User access **** contact using login as "cif_requestor_3" and create new bank account "****_contacts_bank_dropdown_list_bca"
    And User wait 5 seconds
    And User check and click "****_contacts_move_here_button" if exist
    When User click "profile_and_setting_upload_profile_picture_button"
    And User click "onboarding_question_choose_camera"
    And User click "onboarding_camera_button"
    And User click "onboarding_confirm_photo_button"
    And User wait 5 seconds
    Then User expect "****_contacts_new_contact_title" is exist
    And User expect "****_contact_avatar_tom" doesn't exist

  @android @uidatabound @R3_6
  Scenario:JENI5713-C110411-Scenario : remove picture
    Given User can access **** contacts menu with "cif_requestor_3" and language "language"
    And User check and click "tutorial_close" if exist
    And User click "****_contact_item_0_title"
    And User click "****_contacts_edit_button_on_edit_screen"
    When User click "profile_and_setting_upload_profile_picture_button"
    And User click "****_contact_remove_avatar"
    Then User expect "****_contact_avatar_tom" is exist

  @android @uidatabound @R3_6 @sasta
  Scenario:JENI5713-C110410-Scenario : browse picture from gallery
    Given User access **** contact using login as "cif_requestor_3" and create new bank account "****_contacts_bank_dropdown_list_bca"
    And User wait 5 seconds
    And User check and click "****_contacts_move_here_button" if exist
    And User click "profile_and_setting_upload_profile_picture_button"
    When User click "onboarding_question_choose_gallery"
    And User click "onboarding_question_choose_gallery_pic"
    And User click "onboarding_confirm_photo_button"
    Then User expect "****_contacts_new_contact_title" is exist
    And User expect "****_contacts_merge_confirm_profile_picture" is exist
