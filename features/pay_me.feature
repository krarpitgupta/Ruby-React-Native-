@payme @payme_splitbill  
Feature: PayMe Module

  @android @ios @uispecific
  Scenario:JENI628-C45275-Check Character counter will count down when input chars in Notes field
    Given User can access pay me menu with "pay_me_cif"

#########################################################################################################
#       Test Data                 : - Using Account 1
#                                   - Need Account 1 email
#       Created By                : Novi
#       Expected Result           : - Check Character counter on note will count down
#########################################################################################################
  @android @uidatabound
  Scenario:JENI628-C45275-Check Character counter will count down when input chars in Notes field
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_****_recipient_user_email"
    And User click "pay_me_add_button"
    And User click "pay_me_send_destination_textfield"
    When User fill "pay_me_amount_textfield" with "pay_me_amount"
    And User fill "pay_me_note_textfield" with "pay_me_note"
    Then User expect "pay_me_countdown_text_amount" equal with "pay_me_note_number"
    And User click "pay_me_send_request_button"

#########################################################################################################
#       Test Data                 : - Using Account 1
#                                   - Need Account 1 cashtag
#       Created By                : Novi
#       Expected Result           : - Check maximum length of Notes field
#########################################################################################################
  @android @uidatabound
  Scenario:JENI628-C45276-Check Max lenght of Notes field
    Given User can access pay me menu with "pay_me_cif"
    And User click "pay_me_input_manually_button"
    When User fill "pay_me_input_textfield" with "pay_me_valid_cashtag"
    And User click "pay_me_add_button"
    And User fill "pay_me_note_textfield" with "pay_me_note_more_than_max_number"
    Then User expect "pay_me_note_textfield" equal with "pay_me_note_max_number"

#########################################################################################################
#       Test Data                 : - Using Account 1
#                                   - Need Account 1 email
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @uidatabound
  Scenario:JENI628-C45277-Check User can't input Special chars in Notes filed
    Given User create pay me by inputting pay me amount with "pay_me_cif"
    And User fill "pay_me_note_textfield" with "pay_me_note_special_chars"
    Then User expect "pay_me_note_textfield" is not equal with "pay_me_note_special_chars"

#########################################################################################################
#       Test Data                 : - Using Account 1
#                                   - Need Account 1 email
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @uidatabound
  Scenario:JENI648-C45280-Check **** User can submit request money without Notes as Email to **** User successful
    Given User create pay me by inputting pay me amount with "pay_me_cif"
    And User click "pay_me_send_request_button"
    Then User expect "pay_me_amount_pay_me_send_label" is exist
    And User expect "pay_me_amount_pay_me_send_label" equal with "pay_me_expected_amount"

#########################################################################################################
#       Test Data                 : - Using Account 1
#                                   - Need Account 1 email
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @uidatabound
  Scenario:JENI648-C45282-Check **** User can submit request money with Notes as Email to **** User successful
    Given User create pay me by inputting pay me amount with "pay_me_cif"
    And User fill "pay_me_note_textfield" with "pay_me_note"
    And User click "pay_me_send_request_button"
    #This commenting out is not valid steps on R3
    #Then User expect "pay_me_amount_pay_me_send_label" is exist
    Then User expect "pay_me_success_sent_notification_new" is exist

#########################################################################################################
#       Test Data                 : - Using Account 1
#                                   - Need Account 1 email
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @uidatabound
  Scenario:JENI648-C59893-Check Email of **** User will show correctly in Result Widget
    Given User create pay me by inputting pay me amount with "pay_me_cif"
    And User click "pay_me_send_request_button"
    Then User expect "pay_me_amount_pay_me_send_label" is exist
    And User expect "pay_me_amount_pay_me_send_label" equal with "pay_me_expected_amount"

  @android @ios @uispecific
  Scenario:JENI648-C45281-Check "Input Manually" popup from PayMe Contact Screen
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    Then User expect "pay_me_input_textfield" is exist

#########################################################################################################
#       Test Data                 : - Using Account 12
#                                   - Need Account 12 email
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @uidatabound
  Scenario:JENI648-C45283-Check **** User can't send Money Request to themselves
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_****_sender_user_email"
    And User click "pay_me_add_button"
    And User click "pay_me_send_destination_textfield"
    When User fill "pay_me_amount_textfield" with "pay_me_amount"
    #This commenting out since it's not implemented yet by developer
    #Then User expect "pay_me_send_request_button" is clickable
    And User click "pay_me_send_request_button"
    Then User expect "pay_me_error_message_for_sending_to_themselves" is exist

  @android @ios @uispecific
  Scenario:JENI648-C45284-Check Cancel button in "Input Manually" popup
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    Then User expect "pay_me_cancel_button" is exist
    When User click "pay_me_cancel_button"
    Then User expect "pay_me_input_manualy_description_text_lable" doesn't exist
    And User expect "pay_me_input_textfield" doesn't exist
    And User expect "pay_me_input_manualy_information_text_lable" doesn't exist

  @android @uidatabound
  Scenario:JENI648-C45285-Check "Error Message" show correctly when input invalid email at "Input Manually" popup
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_invalid_email_address"
    #This is commenting out since this expected will be removed on R3 for awhile after confirm with QA
    #Then User expect "pay_me_error_message_for_inputting_invalid_email_address" equal with "pay_me_error_message_invalid_email_address"
    Then User click "pay_me_add_button"
    And User expect "pay_me_add_button" is exist

#########################################################################################################
#       Test Data                 : - Using Account 5
#                                   - Need Account 5 fullname
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @uidatabound
  Scenario:JENI648-C45286-Check "Send Request" button is disabled by default
    Given User can access pay me menu with "pay_me_cif"
    And User click "pay_me_selected_contacts"
    And User click "pay_me_send_destination_textfield"
    #This commenting out since the button attribute is not yet implemented
    #Then User expect "pay_me_send_request_button" can't be click

  @android @ios @uispecific
  Scenario:JENI648-C45287-Check Layout "Input Manually" popup
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    Then User expect "pay_me_input_manualy_text_lable" is exist
    And User expect "pay_me_input_manualy_description_text_lable" is exist
    And User expect "pay_me_input_textfield" is exist
    And User expect "pay_me_input_manualy_information_text_lable" is exist
    And User expect "pay_me_add_button" is exist
    And User expect "pay_me_cancel_button" is exist

  @android @ios @uispecific
  Scenario:JENI648-C45309-Check ADD button only enable when input a valid email
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_****_recipient_user_email"
    #This commenting out since the button attribute is not yet implemented
    #Then User expect "pay_me_add_button" is clickable

#########################################################################################################
#       Test Data                 : - Using Account 1
#                                   - Need Account 1 cashtag
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @uidatabound
  Scenario:JENI626-C45475-Check Recipient's info in "Enter Amount" screen show correctly with Cashtag of **** User from Input Manually button
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_valid_cashtag"
    And User click "pay_me_add_button"
    And User click "pay_me_send_destination_textfield"
    Then User expect contact of "pay_me_valid_cashtag" will exist

#########################################################################################################
#       Test Data                 : - Using Account 1
#                                   - Need Account 1 email
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @uidatabound
  Scenario:JENI626-C45476-Check Recipient's info in "Enter Amount" screen show correctly with Email of **** User from Input Manually button
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_****_recipient_user_email"
    And User click "pay_me_add_button"
    And User click "pay_me_send_destination_textfield"
    Then User expect contact of "pay_me_****_recipient_user_email" will exist

#########################################################################################################
#       Test Data                 : - Using Account 1
#                                   - Need Account 1 email
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @uidatabound
  Scenario:JENI626-C45477-Check Recipient's info in "Enter Amount" screen show correctly with Phone Number of **** User from Input Manually button
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_****_recipient_user_email"
    And User click "pay_me_add_button"
    And User click "pay_me_send_destination_textfield"
    Then User expect contact of "pay_me_phone_number_account_1" will exist

#########################################################################################################
#       Test Data                 : - Using Constant data as non **** user
#                                   - Need Non **** email
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @uidatabound
  Scenario:JENI855-C48102-Check Info of Non-**** User display correctly at Amount screen after submit email from "Input Manually" popup
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_valid_non_****_user"
    And User click "pay_me_add_button"
    And User click "pay_me_send_destination_textfield"
    Then User expect "pay_me_non_****_user_email" is exist
    And User expect "pay_me_initial_non_****_user" is exist

#########################################################################################################
#       Test Data                 : - Using Constant data as non **** user
#                                   - Need Non **** phone number
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @uidatabound
  Scenario:JENI855-C48103-Check Info of Non-**** User display correctly at Amount screen after submit Phone number from "Input Manually" popup
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_valid_non_****_phone_number"
    And User click "pay_me_add_button"
    And User click "pay_me_send_destination_textfield"
    Then User expect "pay_me_non_****_phone_number" is exist
    And User expect "pay_me_non_****_initial_phone_number" is exist

#########################################################################################################
#       Test Data                 : - Using Account 1
#                                   - Need Account 1 cashtag
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @uidatabound
  Scenario:JENI620-C45444-Check **** User submit "Request Money" with Notes as Cashtag
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_valid_cashtag"
    And User click "pay_me_add_button"
    And User click "pay_me_send_destination_textfield"
    When User fill "pay_me_amount_textfield" with "pay_me_amount"
    And User fill "pay_me_note_textfield" with "pay_me_note"
    And User click "pay_me_send_request_button"
    Then User expect "pay_me_succcess_sent_notification" is exist

#########################################################################################################
#       Test Data                 : - Using Account 1
#                                   - Need Account 1 cashtag
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @uidatabound
  Scenario:JENI620-C45445-Check **** User submit "Request Money" with Notes as Cashtag
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_valid_cashtag"
    And User click "pay_me_add_button"
    And User click "pay_me_send_destination_textfield"
    When User fill "pay_me_amount_textfield" with "pay_me_amount"
    And User click "pay_me_send_request_button"

#########################################################################################################
#       Test Data                 : - Using Account 12
#                                   - Need Account 12 email
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @uidatabound
  Scenario:JENI620-C45446-Check **** User can't submit "Request Money" to theirself Cashtag
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_****_sender_user_email"
    And User click "pay_me_add_button"
    And User click "pay_me_send_destination_textfield"
    When User fill "pay_me_amount_textfield" with "pay_me_amount"
    And User fill "pay_me_note_textfield" with "pay_me_note"
    And User click "pay_me_send_request_button"
    Then User expect "pay_me_error_message_for_sending_to_themselves" is exist

#########################################################################################################
#       Test Data                 : - Using constant data
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @uidatabound
  Scenario:JENI620-C45447-Check Error message show correctly when **** User input invalid Cashtag in "Input Manually" popup
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_invalid_cashtag"
    #This scenario to check the button is disabled
    Then User click "pay_me_add_button"
    And User expect "pay_me_add_button" is exist
    #This steps is no longer valid anymore, the business process already changed
    #Then User expect "pay_me_error_message_for_inputting_invalid_email_address" is exist
    #This steps is no longer valid anymore, the business process already changed
    #And User expect "pay_me_error_message_for_inputting_invalid_email_address" equal with "pay_me_error_message_invalid_email_address"


#########################################################################################################
#       Test Data                 : - Using constant data
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @uidatabound
  Scenario:JENI620-C45448-Check Error message show correctly when input a Cashtag isn't belong to **** user in "Input Manually" popup
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_valid_cashtag_non_jenus_user"
    And User click "pay_me_add_button"
    Then User expect "pay_me_error_message_for_input_manually" is exist
    Then User expect "pay_me_error_message_for_input_manually" equal with "pay_me_error_message_valid_cashtag_non_****_user"

#########################################################################################################
#       Test Data                 : - Using Account 1
#                                   - Need Account 1 cashtag
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @uidatabound
  Scenario:JENI620-C48106-Check format of a Valid Cashtag
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_valid_cashtag"
    #This commenting out since the button attribute is not yet implemented
    #Then User expect "pay_me_add_button" is enabled

#########################################################################################################
#       Test Data                 : - Using Account 1
#                                   - Need Account 1 cashtag
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @uidatabound
  Scenario:JENI620-C48107-Check Full Name of **** User show in Result Widget after submit Money Request with Cashtag
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_valid_cashtag"
    And User click "pay_me_add_button"
    And User click "pay_me_send_destination_textfield"
    When User fill "pay_me_amount_textfield" with "pay_me_amount"
    And User fill "pay_me_note_textfield" with "pay_me_note"
    And User click "pay_me_send_request_button"
    And User wait 5 seconds
    Then User expect contact of "pay_me_fullname" will exist

#########################################################################################################
#       Test Data                 : - Using constant data
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @uidatabound
  Scenario:JENI647-C45288-Check **** User can submit request money with Notes as Phone Number which head number 08 to **** User successful
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_valid_non_****_phone_number"
    And User click "pay_me_add_button"
    And User click "pay_me_send_destination_textfield"
    Then User expect "pay_me_amount_textfield" is exist
    And User expect "pay_me_note_textfield" is exist
    Then User click "back_button"
    When User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_valid_non_****_phone_number_2"
    And User click "pay_me_add_button"
    And User wait 5 seconds
    Then User expect "pay_me_amount_textfield" is exist
    And User expect "pay_me_note_textfield" is exist

#########################################################################################################
#       Test Data                 : - Using constant data
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  #This scenario is no longer valid anymore since **** doesn't support for 021
  @android @uidatabound
  Scenario:JENI647-C63648-Check **** User can submit request money with Notes as Phone Number which head number 021 to **** User successful
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_valid_phone_number_non_****_user"
    And User click "pay_me_add_button"
    And User click "pay_me_send_destination_textfield"
    Then User expect "pay_me_amount_textfield" is exist
    And User expect "pay_me_note_textfield" is exist
    Then User click "back_button"
    When User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_valid_phone_number_non_****_user_2"
    And User click "pay_me_add_button"
    Then User expect "pay_me_amount_textfield" is exist
    And User expect "pay_me_note_textfield" is exist

#########################################################################################################
#       Test Data                 : - Using Account 5
#                                   - Need Account 5 phone number
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @uidatabound
  Scenario:JENI647-C59899-Check **** User can submit request money without Notes as Phone Number to **** User successful
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_valid_****_phone_number"
    And User click "pay_me_add_button"
    And User click "pay_me_send_destination_textfield"
    When User fill "pay_me_amount_textfield" with "pay_me_amount"
    And User click "pay_me_send_request_button"
    And User wait 5 seconds
    Then User expect "pay_me_amount_textfield" is exist
    And User expect "pay_me_note_textfield" is exist
    Then User click "back_button"
    When User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_valid_non_****_phone_number_2"
    And User click "pay_me_add_button"
    And User wait 5 seconds
    Then User expect "pay_me_amount_textfield" is exist
    And User expect "pay_me_note_textfield" is exist

#########################################################################################################
#       Test Data                 : - Using constant data
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  #This scenario is no longer valid anymore since **** doesn't support for 021
  @android @uidatabound
  Scenario:JENI647-C63648-Check **** User can submit request money with Notes as Phone Number which head number 021 to **** User successful
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_valid_phone_number_non_****_user"
    And User click "pay_me_add_button"
    And User click "pay_me_send_destination_textfield"
    Then User expect "pay_me_amount_textfield" is exist
    And User expect "pay_me_note_textfield" is exist
    Then User click "back_button"
    When User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_valid_phone_number_non_****_user_2"
    And User click "pay_me_add_button"
    Then User expect "pay_me_amount_textfield" is exist
    And User expect "pay_me_note_textfield" is exist

#########################################################################################################
#       Test Data                 : - Using Account 5
#                                   - Account 5 phone
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @uidatabound
  Scenario:JENI647-C59899-Check **** User can submit request money without Notes as Phone Number to **** User successful
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_valid_****_phone_number"
    And User click "pay_me_add_button"
    And User click "pay_me_send_destination_textfield"
    When User fill "pay_me_amount_textfield" with "pay_me_amount"
    And User click "pay_me_send_request_button"
    And User wait 5 seconds
    Then User expect "pay_me_succcess_sent_notification" is exist

#########################################################################################################
#       Test Data                 : - Using Account 12
#                                   - Account 12 phone
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @uidatabound
  Scenario:JENI647-C59900-Check **** User can't submit money request to themselves as Phone Number
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_requestor_phone_number"
    And User click "pay_me_add_button"
    And User click "pay_me_send_destination_textfield"
    When User fill "pay_me_amount_textfield" with "pay_me_amount"
    And User click "pay_me_send_request_button"
    Then User expect "pay_me_error_message_for_sending_to_themselves" is exist

#########################################################################################################
#       Test Data                 : - Using Constant data
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @uidatabound
  Scenario:JENI647-C45289-Check "Error Message" show correctly when input invalid phone number in "Input Manually" popup
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_invalid_input_manually"
    And User click "pay_me_add_button"
    Then User expect "pay_me_add_button" is exist
    #This steps is no longer valid anymore, the business process already changed
    #And User wait 2 seconds
    #Then User expect "pay_me_error_message_for_inputting_invalid_email_address" equal with "pay_me_error_message_invalid_email_address"

#########################################################################################################
#       Test Data                 : - Using Constant data
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  # Minimum chars for phone no which begin with 08 is 10
  # Maximum chars for phone no which begin with 08 is 13
  @android @uidatabound
  Scenario:JENI647-C45290-Check Valid Phone Number with begin as 08
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_minimum_char_phone_number_starting_08"
    And User wait 2 seconds
    #This commenting out since the button attribute is not yet implemented
    #Then User expect "pay_me_add_button" is enabled
    And User click "pay_me_add_button"
    And User click "pay_me_send_destination_textfield"
    Then User expect "pay_me_amount_textfield" is exist
    And User expect "pay_me_note_textfield" is exist
    When User click "back_button"
    And User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_maksimum_char_phone_number_starting_08"
    #This commenting out since the button attribute is not yet implemented
    #Then User expect "pay_me_add_button" is enabled

#########################################################################################################
#       Test Data                 : - Using Constant data
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  # Minimum chars for phone no which begin with 021 is 10
  # Maximum chars for phone no which begin with 021 is 11
  @android @uidatabound
  Scenario:JENI647-C47381-Check Valid Phone Number with begin as 021
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_minimum_char_phone_number_starting_021"
    And User wait 2 seconds
    #This commenting out since the button attribute is not yet implemented
    #Then User expect "pay_me_add_button" is enabled
    And User click "pay_me_add_button"
    And User click "pay_me_send_destination_textfield"
    Then User expect "pay_me_amount_textfield" is exist
    And User expect "pay_me_note_textfield" is exist
    When User click "back_button"
    And User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_maksimum_char_phone_number_starting_021"
    #This commenting out since the button attribute is not yet implemented
    #Then User expect "pay_me_add_button" is enabled

#########################################################################################################
#       Test Data                 : - Using Constant data
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  # Minimum chars for phone no which begin with 628 is 11
  # Maximum chars for phone no which begin with 628 is 14
  @android @uidatabound
  Scenario:JENI647-C45310-Check Valid Phone Number with begin 628
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_minimum_char_phone_number_starting_628"
    And User wait 2 seconds
    #This commenting out since the button attribute is not yet implemented
    #Then User expect "pay_me_add_button" is enabled
    And User click "pay_me_add_button"
    And User click "pay_me_send_destination_textfield"
    Then User expect "pay_me_amount_textfield" is exist
    And User expect "pay_me_note_textfield" is exist
    When User click "back_button"
    And User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_maksimum_char_phone_number_starting_628"
    #This commenting out since the button attribute is not yet implemented
    #Then User expect "pay_me_add_button" is enabled

#########################################################################################################
#       Test Data                 : - Using Constant data
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  # Minimum chars for phone no which begin with 6221 is 11
  # Maximum chars for phone no which begin with 6221 is 12
  @android @uidatabound
  Scenario:JENI647-C45311-Check Valid Phone Number with begin as 6221
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_minimum_char_phone_number_starting_6221"
    And User wait 2 seconds
    #This commenting out since the button attribute is not yet implemented
    #Then User expect "pay_me_add_button" is enabled
    And User click "pay_me_add_button"
    And User click "pay_me_send_destination_textfield"
    Then User expect "pay_me_amount_textfield" is exist
    And User expect "pay_me_note_textfield" is exist
    When User click "back_button"
    And User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_maksimum_char_phone_number_starting_6221"
    #This commenting out since the button attribute is not yet implemented
    #Then User expect "pay_me_add_button" is enabled

#########################################################################################################
#       Test Data                 : - Using Constant data
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  # Minimum chars for phone no which begin with +628 is 12
  # Maximum chars for phone no which begin with +628 is 15
  @android @uidatabound
  Scenario:JENI647-C47382-Check Valid Phone Number with begin as +628
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_minimum_char_phone_number_starting_+628"
    #This commenting out since the button attribute is not yet implemented
    #Then User expect "pay_me_add_button" is enabled
    And User click "pay_me_add_button"
    And User click "pay_me_send_destination_textfield"
    Then User expect "pay_me_amount_textfield" is exist
    And User expect "pay_me_note_textfield" is exist
    When User click "back_button"
    And User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_maksimum_char_phone_number_starting_+628"
    #This commenting out since the button attribute is not yet implemented
    #Then User expect "pay_me_add_button" is enabled

#########################################################################################################
#       Test Data                 : - Using Constant data
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  # Minimum chars for phone no which begin with +6221 is 12
  # Maximum chars for phone no which begin with +6221 is 13
  @android @uidatabound
  Scenario: JENI647-C47383-Check Valid Phone Number with begin as +6221
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_minimum_char_phone_number_starting_+6221"
    #This commenting out since the button attribute is not yet implemented
    #Then User expect "pay_me_add_button" is enabled
    And User click "pay_me_add_button"
    And User click "pay_me_send_destination_textfield"
    Then User expect "pay_me_amount_textfield" is exist
    And User expect "pay_me_note_textfield" is exist
    When User click "back_button"
    And User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_maksimum_char_phone_number_starting_+6221"
    #This commenting out since the button attribute is not yet implemented
    #Then User expect "pay_me_add_button" is enabled

#########################################################################################################
#       Test Data                 : - Using Constant data
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  # Minimum chars for both scenario of phone number begin with 08 and 021 are 10
  @android @uidatabound
  Scenario:JENI647-C4531-Check System show error when input mobile number with begin 08/021 < min chars
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    #Step for user input the phone number begin with 08 less than 10 chars
    And User fill "pay_me_input_textfield" with "pay_me_phone_number_starting_08_less_than_ten_digit"
    #Then User expect "pay_me_error_message_for_inputting_invalid_email_address" equal with "pay_me_error_message_invalid_email_address"
    And User click "pay_me_cancel_button"
    Then User click "pay_me_input_manually_button"
    #Step for user input the phone number begin with 021 less than 10 chars
    And User fill "pay_me_input_textfield" with "pay_me_phone_number_starting_021_less_than_ten_digit"
    Then User expect "pay_me_error_message_for_inputting_invalid_email_address" equal with "pay_me_error_message_invalid_email_address"

#########################################################################################################
#       Test Data                 : - Using Constant data
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  # Maksimum chars for phone number begin with 08 is 13
  # Maksimum chars for phone number begin with 021 is 11
  @android @uidatabound
  Scenario:JENI647-C45501-Check System show error when input mobile number with begin 08/021 > max chars
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    #Step for user input the phone number begin with 08 more than 13 chars
    And User fill "pay_me_input_textfield" with "pay_me_phone_number_starting_08_more_than_thirteen_digit"
    Then User expect "pay_me_error_message_for_inputting_invalid_email_address" equal with "pay_me_error_message_invalid_email_address"
    And User click "pay_me_cancel_button"
    Then User click "pay_me_input_manually_button"
    #Step for user input the phone number begin with 021 more than 11 chars
    And User fill "pay_me_input_textfield" with "pay_me_phone_number_starting_021_more_than_eleven_digit"
    Then User expect "pay_me_error_message_for_inputting_invalid_email_address" equal with "pay_me_error_message_invalid_email_address"

#########################################################################################################
#       Test Data                 : - Using Constant data
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  # Minimum chars for both scenario of phone number begin with 628 and 6221 are 11
  @android @uidatabound
  Scenario:JENI647-C47384-Check System show error when input mobile number with begin 628/6221 < min chars
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    #Step for user input the phone number begin with 628 less than 11 chars
    And User fill "pay_me_input_textfield" with "pay_me_phone_number_starting_628_less_than_eleven_digit"
    Then User expect "pay_me_error_message_for_inputting_invalid_email_address" equal with "pay_me_error_message_invalid_email_address"
    And User click "pay_me_cancel_button"
    Then User click "pay_me_input_manually_button"
    #Step for user input the phone number begin with 6221 less than 11 chars
    And User fill "pay_me_input_textfield" with "pay_me_phone_number_starting_6221_less_than_eleven_digit"
    Then User expect "pay_me_error_message_for_inputting_invalid_email_address" equal with "pay_me_error_message_invalid_email_address"

#########################################################################################################
#       Test Data                 : - Using Constant data
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  # Maksimum chars for phone number begin with 628 is 14
  # Maksimum chars for phone number begin with 6221 is 12
  @android @uidatabound
  Scenario:JENI647-C47385-Check System show error when input mobile number with begin 628/6221 > max chars
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    #Step for user input the phone number begin with 628 more than 14 chars
    And User fill "pay_me_input_textfield" with "pay_me_phone_number_starting_628_more_than_fourteen_digit"
    Then User expect "pay_me_error_message_for_inputting_invalid_email_address" equal with "pay_me_error_message_invalid_email_address"
    And User click "pay_me_cancel_button"
    Then User click "pay_me_input_manually_button"
    #Step for user input the phone number begin with 6221 more than 12 chars
    And User fill "pay_me_input_textfield" with "pay_me_phone_number_starting_6221_more_than_twelve_digit"
    Then User expect "pay_me_error_message_for_inputting_invalid_email_address" equal with "pay_me_error_message_invalid_email_address"

#########################################################################################################
#       Test Data                 : - Using Constant data
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  # Minimum chars for both scenario of phone number begin with +628 and +6221 are 12
  @android @uidatabound
  Scenario:JENI647-C47386-Check System show error when input mobile number with begin +628/+6221 < min chars
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    #Step for user input the phone number begin with +628 more than 12 chars
    And User fill "pay_me_input_textfield" with "pay_me_phone_number_starting_+628_less_than_twelve_digit"
    Then User expect "pay_me_error_message_for_inputting_invalid_email_address" equal with "pay_me_error_message_invalid_email_address"
    And User click "pay_me_cancel_button"
    Then User click "pay_me_input_manually_button"
    #Step for user input the phone number begin with +6221 more than 12 chars
    And User fill "pay_me_input_textfield" with "pay_me_phone_number_starting_+6221_less_than_twelve_digit"
    Then User expect "pay_me_error_message_for_inputting_invalid_email_address" equal with "pay_me_error_message_invalid_email_address"

#########################################################################################################
#       Test Data                 : - Using Constant data
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  # Maksimum chars for phone number begin with +628 is 15
  # Maksimum chars for phone number begin with +6221 is 13
  @android @uidatabound
  Scenario:JENI647-C47387-Check System show error when input mobile number with begin +628/+6221 > max chars
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    #Step for user input the phone number begin with 628 more than 14 chars
    And User fill "pay_me_input_textfield" with "pay_me_phone_number_starting_+628_more_than_fifthteen_digit"
    Then User expect "pay_me_error_message_for_inputting_invalid_email_address" equal with "pay_me_error_message_invalid_email_address"
    And User click "pay_me_cancel_button"
    Then User click "pay_me_input_manually_button"
    #Step for user input the phone number begin with 6221 more than 12 chars
    And User fill "pay_me_input_textfield" with "pay_me_phone_number_starting_+6221_more_than_thirteen_digit"
    Then User expect "pay_me_error_message_for_inputting_invalid_email_address" equal with "pay_me_error_message_invalid_email_address"

  @android @uidatabound
  Scenario:JENI647-C67698-Check Full Name of **** User show in Result Widget after submit Money Request with Phone Number
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_valid_****_phone_number"
    And User click "pay_me_add_button"
    And User click "pay_me_send_destination_textfield"
    When User fill "pay_me_amount_textfield" with "pay_me_amount"
    And User click "pay_me_send_request_button"
    Then User expect "pay_me_succcess_sent_notification" is exist

  @android @uidatabound
  Scenario:JENI647-C59900-Check **** User can't submit money request to themselves as Phone Number
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_requestor_phone_number"
    And User click "pay_me_add_button"
    And User click "pay_me_send_destination_textfield"
    When User fill "pay_me_amount_textfield" with "pay_me_amount"
    And User click "pay_me_send_request_button"
    Then User expect "pay_me_error_message_for_sending_to_themselves" is exist

  @android @uidatabound
  Scenario:JENI647-C45289-Check "Error Message" show correctly when input invalid phone number in "Input Manually" popup
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_invalid_input_manually"
    Then User expect "pay_me_error_message_for_inputting_invalid_email_address" is exist
    And User expect "pay_me_error_message_for_inputting_invalid_email_address" equal with "pay_me_error_message_invalid_email_address"

#########################################################################################################
#       Test Data                 : - Using Constant data
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  # Minimum chars for phone no which begin with 08 is 10
  # Maximum chars for phone no which begin with 08 is 13
  @android @uidatabound
  Scenario:JENI647-C45290-Check Valid Phone Number with begin as 08
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_minimum_char_phone_number_starting_08"
    #This commenting out since the button attribute is not yet implemented
    #Then User expect "pay_me_add_button" is enabled
    And User click "pay_me_add_button"
    And User click "pay_me_send_destination_textfield"
    Then User expect "pay_me_amount_textfield" is exist
    And User expect "pay_me_note_textfield" is exist
    When User click "back_button"
    And User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_maksimum_char_phone_number_starting_08"
    #This commenting out since the button attribute is not yet implemented
    #Then User expect "pay_me_add_button" is enabled

#########################################################################################################
#       Test Data                 : - Using Constant data
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  # Minimum chars for phone no which begin with 021 is 10
  # Maximum chars for phone no which begin with 021 is 11
  @android @uidatabound
  Scenario:JENI647-C47381-Check Valid Phone Number with begin as 021
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_minimum_char_phone_number_starting_021"
    #This commenting out since the button attribute is not yet implemented
    #Then User expect "pay_me_add_button" is enabled
    And User click "pay_me_add_button"
    And User click "pay_me_send_destination_textfield"
    Then User expect "pay_me_amount_textfield" is exist
    And User expect "pay_me_note_textfield" is exist
    When User click "back_button"
    And User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_maksimum_char_phone_number_starting_021"
    #This commenting out since the button attribute is not yet implemented
    #Then User expect "pay_me_add_button" is enabled

#########################################################################################################
#       Test Data                 : - Using Constant data
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  # Minimum chars for phone no which begin with 628 is 11
  # Maximum chars for phone no which begin with 628 is 14
  @android @uidatabound
  Scenario:JENI647-C45310-Check Valid Phone Number with begin 628
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_minimum_char_phone_number_starting_628"
    #This commenting out since the button attribute is not yet implemented
    #Then User expect "pay_me_add_button" is enabled
    And User click "pay_me_add_button"
    And User click "pay_me_send_destination_textfield"
    Then User expect "pay_me_amount_textfield" is exist
    And User expect "pay_me_note_textfield" is exist
    When User click "back_button"
    And User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_maksimum_char_phone_number_starting_628"
    #This commenting out since the button attribute is not yet implemented
    #Then User expect "pay_me_add_button" is enabled

#########################################################################################################
#       Test Data                 : - Using Constant data
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  # Minimum chars for phone no which begin with 6221 is 11
  # Maximum chars for phone no which begin with 6221 is 12
  @android @uidatabound
  Scenario:JENI647-C45311-Check Valid Phone Number with begin as 6221
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_minimum_char_phone_number_starting_6221"
    #This commenting out since the button attribute is not yet implemented
    #Then User expect "pay_me_add_button" is enabled
    And User click "pay_me_add_button"
    And User click "pay_me_send_destination_textfield"
    Then User expect "pay_me_amount_textfield" is exist
    And User expect "pay_me_note_textfield" is exist
    When User click "back_button"
    And User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_maksimum_char_phone_number_starting_6221"
    #This commenting out since the button attribute is not yet implemented
    #Then User expect "pay_me_add_button" is enabled

#########################################################################################################
#       Test Data                 : - Using Constant data
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  # Minimum chars for phone no which begin with +628 is 12
  # Maximum chars for phone no which begin with +628 is 15
  @android @uidatabound
  Scenario:JENI647-C47382-Check Valid Phone Number with begin as +628
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_minimum_char_phone_number_starting_+628"
    #This commenting out since the button attribute is not yet implemented
    #Then User expect "pay_me_add_button" is enabled
    And User click "pay_me_add_button"
    And User click "pay_me_send_destination_textfield"
    Then User expect "pay_me_amount_textfield" is exist
    And User expect "pay_me_note_textfield" is exist
    When User click "back_button"
    And User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_maksimum_char_phone_number_starting_+628"
    #This commenting out since the button attribute is not yet implemented
    #Then User expect "pay_me_add_button" is enabled

#########################################################################################################
#       Test Data                 : - Using Constant data
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  # Minimum chars for phone no which begin with +6221 is 12
  # Maximum chars for phone no which begin with +6221 is 13
  @android @uidatabound
  Scenario: JENI647-C47383-Check Valid Phone Number with begin as +6221
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_minimum_char_phone_number_starting_+6221"
    #This commenting out since the button attribute is not yet implemented
    #Then User expect "pay_me_add_button" is enabled
    And User click "pay_me_add_button"
    And User click "pay_me_send_destination_textfield"
    Then User expect "pay_me_amount_textfield" is exist
    And User expect "pay_me_note_textfield" is exist
    When User click "back_button"
    And User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_maksimum_char_phone_number_starting_+6221"
    #This commenting out since the button attribute is not yet implemented
    #Then User expect "pay_me_add_button" is enabled

#########################################################################################################
#       Test Data                 : - Using Constant data
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  # Minimum chars for both scenario of phone number begin with 08 and 021 are 10
  @android @uidatabound
  Scenario:JENI647-C45312-Check System show error when input mobile number with begin 08/021 < min chars
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    #Step for user input the phone number begin with 08 less than 10 chars
    And User fill "pay_me_input_textfield" with "pay_me_phone_number_starting_08_less_than_ten_digit"
    Then User expect "pay_me_error_message_for_inputting_invalid_email_address" equal with "pay_me_error_message_invalid_email_address"
    And User click "pay_me_cancel_button"
    Then User click "pay_me_input_manually_button"
    #Step for user input the phone number begin with 021 less than 10 chars
    And User fill "pay_me_input_textfield" with "pay_me_phone_number_starting_021_less_than_ten_digit"
    Then User expect "pay_me_error_message_for_inputting_invalid_email_address" equal with "pay_me_error_message_invalid_email_address"

#########################################################################################################
#       Test Data                 : - Using Constant data
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  # Maksimum chars for phone number begin with 08 is 13
  # Maksimum chars for phone number begin with 021 is 11
  @android @uidatabound
  Scenario:JENI647-C45501-Check System show error when input mobile number with begin 08/021 > max chars
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    #Step for user input the phone number begin with 08 more than 13 chars
    And User fill "pay_me_input_textfield" with "pay_me_phone_number_starting_08_more_than_thirteen_digit"
    Then User expect "pay_me_error_message_for_inputting_invalid_email_address" equal with "pay_me_error_message_invalid_email_address"
    And User click "pay_me_cancel_button"
    Then User click "pay_me_input_manually_button"
    #Step for user input the phone number begin with 021 more than 11 chars
    And User fill "pay_me_input_textfield" with "pay_me_phone_number_starting_021_more_than_eleven_digit"
    Then User expect "pay_me_error_message_for_inputting_invalid_email_address" equal with "pay_me_error_message_invalid_email_address"

#########################################################################################################
#       Test Data                 : - Using Constant data
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  # Minimum chars for both scenario of phone number begin with 628 and 6221 are 11
  @android @uidatabound
  Scenario:JENI647-C47384-Check System show error when input mobile number with begin 628/6221 < min chars
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    #Step for user input the phone number begin with 628 less than 11 chars
    And User fill "pay_me_input_textfield" with "pay_me_phone_number_starting_628_less_than_eleven_digit"
    Then User expect "pay_me_error_message_for_inputting_invalid_email_address" equal with "pay_me_error_message_invalid_email_address"
    And User click "pay_me_cancel_button"
    Then User click "pay_me_input_manually_button"
    #Step for user input the phone number begin with 6221 less than 11 chars
    And User fill "pay_me_input_textfield" with "pay_me_phone_number_starting_6221_less_than_eleven_digit"
    Then User expect "pay_me_error_message_for_inputting_invalid_email_address" equal with "pay_me_error_message_invalid_email_address"

#########################################################################################################
#       Test Data                 : - Using Constant data
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  # Maksimum chars for phone number begin with 628 is 14
  # Maksimum chars for phone number begin with 6221 is 12
  @android @uidatabound
  Scenario:JENI647-C47385-Check System show error when input mobile number with begin 628/6221 > max chars
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    #Step for user input the phone number begin with 628 more than 14 chars
    And User fill "pay_me_input_textfield" with "pay_me_phone_number_starting_628_more_than_fourteen_digit"
    Then User expect "pay_me_error_message_for_inputting_invalid_email_address" equal with "pay_me_error_message_invalid_email_address"
    And User click "pay_me_cancel_button"
    Then User click "pay_me_input_manually_button"
    #Step for user input the phone number begin with 6221 more than 12 chars
    And User fill "pay_me_input_textfield" with "pay_me_phone_number_starting_6221_more_than_twelve_digit"
    Then User expect "pay_me_error_message_for_inputting_invalid_email_address" equal with "pay_me_error_message_invalid_email_address"

#########################################################################################################
#       Test Data                 : - Using Constant data
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  # Minimum chars for both scenario of phone number begin with +628 and +6221 are 12
  @android @uidatabound
  Scenario:JENI647-C47386-Check System show error when input mobile number with begin +628/+6221 < min chars
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    #Step for user input the phone number begin with +628 more than 12 chars
    And User fill "pay_me_input_textfield" with "pay_me_phone_number_starting_+628_less_than_twelve_digit"
    Then User expect "pay_me_error_message_for_inputting_invalid_email_address" equal with "pay_me_error_message_invalid_email_address"
    And User click "pay_me_cancel_button"
    Then User click "pay_me_input_manually_button"
    #Step for user input the phone number begin with +6221 more than 12 chars
    And User fill "pay_me_input_textfield" with "pay_me_phone_number_starting_+6221_less_than_twelve_digit"
    Then User expect "pay_me_error_message_for_inputting_invalid_email_address" equal with "pay_me_error_message_invalid_email_address"

#########################################################################################################
#       Test Data                 : - Using Constant data
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  # Maksimum chars for phone number begin with +628 is 15
  # Maksimum chars for phone number begin with +6221 is 13
  @android @uidatabound
  Scenario:JENI647-C47387-Check System show error when input mobile number with begin +628/+6221 > max chars
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    #Step for user input the phone number begin with 628 more than 14 chars
    And User fill "pay_me_input_textfield" with "pay_me_phone_number_starting_+628_more_than_fifthteen_digit"
    Then User expect "pay_me_error_message_for_inputting_invalid_email_address" equal with "pay_me_error_message_invalid_email_address"
    And User click "pay_me_cancel_button"
    Then User click "pay_me_input_manually_button"
    #Step for user input the phone number begin with 6221 more than 12 chars
    And User fill "pay_me_input_textfield" with "pay_me_phone_number_starting_+6221_more_than_thirteen_digit"
    Then User expect "pay_me_error_message_for_inputting_invalid_email_address" equal with "pay_me_error_message_invalid_email_address"

#########################################################################################################
#       Test Data                 : - Using Account 5 phone
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @uidatabound
  Scenario:JENI647-C67698-Check Full Name of **** User show in Result Widget after submit Money Request with Phone Number
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_valid_****_phone_number"
    And User click "pay_me_add_button"
    And User click "pay_me_send_destination_textfield"
    When User fill "pay_me_amount_textfield" with "pay_me_amount"
    And User click "pay_me_send_request_button"
    Then User expect "pay_me_succcess_sent_notification" is exist
    And User select the contact "pay_me_selected_contacts"

  @ios @android @uispecific
  Scenario:JENI824-C45930-Check Tutorial will show when **** User come to "Pay Me" screen in the first time
    Given User is on application screen
    And User check and click 2 times if allow or ok button exist
    And User click "authentication_button"
    When User login with credential "pay_me_cif"
    Then User click "pay_me_next_button_on_login_screen"
    When User click "dashboard_hamburger_icon"
    And User scroll to "pay_me_****_help_menu"
    And User check app language is "language"
    And User click "pay_me_menu"
    Then User expect "pay_me_close_button_on_popup_tutorial" is exist
    And User expect "pay_me_next_tutorial_button" displayed 3 times with the last button "pay_me_ok_got_tutorial_button" equal with text "pay_me_ok_got_tutorial_text"

  @ios @android @uispecific
  Scenario:JENI824-C45931-Check X icon in "PayMe first time Tutorial" overlay
    Given User is on application screen
    And User check and click 2 times if allow or ok button exist
    And User click "authentication_button"
    When User login with credential "pay_me_cif"
    Then User click "pay_me_next_button_on_login_screen"
    When User click "dashboard_hamburger_icon"
    And User scroll to "pay_me_****_help_menu"
    And User check app language is "language"
    And User click "pay_me_menu"
    And User click "pay_me_close_button_on_popup_tutorial"
    Then User expect "pay_me_payme_title" is exist

  @ios @android @uispecific
  Scenario:JENI824-C45932-Check "OK, GOT IT!" button in "Payme first time Tutorial" overlay
    Given User is on application screen
    And User check and click 2 times if allow or ok button exist
    And User click "authentication_button"
    When User login with credential "pay_me_cif"
    Then User click "pay_me_next_button_on_login_screen"
    When User click "dashboard_hamburger_icon"
    And User scroll to "pay_me_****_help_menu"
    And User check app language is "language"
    And User click "pay_me_menu"
    Then User expect "pay_me_close_button_on_popup_tutorial" is exist
    And User expect "pay_me_next_tutorial_button" displayed 3 times with the last button "pay_me_ok_got_tutorial_button" equal with text "pay_me_ok_got_tutorial_text"
    Then User expect "pay_me_close_button_on_popup_tutorial" doesn't exist
    And User expect "pay_me_payme_title" is exist

  @android @uispecific
  Scenario:JENI824-C45933-Check Swipe Left/Right in "Payme first time Tutorial" overlay
    Given User is on application screen
    And User check and click 2 times if allow or ok button exist
    And User click "authentication_button"
    When User login with credential "pay_me_cif"
    Then User click "pay_me_next_button_on_login_screen"
    When User click "dashboard_hamburger_icon"
    And User scroll to "pay_me_****_help_menu"
    And User check app language is "language"
    And User click "pay_me_menu"
    Then User expect "pay_me_close_button_on_popup_tutorial" is exist
    And User swipe "pay_me_tutorial_frame" to the left
    Then User expect "pay_me_second_page_tutorial_text" is exist
    When User swipe "pay_me_tutorial_frame" to the left
    Then User expect "pay_me_third_page_tutorial_text" is exist
    And User swipe "pay_me_tutorial_frame" to the right
    Then User expect "pay_me_second_page_tutorial_text" is exist
    And User swipe "pay_me_tutorial_frame" to the right
    Then User expect "pay_me_first_page_tutorial_text" is exist

  @ios @android @uispecific
  Scenario:JENI824-C45934-Check Next/Previous button in "Payme first time Turorial" overlay
    Given User is on application screen
    And User check and click 2 times if allow or ok button exist
    And User click "authentication_button"
    When User login with credential "pay_me_cif"
    Then User click "pay_me_next_button_on_login_screen"
    When User click "dashboard_hamburger_icon"
    And User scroll to "pay_me_****_help_menu"
    And User check app language is "language"
    And User click "pay_me_menu"
    Then User expect "pay_me_close_button_on_popup_tutorial" is exist
    #And User swipe the right menu to the left
    And User click "pay_me_next_tutorial_button"
    Then User expect "pay_me_second_page_tutorial_text" is exist
    When User click "pay_me_next_tutorial_button"
    Then User expect "pay_me_third_page_tutorial_text" is exist
    And User click "pay_me_prev_tutorial_button"
    Then User expect "pay_me_second_page_tutorial_text" is exist
    When User click "pay_me_prev_tutorial_button"
    Then User expect "pay_me_first_page_tutorial_text" is exist

#########################################################################################################
#       Test Data                 : - Using Account 1 email
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @uidatabound
  Scenario:JENI825-C45937-Check coach marks highlighting the "Select Receiving account" will show when **** User jump to Account Screen in the first time
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_****_recipient_user_email"
    And User click "pay_me_add_button"
    And User expect "pay_me_send_destination_textfield" is exist
    Then User expect "pay_me_default_allocate_money_dropdown" equal with "pay_me_default_allocate_money_text"

#########################################################################################################
#       Test Data                 : - Using Account 1 email
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @uidatabound
  Scenario:JENI825-C45938-Check coach marks screen will disappear when tab on Amount screen
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_****_recipient_user_email"
    And User click "pay_me_add_button"
    And User expect "pay_me_send_destination_textfield" is exist
    Then User expect "pay_me_default_allocate_money_dropdown" equal with "pay_me_default_allocate_money_text"
    And User click "pay_me_send_destination_textfield"
    Then User expect "pay_me_send_destination_textfield" doesn't exist

  #########################################################################################################
#       Test Data                 : - Using Account 5 full name
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @uidatabound
  Scenario:JENI631-C45963-Check Match result show correctly when search with Name contacts 1
    Given User can access pay me menu with "****_contacts_create_group"
    And User click "search_loupe_icon"
    When User fill "pay_me_search_textfield" with "pay_me_split_bill_sander"
    And element that contains "pay_me_split_bill_sander" text will be displayed

  @android @uidatabound
  Scenario:JENI631-C45963-Check Match result show correctly when search with Name contacts 2
    Given User can access pay me menu with "****_contacts_create_group"
    And User click "search_loupe_icon"
    When User fill "pay_me_search_textfield" with "pay_me_split_bill_sender_2"
    And User swipe up contact until found "pay_me_split_bill_sander"
    And element that contains "pay_me_split_bill_sander" text will be displayed

#########################################################################################################
#       Test Data                 : - Using Account 5 cashtag
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @uidatabound
  Scenario:JENI631-C45970-Check Match Result show correctly when search with Cashtag of contacts
    Given User can access pay me menu with "****_contacts_create_group"
    And User click "search_loupe_icon"
    When User fill "pay_me_search_textfield" with "split_bill_user_****"
    And User swipe up contact until found "split_bill_user_****"
    And element that contains "split_bill_user_****" text will be displayed

  @android @ios @uispecific
  Scenario:JENI631-C45962-Check Search field bar appear when click on Search icon
    Given User can access pay me menu with "****_contacts_create_group"
    And User click "search_loupe_icon"
    Then User expect "cancel_button_search" is exist
    And User expect "pay_me_search_textfield" is exist
    And User fill "pay_me_search_textfield" with "split_bill_user_****"
    And User expect "pay_me_search_textfield" equal with "split_bill_user_****"

  @android @ios @uispecific
  Scenario:JENI631-C45967-Check Cancel button in Search field bar
    Given User can access pay me menu with "****_contacts_create_group"
    And User click "search_loupe_icon"
    Then User expect "cancel_button_search" is exist
    When User click "cancel_button_search"
    Then User expect "pay_me_search_textfield" doesn't exist
    Then User expect "search_loupe_icon" is exist

  @android @ios @uispecific
  Scenario:JENI631-C45968-Check Close icon in Search field bar
    Given User can access pay me menu with "****_contacts_create_group"
    And User click "search_loupe_icon"
    When User fill "pay_me_search_textfield" with "pay_me_cashtag_1"
    And User click "bill_payment_header_search_cancel_button"
    Then User expect "cancel_button_search" is exist

#########################################################################################################
#       Test Data                 : - Using Constant data
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @uidatabound
  Scenario:JENI631-C45969-Check Match result will show  when no match is found
    Given User can access pay me menu with "****_contacts_create_group"
    And User click "search_loupe_icon"
    When User fill "pay_me_search_textfield" with "pay_me_valid_cashtag_non_jenus_user"
    Then And User expect "bill_payment_text_matches_text" contains "bill_payment_text_matches"

#########################################################################################################
#       Test Data                 : - Using Constant data
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @uidatabound
  Scenario:JENI621-C45449-Check **** User can submit "Send request" with phone number and notes to non-**** user
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_valid_non_****_phone_number"
    And User click "pay_me_add_button"
    And User expect "pay_me_send_destination_textfield" is exist
    And User click "pay_me_send_destination_textfield"
    When User fill "pay_me_amount_textfield" with "pay_me_amount"
    And User fill "pay_me_note_textfield" with "pay_me_note"
    And User click "pay_me_send_request_button"
    Then User expect "pay_me_succcess_sent_notification" is exist

#########################################################################################################
#       Test Data                 : - Using Constant data
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @uidatabound
  Scenario:JENI621-C45450-Check **** User can submit "Send request" with phone number and without notes to non-**** user
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_valid_non_****_phone_number"
    And User click "pay_me_add_button"
    And User expect "pay_me_send_destination_textfield" is exist
    And User click "pay_me_send_destination_textfield"
    When User fill "pay_me_amount_textfield" with "pay_me_amount"
    And User click "pay_me_send_request_button"
    Then User expect "pay_me_succcess_sent_notification" is exist

  @android @uidatabound
  Scenario:JENI624-C67538-Verify content in the notification panel have two tabs
    Given User check pay me notification of request money with "pay_me_cif"
    Then User expect "pay_me_requests_tab_notification_page" is exist
    And User expect "pay_me_news_tab_notification_page" is exist

#########################################################################################################
#       Test Data                 : - Login Using Account 12 as Sender/Requestor
#                                   - Receiver using Account 1 email
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @endtoend
  Scenario:JENI624-C67563-Verify all of my Pay Me request & Split bill request appear in the Request Tab [Precondition-Requestor]
    Given User create pay me by inputting pay me amount with "pay_me_cif"
    When User fill "pay_me_amount_textfield" with "pay_me_amount"
    And User fill "pay_me_note_textfield" with "pay_me_note"
    Then User expect "pay_me_countdown_text_amount" equal with "pay_me_note_number"
    And User click "pay_me_send_request_button"
    Then User expect "pay_me_succcess_sent_notification" is exist

#########################################################################################################
#       Test Data                 : - Login using Account 1 email and Password as Receiver
#                                   - Sender/Requestor using Account 12
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @endtoend
  Scenario:JENI624-C67563-Verify all of my Pay Me request & Split bill request appear in the Request Tab [Receiver]
    Given User check pay me notification of request money with "pay_me_cif_receiver"
    Then User expect the selected contact equal with "pay_me_requestor_name"
    And User expect "payme_amount_request" equal with "pay_me_request_amount"
    And User expect "payme_decline_button" is exist
    And User expect "payme_send_money_button" is exist
    And User expect "payme_notification_sending_money" is exist

#########################################################################################################
#       Test Data                 : - Login Using Account 12 as Sender/Requestor
#                                   - Receiver using Account 1 cashtag
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @endtoend
  Scenario:JENI624-C67504-By Cashtag - Verify pay me display if requestor not yet registered in **** contact [Precondition-Requestor]
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_valid_cashtag"
    And User click "pay_me_add_button"
    And User click "pay_me_send_destination_textfield"
    When User fill "pay_me_amount_textfield" with "pay_me_amount"
    And User fill "pay_me_note_textfield" with "pay_me_note"
    Then User expect "pay_me_countdown_text_amount" equal with "pay_me_note_number"
    And User click "pay_me_send_request_button"
    Then User expect "pay_me_succcess_sent_notification" is exist

#########################################################################################################
#       Test Data                 : - Login using Account 1 email and Password as Receiver
#                                   - Sender/Requestor using Account 12
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @endtoend
  Scenario:JENI624-C67504-By Cashtag - Verify pay me display if requestor not yet registered in **** contact [Receiver]
    Given User check pay me notification of request money with "pay_me_cif_receiver"
    Then User expect the selected contact equal with "pay_me_requestor_name"
    And User expect "payme_amount_request" equal with "pay_me_request_amount"
    And User expect "payme_decline_button" is exist
    And User expect "payme_send_money_button" is exist
    And User expect "payme_notification_sending_money" is exist
    And User expect "pay_me_description_notification_message" is exist

#########################################################################################################
#       Test Data                 : - Login Using Account 12 as Sender/Requestor
#                                   - Receiver using Account 1 email
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @endtoend
  Scenario:JENI624-C67505-By Email- Verify pay me display if requestor not yet registered in **** contact [Precondition-Requestor]
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_****_recipient_user_email"
    And User click "pay_me_add_button"
    And User click "pay_me_send_destination_textfield"
    When User fill "pay_me_amount_textfield" with "pay_me_amount"
    And User fill "pay_me_note_textfield" with "pay_me_note"
    Then User expect "pay_me_countdown_text_amount" equal with "pay_me_note_number"
    And User click "pay_me_send_request_button"
    Then User expect "pay_me_succcess_sent_notification" is exist

#########################################################################################################
#       Test Data                 : - Login using Account 1 email and Password as Receiver
#                                   - Sender/Requestor using Account 12
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @endtoend
  Scenario:JENI624-C67505-By Email- Verify pay me display if requestor not yet registered in **** contact [Receiver]
    Given User check pay me notification of request money with "pay_me_cif_receiver"
    Then User expect the selected contact equal with "pay_me_requestor_name"
    And User expect "payme_amount_request" equal with "pay_me_request_amount"
    And User expect "payme_decline_button" is exist
    And User expect "payme_send_money_button" is exist
    And User expect "payme_notification_sending_money" is exist
    And User expect "pay_me_description_notification_message" is exist

#########################################################################################################
#       Test Data                 : - Login Using Account 12 as Sender/Requestor
#                                   - Receiver using Account 1 phone
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @endtoend
  Scenario:JENI624-C67506-By Phone Number - Verify pay me display if requestor not yet registered in **** contact [Precondition-Requestor]
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_phone_number_account_1"
    And User click "pay_me_add_button"
    And User click "pay_me_send_destination_textfield"
    When User fill "pay_me_amount_textfield" with "pay_me_amount"
    And User fill "pay_me_note_textfield" with "pay_me_note"
    Then User expect "pay_me_countdown_text_amount" equal with "pay_me_note_number"
    And User click "pay_me_send_request_button"
    Then User expect "pay_me_succcess_sent_notification" is exist

#########################################################################################################
#       Test Data                 : - Login as Account 1 email and password as Receiver
#                                   - Using Account 12 as Sender/Requestor
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @endtoend
  Scenario:JENI624-C67506-By Phone Number - Verify pay me display if requestor not yet registered in **** contact [Receiver]
    Given User check pay me notification of request money with "pay_me_cif_receiver"
    Then User expect the selected contact equal with "pay_me_requestor_name"
    And User expect "payme_amount_request" equal with "pay_me_request_amount"
    And User expect "payme_decline_button" is exist
    And User expect "payme_send_money_button" is exist
    And User expect "payme_notification_sending_money" is exist
    And User expect "pay_me_description_notification_message" is exist

#########################################################################################################
#       Test Data                 : - Login Using Account 12 as Sender/Requestor
#                                   - Receiver using Account 1 email
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @endtoend
  Scenario:JENI624-C67514-By Email - Verify your Full name display in pay me [Precondition-Requestor]
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_****_recipient_user_email"
    And User click "pay_me_add_button"
    And User click "pay_me_send_destination_textfield"
    When User fill "pay_me_amount_textfield" with "pay_me_amount"
    And User fill "pay_me_note_textfield" with "pay_me_note"
    Then User expect "pay_me_countdown_text_amount" equal with "pay_me_note_number"
    And User click "pay_me_send_request_button"
    Then User expect "pay_me_succcess_sent_notification" is exist

#########################################################################################################
#       Test Data                 : - Login as Account 1 email and password as Receiver
#                                   - Using Account 12 as Sender/Requestor
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @endtoend
  Scenario:JENI624-C67514-By Email - Verify your Full name display in pay me [Receiver]
    Given User check pay me notification of request money with "pay_me_cif_receiver"
    Then User expect the selected contact equal with "pay_me_requestor_name"
    And User expect notification from "pay_me_requestor_name" is exist

#########################################################################################################
#       Test Data                 : - Login Using Account 12 as Sender/Requestor
#                                   - Receiver using Account 1 cashtag
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @endtoend
  Scenario:JENI624-C67515-By Cashtag - Verify your Full name display in pay me [Precondition-Requestor]
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_valid_cashtag"
    And User click "pay_me_add_button"
    And User click "pay_me_send_destination_textfield"
    When User fill "pay_me_amount_textfield" with "pay_me_amount"
    And User fill "pay_me_note_textfield" with "pay_me_note"
    Then User expect "pay_me_countdown_text_amount" equal with "pay_me_note_number"
    And User click "pay_me_send_request_button"
    Then User expect "pay_me_succcess_sent_notification" is exist

#########################################################################################################
#       Test Data                 : - Login as Account 1 email and password as Receiver
#                                   - Using Account 12 as Sender/Requestor
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @endtoend
  Scenario:JENI624-C67515-By Cashtag - Verify your Full name display in pay me [Receiver]
    Given User check pay me notification of request money with "pay_me_cif_receiver"
    Then User expect the selected contact equal with "pay_me_requestor_name"
    And User expect notification from "pay_me_requestor_name" is exist

#########################################################################################################
#       Test Data                 : - Login Using Account 12 as Sender/Requestor
#                                   - Receiver using Account 1 phone
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @endtoend
  Scenario:JENI624-C67516-By Phone Number - Verify your Full name display in the message [Precondition-Requestor]
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_phone_number_account_1"
    And User click "pay_me_add_button"
    And User click "pay_me_send_destination_textfield"
    When User fill "pay_me_amount_textfield" with "pay_me_amount"
    And User fill "pay_me_note_textfield" with "pay_me_note"
    Then User expect "pay_me_countdown_text_amount" equal with "pay_me_note_number"
    And User click "pay_me_send_request_button"
    Then User expect "pay_me_succcess_sent_notification" is exist

#########################################################################################################
#       Test Data                 : - Login as Account 1 email and password as Receiver
#                                   - Using Account 12 as Sender/Requestor
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @endtoend
  Scenario:JENI624-C67516-By Phone Number - Verify your Full name display in the message [Receiver]
    Given User check pay me notification of request money with "pay_me_cif_receiver"
    Then User expect the selected contact equal with "pay_me_requestor_name"
    And User expect notification from "pay_me_requestor_name" is exist

#########################################################################################################
#       Test Data                 : - Login Using Account 12 as Sender/Requestor
#                                   - Receiver using Account 1 cashtag
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @endtoend
  Scenario:JENI625-C69826-[Functionality] Select Cancel on decline confirmation pop-up window of pay me - precondition user1 do 'pay me' to user2
    Given User can access pay me menu with "pay_me_cif"
    And User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_valid_cashtag"
    And User click "pay_me_add_button"
    And User click "pay_me_send_destination_textfield"
    And User fill "pay_me_amount_textfield" with "pay_me_amount"
    And User click "pay_me_send_request_button"
    Then User expect "pay_me_success_sent_notification_new" is exist

#########################################################################################################
#       Test Data                 : - Login as Account 1 email and password as Receiver
#                                   - Using Account 12 as Sender/Requestor
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @endtoend
  Scenario:JENI625-C69826-[Functionality] Select Cancel on decline confirmation pop-up window of pay me
    Given User check pay me notification of request money with "pay_me_cif_receiver"
    Then User expect "pay_me_notification_page" is exist
    And User click "pay_me_requests_tab_notification_page"
    Then User expect the selected contact equal with "pay_me_requestor_name"
    And User click "notification_decline_button"
    And User click "pay_me_pop_up_cancel_button"

#########################################################################################################
#       Test Data                 : - Login Using Account 12 as Sender/Requestor
#                                   - Receiver using Account 1 cashtag
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @endtoend
  Scenario:JENI625-C69835-[Functionality] Select Decline in Decline confirmation pop-up window of pay me money request - precondition user1 do 'pay me' to user2
    Given User can access pay me menu with "pay_me_cif"
    And User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_valid_cashtag"
    And User click "pay_me_add_button"
    And User click "pay_me_send_destination_textfield"
    And User fill "pay_me_amount_textfield" with "pay_me_amount"
    And User click "pay_me_send_request_button"
    Then User expect "pay_me_success_sent_notification_new" is exist

#########################################################################################################
#       Test Data                 : - Login as Account 1 email and password as Receiver
#                                   - Using Account 12 as Sender/Requestor
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @endtoend
  Scenario:JENI625-C69835-[Functionality] Select Decline in Decline confirmation pop-up window of pay me money request
    Given User check pay me notification of request money with "pay_me_cif_receiver"
    Then User expect "pay_me_notification_page" is exist
    And User click "pay_me_requests_tab_notification_page"
    Then User expect the selected contact equal with "pay_me_requestor_name"
    And User click "notification_decline_button"
    And User click "pay_me_pop_up_cancel_button"

#########################################################################################################
#       Test Data                 : - Login Using Account 12 as Sender/Requestor
#                                   - Receiver using Account 1 cashtag
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @endtoend
  Scenario:JENI625-C69820-[Functionality] Select Decline on the Pay Me message inside notification panel - precondition user1 do 'pay me' to user2
    Given User can access pay me menu with "pay_me_cif"
    And User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_valid_cashtag"
    And User click "pay_me_add_button"
    And User click "pay_me_send_destination_textfield"
    And User fill "pay_me_amount_textfield" with "pay_me_amount"
    And User click "pay_me_send_request_button"
    Then User expect "pay_me_success_sent_notification_new" is exist

#########################################################################################################
#       Test Data                 : - Login as Account 1 email and password as Receiver
#                                   - Using Account 12 as Sender/Requestor
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @endtoend
  Scenario:JENI625-C69820-[Functionality] Select Decline on the Pay Me message inside notification panel
    Given User check pay me notification of request money with "pay_me_cif_receiver"
    Then User expect "pay_me_notification_page" is exist
    And User click "pay_me_requests_tab_notification_page"
    Then User expect the selected contact equal with "pay_me_requestor_name"
    And User click "notification_decline_button"
    And User fill "pay_me_decline_note_textfield" with "pay_me_note_max_text"
    And User expect "pay_me_countdown_text_amount" is exist

#########################################################################################################
#       Test Data                 : - Login Using Account 12 as Sender/Requestor
#                                   - Receiver using Account 1 cashtag
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @endtoend
  Scenario:JENI625-C69838-[Functionality] Verify number of character input in note - precondition user1 do 'pay me' to user2
    Given User can access pay me menu with "pay_me_cif"
    And User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_valid_cashtag"
    And User click "pay_me_add_button"
    And User click "pay_me_send_destination_textfield"
    And User fill "pay_me_amount_textfield" with "pay_me_amount"
    And User click "pay_me_send_request_button"
    Then User expect "pay_me_success_sent_notification_new" is exist

#########################################################################################################
#       Test Data                 : - Login as Account 1 email and password as Receiver
#                                   - Using Account 12 as Sender/Requestor
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @endtoend
  Scenario:JENI625-C69838-[Functionality] Verify number of character input in note
    Given User check pay me notification of request money with "pay_me_cif_receiver"
    Then User expect "pay_me_notification_page" is exist
    And User click "pay_me_requests_tab_notification_page"
    Then User expect the selected contact equal with "pay_me_requestor_name"
    And User click "notification_decline_button"
    And User click "pay_me_decline_note_textfield"
    Then User expect "pay_me_countdown_text_amount" equal with "pay_me_max_note_number"

#########################################################################################################
#       Test Data                 : - Login Using Account 12 as Sender/Requestor
#                                   - Receiver using Account 1 cashtag
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @endtoend
  Scenario:JENI625-C69839-[Functionality] Verify number of character input in note with maximum lenght - precondition user1 do 'pay me' to user2
    Given User can access pay me menu with "pay_me_cif"
    And User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_valid_cashtag"
    And User click "pay_me_add_button"
    And User click "pay_me_send_destination_textfield"
    And User fill "pay_me_amount_textfield" with "pay_me_amount"
    And User click "pay_me_send_request_button"
    Then User expect "pay_me_success_sent_notification_new" is exist

#########################################################################################################
#       Test Data                 : - Login as Account 1 email and password as Receiver
#                                   - Using Account 12 as Sender/Requestor
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @endtoend
  Scenario:JENI625-C69839-[Functionality] Verify number of character input in note with maximum lenght
    Given User check pay me notification of request money with "pay_me_cif_receiver"
    Then User expect "pay_me_notification_page" is exist
    And User click "pay_me_requests_tab_notification_page"
    Then User expect the selected contact equal with "pay_me_requestor_name"
    And User click "notification_decline_button"
    When User fill "pay_me_decline_note_textfield" with "pay_me_note_max_text"
    Then User expect "pay_me_countdown_text_amount" equal with "pay_me_zero_note_number"

#########################################################################################################
#       Test Data                 : - Login Using Account 12 as Sender/Requestor
#                                   - Receiver using Account 1 cashtag
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @endtoend
  Scenario:JENI2597-C69728-[Content] Pay Me - Request to my cashtag and requestor is in my **** contact list - precondition user1 do 'pay me' to user2
    Given User can access pay me menu with "pay_me_cif"
    And User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_valid_cashtag"
    And User click "pay_me_add_button"
    And User click "pay_me_send_destination_textfield"
    And User fill "pay_me_amount_textfield" with "pay_me_amount"
    And User fill "pay_me_note_textfield" with "pay_me_note"
    And User click "pay_me_send_request_button"
    Then User expect "pay_me_success_sent_notification_new" is exist

#########################################################################################################
#       Test Data                 : - Login as Account 1 email and password as Receiver
#                                   - Using Account 12 as Sender/Requestor
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @endtoend
  Scenario:JENI2597-C69728-[Content] Pay Me - Request to my cashtag and requestor is in my **** contact list
    Given User check pay me notification of request money with "pay_me_cif_receiver"
    Then User expect "pay_me_notification_page" is exist
    And User click "pay_me_requests_tab_notification_page"
    Then User expect the selected contact equal with "pay_me_requestor_name"
    Then User expect "pay_me_time_stamp_notification" is exist
    Then User expect "pay_me_amount_notification" is exist
    Then User expect "pay_me_note_notification" equal with "pay_me_note"
    Then User expect "notification_decline_button" is exist
    Then User expect "notification_send_money_button" is exist

#########################################################################################################
#       Test Data                 : - Login Using Account 12 as Sender/Requestor
#                                   - Receiver using Account 1 cashtag
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @endtoend
  Scenario:JENI2597-C69729-[Content] Pay Me - Request to my registered email and requestor is in my **** contact list - precondition user1 do 'pay me' to user2
    Given User create pay me using "pay_me_valid_cashtag"

#########################################################################################################
#       Test Data                 : - Login as Account 1 email and password as Receiver
#                                   - Using Account 12 as Sender/Requestor
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @endtoend
  Scenario:JENI2597-C69729-[Content] Pay Me - Request to my registered email and requestor is in my **** contact list
    Given User check pay me notification of request money with "pay_me_cif_receiver"
    Then User expect "pay_me_notification_page" is exist
    And User click "pay_me_requests_tab_notification_page"
    Then User expect the selected contact equal with "pay_me_requestor_name"
    Then User expect "notification_time_stamp" is exist
    Then User expect "pay_me_amount_notification" is exist
    Then User expect "pay_me_note_notification" equal with "pay_me_note"
    Then User expect "notification_decline_button" is exist
    Then User expect "notification_send_money_button" is exist

#########################################################################################################
#       Test Data                 : - Login Using Account 12 as Sender/Requestor
#                                   - Receiver using Account 1 phone
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @endtoend
  Scenario:JENI2597-C69730-[Content] Pay Me - Request to my registered phone number and requestor is in my **** contact list - precondition user1 do 'pay me' to user2
    Given User create pay me using "pay_me_phone_number_account_1"

#########################################################################################################
#       Test Data                 : - Login as Account 1 email and password as Receiver
#                                   - Using Account 12 as Sender/Requestor
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @endtoend
  Scenario:JENI2597-C69730-[Content] Pay Me - Request to my registered phone number and requestor is in my **** contact list
    Given User check pay me notification of request money with "pay_me_cif_receiver"
    Then User expect "pay_me_notification_page" is exist
    And User click "pay_me_requests_tab_notification_page"
    Then User expect the selected contact equal with "pay_me_requestor_name"
    Then User expect "notification_time_stamp" is exist
    Then User expect "pay_me_amount_notification" is exist
    Then User expect "pay_me_note_notification" equal with "pay_me_note"
    Then User expect "notification_decline_button" is exist
    Then User expect "notification_send_money_button" is exist

#########################################################################################################
#       Test Data                 : - Login Using Account 12 as Sender/Requestor
#                                   - Receiver using Account 1 cashtag
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @endtoend
  Scenario:JENI2597-C69797-[Content] Pay Me - Verify red dot on Bell icon if user have receiving pay me money request - precondition user1 do 'pay me' to user2
    Given User create pay me using "pay_me_valid_cashtag"

#########################################################################################################
#       Test Data                 : - Login as Account 1 email and password as Receiver
#                                   - Using Account 12 as Sender/Requestor
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @endtoend
  Scenario:JENI2597-C69797-[Content] Pay Me - Request to my registered phone number and requestor is in my **** contact list
    Given User is on application screen
    And User check and click 2 times if allow or ok button exist
    And User click "authentication_button"
    When User login with credential "pay_me_cif_receiver"
    Then User click "split_bill_next_button_on_login_screen"
    When User click "dashboard_hamburger_icon"
    And User scroll to "pay_me_****_help_menu"
    And User check app language is "language"
    And User swipe down until found "dashboard_menu"
    And User click "dashboard_menu"
    Then User expect "notification_icon" is exist

#########################################################################################################
#       Test Data                 : - Login Using Account 12 as Sender/Requestor
#                                   - Receiver using Account 1 cashtag
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @endtoend
  Scenario:JENI2597-C69798-[Content] Pay Me - Verify each pay me message in the notification panel will be count as 1 and it will add up the amount of number in the red dot on Bell icon - precondition user1 do 'pay me' to user2
    Given User create pay me using "pay_me_valid_cashtag"

#########################################################################################################
#       Test Data                 : - Login as Account 1 email and password as Receiver
#                                   - Using Account 12 as Sender/Requestor
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @endtoend
  Scenario:JENI2597-C69798-[Content] Pay Me - Verify each pay me message in the notification panel will be count as 1 and it will add up the amount of number in the red dot on Bell icon
    Given User is on application screen
    And User check and click 2 times if allow or ok button exist
    And User click "authentication_button"
    When User login with credential "pay_me_cif_receiver"
    Then User click "split_bill_next_button_on_login_screen"
    When User click "dashboard_hamburger_icon"
    And User scroll to "pay_me_****_help_menu"
    And User check app language is "language"
    And User swipe down until found "dashboard_menu"
    And User click "dashboard_menu"
    Then element with "pay_me_notification_number_new" text will be displayed

#########################################################################################################
#       Test Data                 : - Login as Account 12 email and password as Receiver
#                                   - Using Account 1 as cashtag
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @uidatabound
  Scenario:JENI697-C45436-Check Result Widget show correctly after Submit "Money Request" with Cashtag successful
    Given User create pay me using "pay_me_valid_cashtag"
    And element with "pay_me_success_sent_notification_new" text will be displayed
    And User expect "pay_me_time_stamp_success_widget" is exist
    And User expect "pay_me_close_button_success_widget" is exist
    And element with "pay_me_expected_amount" text will be displayed
    And element with "receiver_name" text will be displayed
    And element with "pay_me_note" text will be displayed

#########################################################################################################
#       Test Data                 : - Login as Account 12 email and password as Receiver
#                                   - Using Account 1 as phone
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @uidatabound
  Scenario:JENI697-C45437-Check Result Widget show correctly after Submit "Money Request" with Mobile Number successful
    Given User create pay me using "pay_me_phone_number_account_1"
    And element with "pay_me_success_sent_notification_new" text will be displayed
    And User expect "pay_me_time_stamp_success_widget" is exist
    And User expect "pay_me_close_button_success_widget" is exist
    And element with "pay_me_expected_amount" text will be displayed
    And element with "receiver_name" text will be displayed
    And element with "pay_me_note" text will be displayed

#########################################################################################################
#       Test Data                 : - Login as Account 12 email and password as Receiver
#                                   - Using Account 1 as email
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @uidatabound
  Scenario:JENI697-C45438-Check Result Widget show correctly after Submit "Money Request" with Email successful
    Given User create pay me using "pay_me_****_recipient_user_email"
    And element with "pay_me_success_sent_notification_new" text will not displayed
    And User expect "pay_me_time_stamp_success_widget" is exist
    And User expect "pay_me_close_button_success_widget" is exist
    And element with "pay_me_expected_amount" text will be displayed
    And element with "receiver_email" text will be displayed
    And element with "pay_me_note" text will be displayed

#########################################################################################################
#       Test Data                 : - Login as Account 12 email and password as Receiver
#                                   - Using Account 1 as phone
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @uidatabound
  Scenario:JENI697-C45439-Check Result Widget show correctly after Submit "Money Request" with Email successful
    Given User create pay me using "pay_me_phone_number_account_1"
    And User click "pay_me_close_button_success_widget"
    And element with "pay_me_success_sent_notification_new" text will be displayed

#########################################################################################################
#       Test Data                 : - Login as Account 12 email and password as Receiver
#                                   - Using Account 1 as cashtag
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @uidatabound
  Scenario:JENI697-C45440-Check Result Widget will auto disappear after it overs 60 second
    Given User create pay me using "pay_me_valid_cashtag"
    And User wait 61 seconds
    And element with "pay_me_success_sent_notification_new" text will not displayed

#########################################################################################################
#       Test Data                 : - Login as Account 12 email and password as Receiver
#                                   - Using Account 1 as cashtag
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @uidatabound
  Scenario:JENI697-C45441-Check Result Widget will auto disappear when log out from **** Application
    Given User create pay me using "pay_me_valid_cashtag"
    And User swipe the left menu to the right
    And User scroll to "****_help"
    Then User click "logout_menu"

#########################################################################################################
#       Test Data                 : - Login as Account 12 email and password as Receiver
#                                   - Using Account 1 as cashtag
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @uidatabound
  Scenario:JENI697-C45441-Check Result Widget will auto disappear when log out from **** Application
    Given User is logged in with cif "pay_me_valid_cashtag"
    And element with "pay_me_success_sent_notification_new" text will not displayed

#########################################################################################################
#       Test Data                 : - Login as Account 12 email and password as Receiver
#                                   - Using Account 1 as cashtag
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @uidatabound
  Scenario:JENI697-C45497-Check Layout of Result Widget
    Given User create pay me using "pay_me_valid_cashtag"
    And element with "pay_me_success_sent_notification_new" text will be displayed
    And User expect "pay_me_time_stamp_success_widget" is exist
    And User expect "pay_me_close_button_success_widget" is exist
    And element with "pay_me_expected_amount" text will be displayed
    And element with "receiver_name" text will be displayed
    And element with "pay_me_note" text will be displayed

#########################################################################################################
#       Test Data                 : - Login as Account 12 email and password as Receiver
#                                   - Using Account 1 as cashtag
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @uidatabound
  Scenario:JENI697-C45498-Check Format Amount show correctly in Result Widget
    Given User create pay me using "pay_me_valid_cashtag"
    And User expect "pay_me_amount_success_widget" is exist
    And User click "dashboard_hamburger_icon"
    And User scroll to "****_help" 
    Then User click "language_menu"
    And element with "pay_me_expected_amount_id" text will be displayed

#########################################################################################################
#       Test Data                 : - Login as Account 12 email and password as Receiver
#                                   - Using Account 1 as cashtag
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @uidatabound
  Scenario:JENI628-C45275-Check Character counter will count down when input chars in Notes field
    Given User can access pay me menu with "pay_me_cif"
    And User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_valid_cashtag"
    And User click "pay_me_add_button"
    And User click "pay_me_send_destination_textfield"
    And User fill "pay_me_note_textfield" with "pay_me_note"
    Then User expect "pay_me_countdown_text_amount" equal with "pay_me_note_number"

#########################################################################################################
#       Test Data                 : - Login as Account 12 email and password as Receiver
#                                   - Using Account 1 as email
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @uidatabound
  Scenario:JENI697-C45438-Check Result Widget show correctly after Submit "Money Request" with Email successful
    Given User create pay me using "pay_me_****_recipient_user_email"
    And element with "pay_me_success_sent_notification_new" text will be displayed
    And User expect "pay_me_time_stamp_success_widget" is exist
    And User expect "pay_me_close_button_success_widget" is exist
    And element with "pay_me_expected_amount" text will be displayed
    And element with "receiver_email" text will be displayed
    And element with "pay_me_note" text will be displayed

#########################################################################################################
#       Test Data                 : - Login as Account 12 email and password as Receiver
#                                   - Using Account 1 as phone
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @uidatabound
  Scenario:JENI697-C45439-Check Result Widget show correctly after Submit "Money Request" with Email successful
    Given User create pay me using "pay_me_phone_number_account_1"
    And User click "pay_me_close_button_success_widget"
    Then User expect "pay_me_success_sent_notification_new" doesn't exist

#########################################################################################################
#       Test Data                 : - Login as Account 12 email and password as Receiver
#                                   - Using Account 1 as cashtag
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @uidatabound
  Scenario:JENI697-C45440-Check Result Widget will auto disappear after it overs 60 second
    Given User create pay me using "pay_me_valid_cashtag"
    And User wait 61 seconds
    And element with "pay_me_success_sent_notification_new" text will be displayed

#########################################################################################################
#       Test Data                 : - Login as Account 12 email and password as Receiver
#                                   - Using Account 1 as cashtag
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @uidatabound
  Scenario:JENI627-C47380-Check number of money will automatically reduce in term of font size
    Given User can access pay me menu with "pay_me_cif"
    And User click "pay_me_input_manually_button"
    When User fill "pay_me_input_textfield" with "pay_me_valid_cashtag"
    And User click "pay_me_add_button"
    When User fill "pay_me_amount_textfield" with "pay_me_amount_more_than_max_number"
    Then User expect "pay_me_amount_textfield" equal with "pay_me_amount_max_number"

#########################################################################################################
#       Test Data                 : - Login as Account 12 email and password as Receiver
#                                   - Using Account 1 as cashtag
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  #This scenario is using the apk from SIT with build version no 1479 since there is an issue on UAT and I can't login
  @android @uidatabound
  Scenario:JENI628-C45276-Check Max length of Notes field
    Given User can access pay me menu with "pay_me_cif"
    And User click "pay_me_input_manually_button"
    When User fill "pay_me_input_textfield" with "pay_me_valid_cashtag"
    And User click "pay_me_add_button"
    And User click "pay_me_send_destination_textfield"
    And User fill "pay_me_note_textfield" with "pay_me_note_more_than_max_number"
    Then User expect "pay_me_note_textfield" equal with "pay_me_note_max_number"

#########################################################################################################
#       Test Data                 : - Login as Account 12 email and password as Sender
#                                   - Using Account 1 as cashtag as Receiver
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @uidatabound
  Scenario:JENI697-C45497-Check Layout of Result Widget
    Given User create pay me using "pay_me_valid_cashtag"
    And element with "pay_me_success_sent_notification_new" text will be displayed
    And User expect "pay_me_time_stamp_success_widget" is exist
    And User expect "pay_me_close_button_success_widget" is exist
    And element with "pay_me_expected_amount" text will be displayed
    And element with "receiver_name" text will be displayed
    And element with "pay_me_note" text will be displayed

#########################################################################################################
#       Test Data                 : - Login as Account 12 email and password as sender
#                                   - Using Account 1 as cashtag as receiver
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @uidatabound
  Scenario:JENI697-C45498-Check Format Amount show correctly in Result Widget
    Given User create pay me using "pay_me_valid_cashtag"
    And User expect "pay_me_amount_success_widget" is exist
    And User swipe the left menu to the right
    And User scroll to "****_help" 
    Then User click "language_menu"
    And element with "pay_me_expected_amount_id" text will be displayed

#########################################################################################################
#       Test Data                 : - Login as Account 12 email and password as Sender
#                                   - Using Account 1 as cashtag
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @endtoend
  Scenario:JENI624-C45298-Check red dot on Bell and red dot on App will count down when Decline a Money Reuqest [precondition-requestor]
    Given User create pay me using "pay_me_valid_cashtag"

#########################################################################################################
#       Test Data                 : - Login as Account 1 email and password as Sender
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @endtoend
  Scenario:JENI624-C45298-Check red dot on Bell and red dot on App will count down when Decline a Money Reuqest [receiver]
    Given User is on application screen
    And User check and click 2 times if allow or ok button exist
    And User click "authentication_button"
    When User login with credential "pay_me_cif_receiver"
    Then User click "split_bill_next_button_on_login_screen"
    When User click "dashboard_hamburger_icon"
    And User scroll to "pay_me_****_help_menu"
    And User check app language is "language"
    And User swipe down until found "dashboard_menu"
    And User click "dashboard_menu"

    And element with "pay_me_notification_number_new" text will be displayed
    And User click "dashboard_notification_icon"
    And User click "notification_decline_button"
    And User click "pay_me_pop_up_decline_button"
    And User click "notification_back_button"
    And element with "pay_me_notification_number_decline" text will be displayed

#########################################################################################################
#       Test Data                 : - Login as Account 12 email and password as Sender
#                                   - Using Account 1 as cashtag
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @endtoend
  Scenario:JENI624-C45300-Check red dot on Bell and red dot on App will count down when response money request successfull [precondition-requestor]
    Given User create pay me using "pay_me_valid_cashtag"

#########################################################################################################
#       Test Data                 : - Login as Account 1 email and password as Sender
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @endtoend
  Scenario:JENI624-C45300-Check red dot on Bell and red dot on App will count down when response money request successfull [receiver]
    Given User is on application screen
    And User check and click 2 times if allow or ok button exist
    And User click "authentication_button"
    When User login with credential "pay_me_cif_receiver"
    Then User click "split_bill_next_button_on_login_screen"
    When User click "dashboard_hamburger_icon"
    And User scroll to "pay_me_****_help_menu"
    And User check app language is "language"
    And User swipe down until found "dashboard_menu"
    And User click "dashboard_menu"

    And element with "pay_me_notification_number_new" text will be displayed
    And User click "dashboard_notification_icon"
    And User click "payme_send_money_button"
    And User click "pay_me_pop_up_decline_button"
    And User click "notification_back_button"
    And element with "pay_me_notification_number_decline" text will be displayed

#########################################################################################################
#       Test Data                 : - Login as Account 12 email and password as Sender
#                                   - Using Account 1 as cashtag
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @endtoend
  Scenario:JENI624-C45301-Check red dot on Bell and Red dot on App will be disappear when "Money Request" Notificatication is empty [precondition-requestor]
    Given User create pay me using "pay_me_valid_cashtag"

#########################################################################################################
#       Test Data                 : - Login as Account 1 email and password as Sender
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @endtoend
  Scenario:JENI624-C45301-Check red dot on Bell and Red dot on App will be disappear when "Money Request" Notificatication is empty [receiver]
    Given User is on application screen
    And User check and click 2 times if allow or ok button exist
    And User click "authentication_button"
    When User login with credential "pay_me_cif_receiver"
    Then User click "split_bill_next_button_on_login_screen"
    When User click "dashboard_hamburger_icon"
    And User scroll to "pay_me_****_help_menu"
    And User check app language is "language"
    And User swipe down until found "dashboard_menu"
    And User click "dashboard_menu"

    And element with "pay_me_notification_number_new" text will be displayed
    And User click "dashboard_notification_icon"
    And User click "notification_decline_button"
    And User click "pay_me_pop_up_decline_button"
    And User click "notification_back_button"
    And element with "pay_me_notification_number_decline" text will be displayed

#########################################################################################################
#       Test Data                 : - Login as Account 12 email and password as Sender
#                                   - There is contact as Account 1
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @uidatabound
  Scenario:JENI612-C68267-Check info of **** Account of PayMe show correct under All section bar
    Given User can access pay me menu with "pay_me_cif"
    And element with "pay_me_fullname" text will be displayed
    And element with "pay_me_valid_cashtag" text will be displayed

#########################################################################################################
#       Test Data                 : - Login as Account 12 email and password as Sender
#                                   - Sender as Account 1
#       Created By                : Novi
#       Expected Result           :
#########################################################################################################
  @android @uidatabound
  Scenario:JENI628-C45275-Check Character counter will count down when input chars in Notes field
    Given User can access pay me menu with "pay_me_cif"
    And User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_valid_cashtag"
    And User click "pay_me_add_button"
    And User click "pay_me_send_destination_textfield" 
    And User fill "pay_me_note_textfield" with "pay_me_note" 
    Then User expect "pay_me_countdown_text_amount" equal with "pay_me_note_number"

  @android @uidatabound
  Scenario:JENI627-C45272-Check "Send Request" button will be disable when Amount field is empty or 0 at Amount screen
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_****_recipient_user_email"
    And User click "pay_me_add_button"
    And User click "pay_me_send_destination_textfield"
    When User fill "pay_me_amount_textfield" with "pay_me_amount"
    And User fill "pay_me_note_textfield" with "pay_me_note"
    Then User expect "pay_me_countdown_text_amount" equal with "pay_me_note_number"
    And User click "pay_me_send_request_button"
    Then User expect "pay_me_send_request_button" is exist

  @android @uidatabound
  Scenario:JENI627-C47379-Check Max length of number in Amount field
    Given User can access pay me menu with "pay_me_cif"
    When User click "pay_me_input_manually_button"
    And User fill "pay_me_input_textfield" with "pay_me_****_recipient_user_email"
    And User click "pay_me_add_button"
    And User click "pay_me_send_destination_textfield"
    When User fill "pay_me_amount_textfield" with "pay_me_input_amount_more_than_max"
    And User expect "pay_me_amount_textfield" is exist
    Then User expect "pay_me_amount_textfield" equal with "pay_me_input_amount_max_number"

  @android @ios @uispecific
  Scenario:JENI647-C70257-Check invalid phone number with begin as 8
    Given User can access pay me menu with "pay_me_cif"
    And User click "pay_me_input_manually_button"
    When User fill "pay_me_input_textfield" with "phone_number_without_area_code"
    And User click "pay_me_add_button"
    Then "pay_me_add_button" will be displayed

  @android @ios @uispecific
  Scenario:JENI624-C84304-Check Notification panel is empty
    Given User is on dashboard page in English language with "pay_me_cif"
    When User click "payme_bell_icon"
    Then User expect "split_bill_decline_button" doesn't exist

  @android @ios @uispecific
  Scenario:JENI624-C81449-Check Layout of Notification Panel show correctly
    Given User is on dashboard page in English language with "pay_me_cif"
    When User click "payme_bell_icon"
    Then "notification_profile_picture" will be displayed
    And "notification_profile_initial" will be displayed
    And "notification_requestor_name" will be displayed
    And "notification_notes" will be displayed
    And "notification_decline_button" will be displayed
    And "notification_send_money_button" will be displayed
    And "notification_date" will be displayed
    And "notification_amount" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI625-C84299-[Layout] Verify Layout of Decline Confirmation pop-up show correctly as PSD
    When User click "split_bill_decline_button"
    Then "notification_notes" will be displayed
    And "notification_decline_button" will be displayed
    And "notification_cancel_button" will be displayed
    And "notification_underline_notification" will be displayed
    And "notification_popup_title" will be displayed

  @android @ios @uispecific
  Scenario: JENI5758-C116804-Scenario : see search button
    Given User can access **** contacts menu with "****_contacts_create_group"
    When User click "****_contacts_create_group_search"
    Then "****_contacts_header_search_cancel_button" will be displayed
    And User fill "****_contacts_search_bank_list" with "split_bill_contacts_label_3"
    And "****_contacts_search_bank_list" will be displayed
    And "bill_payment_header_search_cancel_button" will be displayed
    And User expect "****_contacts_search_bank_list" equal with "split_bill_contacts_label_3"

  @android @ios @uispecific @continuous
  Scenario: JENI5758-C116807-Scenario : displaying no result
    And User fill "****_contacts_search_bank_list" with "split_bill_can_not_send_to_yourself_notification"
    Then And User expect "bill_payment_text_matches_text" contains "bill_payment_text_matches"

  @android @ios @uispecific @continuous
  Scenario: JENI5758-C116806-Scenario : turn back search bar to search button
    And User click "bill_payment_header_search_cancel_button"
    And User click "****_contacts_header_search_cancel_button"
    Then "****_contacts_create_group_search" will be displayed
    