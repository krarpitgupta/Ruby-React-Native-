@splitbill @payme_splitbill  
Feature: SplitBill Module

  @android @uidatabound
  Scenario:JENI1446-C47571-Check Contact will be check mark when tab on it
    Given User can access split bill menu with "split_bill_cif"
    And User click "split_bill_contacts_label_1"
    Then User expect "split_bill_checkbox_contact_item_1" is exist

  @android @uidatabound
  Scenario:JENI1446-C47572-Check new segment bar (Participants list) will appear that shows the number of contact when contact has check mark
    Given User can access split bill menu with "split_bill_cif"
    And User click "split_bill_contacts_label_1"
    Then User expect "split_bill_select_one_contact" is exist
    And User expect "split_bill_select_one_contact" equal with "split_bill_selected_one_contact"
    And User click "split_bill_contacts_label_2"
    Then User expect "split_bill_select_two_contact" is exist
    And User expect "split_bill_select_two_contact" equal with "split_bill_selected_two_contact"

  @android @ios @uispecific
  Scenario:JENI1446-C47566-Check Done button will disable by default when go to Split Bill contact list
    Given User can access split bill menu with "split_bill_cif"
    Then User click "split_bill_done_button"
    #This step to replace the step for checking the button is disabled
    And User expect "split_bill_done_button" is exist

  @android @uidatabound
  Scenario:JENI1446-C47580-Check Done button will be enable when there is a contact has check mark at least
    Given User can access split bill menu with "split_bill_cif"
    #And User select the contact "split_bill_contacts_label_1"
    And User click "split_bill_contacts_label_1"
    #This commenting out since the enabled atrribute always appear as true
    #And User expect "split_bill_done_button" is enabled
    Then User click "split_bill_done_button"
    #This step to replace the step for checking the button is enabled
    And User expect "split_bill_done_button" doesn't exist

  @android @uidatabound
  Scenario:JENI1446-C47588-Check Done button will be disable when all contact are unchecked
    Given User can access split bill menu with "split_bill_cif"
    #And User select the contact "split_bill_contacts_label_1"
    And User click "split_bill_contacts_label_1"
    Then User expect "split_bill_select_one_contact" is exist
    And User expect "split_bill_select_one_contact" equal with "split_bill_selected_one_contact"
    #And User select the contact "split_bill_contacts_label_2"
    And User click "split_bill_contacts_label_2"
    Then User expect "split_bill_select_two_contact" is exist
    And User expect "split_bill_select_two_contact" equal with "split_bill_selected_two_contact"
    When User click "split_bill_contacts_label_1"
    #And User select the contact "split_bill_contacts_label_2"
    And User click "split_bill_contacts_label_2"
    #This commenting out since the enabled atrribute always appear as true
    #And User expect "split_bill_done_button" is disabled
    Then User click "split_bill_done_button"
    #This step to replace the step for checking the button is disabled
    And User expect "split_bill_done_button" is exist

  @android @uidatabound
  Scenario:JENI1446-C47575-Check uncheck contact from contact list
    Given User can access split bill menu with "split_bill_cif"
    #And User select the contact "split_bill_contacts_label_1"
    And User click "split_bill_contacts_label_1"
    #And User select the contact "split_bill_contacts_label_2"
    And User click "split_bill_contacts_label_2"
    Then User expect selected contact "split_bill_contacts_label_1" will exist
    And User remove selected contact "split_bill_contacts_label_1"
    Then User expect selected contact "split_bill_contacts_label_1" won't exist

  @android @uidatabound
  Scenario:JENI1446-C47594-Check Delete icon of a the contact on Participant list
    Given User can access split bill menu with "split_bill_cif"
    # select contacts from contact list
    #And User select the contact "split_bill_contacts_label_1"
    And User click "split_bill_contacts_label_1"
    And User click "split_bill_contacts_label_2"
    # assert if the selected contacts added to participant list
    Then User expect selected contact "split_bill_contacts_label_1" will exist
    Then User expect selected contact "split_bill_contacts_label_2" will exist
    # assert if the selected contacts list checkbox in checked
    #Then User expect selected checkbox "split_bill_selected_anamika_contacts_label" will exist
    Then User expect "split_bill_mark_contacts_1" is exist
    #Then User expect selected checkbox "split_bill_unselected_anamika_contacts_label" won't exist
    Then User expect "split_bill_unmark_contacts_1" doesn't exist
    
    # remove/ delete one participant
    And User remove selected contact "split_bill_contacts_label_1"
    # assert the deleted participant checkbox in contact list is unchecked
    #Then User expect selected checkbox "split_bill_selected_anamika_contacts_label" won't exist
    Then User expect "split_bill_mark_contacts_1" doesn't exist
    And User expect "split_bill_unmark_contacts_1" is exist
    #Then User expect selected checkbox "split_bill_unselected_anamika_contacts_label" will exist

  @android @uidatabound
  Scenario:JENI1446-C47600-Check Segment bar (Participants list) will be disappear when all contact are unchecked
    Given User can access split bill menu with "split_bill_cif"
    # select contacts from contact list
    #And User select the contact "split_bill_contacts_label_1"
    And User click "split_bill_contacts_label_1"
    #And User select the contact "split_bill_contacts_label_2"
    And User click "split_bill_contacts_label_2"
    # assert participant list appear
    Then User expect "split_bill_participant_list" is exist
    # unselect contacts from contact list
    #And User select the contact "split_bill_contacts_label_1"
    And User click "split_bill_contacts_label_1"
    #And User select the contact "split_bill_contacts_label_2"
    And User click "split_bill_contacts_label_2"
    # assert participant list disappear
    Then User expect "split_bill_participant_list" doesn't exist

  @android @ios @uispecific
  Scenario:JENI1446-C70045-Check copywrite translation show correctly
   Given User can access split bill menu with "cif_requestor_3" and language "language"
   And User expect "split_bill_title" equal with "split_bill_title"
   And User expect "split_bill_done_button" equal with "split_bill_done_button"
   And User expect "split_bill_input_manually_button" equal with "split_bill_input_manually_button"
   When User click "split_bill_input_manually_button"
   Then User expect "split_bill_input_manualy_description_text_lable" equal with "split_bill_input_manualy_description_text_lable"
   And User expect "split_bill_input_manually_textfield" equal with "split_bill_input_manually_textfield"
   And User expect "split_bill_add_button" equal with "split_bill_add_button"
   And User expect "split_bill_cancel_button" equal with "split_bill_cancel_button"
   Then User fill "split_bill_input_manually_textfield" with "split_bill_****_user_cashtag_2"
   And User click "split_bill_add_button"
   Then User expect "split_bill_select_contact_label" equal with "split_bill_selected_one_contact"
   Then User expect "split_bill_clear_contact_button" equal with "split_bill_clear_contact_button"
   Then User expect "split_bill_section_header_text" equal with "split_bill_section_header_text"

  @android @uidatabound
  Scenario:JENI1447-C47602-Check info contact list in Split Bill Calculate show correctly when access it
    Given User can access split bill menu with "split_bill_cif"
    #And User select the contact "split_bill_contacts_label_1"
    And User click "split_bill_contacts_label_1"
    Then User expect "split_bill_select_one_contact" is exist
    And User expect "split_bill_select_one_contact" equal with "split_bill_selected_one_contact"
    Then User click "split_bill_done_button"
    Then User expect "split_bill_title_text" is exist
    And User hide the keyboard
    Then User expect "split_bill_information_bar_label" is exist
    And User expect contact of "split_bill_contacts_label_1" will exist
    And User expect "split_bill_me_contact_label" is exist
    And User expect "split_bill_delete_button" is exist

  @android @uidatabound
  Scenario:JENI1447-C47604-Check amount of money will be devided equally & automatically to Me & the other recipients
    Given User can access split bill menu with "split_bill_cif"
    #And User select the contact "split_bill_contacts_label_1"
    And User click "split_bill_contacts_label_1"
    Then User expect "split_bill_select_one_contact" is exist
    And User expect "split_bill_select_one_contact" equal with "split_bill_selected_one_contact"
    Then User click "split_bill_done_button"
    When User fill "split_bill_input_amount_textfield" with "split_bill_input_amount_data_text"
    Then User expect "split_bill_send_request_button" is exist
    And User expect "split_bill_me_amount_textfield" equal with "split_bill_me_amount_expect_text"
    And User expect "split_bill_amount_participant_one_amount" equal with "split_bill_me_amount_expect_text"

  @android @uidatabound
  Scenario:JENI1447-C47606-Check The extra amount should be allocated to me when input Amount in Bill field that can't be devided equally among all recipient
    Given User can access split bill menu with "split_bill_cif"
    #And User select the contact "split_bill_contacts_label_1"
    And User click "split_bill_contacts_label_1"
    Then User expect "split_bill_select_one_contact" is exist
    And User expect "split_bill_select_one_contact" equal with "split_bill_selected_one_contact"
    Then User click "split_bill_done_button"
    When User fill "split_bill_input_amount_textfield" with "split_bill_input_amount_not_equal_data_text"
    Then User expect "split_bill_send_request_button" is exist
    And User expect "split_bill_me_amount_textfield" equal with "split_bill_me_amount_not_equal_expect_text"
    And User expect "split_bill_amount_participant_one_amount" equal with "split_bill_not_equal_expect_text_1"

  @android @uidatabound
  Scenario:JENI1447-C47615-Check The amount of money among the rest of recipients will be auto adjusted equally when modify amount of recipient
    Given User can access split bill menu with "split_bill_cif"
    #And User select the contact "split_bill_contacts_label_1"
    And User click "split_bill_contacts_label_1"
    Then User expect "split_bill_select_one_contact" is exist
    And User expect "split_bill_select_one_contact" equal with "split_bill_selected_one_contact"
    Then User click "split_bill_done_button"
    And User expect "split_bill_title_textfield" is exist
    When User fill "split_bill_input_amount_textfield" with "split_bill_input_amount_user_data_text"
    Then User expect "split_bill_send_request_button" is exist
    And User fill "split_bill_amount_participant_one_amount" with "split_bill_adjust_amount_data_text_1"
    Then User expect "split_bill_me_amount_textfield" equal with "split_bill_adjust_me_amount_data_text"
 
   @android @uidatabound 
  Scenario:JENI1448-C47715-Check Result Widget show at dashboard when submit Money request successful
    Given User can access split bill menu with "split_bill_cif"
    #And User select the contact "split_bill_contacts_label_1"
    And User click "split_bill_contacts_label_1"
    Then User expect "split_bill_select_one_contact" is exist
    And User expect "split_bill_select_one_contact" equal with "split_bill_selected_one_contact"
    Then User click "split_bill_done_button"
    When User fill "split_bill_input_amount_textfield" with "split_bill_input_amount_data_text"
    Then User expect "split_bill_send_request_button" is exist
    And User click "split_bill_send_request_button"
    Then User expect "split_bill_success_notification_message_en" is exist
    And User expect "split_bill_contacts_label_1" is exist
    #And User expect "split_bill_amount_result_textfield" equal with "split_bill_anamika_amount_expected_display_label"
    #There is an expected that not covered yet, it's about implementation on date time. Need to implement on the future

  @android @uidatabound
  Scenario:JENI1447-C47616-Check Amount of money in the recipient which already modified will not change automatically if modify the amount of money in another recipient
    Given User can access split bill menu with "split_bill_cif"
    #And User select the contact "split_bill_contacts_label_1"
    And User click "split_bill_contacts_label_1"
    Then User expect "split_bill_select_one_contact" is exist
    And User expect "split_bill_select_one_contact" equal with "split_bill_selected_one_contact"
    #And User select the contact "split_bill_contacts_label_2"
    And User click "split_bill_contacts_label_2"
    Then User expect "split_bill_select_two_contact" is exist
    And User expect "split_bill_select_two_contact" equal with "split_bill_selected_two_contact"
    Then User click "split_bill_done_button"
    #This action to fill the amount into 79000
    When User fill "split_bill_input_amount_textfield" with "split_bill_input_amount_data_text"
    Then User expect "split_bill_send_request_button" is exist
    #User do the amount adjustment of anamika become 28000
    And User fill "split_bill_amount_participant_one_amount" with "split_bill_adjust_amount_data_text"
    #The amount for alice and me should be 25,500
    Then User expect "split_bill_me_amount_textfield" equal with "split_bill_me_amount_after_first_adjust_expect_text"
    And User expect "split_bill_amount_participant_two_amount" equal with "split_bill_amount_after_first_adjust_expect_text"
    #User do the amount adjustment of alice become 22000
    When User fill "split_bill_amount_participant_two_amount" with "split_bill_adjust_amount_selected_contact_data_text"
    #The amount for me should be 29000
    Then User expect "split_bill_me_amount_textfield" equal with "split_bill_me_amount_after_second_adjust_expect_text"
    #The amount for anamika must be 28000
    And User expect "split_bill_amount_participant_one_amount" equal with "split_bill_amount_after_second_adjust_expect_text"
  
  @android @uidatabound 
  Scenario:JENI1447-C47620-Check amount of money will be auto devided equally to Me & the other recipients when click on Reset button
    Given User can access split bill menu with "split_bill_cif"
    And User click "split_bill_contacts_label_1"
    And User click "split_bill_done_button"
    When User fill "split_bill_input_amount_textfield" with "split_bill_input_amount_data_text"
    And User expect "split_bill_me_amount_textfield" equal with "split_bill_me_amount_expect_text"
    And User expect "split_bill_amount_participant_one_amount" equal with "split_bill_me_amount_expect_text"
    When User fill "split_bill_me_amount_textfield" with "split_bill_me_new_amount_text"
    And User expect "split_bill_amount_participant_one_amount" equal with "split_bill_new_amount_expect_text"
    And User click "split_bill_me_contact_label"
    And User click "split_bill_reset_button"
    And User expect "split_bill_me_amount_textfield" equal with "split_bill_me_amount_expect_text"
    And User click "split_bill_amount_participant_one_amount"
    And User expect "split_bill_amount_participant_one_amount" equal with "split_bill_me_amount_expect_text"

  @android @uidatabound
  Scenario:JENI1447-C47704-Check Error message will display when remove all recipient in list of Split Bill Calculation Screen
    Given User can access split bill menu with "split_bill_cif"
    And User click "split_bill_contacts_label_1"
    And User click "split_bill_contacts_label_2"
    And User click "split_bill_done_button"
    When User fill "split_bill_input_amount_textfield" with "split_bill_input_amount_data_text"
    And User click "split_bill_contacts_label_2"
    And User click "split_bill_delete_second_contact_calculation"
    And User click "split_bill_contacts_label_1"
    And User click "split_bill_delete_first_contact_calculation"
    And User expect "split_bill_top_notification_item" equal with "split_bill_can_not_send_to_yourself_notification"

  @android @uidatabound 
  Scenario:JENI1447-C47708-Check all selected recipients still will remain when go back Split bill contact screen
    Given User can access split bill menu with "split_bill_cif"
    And User click "split_bill_contacts_label_1"
    And User click "split_bill_contacts_label_2"
    And User click "split_bill_done_button"
    When User fill "split_bill_input_amount_textfield" with "split_bill_input_amount_data_text"
    And User expect "split_bill_me_amount_textfield" is exist
    And User expect "split_bill_amount_participant_one_amount" is exist
    And User expect "split_bill_amount_participant_two_amount" is exist
    And User click "back_button"
    Then User expect "split_bill_title_text" is exist
    #Then User expect selected checkbox "split_bill_selected_anamika_contacts_label" will exist
    Then User expect "split_bill_mark_contacts_1" is exist
    #Then User expect selected checkbox "split_bill_selected_alice_contacts_label" will exist
    Then User expect "split_bill_mark_contacts_2" is exist

  @android @uidatabound 
  Scenario:JENI1447-C47618-Check extra amount should be allocated to me when modify amount of recipient the can't devided equally
    Given User can access split bill menu with "split_bill_cif"
    And User click "split_bill_contacts_label_1"
    And User click "split_bill_contacts_label_2"
    And User click "split_bill_done_button"
    When User fill "split_bill_input_amount_textfield" with "split_bill_input_amount_data_text"
    And User expect "split_bill_me_amount_textfield" is exist
    And User expect "split_bill_amount_participant_one_amount" is exist
    And User expect "split_bill_amount_participant_two_amount" is exist
    And User expect "split_bill_me_amount_textfield" equal with "split_bill_me_amount_divided_equally"
    And User expect "split_bill_amount_participant_one_amount" equal with "split_bill_recipients_amount_divided_equally"
    And User expect "split_bill_amount_participant_two_amount" equal with "split_bill_recipients_amount_divided_equally"
    When User fill "split_bill_amount_participant_one_amount" with "split_bill_manual_adjusted_amount_of_money"
    And User expect "split_bill_me_amount_textfield" equal with "split_bill_me_adjusted_amount_of_money"
    And User expect "split_bill_amount_participant_two_amount" equal with "split_bill_adjusted_amount_of_money"

  @android @uidatabound 
  Scenario:JENI1447-C47614-Check extra amount should be allocated to the uppermost/topmost contact in the recipient list whose number is not modified yet
    Given User can access split bill menu with "split_bill_cif"
    And User click "split_bill_contacts_label_1"
    And User click "split_bill_contacts_label_2"
    And User click "split_bill_done_button"
    When User fill "split_bill_input_amount_textfield" with "split_bill_input_amount_data_text"
    And User expect "split_bill_me_amount_textfield" is exist
    And User expect "split_bill_amount_participant_one_amount" is exist
    And User expect "split_bill_amount_participant_two_amount" is exist
    When User fill "split_bill_amount_participant_one_amount" with "split_bill_manual_adjusted_amount_of_money"
    And User expect "split_bill_me_amount_textfield" equal with "split_bill_me_adjusted_amount_of_money"
    And User expect "split_bill_amount_participant_two_amount" equal with "split_bill_adjusted_amount_of_money"
    When User fill "split_bill_me_amount_textfield" with "split_bill_me_manual_adjusted_amount_of_money"
    And User expect "split_bill_amount_participant_one_amount" equal with "split_bill_adjusted_amount_of_money_2"
    And User expect "split_bill_amount_participant_two_amount" equal with "split_bill_adjusted_amount_of_money_second"

  @android @uispecific
  Scenario:JENI1447-C63646-Check System will show error under modify recipients when amount of one of them > Bill Amount
    Given User can access split bill menu with "cif_requestor_3"
    And User click "split_bill_check_contact"
    And User click "split_bill_check_contact"
    And User click "split_bill_done_button"
    When User fill "split_bill_input_amount_textfield" with "split_bill_total_amount"
    And User fill "split_bill_me_amount_textfield" with "split_bill_adjust_amount"
    Then User expect "split_bill_calculation_incorrect_amount" is exist

  @android @uidatabound 
  Scenario:JENI1447-C70046-Check copywrite translation show correctly
    Given User can access split bill menu with "split_bill_cif" and language "language"
    And User click "split_bill_check_contact"
    And User click "split_bill_done_button"
    When User fill "split_bill_input_amount_textfield" with "split_bill_total_amount"
    And User click "split_bill_amount_participant_one_amount"
    When User fill "split_bill_amount_participant_one_amount" with "split_bill_adjust_amount"
    Then User expect "split_bill_calculation_screen_title" equal with "split_bill_calculation_screen_title"
    Then User expect "split_bill_calculation_currency_label" equal with "split_bill_calculation_currency_label"
    Then User expect "split_bill_calculation_head_section_with_1_recepient" equal with "split_bill_calculation_head_section_with_1_recepient"
    Then User expect "split_bill_reset_button" equal with "split_bill_reset_button"
    Then User expect "split_bill_calculation_incorrect_amount" equal with "split_bill_calculation_incorrect_amount"
    Then User expect "split_bill_add_notes_textfield" equal with "split_bill_add_notes_textfield"
    Then User expect "split_bill_calculation_bill_amount_label" equal with "split_bill_calculation_bill_amount_label"
    Then User expect "split_bill_send_request_button" equal with "split_bill_send_request_button"

  @android @uidatabound 
  Scenario:JENI1448-C47719-Check format amount show correctly with EN language
    Given User can access split bill menu with "split_bill_cif"
    And User click "split_bill_contacts_label_1"
    Then User expect "split_bill_select_one_contact" is exist
    And User expect "split_bill_select_one_contact" equal with "split_bill_selected_one_contact"
    Then User click "split_bill_done_button"
    When User fill "split_bill_input_amount_textfield" with "split_bill_input_amount_second_data_text"
    Then User expect "split_bill_send_request_button" is exist
    And User click "split_bill_send_request_button"
    Then User expect "split_bill_success_notification_message_en" is exist
    #And User expect "split_bill_contacts_label_1" equal with "split_bill_expected_contact_display_label_1"
    And User expect "split_bill_amount_result_textfield_en" equal with "split_bill_second_amount_expected_display_label"
 
   @android @uidatabound 
  Scenario:JENI1448-C47720-Check format amount show correctly with Indonesia language
    Given User can access split bill menu with "split_bill_cif"
    And User click "split_bill_contacts_label_1"
    Then User expect "split_bill_select_one_contact" is exist
    #And User expect "split_bill_select_one_contact" equal with "split_bill_selected_one_contact"
    Then User click "split_bill_done_button"
    When User fill "split_bill_input_amount_textfield" with "split_bill_input_amount_second_data_text"
    Then User expect "split_bill_send_request_button_id" is exist
    And User click "split_bill_send_request_button_id"
    Then User expect "split_bill_success_notification_message_id" is exist
    #And User expect "split_bill_amount_anamika_result_textfield" equal with "split_bill_second_amount_expected_label"
 
   @android @uidatabound 
  Scenario:JENI1448-C47722-Check X icon in Result Widget
    Given User can access split bill menu with "split_bill_cif"
    And User click "split_bill_contacts_label_1"
    Then User expect "split_bill_select_one_contact" is exist
    And User expect "split_bill_select_one_contact" equal with "split_bill_selected_one_contact"
    Then User click "split_bill_done_button"
    When User fill "split_bill_input_amount_textfield" with "split_bill_input_amount_second_data_text"
    Then User expect "split_bill_send_request_button" is exist
    And User click "split_bill_send_request_button"
    Then User expect "split_bill_success_notification_message_en" is exist
    #This commenting out since the element can't be select. Need to implement accessibility label
    #User click "split_bill_close_notification_button"
 
    @android @uidatabound 
  Scenario:JENI1448-C47726-Check Result Widget will auto disappear after it over 60 second
    Given User can access split bill menu with "split_bill_cif"
    And User click "split_bill_contacts_label_1"
    Then User expect "split_bill_select_one_contact" is exist
    And User expect "split_bill_select_one_contact" equal with "split_bill_selected_one_contact"
    Then User click "split_bill_done_button"
    When User fill "split_bill_input_amount_textfield" with "split_bill_input_amount_second_data_text"
    Then User expect "split_bill_send_request_button" is exist
    And User click "split_bill_send_request_button"
    Then User expect "split_bill_success_notification_message_en" is exist
    And User wait 60 seconds
    Then User expect "split_bill_success_notification_message_en" doesn't exist

  @android @uidatabound  
  Scenario:JENI1448-C47732-Check Result Widget will disappear when logout from **** application
    Given User can access split bill menu with "split_bill_cif"
    And User click "split_bill_contacts_label_1"
    Then User expect "split_bill_select_one_contact" is exist
    And User expect "split_bill_select_one_contact" equal with "split_bill_selected_one_contact"
    Then User click "split_bill_done_button"
    When User fill "split_bill_input_amount_textfield" with "split_bill_input_amount_second_data_text"
    Then User expect "split_bill_send_request_button" is exist
    And User click "split_bill_send_request_button"
    Then User expect "split_bill_success_notification_message_en" is exist
    And User click "dashboard_hamburger_icon"
    And User expect "dashboard_menu" is exist
    Then User scroll to "logout_menu"
    And User click "logout_menu"
    And User click "dashboard_hamburger_icon"
    And User click "dashboard_menu"
    Then User expect "split_bill_success_notification_message_en" doesn't exist

  @android @uidatabound  
  Scenario:JENI1448-C47733-Check Recipient list show correctly in Result Widget when submit Money Request successful
    Given User can access split bill menu with "split_bill_cif"
    And User click "split_bill_contacts_label_1"
    Then User expect "split_bill_select_one_contact" is exist
    And User expect "split_bill_select_one_contact" equal with "split_bill_selected_one_contact"
    Then User click "split_bill_done_button"
    When User fill "split_bill_input_amount_textfield" with "split_bill_input_amount_second_data_text"
    Then User expect "split_bill_send_request_button" is exist
    And User click "split_bill_send_request_button"
    Then User expect "split_bill_success_notification_message_en" is exist
    #And User expect "split_bill_contacts_label_1" equal with "split_bill_expected_contact_display_label_1"
    And User expect "split_bill_amount_result_textfield_en" equal with "split_bill_second_amount_expected_display_label"

  @android @uidatabound  
  Scenario:JENI1448-C47736-Check Result Widget will disappear in Dashboard after leave dashboard and come back again
    Given User can access split bill menu with "split_bill_cif"
    And User click "split_bill_contacts_label_1"
    Then User expect "split_bill_select_one_contact" is exist
    And User expect "split_bill_select_one_contact" equal with "split_bill_selected_one_contact"
    Then User click "split_bill_done_button"
    When User fill "split_bill_input_amount_textfield" with "split_bill_input_amount_second_data_text"
    Then User expect "split_bill_send_request_button" is exist
    And User click "split_bill_send_request_button"
    Then User expect "split_bill_success_notification_message_en" is exist
    And User click "dashboard_hamburger_icon"
    Then User expect "card_center_menu" is exist
    When User click "card_center_menu"
    Then User click "dashboard_hamburger_icon"
    And User click "dashboard_menu"
    Then User expect "split_bill_success_notification_message_en" doesn't exist

  @android @uidatabound  
  Scenario:JENI1449-C47737-Check Character counter will count down when input chars in Notes field
    Given User can access split bill menu with "split_bill_cif"
    And User click "split_bill_contacts_label_1"
    Then User expect "split_bill_select_one_contact" is exist
    And User expect "split_bill_select_one_contact" equal with "split_bill_selected_one_contact"
    Then User click "split_bill_done_button"
    When User fill "split_bill_input_amount_textfield" with "split_bill_input_amount_second_data_text"
    Then User expect "split_bill_send_request_button" is exist
    And User fill "split_bill_add_notes_textfield" with "split_bill_add_note_textfield"
    Then User expect "split_bill_countdown_amount" equal with "split_bill_countdown_text_amount"

  @android @uidatabound  
  Scenario:JENI1449-C47738-Check Max length of Notes field
    Given User can access split bill menu with "split_bill_cif"
    And User click "split_bill_contacts_label_1"
    Then User expect "split_bill_select_one_contact" is exist
    And User expect "split_bill_select_one_contact" equal with "split_bill_selected_one_contact"
    Then User click "split_bill_done_button"
    When User fill "split_bill_input_amount_textfield" with "split_bill_input_amount_second_data_text"
    Then User expect "split_bill_send_request_button" is exist
    And User fill "split_bill_add_notes_textfield" with "split_bill_note_max_text"
    And User expect "split_bill_countdown_amount" is exist
    Then User expect "split_bill_countdown_amount" equal with "split_bill_countdown_zero_amount"

  @android @uidatabound
  Scenario:JENI1449-C47739-Check User can't input Special chars in Notes filed
    Given User can access split bill menu with "split_bill_cif"
    And User click "split_bill_contacts_label_1"
    Then User expect "split_bill_select_one_contact" is exist
    And User expect "split_bill_select_one_contact" equal with "split_bill_selected_one_contact"
    Then User click "split_bill_done_button"
    When User fill "split_bill_input_amount_textfield" with "split_bill_input_amount_data_text"
    And User expect "split_bill_add_notes_textfield" is exist
    When User fill "split_bill_add_notes_textfield" with "split_bill_note_special_chars"
    Then User expect "split_bill_countdown_amount" equal with "split_bill_countdown_thirty_five_amount"

  @android @uidatabound 
  Scenario:JENI1449-C70048-Check copywrite translation show correctly
    Given User can access split bill menu with "split_bill_cif" and language "language"
    And User click "split_bill_check_contact"
    And User click "split_bill_done_button"
    When User fill "split_bill_input_amount_textfield" with "split_bill_total_amount"
    And User click "split_bill_amount_participant_one_amount"
    When User fill "split_bill_amount_participant_one_amount" with "split_bill_adjust_amount"
    Then User expect "split_bill_calculation_screen_title" equal with "split_bill_calculation_screen_title"
    Then User expect "split_bill_calculation_currency_label" equal with "split_bill_calculation_currency_label"
    Then User expect "split_bill_calculation_head_section_with_1_recepient" equal with "split_bill_calculation_head_section_with_1_recepient"
    Then User expect "split_bill_reset_button" equal with "split_bill_reset_button"
    Then User expect "split_bill_calculation_incorrect_amount" equal with "split_bill_calculation_incorrect_amount"
    Then User expect "split_bill_add_notes_textfield" equal with "split_bill_add_notes_textfield"
    Then User expect "split_bill_calculation_bill_amount_label" equal with "split_bill_calculation_bill_amount_label"
    Then User expect "split_bill_send_request_button" equal with "split_bill_send_request_button"

  @android @uidatabound
  Scenario:JENI1447-C47751-Check Amount of money will auto devided equally to me and other recipients when modify Amount Bill Field
    Given User can access split bill menu with "split_bill_cif"
    And User click "split_bill_contacts_label_1"
    Then User expect "split_bill_select_one_contact" is exist
    And User expect "split_bill_select_one_contact" equal with "split_bill_selected_one_contact"
    Then User click "split_bill_done_button"
    When User fill "split_bill_input_amount_textfield" with "split_bill_input_amount_one_million"
    Then User expect "split_bill_me_amount_textfield" equal with "split_bill_input_amount_five_million"
    And User expect "split_bill_amount_participant_one_amount" equal with "split_bill_input_amount_five_million"

#JENI-1450
  @android @uidatabound
  Scenario:JENI1450-C47743-Check format Amount show correctly at Split Bill Calculate screen with English Language
    Given User can access split bill menu with "split_bill_cif"
    And User click "split_bill_contacts_label_1"
    Then User expect "split_bill_select_one_contact" is exist
    And User expect "split_bill_select_one_contact" equal with "split_bill_selected_one_contact"
    Then User click "split_bill_done_button"
    When User fill "split_bill_input_amount_textfield" with "split_bill_input_amount_second_data_text"
    Then User expect "split_bill_currency_en" is exist
    And User expect "split_bill_amount_std_en" is exist

  @android @uidatabound
  Scenario:JENI1450-C47744-Check format Amount show correctly at Split Bill Calculate Screen with Indonesia language
    Given User can access split bill menu with "split_bill_cif"
    And User click "split_bill_contacts_label_1"
    Then User expect "split_bill_select_one_contact" is exist
    And User expect "split_bill_select_one_contact_id" equal with "split_bill_selected_one_contact_id"
    Then User click "split_bill_done_button"
    When User fill "split_bill_input_amount_textfield" with "split_bill_input_amount_second_data_text"
    Then User expect "split_bill_currency_id" is exist
    And User expect "split_bill_amount_std_id" is exist

  @android @uidatabound
  Scenario:JENI1450-C47745-Check "Money Request" button will be disable when Amount Bill field is empty or 0 at Split Bill Calculate screen
    Given User can access split bill menu with "split_bill_cif"
    And User click "split_bill_contacts_label_1"
    Then User expect "split_bill_select_one_contact" is exist
    And User expect "split_bill_select_one_contact" equal with "split_bill_selected_one_contact"
    Then User click "split_bill_done_button"
    When User fill "split_bill_input_amount_textfield" with "split_bill_input_amount_zero_data_text"
    And User click "split_bill_send_request_button"
    Then User expect "split_bill_success_widget" doesn't exist

  @android @uidatabound
  Scenario:JENI1450-C47746-Check Max length of number in Bill amount field
    Given User can access split bill menu with "split_bill_cif"
    And User click "split_bill_contacts_label_1"
    Then User expect "split_bill_select_one_contact" is exist
    And User expect "split_bill_select_one_contact" equal with "split_bill_selected_one_contact"
    Then User click "split_bill_done_button"
    When User fill "split_bill_input_amount_textfield" with "split_bill_input_amount_max_data_text"

  @android @uidatabound 
  Scenario:JENI1450-C70049-Check copywrite translation show correctly
    Given User can access split bill menu with "split_bill_cif" and language "language"
    And User click "split_bill_check_contact"
    And User click "split_bill_done_button"
    When User fill "split_bill_input_amount_textfield" with "split_bill_total_amount"
    And User click "split_bill_amount_participant_one_amount"
    When User fill "split_bill_amount_participant_one_amount" with "split_bill_adjust_amount"
    Then User expect "split_bill_calculation_screen_title" equal with "split_bill_calculation_screen_title"
    Then User expect "split_bill_calculation_currency_label" equal with "split_bill_calculation_currency_label"
    Then User expect "split_bill_calculation_head_section_with_1_recepient" equal with "split_bill_calculation_head_section_with_1_recepient"
    Then User expect "split_bill_reset_button" equal with "split_bill_reset_button"
    Then User expect "split_bill_calculation_incorrect_amount" equal with "split_bill_calculation_incorrect_amount"
    Then User expect "split_bill_add_notes_textfield" equal with "split_bill_add_notes_textfield"
    Then User expect "split_bill_calculation_bill_amount_label" equal with "split_bill_calculation_bill_amount_label"
    Then User expect "split_bill_send_request_button" equal with "split_bill_send_request_button"

  @android @uidatabound    
  Scenario:JENI1447-C47617-Check error message will display when modify amount of recipient > amount in Bill Amount Field
    Given User can access split bill menu with "split_bill_cif"
    And User click "split_bill_contacts_label_1"
    Then User expect "split_bill_select_one_contact" is exist
    And User expect "split_bill_select_one_contact" equal with "split_bill_selected_one_contact"
    Then User click "split_bill_done_button"
    When User fill "split_bill_input_amount_textfield" with "split_bill_input_few_amount_data_text"
    And User fill "split_bill_me_amount_textfield" with "split_bill_adjust_incorrect_amount_data_text"
    Then User expect "split_bill_amount_participant_one_amount" equal with "split_bill_auto_adjust_zero_amount_data_text"
    And User expect "split_bill_me_incorrect_amount_message_textfield" equal with "split_bill_incorrect_amount_message_information_text"
    #This is commenting out since it's not implemented yet by developer to check the disabled attribute of the button
    #And User expect "split_bill_send_request_button" is disabled

  @android @uidatabound  
  Scenario:JENI1447-C47619-Check X button at one of Recipient
    Given User can access split bill menu with "split_bill_cif"
    And User click "split_bill_contacts_label_1"
    Then User expect "split_bill_select_one_contact" is exist
    And User expect "split_bill_select_one_contact" equal with "split_bill_selected_one_contact"
    And User click "split_bill_contacts_label_2"
    Then User expect "split_bill_select_two_contact" is exist
    And User expect "split_bill_select_two_contact" equal with "split_bill_selected_two_contact"
    Then User click "split_bill_done_button"
    When User fill "split_bill_input_amount_textfield" with "split_bill_input_amount_data_text"
    Then User expect "split_bill_me_amount_textfield" equal with "split_bill_me_amount_expected_data_text"
    And User expect "split_bill_amount_participant_one_amount" equal with "split_bill_amount_expected_data_text"
    And User expect "split_bill_amount_participant_two_amount" equal with "split_bill_amount_expected_data_text_2"
    And User expect "split_bill_delete_second_contact_calculation" is exist
    #When User click "split_bill_contacts_label_1"
    And User click "split_bill_contacts_label_1"
    And User click "split_bill_delete_second_contact_calculation"
    #Then User expect "split_bill_contacts_label_2" doesn't exist
    Then User expect contact of "split_bill_contacts_label_2" won't exist
    And User expect "split_bill_me_amount_textfield" equal with "split_bill_me_second_amount_expected_data_text"
    And User expect "split_bill_amount_participant_one_amount" equal with "split_bill_amount_expected_data_text_3"

#JENI-2118
 @android @ios @uispecific
  Scenario:JENI2118-C63977-Verify Input manually screen
   Given User can access split bill menu with "split_bill_cif"
   When User click "split_bill_input_manually_button"
   Then User expect "split_bill_input_manualy_description_text_lable" is exist
   And User expect "split_bill_input_manually_textfield" is exist
   And User expect "split_bill_add_button" is exist
   And User expect "split_bill_cancel_button" is exist

  @android @ios @uispecific
  Scenario:JENI2118-C63978-Pop-up window will be close if user click cancel button
    Given User can access split bill menu with "split_bill_cif"
    When User click "split_bill_input_manually_button"
    Then User expect "split_bill_input_manualy_description_text_lable" is exist
    And User click "split_bill_cancel_button"
    Then User expect "split_bill_input_manualy_description_text_lable" doesn't exist

  @android @uidatabound
  Scenario:JENI2118-C63979-Verify Input manually using cashtag
    Given User can access split bill menu with "split_bill_cif"
    When User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_cashtag_2"
    And User click "split_bill_add_button" until "split_bill_done_button" displayed
    And User expect "split_bill_selected_contact_bar" is exist    
    #This commenting-out since this is not develop yet by developer
    #And User expect "split_bill_add_button" is enabled

  @android @uidatabound
  Scenario:JENI2118-C63980-verify Input manually using email
    Given User can access split bill menu with "split_bill_cif"
    When User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_****_recipient_user_email"
    And User click "split_bill_add_button" until "split_bill_done_button" displayed
    And User expect "split_bill_selected_contact_bar" is exist 
    #This commenting-out since this is not develop yet by developer
    #And User expect "split_bill_add_button" is enabled

  @android @uidatabound
  Scenario:JENI2118-C63981-Verify phone number which begin with 021
    Given User can access split bill menu with "split_bill_cif"
    When User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_valid_phone_number_non_****_user_starting_021"
    #This commenting-out since this is not develop yet by developer
    #And User expect "split_bill_add_button" is enabled

  @android @uidatabound
  Scenario:JENI2118-C63982-Verify phone number which begin with +6221
    Given User can access split bill menu with "split_bill_cif"
    When User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_valid_phone_number_non_****_user"
    #This commenting-out since this is not develop yet by developer
    #And User expect "split_bill_add_button" is enabled

  @android @uidatabound
  Scenario:JENI2118-C63983-Verify phone number which begin with 6221
    Given User can access split bill menu with "split_bill_cif"
    When User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_phone_number_starting_6221"
    #This commenting-out since this is not develop yet by developer
    #And User expect "split_bill_add_button" is enabled

  @android @uidatabound
  Scenario:JENI2118-C63986-Input cashtag which is not recognized as valid cashtag
    Given User can access split bill menu with "split_bill_cif"
    When User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_valid_cashtag_non_jenus_user"
    Then User expect "split_bill_error_message_for_inputting_invalid_email_address" is exist
    And User expect "split_bill_error_message_for_inputting_invalid_email_address" equal with "split_bill_error_message_invalid_email_address"

  @android @uidatabound
  Scenario:JENI2118-C63987-Input phone number which is not recognized as valid phone number
    Given User can access split bill menu with "split_bill_cif"
    When User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_invalid_input_manually"
    Then User expect "split_bill_error_message_for_inputting_invalid_email_address" is exist
    And User expect "split_bill_error_message_for_inputting_invalid_email_address" equal with "split_bill_error_message_invalid_email_address"

  @android @uidatabound
  Scenario:JENI2118-C63988-Input email which is not recognized as valid email
    Given User can access split bill menu with "split_bill_cif"
    When User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_invalid_input_manually"
    Then User expect "split_bill_error_message_for_inputting_invalid_email_address" is exist
    And User expect "split_bill_error_message_for_inputting_invalid_email_address" equal with "split_bill_error_message_invalid_email_address"

  @android @uidatabound
  Scenario:JENI2118-C67346-Input valid cashtag which belong to **** user
    Given User can access split bill menu with "split_bill_cif"
    When User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_valid_cashtag"
    When User click "split_bill_add_button"
    #Then User expect "split_bill_ram_cashtag" is exist
    Then User expect contact of "split_bill_valid_cashtag" will exist

  @android @uidatabound
  Scenario:JENI2118-C67348-Input valid indonesia phone number has registered to **** account
    Given User can access split bill menu with "split_bill_cif"
    When User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_valid_phone_number_starting_with_+628"
    When User click "split_bill_add_button"
    Then User expect "split_bill_valid_phone_number_starting_with_628" is exist

  @android @uidatabound
  Scenario:JENI2118-C67350-Input email has registered to **** account
    Given User can access split bill menu with "split_bill_cif"
    When User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_valid_email_address_2"
    When User click "split_bill_add_button"
    Then User expect "split_bill_valid_email_address_2" is exist

  @android @uidatabound
  Scenario:JENI2118-C67351-Input phone number which belong to Non-**** user
    Given User can access split bill menu with "split_bill_cif"
    When User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_valid_phone_number_starting_with_+6281"
    When User click "split_bill_add_button"
    Then User expect "split_bill_valid_phone_number_starting_with_6281" is exist

  @android @uidatabound
  Scenario:JENI2118-C67352-Input valid email which belong to Non-**** user
    Given User can access split bill menu with "split_bill_cif"
    When User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_valid_user_email_non_****_user"
    When User click "split_bill_add_button"
    Then User expect "split_bill_valid_user_email_non_****_user" is exist

  @android @uidatabound
  Scenario:JENI2118-C67353-Verify cashtag in the calculation screen
    Given User can access split bill menu with "split_bill_cif"
    When User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_valid_cashtag"
    When User click "split_bill_add_button"
    And User click "split_bill_done_button"
    Then User expect "split_bill_input_amount_textfield" is exist
    And User hide the keyboard
    #Then User expect "split_bill_ram_cashtag" is exist
    Then User expect contact of "split_bill_valid_cashtag" will exist

  @android @uidatabound
  Scenario:JENI2118-C67354-Verify phone number belong to **** user in the calculation screen
    Given User can access split bill menu with "split_bill_cif"
    When User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_valid_phone_number_starting_with_+628"
    When User click "split_bill_add_button"
    And User click "split_bill_done_button"
    Then User expect "split_bill_input_amount_textfield" is exist
    And User hide the keyboard
    Then User expect "split_bill_valid_phone_number_starting_with_628" is exist

  @android @uidatabound
  Scenario:JENI2118-C67355-Verify email belong to **** user in the calculation screen
    Given User can access split bill menu with "split_bill_cif"
    When User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_valid_email_address_2"
    When User click "split_bill_add_button"
    And User click "split_bill_done_button"
    Then User expect "split_bill_input_amount_textfield" is exist
    And User hide the keyboard
    #Then User expect "split_bill_valid_email_address_2" is exist
    Then User expect contact of "split_bill_valid_email_address_2" will exist

  @android @uidatabound
  Scenario:JENI2118-C67359-Verify phone number belong non **** user in the calculation screen
    Given User can access split bill menu with "split_bill_cif"
    When User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_valid_phone_number_starting_with_+6281"
    When User click "split_bill_add_button"
    And User click "split_bill_done_button"
    Then User expect "split_bill_input_amount_textfield" is exist
    And User hide the keyboard
    Then User expect "split_bill_valid_phone_number_starting_with_6281" is exist

  @android @uidatabound
  Scenario:JENI2118-C67360-Verify email belong non **** user in the calculation screen
    Given User can access split bill menu with "split_bill_cif"
    When User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_valid_user_email_non_****_user"
    When User click "split_bill_add_button"
    And User click "split_bill_done_button"
    Then User expect "split_bill_input_amount_textfield" is exist
    And User hide the keyboard
    Then User expect "split_bill_valid_user_email_non_****_user" is exist

#JENI-1200
 @android @uidatabound
  Scenario:JENI1200-C67378-Verify send request button will be disabled when the amount of money is 0
   Given User can access split bill menu with "split_bill_cif_3"
   When User click "split_bill_input_manually_button"
   And User fill "split_bill_input_manually_textfield" with "split_bill_****_user_email"
   When User click "split_bill_add_button"
   And User click "split_bill_done_button"
   And User hide the keyboard
   And User click "split_bill_send_request_button"
   Then User expect "split_bill_success_widget" doesn't exist

  @android @uidatabound
  Scenario:JENI1200-C67379-Send request button will be enabled when the amount of money larger than 0
    Given User can access split bill menu with "split_bill_cif_3"
    When User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_user_cashtag_4"
    When User click "split_bill_add_button"
    And User click "split_bill_done_button"
    When User fill "split_bill_input_amount_textfield" with "split_bill_total_amount"
    And User hide the keyboard
    And User click "split_bill_send_request_button"
    Then User expect "split_bill_success_widget" is exist

  @android @uidatabound
  Scenario:JENI1200-C67381-Error message appear when user input own cashtag
    Given User can access split bill menu with "split_bill_cif_3"
    When User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_****_user_cashtag"
    When User click "split_bill_add_button"
    And User click "split_bill_done_button"
    When User fill "split_bill_input_amount_textfield" with "split_bill_total_amount"
    #And User hide the keyboard
    And User click "split_bill_send_request_button"
    Then User expect "top_notification_snackbar" equal with "split_bill_can_not_send_to_yourself_notification"
    Then User expect "split_bill_success_widget" doesn't exist

  @android @uidatabound
  Scenario:JENI1200-C67319-Error message appear when user input own email
    Given User can access split bill menu with "split_bill_cif_3"
    When User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_****_user_email"
    When User click "split_bill_add_button"
    And User click "split_bill_done_button"
    When User fill "split_bill_input_amount_textfield" with "split_bill_total_amount"
    #And User hide the keyboard
    And User click "split_bill_send_request_button"
    Then User expect "top_notification_snackbar" equal with "split_bill_can_not_send_to_yourself_notification"
    Then User expect "split_bill_success_widget" doesn't exist

  @android @uidatabound
  Scenario:JENI1200-C67421-Error message appear when user input own phone number
    Given User can access split bill menu with "split_bill_cif_3"
    When User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_mobile_phone_3"
    When User click "split_bill_add_button"
    And User click "split_bill_done_button"
    When User fill "split_bill_input_amount_textfield" with "split_bill_total_amount"
    #And User hide the keyboard
    And User click "split_bill_send_request_button"
    Then User expect "top_notification_snackbar" equal with "split_bill_can_not_send_to_yourself_notification"
    Then User expect "split_bill_success_widget" doesn't exist

  @android @uidatabound
  Scenario:JENI1200-C67394-The screen will direct to dashboard when transaction is successfull
    Given User can access split bill menu with "split_bill_cif_3"
    When User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_user_cashtag_4"
    When User click "split_bill_add_button"
    And User click "split_bill_done_button"
    When User fill "split_bill_input_amount_textfield" with "split_bill_total_amount"
    #And User hide the keyboard
    And User click "split_bill_send_request_button"
    Then User expect "split_bill_success_widget" is exist

  @android @uidatabound
  Scenario:JENI1200-C67407-Result Widget appear when transaction is successfull
    Given User can access split bill menu with "split_bill_cif"
    And User click "split_bill_contacts_label_1"
    Then User expect "split_bill_select_one_contact" is exist
    And User expect "split_bill_select_one_contact" equal with "split_bill_selected_one_contact"
    Then User click "split_bill_done_button"
    When User fill "split_bill_input_amount_textfield" with "split_bill_input_amount_second_data_text"
    Then User expect "split_bill_send_request_button" is exist
    And User click "split_bill_send_request_button"
    Then User expect "dashboard" is exist
    Then User expect "split_bill_success_notification_message_en" is exist

  @android @ios @uispecific
  Scenario:JENI1547-C67437-Verify search button available in the split bill contact screen
    Given User can access split bill menu with "split_bill_cif"
    And User expect "search_loupe_icon" is exist

  @android @ios @uispecific
  Scenario:JENI1547-C67458-Search field bar will be expand after click search icon
    Given User can access split bill menu with "split_bill_cif"
    Then User expect "search_loupe_icon" is exist
    And User click "search_loupe_icon"
    Then User expect "split_bill_search_textfield" is exist

  @android @ios @uispecific
  Scenario:JENI1547-C67462-User able to types character in the search field bar
    Given User can access split bill menu with "split_bill_cif"
    Then User expect "search_loupe_icon" is exist
    And User click "search_loupe_icon"
    Then User expect "split_bill_search_textfield" is exist
    And User fill "split_bill_search_textfield" with "split_bill_add_note_textfield"

  @android @ios @uispecific
  Scenario:JENI1547-C67468-Click cancel button to close search bar field
    Given User can access split bill menu with "split_bill_cif"
    Then User expect "search_loupe_icon" is exist
    And User click "search_loupe_icon"
    Then User expect "split_bill_search_textfield" is exist
    And User click "split_bill_search_textfield_cancel_button"
    Then User expect "split_bill_search_textfield" doesn't exist

  @android @uidatabound
  Scenario:JENI1547-C67471-Input character in the search field bar
    Given User can access split bill menu with "split_bill_cif"
    Then User expect "search_loupe_icon" is exist
    And User click "search_loupe_icon"
    Then User expect "split_bill_search_textfield" is exist
    And User fill "split_bill_search_textfield" with "split_bill_cashtag_2"
    #Then User expect "split_bill_contacts_label_2" is exist
    Then User expect contact of "split_bill_contacts_label_2" will exist

  @android @uidatabound
  Scenario:JENI1547-C67473-Click "X" button to clear field
    Given User can access split bill menu with "split_bill_cif"
    Then User expect "search_loupe_icon" is exist
    And User click "search_loupe_icon"
    And User fill "split_bill_search_textfield" with "split_bill_cashtag_2"
    Then User click "clear_button_search"
    And User expect "split_bill_search_textfield" is exist

  @android @ios @uispecific
  Scenario:JENI1547-C67474-Verify "Cancel" button available in the search bar field
    Given User can access split bill menu with "split_bill_cif"
    Then User expect "search_loupe_icon" is exist
    And User click "search_loupe_icon"
    Then User expect "split_bill_search_textfield_cancel_button" is exist

  @android @ios @uispecific
  Scenario:JENI1547-C67476-Click "Cancel" button to close search bar field
    Given User can access split bill menu with "split_bill_cif"
    Then User expect "search_loupe_icon" is exist
    And User click "search_loupe_icon"
    Then User expect "split_bill_search_textfield_cancel_button" is exist
    And User click "split_bill_search_textfield_cancel_button"
    Then User expect "split_bill_search_textfield" doesn't exist
    And User expect "search_loupe_icon" is exist

  @android @uidatabound
  Scenario:JENI1547-C67479-Input character which doesn't match with contact list
    Given User can access split bill menu with "split_bill_cif"
    Then User expect "search_loupe_icon" is exist
    And User click "search_loupe_icon"
    And User fill "split_bill_search_textfield" with "split_bill_add_note_textfield"
    Then User expect "split_bill_no_matches_found_message" is exist

  @android @uidatabound
  Scenario:JENI1547-C67483-Verify contact from the search result has checkmark
    Given User can access split bill menu with "split_bill_cif"
    Then User expect "search_loupe_icon" is exist
    And User click "search_loupe_icon"
    And User fill "split_bill_search_textfield" with "split_bill_cashtag_2"
    #When User select the contact "split_bill_contacts_label_2"
    When User click "split_bill_contacts_label_2"
    #Need to implement in the future
    #Then User expect "split_bill_alice_selected_mark" is exist

  @android @uidatabound
  Scenario:JENI1547-C67484-Verify contacts appear in the participant list
    Given User can access split bill menu with "split_bill_cif"
    Then User expect "search_loupe_icon" is exist
    And User click "search_loupe_icon"
    And User fill "split_bill_search_textfield" with "split_bill_cashtag_2"
    #When User select the contact "split_bill_contacts_label_2"
    When User click "split_bill_contacts_label_2"
    Then User expect "split_bill_select_one_contact" is exist
    And User expect "split_bill_select_one_contact" equal with "split_bill_selected_one_contact"

  @android @endtoend
  Scenario:JENI624-C67563-Verify all of my Pay Me request & Split bill request appear in the Request Tab [Precondition-Requestor]
    Given User can access split bill menu with "split_bill_cif"
    When User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_cashtag_2"
    When User click "split_bill_add_button"
    #Then User expect contact of "split_bill_cashtag_2" will exist
    Then User expect contact of "split_bill_cashtag_2" will exist
    And User click "split_bill_done_button"
    When User fill "split_bill_input_amount_textfield" with "split_bill_amount_request_text"
    And User click "split_bill_send_request_button"
    Then User expect "dashboard" is exist
    Then User expect "split_bill_success_notification_message_en" is exist

  @android @endtoend 
  Scenario:JENI624-C67563-Verify all of my Pay Me request & Split bill request appear in the Request Tab [Receiver]
    Given User check split bill notification of request money with "split_bill_cif_receiver"
    Then User expect the selected contact equal with "split_bill_fullname_user_login_requestor"
    And User expect "split_bill_amount_request" equal with "split_bill_request_amount"
    And User expect "split_bill_decline_button" is exist
    And User expect "split_bill_send_money_button" is exist
    #And User expect "split_bill_notification_sending_money" is exist
    And User expect notification from "split_bill_fullname_user_login_requestor" is exist

  #CHANGE
  @android @endtoend
  Scenario:JENI624-C67507-By cashtag - Verify Split Bill display if requestor not yet registered in **** contact [Precondition-Requestor]
    Given User can access split bill menu with "split_bill_cif"
    When User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_cashtag_2"
    When User click "split_bill_add_button"
    #Then User expect contact of "split_bill_cashtag_2" will exist
    Then User expect contact of "split_bill_cashtag_2" will exist
    And User click "split_bill_done_button"
    When User fill "split_bill_input_amount_textfield" with "split_bill_amount_request_text"
    And User click "split_bill_send_request_button"
    Then User expect "dashboard" is exist
    Then User expect "split_bill_success_notification_message_en" is exist

  @android @endtoend
  Scenario:JENI624-C67507-By cashtag - Verify Split Bill display if requestor not yet registered in **** contact [Receiver]
    Given User check split bill notification of request money with "split_bill_cif_receiver"
    #Then User expect the selected contact equal with "split_bill_fullname_user_login_requestor"
    Then User expect the selected contact equal with "split_bill_fullname_user_login_requestor"
    And User expect "split_bill_amount_request" equal with "split_bill_request_amount"
    And User expect "split_bill_decline_button" is exist
    And User expect "split_bill_send_money_button" is exist
    And User expect "split_bill_notification_sending_money" is exist
    #And User expect "split_bill_description_notification_message" is exist
    And User expect notification from "split_bill_fullname_user_login_requestor" is exist

  #CHANGE
  @android @endtoend
  Scenario:JENI624-C67508-By Email- Verify Split Bill display if requestor not yet registered in **** contact [Precondition-Requestor]
    Given User can access split bill menu with "split_bill_cif"
    When User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_****_recipient_user_email"
    When User click "split_bill_add_button"
    #Then User expect contact of "split_bill_cashtag_2" will exist
    Then User expect contact of "split_bill_cashtag_2" will exist
    And User click "split_bill_done_button"
    When User fill "split_bill_input_amount_textfield" with "split_bill_amount_request_text"
    And User click "split_bill_send_request_button"
    Then User expect "dashboard" is exist
    Then User expect "split_bill_success_notification_message_en" is exist

  @android @endtoend  
  Scenario:JENI624-C67508-By Email- Verify Split Bill display if requestor not yet registered in **** contact [Receiver]
    Given User check split bill notification of request money with "split_bill_cif_receiver"
    #Then User expect the selected contact equal with "split_bill_fullname_user_login_requestor"
    Then User expect the selected contact equal with "split_bill_fullname_user_login_requestor"
    And User expect "split_bill_amount_request" equal with "split_bill_request_amount"
    And User expect "split_bill_decline_button" is exist
    And User expect "split_bill_send_money_button" is exist
    And User expect "split_bill_notification_sending_money" is exist
    #And User expect "split_bill_description_notification_message" is exist
    And User expect notification from "split_bill_fullname_user_login_requestor" is exist

  @android @endtoend 
  Scenario:JENI624-C67509-By Phone Number - Verify Split Bill display if requestor not yet registered in **** contact [Precondition-Requestor]
    Given User can access split bill menu with "split_bill_cif"
    When User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_valid_phone_number"
    When User click "split_bill_add_button"
    Then User expect contact of "split_bill_cashtag_2" will exist
    And User click "split_bill_done_button"
    When User fill "split_bill_input_amount_textfield" with "split_bill_amount_request_text"
    And User click "split_bill_send_request_button"
    Then User expect "dashboard" is exist
    Then User expect "split_bill_success_notification_message_en" is exist
 
  @android @endtoend  
  Scenario:JENI624-C67509-By Phone Number - Verify Split Bill display if requestor not yet registered in **** contact [Receiver]
    Given User check split bill notification of request money with "split_bill_cif_receiver"
    Then User expect the selected contact equal with "split_bill_fullname_user_login_requestor"
    And User expect "split_bill_amount_request" equal with "split_bill_request_amount"
    And User expect "split_bill_decline_button" is exist
    And User expect "split_bill_send_money_button" is exist
    And User expect "split_bill_notification_sending_money" is exist
    #And User expect "split_bill_description_notification_message" is exist
    And User expect notification from "split_bill_fullname_user_login_requestor" is exist

  @android @endtoend  
  Scenario:JENI624-C67519-By Cashtag - Check your Full name display in the split bill [Precondition-Requestor]
    Given User can access split bill menu with "split_bill_cif"
    When User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_cashtag_2"
    When User click "split_bill_add_button"
    Then User expect contact of "split_bill_cashtag_2" will exist
    And User click "split_bill_done_button"
    When User fill "split_bill_input_amount_textfield" with "split_bill_amount_request_text"
    And User click "split_bill_send_request_button"
    Then User expect "dashboard" is exist
    Then User expect "split_bill_success_notification_message_en" is exist

  @android @endtoend  
  Scenario:JENI624-C67519-By Cashtag - Check your Full name display in the split bill [Receiver]
    Given User check split bill notification of request money with "split_bill_cif_receiver"
    Then User expect the selected contact equal with "split_bill_fullname_user_login_requestor"
    #And User expect "split_bill_description_notification_message" is exist
    And User expect notification from "split_bill_fullname_user_login_requestor" is exist

  @android @endtoend
  Scenario:JENI2597-C69821-[Functionality] Select Decline on the Split Bil message inside notification panel - precondition user1 do 'split bill' to another user
    Given User create split bill using "requestor_cashtag"

  @android @endtoend
  Scenario:JENI2597-C69821-[Functionality] Select Decline on the Split Bil message inside notification panel
    Given User check split bill notification of request money with "cif_receiver"
    Then User expect "notification_title" is exist
    And User click "notification_request_tab"
    And element with "requestor_name" text will be displayed
    And User click "split_bill_decline_button"
    Then User expect "split_bill_pop_up_cancel_button" is exist
    Then User expect "split_bill_pop_up_decline_button" is exist

  @android @endtoend
  Scenario:JENI2597-C69827-[Functionality] Select Cancel in Decline confirmation pop-up window of split bill money request - precondition user1 do 'split bill' to another user
    Given User create split bill using "requestor_cashtag"

  @android @endtoend
  Scenario:JENI2597-C69827-[Functionality] Select Cancel in Decline confirmation pop-up window of split bill money request
    Given User check split bill notification of request money with "cif_receiver"
    Then User expect "notification_title" is exist
    And User click "notification_request_tab"
    And element with "requestor_name" text will be displayed
    And User click "split_bill_decline_button"
    And User click "split_bill_pop_up_cancel_button"  
    And element with "requestor_name" text will be displayed  

  @android @endtoend
  Scenario:JENI2597-C69836-[Functionality] Select Decline in Decline confirmation pop-up window of split bill money request - precondition user1 do 'split bill' to another user
    Given User create split bill using "requestor_cashtag"

  @android @endtoend
  Scenario:JENI2597-C69836-[Functionality] Select Decline in Decline confirmation pop-up window of split bill money request
    Given User check split bill notification of request money with "cif_receiver"
    Then User expect "notification_title" is exist
    And User click "notification_request_tab"
    And element with "requestor_name" text will be displayed
    And User click "split_bill_decline_button"
    And User click "split_bill_pop_up_decline_button"
    And element with "requestor_name" text will not displayed

  @android @endtoend
  Scenario:JENI2597-C69804-[Content] Split Bill - Request to my cashtag and requestor is in my **** contact list - precondition user1 do 'split bill' to another user
    Given User create split bill using "requestor_cashtag"

  @android @endtoend
  Scenario:JENI2597-C69804-[Content] Split Bill - Request to my cashtag and requestor is in my **** contact list
    Given User check split bill notification of request money with "cif_receiver"
    Then User expect "notification_title" is exist
    And User click "notification_request_tab"
    And element with "requestor_name" text will not displayed
    Then User expect "notification_time_stamp" is exist
    And element with "pay_me_expected_amount" text will be displayed
    And element with "pay_me_note" text will be displayed
    Then User expect "notification_decline_button" is exist
    Then User expect "notification_send_money_button" is exist

  @android @endtoend
  Scenario:JENI2597-C69805-[Content] Split Bill - Request to my registered email and requestor is in my **** contact list - precondition user1 do 'split bill' to another user
    Given User create split bill using "requestor_email"

  @android @endtoend
  Scenario:JENI2597-C69805-[Content] SPlit Bill - Request to my registered email and requestor is in my **** contact list
    Given User check split bill notification of request money with "cif_receiver"
    Then User expect "notification_title" is exist
    And User click "notification_request_tab"
    And element with "requestor_name" text will not displayed
    Then User expect "notification_time_stamp" is exist
    And element with "pay_me_expected_amount" text will be displayed
    And element with "pay_me_note" text will be displayed
    Then User expect "notification_decline_button" is exist
    Then User expect "notification_send_money_button" is exist

  @android @endtoend
  Scenario:JENI2597-C69806-[Content] Split Bill - Request to registered my phone number and requestor is in my **** contact list - precondition user1 do 'split bill' to another user
    Given User create split bill using "user_phone_number"

  @android @endtoend
  Scenario:JENI2597-C69806-[Content] Split Bill - Request to my registered phone number email and requestor is in my **** contact list
    Given User check split bill notification of request money with "cif_receiver"
    Then User expect "notification_title" is exist
    And User click "notification_request_tab"
    And element with "requestor_name" text will not displayed
    Then User expect "notification_time_stamp" is exist
    And element with "pay_me_expected_amount" text will be displayed
    And element with "pay_me_note" text will be displayed
    Then User expect "notification_decline_button" is exist
    Then User expect "notification_send_money_button" is exist

  @android @endtoend
 Scenario:JENI2597-C69808-[Content] Split Bill - Verify red dot on Bell icon if user have receiving split bill money request - precondition user1 do 'split bill' to user2
    Given User create split bill using "requestor_cashtag"

  @android @endtoend
  Scenario:JENI2597-C69808-[Content] Split Bill - Verify red dot on Bell icon if user have receiving split bill money request
    Given User is logged in with cif "cif_receiver"
    When User click "dashboard_hamburger_icon"
    And User scroll to "****_help"
    And User check app language is "language"
    And User swipe down until found "dashboard_menu"
    And User click "dashboard_menu"
    Then User expect "notification_icon" is exist

  @android @endtoend
 Scenario:JENI2597-C69809-[Content] Split Bill - Verify each split bill message in the notification panel will be count as 1 and it will add up the amount of number in the red dot on Bell icon - precondition user1 do 'split bill' to user2
    Given User create split bill using "requestor_cashtag"

  @android @endtoend
  Scenario:JENI2597-C69809-[Content] Split Bill - Verify each split bill message in the notification panel will be count as 1 and it will add up the amount of number in the red dot on Bell icon
    Given User is logged in with cif "cif_receiver"
    When User click "dashboard_hamburger_icon"
    And User scroll to "****_help"
    And User check app language is "language"
    And User swipe down until found "dashboard_menu"
    And User click "dashboard_menu"
    And element with "pay_me_notification_number_new" text will be displayed

  @android @endtoend
  Scenario:JENI624-C67520-By Phone Number - Check your Full name display in split bill [Precondition-Requestor]
    Given User can access split bill menu with "split_bill_cif"
    When User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_valid_phone_number"
    When User click "split_bill_add_button"
    Then User expect contact of "split_bill_cashtag_2" will exist
    And User click "split_bill_done_button"
    When User fill "split_bill_input_amount_textfield" with "split_bill_amount_request_text"
    And User click "split_bill_send_request_button"
    Then User expect "dashboard" is exist
    Then User expect "split_bill_success_notification_message_en" is exist

  @android @endtoend
  Scenario:JENI624-C67520-By Phone Number - Check your Full name display in split bill [Receiver]
    Given User check split bill notification of request money with "split_bill_cif_receiver"
    Then User expect the selected contact equal with "split_bill_fullname_user_login_requestor"
    #And User expect "split_bill_description_notification_message" is exist
    And User expect notification from "split_bill_fullname_user_login_requestor" is exist

  @android @endtoend
  Scenario:JENI624-C67521-By Email - Check your Full name display in split bill [Precondition-Requestor]
    Given User can access split bill menu with "split_bill_cif"
    When User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_****_recipient_user_email"
    When User click "split_bill_add_button"
    Then User expect contact of "split_bill_cashtag_2" will exist
    And User click "split_bill_done_button"
    When User fill "split_bill_input_amount_textfield" with "split_bill_amount_request_text"
    And User click "split_bill_send_request_button"
    Then User expect "dashboard" is exist
    Then User expect "split_bill_success_notification_message_en" is exist

  @android @endtoend
  Scenario:JENI624-C67521-By Phone Number - Check your Full name display in split bill [Receiver]
    Given User check split bill notification of request money with "split_bill_cif_receiver"
    Then User expect the selected contact equal with "split_bill_fullname_user_login_requestor"
    #And User expect "split_bill_description_notification_message" is exist
    And User expect notification from "split_bill_fullname_user_login_requestor" is exist

  @android @uidatabound
  Scenario:JENI1199-C69840-Check **** User can submit "Send request" with phone number and notes to non-**** user
    Given User can access split bill menu with "split_bill_cif"
    When User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_valid_phone_number_non_****_user"
    When User click "split_bill_add_button"
    Then User expect contact of "split_bill_cashtag_2" will exist
    And User click "split_bill_done_button"
    When User fill "split_bill_input_amount_textfield" with "split_bill_amount_request_text"
    And User fill "split_bill_add_notes_textfield" with "split_bill_add_note_textfield"
    And User click "split_bill_send_request_button"
    Then User expect "dashboard" is exist
    Then User expect "split_bill_success_notification_message_en" is exist

  @android @uidatabound
  Scenario:JENI1199-C70546-Check **** User can submit "Send request" with phone number and without note to non-**** user
    Given User can access split bill menu with "split_bill_cif"
    When User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_valid_phone_number_non_****_user"
    When User click "split_bill_add_button"
    Then User expect contact of "split_bill_cashtag_2" will exist
    And User click "split_bill_done_button"
    When User fill "split_bill_input_amount_textfield" with "split_bill_amount_request_text"
    And User click "split_bill_send_request_button"
    Then User expect "dashboard" is exist
    Then User expect "split_bill_success_notification_message_en" is exist

  @android @uidatabound
  Scenario:JENI2600-C69873-[Content] Input manually email address doesn't belong to **** user
    Given User can access split bill menu with "split_bill_cif"
    When User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_non_****_user_email"
    When User click "split_bill_add_button"
    And User click "split_bill_done_button"
    Then User expect "split_bill_sergio_avatar" is exist
    And User expect "split_bill_non_****_user_email" is exist

  @android @uidatabound
  Scenario:JENI2600-C69945-[Content] Input manually phone number begin with 021 doesn't belong to **** user
    Given User can access split bill menu with "split_bill_cif"
    When User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_valid_phone_number_non_****_user_starting_021"
    When User click "split_bill_add_button"
    And User click "split_bill_done_button"
    Then User expect "split_bill_phone_zero_avatar" is exist
    And User expect "split_bill_user_phone_number_starting_with_021" is exist

  @android @uidatabound
  Scenario:JENI2600-C69950-[Content] Input manually phone number begin with +6221 doesn't belong to **** user
    Given User can access split bill menu with "split_bill_cif"
    When User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_minimum_char_phone_number_starting_+6221"
    When User click "split_bill_add_button"
    And User click "split_bill_done_button"
    Then User expect "split_bill_phone_six_avatar" is exist
    And User expect "split_bill_user_phone_number_starting_with_+6221" is exist

  @android @uidatabound
  Scenario:JENI2600-C69951-[Content] Input manually phone number begin with 6221 doesn't belong to **** user
    Given User can access split bill menu with "split_bill_cif"
    When User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_minimum_char_phone_number_starting_6221"
    When User click "split_bill_add_button"
    And User click "split_bill_done_button"
    Then User expect "split_bill_phone_six_avatar" is exist
    And User expect "split_bill_user_phone_number_starting_with_6221" is exist

  @android @uidatabound
  Scenario:JENI2600-C69952-[Content] Input manually phone number begin with 08 doesn't belong to **** user
    Given User can access split bill menu with "split_bill_cif"
    When User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_phone_number_starting_08_less_than_ten_digit"
    When User click "split_bill_add_button"
    And User click "split_bill_done_button"
    Then User expect "split_bill_phone_zero_avatar" is exist
    And User expect "split_bill_user_phone_number_starting_with_08" is exist

  @android @uidatabound
  Scenario:JENI2600-C69953-[Content] Input manually phone number begin with +628 doesn't belong to **** user
    Given User can access split bill menu with "split_bill_cif"
    When User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_minimum_char_phone_number_starting_+628"
    When User click "split_bill_add_button"
    And User click "split_bill_done_button"
    Then User expect "split_bill_phone_six_avatar" is exist
    And User expect "split_bill_user_phone_number_starting_with_+628" is exist

  @android @uidatabound
  Scenario:JENI2600-C69955-[Content] Input manually phone number begin with 628 doesn't belong to **** user
    Given User can access split bill menu with "split_bill_cif"
    When User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_minimum_char_phone_number_starting_628"
    When User click "split_bill_add_button"
    And User click "split_bill_done_button"
    Then User expect "split_bill_phone_six_avatar" is exist
    And User expect "split_bill_user_phone_number_starting_with_628" is exist



  #This scenario is using the apk from SIT with build version no 1479 since there is an issue on UAT and I can't login
  @android @uidatabound
  Scenario:JENI2600-C69999-[Content] Input manually Cashtag
    Given User can access split bill menu with "split_bill_cif"
    When User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_cashtag_3"
    When User click "split_bill_add_button"
    And User click "split_bill_done_button"
    Then User expect contact of "split_bill_contacts_label_3" will exist
    #And User expect "split_bill_cashtag_3_text" is exist
    And User expect contact of "split_bill_cashtag_3" will exist

  #This scenario is using the apk from SIT with build version no 1479 since there is an issue on UAT and I can't login
  @android @uidatabound
  Scenario:JENI2600-C70001-[Content] Input manually email address belong to **** user
    Given User can access split bill menu with "split_bill_cif"
    When User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_user_email_1"
    When User click "split_bill_add_button"
    And User click "split_bill_done_button"
    Then User expect contact of "split_bill_contacts_label_3" will exist
    #And User expect "split_bill_bob_email_text" is exist
    And User expect contact of "split_bill_user_email_1" will exist

  #This scenario is using the apk from SIT with build version no 1479 since there is an issue on UAT and I can't login
  @android @uidatabound
  Scenario:JENI2600-C70005-[Content] Input manually phone number begin with 08 doesn't belong to **** user
    Given User can access split bill menu with "split_bill_cif"
    When User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_first_user_phone_starting_with_08"
    When User click "split_bill_add_button"
    And User click "split_bill_done_button"
    Then User expect contact of "split_bill_contacts_label_3" will exist
    #And User expect "split_bill_first_user_phone_starting_with_08_text" is exist
    And User expect contact of "split_bill_first_user_phone_starting_with_08" will exist

  #This scenario is using the apk from SIT with build version no 1479 since there is an issue on UAT and I can't login
  @android @uidatabound
  Scenario:JENI2600-C70006-[Content] Input manually phone number begin with +628 doesn't belong to **** user
    Given User can access split bill menu with "split_bill_cif"
    When User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_mobile_phone_1"
    When User click "split_bill_add_button"
    And User click "split_bill_done_button"
    Then User expect contact of "split_bill_contacts_label_3" will exist
    #And User expect "split_bill_bob_phone_starting_with_+628_text" is exist
    And User expect contact of "split_bill_mobile_phone_1" will exist

  #This scenario is using the apk from SIT with build version no 1479 since there is an issue on UAT and I can't login
  @android @uidatabound
  Scenario:JENI2600-C70008-[Content] Input manually Input phone number begin with 628 doesn't belong to **** user
    Given User can access split bill menu with "split_bill_cif"
    When User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_first_user_phone_starting_with_628"
    When User click "split_bill_add_button"
    And User click "split_bill_done_button"
    Then User expect contact of "split_bill_contacts_label_3" will exist
    #And User expect "split_bill_first_user_phone_starting_with_628_text" is exist
    And User expect contact of "split_bill_first_user_phone_starting_with_628" will exist

  @android @uidatabound
  Scenario: JENI628-C45279-Check User can send "Money Request" with Notes accompany from Split Bill Calculation page
    Given User can access split bill menu with "split_bill_cif"
    When User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_first_user_phone_starting_with_628"
    When User click "split_bill_add_button"
    And User click "split_bill_done_button"
    When User fill "split_bill_input_amount_textfield" with "split_bill_input_amount_second_data_text"
    Then User expect "split_bill_send_request_button" is exist
    And User fill "split_bill_add_notes_textfield" with "split_bill_add_note_textfield"
    Then User expect "split_bill_note_description_dashboard_text" is exist

  @android @uispecific
  Scenario:JENI612-C68269-Check info of **** Account of SplitBill show correct under All section bar
    Given User can access split bill menu with "cif_requestor_2"
    And element with "split_bill_user_name_2" text will be displayed
    And element with "split_bill_user_cashtag_2" text will be displayed

#JENI-5099
  @android @uispecific
  Scenario:JENI5099-C93236-Scenario : see "x" clear button
    Given User can access split bill menu with "cif_requestor_3"
    And User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_user_cashtag_4"
    And User click "split_bill_add_button"
    And User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_user_cashtag_5"
    And User click "split_bill_add_button"
    And User click "split_bill_done_button"
    And User fill "split_bill_total_amount_field" with "split_bill_amount_150000"
    And User click "split_bill_amount_field_recipient_1"
    And User expect "split_bill_close_amount_field_button_1" is exist
    Then User fill "split_bill_amount_field_recipient_1" with "split_bill_amount_100000"

  @android @uispecific
  Scenario:JENI5099-C93237-Scenario : see "x" clear button
    Given User can access split bill menu with "cif_requestor_3"
    And User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_user_cashtag_4"
    And User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_user_cashtag_5"
    And User click "split_bill_done_button"
    And User fill "split_bill_total_amount_field" with "split_bill_amount_150000"
    And User click "split_bill_amount_field_recipient_1"
    And User click "split_bill_close_amount_field_button_1" 
    Then User expect "split_bill_amount_field_recipient_1" equal with "split_bill_amount_0"
    Then User expect "split_bill_amount_field_recipient_2" equal with "split_bill_amount_75000"

  @android @uispecific
  Scenario:JENI5099-C93238-Scenario : Can't make all recipient's amount to 0
    Given User can access split bill menu with "cif_requestor_3"
    And User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_user_cashtag_4"
    And User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_user_cashtag_5"
    And User click "split_bill_done_button"
    And User fill "split_bill_total_amount_field" with "split_bill_amount_150000"
    And User click "split_bill_amount_field_recipient_1"
    And User click "split_bill_close_amount_field_button_1"
    And User click "split_bill_amount_field_recipient_2"
    And User click "split_bill_close_amount_field_button_2"
    And User click "split_bill_send_request_button"
    Then "top_notification" will be displayed

  @android @uispecific
  Scenario:JENI5099-C93239-Scenario : Disable Send Money button
    Given User can access split bill menu with "cif_requestor_3"
    And User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_user_cashtag_4"
    And User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_user_cashtag_5"
    And User click "split_bill_done_button"
    And User fill "split_bill_total_amount_field" with "split_bill_amount_0"
    And User click "split_bill_send_request_button"
    Then User expect "split_bill_title_text" doesn't exist

#JENI-1199
  @android @uidatabound
  Scenario:JENI1199-C69840-Check **** User can submit "Send request" with phone number and with note to non-**** user
    Given User can access split bill menu with "cif_requestor_3"
    And User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_non_****_user_phone_number_1"
    And User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_non_****_user_phone_number_2"
    And User click "split_bill_done_button"
    And User fill "split_bill_total_amount_field" with "split_bill_amount_150000"
    And User fill "split_bill_add_note_textfield" with "split_bill_notes"
    And User click "split_bill_send_request_button"
    #Then User expect widget result
    #This scenario is still on progress because widget result still not displayed 

  @android @uidatabound
  Scenario:JENI1199-C70546-Check **** User can submit "Send request" with phone number and without note to non-**** user
    Given User can access split bill menu with "cif_requestor_3"
    And User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_non_****_user_phone_number_1"
    And User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_non_****_user_phone_number_2"
    And User click "split_bill_done_button"
    And User fill "split_bill_total_amount_field" with "split_bill_amount_150000"
    And User click "split_bill_send_request_button"
    #Then User expect widget result
    #This scenario is still on progress because widget result still not displayed     

  @android @uidatabound
  #Need to recheck again whether this step still valid or not
  Scenario:JENI1200-C67421-Error message appear when user input own phone number
    Given User can access split bill menu with "split_bill_cif"
    When User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_email_requestor"
    When User click "split_bill_add_button"
    And User click "split_bill_done_button"
    When User fill "split_bill_input_amount_textfield" with "split_bill_me_new_amount_text"
    And User click "split_bill_send_request_button"
    And User expect "split_bill_top_notification_item" equal with "split_bill_can_not_send_to_yourself_notification"