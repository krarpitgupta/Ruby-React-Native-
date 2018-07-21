@r3_inandout_full
Feature: Release 3 - IN AND OUT Module

  #[JENI-3226] Request Tab: Listing split bill requests triggered from transaction history details
  @android @uidatabound
  Scenario:JENI3226-C70506-Verify that Split bill triggered from transaction history details should be listed in Request tab
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User swipe up until found "in_and_out_history_arbiseptian"
    And User click element with text "in_and_out_history_arbi"
    And User swipe up until found "in_and_out_history_detail_splitbill_button"
    And User click "in_and_out_history_detail_splitbill_button"

    When User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_valid_email_address_2"
    And User click "split_bill_add_button"
    And User click "split_bill_done_button"
    When User fill "split_bill_input_amount_textfield" with "split_bill_me_new_amount_text"
    And User click "split_bill_send_request_button"

    When User click "dashboard_hamburger_icon"
    And User click "in_and_out_menu"
    And User click "in_and_out_request_tab"
    And User swipe up until found "in_and_out_request_splitbill_with_one"
    Then "in_and_out_request_splitbill_with_one" will be displayed

  @android @uidatabound
  Scenario:JENI3226-C70495-Verify narrative text of Split bill from transactions
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User swipe up until found "in_and_out_request_splitbill_with_one"
    And User click "in_and_out_request_splitbill_with_one"
    Then "in_and_out_request_splitbill_with_one" will be displayed

  @android @uidatabound
  Scenario:JENI3226-C70497-Verify there should be written the date the split bill request was made for Unresolved split bills
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User swipe up until found "in_and_out_request_splitbill_detail_request_date"
    Then "in_and_out_request_splitbill_detail_request_date" will be displayed

  @android @uidatabound
  Scenario:JENI3226-C70498-Verify that total amount of split bill with unresolved status should be displayed
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User swipe up until found "in_and_out_request_splitbill_detail_total_amount"
    Then "in_and_out_request_splitbill_detail_total_amount" will be displayed

  @android @uidatabound
  Scenario:JENI3226-C70500-Verify that 'date' should be replaced by 'status' once the split bill request is either 'Resolved' or 'Partially Paid'
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User swipe up until found "in_and_out_request_splitbill_status_resolved"
    Then "in_and_out_request_splitbill_status_resolved" will be displayed
    When User swipe up until found "in_and_out_request_splitbill_status_partially_paid"
    Then "in_and_out_request_splitbill_status_partially_paid" will be displayed

  @android @uidatabound
  Scenario:JENI3226-C70501-Verify that 'Total amount' of Split bill should be changed with 'REMOVE' button once the split bill request status is either 'Resolved' or 'Partially Paid'
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User swipe up until found "in_and_out_request_splitbill_status_resolved"
    Then "in_and_out_request_splitbill_delete_button" will be displayed
    When User swipe up until found "in_and_out_request_splitbill_status_partially"
    Then "in_and_out_request_splitbill_delete_button" will be displayed

  @android @uidatabound
  Scenario:JENI3226-C70518-Verify that listed split bill status should be 'Unresolved' if there's at least one request with unpaid status
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_split"
    And User swipe up until found "in_and_out_request_splitbill_with_one"
    
    When User click "in_and_out_request_splitbill_with_one"
    And User swipe up until found "in_and_out_request_splitbill_status_dropdown_first"
    And User select "in_and_out_request_splitbill_status_dropdown_first" dropdown with "in_and_out_request_splitbill_status_unpaid"
    And User click "back_button"
    Then User expect "in_and_out_request_splitbill_status_resolved" doesn't exist

  @android @uidatabound
  Scenario:JENI3226-C70502-Verify that listed split bill status should be changed to 'Paid' if all request were 'Paid'
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_split"
    And User swipe up until found "in_and_out_request_splitbill_with_one"
    
    When User click "in_and_out_request_splitbill_with_one"
    And User swipe up until found "in_and_out_request_splitbill_status_dropdown_first"
    And User select "in_and_out_request_splitbill_status_dropdown_first" dropdown with "in_and_out_request_splitbill_status_paid"
    And User click "back_button"
    Then "in_and_out_request_splitbill_status_paid" will be displayed

  @android @uidatabound
  Scenario:JENI3226-C70503-Verify that listed split bill status should be changed to 'Declined' if all request was 'Declined'
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_split"
    And User swipe up until found "in_and_out_request_splitbill_with_one"
    
    When User click "in_and_out_request_splitbill_with_one"
    And User swipe up until found "in_and_out_request_splitbill_status_dropdown_first"
    And User select "in_and_out_request_splitbill_status_dropdown_first" dropdown with "in_and_out_request_splitbill_status_declined"
    And User click "back_button"
    Then "in_and_out_request_splitbill_status_declined" will be displayed

  @android @uidatabound
  Scenario:JENI3226-C70505-Verify that listed split bill status should be changed to 'Partially Paid' if only some of the transaction status were 'Paid' while others are 'Declined' (No 'Unpaid' status)
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User swipe up until found "in_and_out_history_arbiseptian"
    And User click element with text "in_and_out_history_arbi"
    And User swipe up until found "in_and_out_history_detail_splitbill_button"
    And User click "in_and_out_history_detail_splitbill_button"

    When User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_valid_phone_number_non_****_user"
    And User click "split_bill_add_button"
    And User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_valid_email_address_2"
    And User click "split_bill_add_button"
    And User click "split_bill_done_button"
    When User fill "split_bill_input_amount_textfield" with "split_bill_me_new_amount_text"
    And User click "split_bill_send_request_button"

    When User click "dashboard_hamburger_icon"
    And User click "in_and_out_menu"
    And User click "in_and_out_request_tab"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_split"
    And User swipe up until found "in_and_out_request_splitbill_with_one"
    
    When User click "in_and_out_request_splitbill_with_one"
    And User swipe up until found "in_and_out_request_splitbill_status_dropdown_first"
    And User select "in_and_out_request_splitbill_status_dropdown_first" dropdown with "in_and_out_request_splitbill_status_paid"
    And User swipe up until found "in_and_out_request_splitbill_status_dropdown_second"
    And User select "in_and_out_request_splitbill_status_dropdown_second" dropdown with "in_and_out_request_splitbill_status_declined"
    And User click "back_button"
    Then "in_and_out_request_splitbill_status_resolved" will be displayed

  #[JENI-3231] Request Tab: MANUAL - Track split bill status from split bill details (Non-**** contributors)
  @android @uidatabound
  Scenario:JENI3231-C70603-User should be able to update split bill status manually for non-**** contributors
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User swipe up until found "in_and_out_request_splitbill_with_two"
    And User click "in_and_out_request_splitbill_with_two"
    And User swipe up until found "in_and_out_request_splitbill_status_dropdown_first"
    And User select "in_and_out_request_splitbill_status_dropdown_first" dropdown with "in_and_out_request_splitbill_status_paid"
    Then User expect "in_and_out_request_splitbill_status_dropdown_first" equal with "in_and_out_request_splitbill_status_paid"
    When User select "in_and_out_request_splitbill_status_dropdown_first" dropdown with "in_and_out_request_splitbill_status_unpaid"
    Then User expect "in_and_out_request_splitbill_status_dropdown_first" equal with "in_and_out_request_splitbill_status_unpaid"

  @android @uidatabound
  Scenario:JENI3231-C70605-Verify that default status of split bill (TH or SB) from non-**** contributors should be 'Unpaid'
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User swipe up until found "in_and_out_request_splitbill_with_two"
    And User click "in_and_out_request_splitbill_with_two"
    And User swipe up until found "in_and_out_request_splitbill_status_dropdown_first"
    Then User expect "in_and_out_request_splitbill_overall_status" equal with "in_and_out_request_splitbill_status_unpaid"
    And User expect "in_and_out_request_splitbill_status_dropdown_first" equal with "in_and_out_request_splitbill_status_unpaid"

  @android @uidatabound
  Scenario:JENI3231-C70606-Verify that user should be able to change request status to Paid
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User swipe up until found "in_and_out_request_splitbill_with_two"
    And User click "in_and_out_request_splitbill_with_two"
    And User swipe up until found "in_and_out_request_splitbill_status_dropdown_first"
    And User select "in_and_out_request_splitbill_status_dropdown_first" dropdown with "in_and_out_request_splitbill_status_paid"
    Then User expect "in_and_out_request_splitbill_status_dropdown_first" equal with "in_and_out_request_splitbill_status_paid"

  @android @uidatabound
  Scenario:JENI3231-C70607-Verify that user should be able to change request status to Declined
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User swipe up until found "in_and_out_request_splitbill_with_two"
    And User click "in_and_out_request_splitbill_with_two"
    And User swipe up until found "in_and_out_request_splitbill_status_dropdown_first"
    And User select "in_and_out_request_splitbill_status_dropdown_first" dropdown with "in_and_out_request_splitbill_status_declined"
    Then User expect "in_and_out_request_splitbill_status_dropdown_first" equal with "in_and_out_request_splitbill_status_declined"

  @android @uidatabound
  Scenario:JENI3231-C70610-Verify that user should be able to change request status to Unpaid
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User swipe up until found "in_and_out_request_splitbill_with_two"
    And User click "in_and_out_request_splitbill_with_two"
    And User swipe up until found "in_and_out_request_splitbill_status_dropdown_first"
    And User select "in_and_out_request_splitbill_status_dropdown_first" dropdown with "in_and_out_request_splitbill_status_unpaid"
    Then User expect "in_and_out_request_splitbill_status_dropdown_first" equal with "in_and_out_request_splitbill_status_unpaid"

  @android @uidatabound
  Scenario:JENI3231-C70622-Verify that changes of contributors status should affect overall split bill status (Refer to Attachment)
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User swipe up until found "in_and_out_request_splitbill_with_two"
    And User click "in_and_out_request_splitbill_with_two"
    And User swipe up until found "in_and_out_request_splitbill_status_dropdown_first"
    And User select "in_and_out_request_splitbill_status_dropdown_first" dropdown with "in_and_out_request_splitbill_status_paid"
    Then User expect "in_and_out_request_splitbill_overall_status" equal with "in_and_out_request_splitbill_status_partially"

    When User swipe up until found "in_and_out_request_splitbill_status_dropdown_second"
    And User select "in_and_out_request_splitbill_status_dropdown_second" dropdown with "in_and_out_request_splitbill_status_paid"
    Then User expect "in_and_out_request_splitbill_overall_status" equal with "in_and_out_request_splitbill_status_paid"

    When User select "in_and_out_request_splitbill_status_dropdown_first" dropdown with "in_and_out_request_splitbill_status_declined"
    Then User expect "in_and_out_request_splitbill_overall_status" equal with "in_and_out_request_splitbill_status_resolved"

    When User select "in_and_out_request_splitbill_status_dropdown_second" dropdown with "in_and_out_request_splitbill_status_declined"
    Then User expect "in_and_out_request_splitbill_overall_status" equal with "in_and_out_request_splitbill_status_declined"

    When User select "in_and_out_request_splitbill_status_dropdown_first" dropdown with "in_and_out_request_splitbill_status_unpaid"
    And User select "in_and_out_request_splitbill_status_dropdown_second" dropdown with "in_and_out_request_splitbill_status_unpaid"
    Then User expect "in_and_out_request_splitbill_overall_status" equal with "in_and_out_request_splitbill_status_unpaid"

  @android @uidatabound
  Scenario:JENI3231-C70623-Verify that Delete split bill option should be shown when the status is Paid, Declined, or Resolved
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User swipe up until found "in_and_out_request_splitbill_with_two"
    And User click "in_and_out_request_splitbill_with_two"
    And User swipe up until found "in_and_out_request_splitbill_status_dropdown_first"
    
    When User select "in_and_out_request_splitbill_status_dropdown_first" dropdown with "in_and_out_request_splitbill_status_paid"
    And User swipe up until found "in_and_out_request_splitbill_status_dropdown_second"
    And User select "in_and_out_request_splitbill_status_dropdown_second" dropdown with "in_and_out_request_splitbill_status_paid"
    When User swipe up until found "in_and_out_request_splitbill_delete_button"
    Then "in_and_out_request_splitbill_delete_button" will be displayed

    When User select "in_and_out_request_splitbill_status_dropdown_first" dropdown with "in_and_out_request_splitbill_status_declined"
    And User select "in_and_out_request_splitbill_status_dropdown_second" dropdown with "in_and_out_request_splitbill_status_declined"
    When User swipe up until found "in_and_out_request_splitbill_delete_button"
    Then "in_and_out_request_splitbill_delete_button" will be displayed

    When User select "in_and_out_request_splitbill_status_dropdown_first" dropdown with "in_and_out_request_splitbill_status_unpaid"
    And User swipe up until found "in_and_out_request_splitbill_delete_button"
    Then "in_and_out_request_splitbill_delete_button" will be displayed

    When User select "in_and_out_request_splitbill_status_dropdown_first" dropdown with "in_and_out_request_splitbill_status_unpaid"
    And User select "in_and_out_request_splitbill_status_dropdown_second" dropdown with "in_and_out_request_splitbill_status_unpaid"
    Then User expect "in_and_out_request_splitbill_delete_button" doesn't exist

  @android @uidatabound
  Scenario:JENI3231-C70624-Verify that Delete split bill option should be hidden again when user update contributors status which changed overall split bill status to other than Paid, Declined, or Resolved
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User swipe up until found "in_and_out_request_splitbill_with_two"
    And User click "in_and_out_request_splitbill_with_two"
    And User swipe up until found "in_and_out_request_splitbill_status_dropdown_first"
    
    When User select "in_and_out_request_splitbill_status_dropdown_first" dropdown with "in_and_out_request_splitbill_status_paid"
    And User swipe up until found "in_and_out_request_splitbill_status_dropdown_second"
    And User select "in_and_out_request_splitbill_status_dropdown_second" dropdown with "in_and_out_request_splitbill_status_paid"

    When User select "in_and_out_request_splitbill_status_dropdown_first" dropdown with "in_and_out_request_splitbill_status_declined"
    Then User expect "in_and_out_request_splitbill_delete_button" doesn't exist
    
    When User select "in_and_out_request_splitbill_status_dropdown_second" dropdown with "in_and_out_request_splitbill_status_declined"
    And User select "in_and_out_request_splitbill_status_dropdown_first" dropdown with "in_and_out_request_splitbill_status_unpaid"

    When User select "in_and_out_request_splitbill_status_dropdown_first" dropdown with "in_and_out_request_splitbill_status_unpaid"
    Then User expect "in_and_out_request_splitbill_delete_button" doesn't exist

    When User select "in_and_out_request_splitbill_status_dropdown_second" dropdown with "in_and_out_request_splitbill_status_unpaid"
    Then User expect "in_and_out_request_splitbill_delete_button" doesn't exist

  @android @uidatabound
  Scenario:JENI3231-C70637-Verify contributors name and initials of non-**** contributors added from contact (Mobile number)
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User swipe up until found "in_and_out_request_splitbill_with_two"
    And User click "in_and_out_request_splitbill_with_two"
    And User swipe up until found "in_and_out_request_splitbill_status_dropdown_first"
    Then "in_and_out_request_splitbill_detail_profile_picture" will be displayed

  @android @uidatabound
  Scenario:JENI3231-C70638-Verify contributors name and initials of non-**** contributors added from contact (e-mail)
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User swipe up until found "in_and_out_request_splitbill_with_two"
    And User click "in_and_out_request_splitbill_with_two"
    And User swipe up until found "in_and_out_request_splitbill_status_dropdown_first"
    Then "in_and_out_request_splitbill_detail_profile_picture" will be displayed

  @android @uidatabound
  Scenario:JENI3231-C70639-Verify contributors name and initials of non-**** contributors from manual input (Mobile number)
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User swipe up until found "in_and_out_request_splitbill_with_two"
    And User click "in_and_out_request_splitbill_with_two"
    And User swipe up until found "in_and_out_request_splitbill_status_dropdown_first"
    Then "in_and_out_request_splitbill_detail_mobile_icon" will be displayed

  @android @uidatabound
  Scenario:JENI3231-C70640-Verify contributors name and initials of non-**** contributors from manual input (e-mail)
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User swipe up until found "in_and_out_request_splitbill_with_two"
    And User click "in_and_out_request_splitbill_with_two"
    And User swipe up until found "in_and_out_request_splitbill_status_dropdown_first"
    Then "in_and_out_request_splitbill_detail_email_icon" will be displayed

  @android @uidatabound
  Scenario:JENI3231-C70641-Verify contributors detail of non-**** contributors added from contact (Mobile)
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User swipe up until found "in_and_out_request_splitbill_with_two"
    And User click "in_and_out_request_splitbill_with_two"
    And User swipe up until found "in_and_out_request_splitbill_status_dropdown_first"
    Then "in_and_out_request_splitbill_contributor_phone_number" will be displayed

  @android @uidatabound
  Scenario:JENI3231-C70642-Verify contributors detail of non-**** contributors added from contact (e-mail)
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User swipe up until found "in_and_out_request_splitbill_with_two"
    And User click "in_and_out_request_splitbill_with_two"
    And User swipe up until found "in_and_out_request_splitbill_status_dropdown_first"
    Then "in_and_out_request_splitbill_contributor_email" will be displayed

  @android @uidatabound
  Scenario:JENI3231-C70643-Verify contributors detail of non-**** contributors added manually (Mobile)
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User swipe up until found "in_and_out_request_splitbill_with_two"
    And User click "in_and_out_request_splitbill_with_two"
    And User swipe up until found "in_and_out_request_splitbill_status_dropdown_first"
    Then "in_and_out_request_splitbill_contributor_phone_number" will be displayed
    And User expect "in_and_out_request_splitbill_contributor_name" doesn't exist

  @android @uidatabound
  Scenario:JENI3231-C70644-Verify contributors detail of non-**** contributors added Manually (e-mail)
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User swipe up until found "in_and_out_request_splitbill_with_two"
    And User click "in_and_out_request_splitbill_with_two"
    And User swipe up until found "in_and_out_request_splitbill_status_dropdown_first"
    Then "in_and_out_request_splitbill_contributor_email" will be displayed
    And User expect "in_and_out_request_splitbill_contributor_name" doesn't exist

  @android @uidatabound
  Scenario:JENI3231-C70673-Verify Status Dropdown Data for Non-**** Contributor is Correct
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User swipe up until found "in_and_out_request_splitbill_with_two"
    And User click "in_and_out_request_splitbill_with_two"
    And User swipe up until found "in_and_out_request_splitbill_status_dropdown_first"
    
    When User select "in_and_out_request_splitbill_status_dropdown_first" dropdown with "in_and_out_request_splitbill_status_paid"
    Then User expect "in_and_out_request_splitbill_status_dropdown_first" equal with "in_and_out_request_splitbill_status_paid"

    When User select "in_and_out_request_splitbill_status_dropdown_first" dropdown with "in_and_out_request_splitbill_status_canceled"
    Then User expect "in_and_out_request_splitbill_status_dropdown_first" equal with "in_and_out_request_splitbill_status_canceled"

    When User select "in_and_out_request_splitbill_status_dropdown_first" dropdown with "in_and_out_request_splitbill_status_unpaid"
    Then User expect "in_and_out_request_splitbill_status_dropdown_first" equal with "in_and_out_request_splitbill_status_unpaid"

    @android @uidatabound
  Scenario:JENI3231-C75733-Verify contributors detail section: list of all contributors of the split bill
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_recipient_name_6"
    When User swipe up until found "in_and_out_request_splitbill_with_one"
    And User click "in_and_out_request_splitbill_with_one"
    And User swipe up until found "in_and_out_request_splitbill_contributor_second"
    Then "in_and_out_request_splitbill_contributor_me" will be displayed
    And "in_and_out_request_splitbill_contributor_second" will be displayed

  @android @uidatabound
  Scenario:JENI3231-C75734-Verify contributors detail section: **** contributor's basic information
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User swipe up until found "in_and_out_request_splitbill_with_two"
    And User click "in_and_out_request_splitbill_with_two"
    And User swipe up until found "in_and_out_request_splitbill_status_dropdown_first"
    Then "in_and_out_request_splitbill_cashtag" will be displayed
    And "in_and_out_request_splitbill_contributor_name" will be displayed

  @android @uidatabound
  Scenario:JENI3231-C75735-Verify contributors detail section: non **** contributor's basic information
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User swipe up until found "in_and_out_request_splitbill_with_two"
    And User click "in_and_out_request_splitbill_with_two"
    And User swipe up until found "in_and_out_request_splitbill_status_dropdown_first"
    Then "in_and_out_request_splitbill_contributor_email" will be displayed
    And "in_and_out_request_splitbill_contributor_name" will be displayed
    And "in_and_out_request_splitbill_contributor_phone_number" will be displayed

  @android @uidatabound
  Scenario:JENI3231-C75736-Verify contributors detail section: Send Reminder button available to **** contributor who haven't responded
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_recipient_name_6"
    When User swipe up until found "in_and_out_request_split_bill_request_split_three_****_unpaid"
    And User click "in_and_out_request_split_bill_request_split_three_****_unpaid"
    And User swipe up until found "in_and_out_request_splitbill_detail_send_reminder"
    Then "in_and_out_request_splitbill_detail_send_reminder" will be displayed

  @android @uidatabound
  Scenario:JENI3231-C75737-Verify contributors detail section: Send Reminder button not available to **** contributor who has responded
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User swipe up until found "in_and_out_request_splitbill_with_two"
    And User click "in_and_out_request_splitbill_with_two"
    And User swipe up until found "in_and_out_request_splitbill_detail_send_reminder"
    Then User expect "in_and_out_request_splitbill_detail_send_reminder" doesn't exist
    And "in_and_out_request_splitbill_detail_respond_date" will be displayed

  @android @uidatabound
  Scenario:JENI3231-C75885-Verify Overall split bill status (Default status = "Unpaid")
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User swipe up until found "in_and_out_request_splitbill_with_two"
    And User click "in_and_out_request_splitbill_with_two"
    And User swipe up until found "in_and_out_request_splitbill_status_dropdown_first"

    #2 Non-**** Contributor
    When User select "in_and_out_request_splitbill_status_dropdown_first" dropdown with "in_and_out_request_splitbill_status_paid"
    And User swipe up until found "in_and_out_request_splitbill_status_dropdown_second"
    And User select "in_and_out_request_splitbill_status_dropdown_second" dropdown with "in_and_out_request_splitbill_status_paid"
    Then User expect "in_and_out_request_splitbill_overall_status" equal with "in_and_out_request_splitbill_status_paid"

    When User select "in_and_out_request_splitbill_status_dropdown_first" dropdown with "in_and_out_request_splitbill_status_declined"
    And User select "in_and_out_request_splitbill_status_dropdown_second" dropdown with "in_and_out_request_splitbill_status_declined"
    Then User expect "in_and_out_request_splitbill_overall_status" equal with "in_and_out_request_splitbill_status_declined"

    When User select "in_and_out_request_splitbill_status_dropdown_first" dropdown with "in_and_out_request_splitbill_status_paid"
    Then User expect "in_and_out_request_splitbill_overall_status" equal with "in_and_out_request_splitbill_status_partially"

    When User select "in_and_out_request_splitbill_status_dropdown_first" dropdown with "in_and_out_request_splitbill_status_declined"
    Then User expect "in_and_out_request_splitbill_overall_status" equal with "in_and_out_request_splitbill_status_partially"
    #3 Non-**** Contributor
    #Add more after 2 **** Contributor and 3 **** Contributor data provided 

  @android @uidatabound
  Scenario:JENI3231-C76082-Verify Overall split bill status (Default status = "Paid")
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User swipe up until found "in_and_out_request_splitbill_with_two"
    And User click "in_and_out_request_splitbill_with_two"
    And User swipe up until found "in_and_out_request_splitbill_status_dropdown_first"

    #2 Non-**** Contributor
    When User select "in_and_out_request_splitbill_status_dropdown_first" dropdown with "in_and_out_request_splitbill_status_paid"
    And User swipe up until found "in_and_out_request_splitbill_status_dropdown_second"
    And User select "in_and_out_request_splitbill_status_dropdown_second" dropdown with "in_and_out_request_splitbill_status_paid"
    Then User expect "in_and_out_request_splitbill_overall_status" equal with "in_and_out_request_splitbill_status_unpaid"

    When User select "in_and_out_request_splitbill_status_dropdown_first" dropdown with "in_and_out_request_splitbill_status_declined"
    And User select "in_and_out_request_splitbill_status_dropdown_second" dropdown with "in_and_out_request_splitbill_status_declined"
    Then User expect "in_and_out_request_splitbill_overall_status" equal with "in_and_out_request_splitbill_status_declined"

    When User select "in_and_out_request_splitbill_status_dropdown_first" dropdown with "in_and_out_request_splitbill_status_paid"
    Then User expect "in_and_out_request_splitbill_overall_status" equal with "in_and_out_request_splitbill_status_resolved"

    When User select "in_and_out_request_splitbill_status_dropdown_second" dropdown with "in_and_out_request_splitbill_status_unpaid"
    Then User expect "in_and_out_request_splitbill_overall_status" equal with "in_and_out_request_splitbill_status_partially"

    When User select "in_and_out_request_splitbill_status_dropdown_first" dropdown with "in_and_out_request_splitbill_status_declined"
    Then User expect "in_and_out_request_splitbill_overall_status" equal with "in_and_out_request_splitbill_status_partially"
    #3 Non-**** Contributor
    #Add more after 2 **** Contributor and 3 **** Contributor data provided

  @android @uidatabound
  Scenario:JENI3231-C76083-Verify Overall split bill status (Default status = "Declined")
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User swipe up until found "in_and_out_request_splitbill_with_two"
    And User click "in_and_out_request_splitbill_with_two"
    And User swipe up until found "in_and_out_request_splitbill_status_dropdown_first"

    #2 Non-**** Contributor
    When User select "in_and_out_request_splitbill_status_dropdown_first" dropdown with "in_and_out_request_splitbill_status_unpaid"
    And User swipe up until found "in_and_out_request_splitbill_status_dropdown_second"
    And User select "in_and_out_request_splitbill_status_dropdown_second" dropdown with "in_and_out_request_splitbill_status_unpaid"
    Then User expect "in_and_out_request_splitbill_overall_status" equal with "in_and_out_request_splitbill_status_unpaid"

    When User select "in_and_out_request_splitbill_status_dropdown_first" dropdown with "in_and_out_request_splitbill_status_paid"
    And User select "in_and_out_request_splitbill_status_dropdown_second" dropdown with "in_and_out_request_splitbill_status_paid"
    Then User expect "in_and_out_request_splitbill_overall_status" equal with "in_and_out_request_splitbill_status_paid"

    When User select "in_and_out_request_splitbill_status_dropdown_second" dropdown with "in_and_out_request_splitbill_status_declined"
    Then User expect "in_and_out_request_splitbill_overall_status" equal with "in_and_out_request_splitbill_status_resolved"

    When User select "in_and_out_request_splitbill_status_dropdown_second" dropdown with "in_and_out_request_splitbill_status_unpaid"
    Then User expect "in_and_out_request_splitbill_overall_status" equal with "in_and_out_request_splitbill_status_partially"

    When User select "in_and_out_request_splitbill_status_dropdown_first" dropdown with "in_and_out_request_splitbill_status_declined"
    Then User expect "in_and_out_request_splitbill_overall_status" equal with "in_and_out_request_splitbill_status_partially"
    #3 Non-**** Contributor
    #Add more after 2 **** Contributor and 3 **** Contributor data provided

  @android @uidatabound
  Scenario:JENI3231-C76084-Verify Overall split bill status (Default status = "Resolved")
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User swipe up until found "in_and_out_request_splitbill_with_two"
    And User click "in_and_out_request_splitbill_with_two"
    And User swipe up until found "in_and_out_request_splitbill_status_dropdown_first"

    #2 Non-**** Contributor
    When User select "in_and_out_request_splitbill_status_dropdown_first" dropdown with "in_and_out_request_splitbill_status_unpaid"
    And User swipe up until found "in_and_out_request_splitbill_status_dropdown_second"
    And User select "in_and_out_request_splitbill_status_dropdown_second" dropdown with "in_and_out_request_splitbill_status_unpaid"
    Then User expect "in_and_out_request_splitbill_overall_status" equal with "in_and_out_request_splitbill_status_unpaid"

    When User select "in_and_out_request_splitbill_status_dropdown_first" dropdown with "in_and_out_request_splitbill_status_paid"
    And User select "in_and_out_request_splitbill_status_dropdown_second" dropdown with "in_and_out_request_splitbill_status_paid"
    Then User expect "in_and_out_request_splitbill_overall_status" equal with "in_and_out_request_splitbill_status_paid"

    When User select "in_and_out_request_splitbill_status_dropdown_first" dropdown with "in_and_out_request_splitbill_status_declined"
    And User select "in_and_out_request_splitbill_status_dropdown_second" dropdown with "in_and_out_request_splitbill_status_declined"
    Then User expect "in_and_out_request_splitbill_overall_status" equal with "in_and_out_request_splitbill_status_declined"

    When User select "in_and_out_request_splitbill_status_dropdown_first" dropdown with "in_and_out_request_splitbill_status_paid"
    And User select "in_and_out_request_splitbill_status_dropdown_second" dropdown with "in_and_out_request_splitbill_status_unpaid"
    Then User expect "in_and_out_request_splitbill_overall_status" equal with "in_and_out_request_splitbill_status_partially"

    When User select "in_and_out_request_splitbill_status_dropdown_first" dropdown with "in_and_out_request_splitbill_status_declined"
    Then User expect "in_and_out_request_splitbill_overall_status" equal with "in_and_out_request_splitbill_status_partially"
    #3 Non-**** Contributor
    #Add more after 2 **** Contributor and 3 **** Contributor data provided

  @android @uidatabound
  Scenario:JENI3231-C76085-Verify Overall split bill status (Default status = "Unresolved")
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User swipe up until found "in_and_out_request_splitbill_with_two"
    And User click "in_and_out_request_splitbill_with_two"
    And User swipe up until found "in_and_out_request_splitbill_status_dropdown_first"    
    #3 Non-**** Contributor
    #Add more after 2 **** Contributor and 3 **** Contributor data provided 

 #[JENI-3832] View 'Pay-Me Details Page'
  @android @uidatabound
  Scenario:JENI3832-C80559-Scenario: Mobile Native
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click element with text "in_and_out_payme_handphone"
    Then "in_and_out_request_payme_details_title" will be displayed
    When User click "back_button"
    Then "in_and_out_request_tab" will be displayed

  @android @uidatabound @continuous
  Scenario:JENI3832-C80560-Scenario: Navigate to Pay-Me Details page & content
    When User click element with text "in_and_out_payme_handphone"
    Then "in_and_out_request_payme_details_title" will be displayed
    And "in_and_out_request_payme_details_avatar" will be displayed
    And "in_and_out_request_payme_details_recipient_name" will be displayed
    And "in_and_out_request_payme_details_currency" will be displayed
    And "in_and_out_request_payme_details_amount" will be displayed   
    And "in_and_out_request_payme_details_dropdown_status" will be displayed
    And "in_and_out_request_payme_details_request_date" will be displayed
    And "in_and_out_request_payme_details_resolved_on" will be displayed
    Then element with "in_and_out_request_payme_notes" text will be displayed

  @android @uidatabound @continuous
  Scenario:JENI3832-C80564-Amount sought in Pay-Me Request
    Then "in_and_out_request_payme_details_amount" will be displayed
    And "in_and_out_request_payme_details_currency" will be displayed

  @android @uidatabound @continuous
  Scenario:JENI3832-C80566-When Note displays
    Then element with "in_and_out_request_payme_notes" text will be displayed

  @android @uidatabound @continuous
  Scenario:JENI3832-C80567-When should Request Creation date and Request Resolution date be displayed
    And "in_and_out_request_payme_details_request_date" will be displayed
    And "in_and_out_request_payme_details_resolved_on" will be displayed

    When User click "in_and_out_request_payme_details_dropdown_status"
    And User click "in_and_out_request_payme_details_status_paid"
    Then User check if today's date displayed

    When User click "in_and_out_request_payme_details_dropdown_status"
    And User click "in_and_out_request_payme_details_status_unpaid"
    Then element with "in_and_out_request_payme_details_blank_resolved_date" text will be displayed

    When User click "in_and_out_request_payme_details_dropdown_status"
    And User click "in_and_out_request_payme_details_status_declined"
    Then User check if today's date displayed

  @android @uidatabound @continuous
  Scenario:JENI3832-C80568-When should the DELETE Button be displayed
    When User click "in_and_out_request_payme_details_dropdown_status"
    And User click "in_and_out_request_payme_details_status_paid"
    Then "in_and_out_request_payme_details_delete_button" will be displayed

    When User click "in_and_out_request_payme_details_dropdown_status"
    And User click "in_and_out_request_payme_details_status_unpaid"
    Then User expect "in_and_out_request_payme_details_delete_button" doesn't exist

    When User click "in_and_out_request_payme_details_dropdown_status"
    And User click "in_and_out_request_payme_details_status_declined"
    Then "in_and_out_request_payme_details_delete_button" will be displayed

  @android @uidatabound
  Scenario:JENI3832-C80573-Scenario: [Layout] Verify translation between ID and EN
    Given User is on in and out request tab in Indonesia language with "in_and_out_dynamic"
    When User click element with text "in_and_out_payme_handphone"
    Then "in_and_out_request_payme_details_title" will be displayed
    And "in_and_out_request_payme_details_avatar" will be displayed
    And "in_and_out_request_payme_details_recipient_name" will be displayed
    And "in_and_out_request_payme_details_currency" will be displayed

    And User expect "in_and_out_request_payme_details_amount_title" equal with "in_and_out_request_payme_details_amount_title"
    And User expect "in_and_out_request_payme_details_notes_title" equal with "in_and_out_request_payme_details_notes_title"

    And "in_and_out_request_payme_details_amount" will be displayed   
    And "in_and_out_request_payme_details_dropdown_status" will be displayed
    And "in_and_out_request_payme_details_request_date" will be displayed
    And "in_and_out_request_payme_details_resolved_on" will be displayed
    Then element with "in_and_out_request_payme_notes" text will be displayed

  #[JENI-857]Pay Me - Manually update/track payment status
  @android @uidatabound
  Scenario:JENI857-C80590-Default payment status when I have not set it manually
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click element with text "in_and_out_payme_handphone"
    Then "in_and_out_request_splitbill_status_unpaid" will be displayed
    
    When User click "in_and_out_request_payme_details_dropdown_status"
    Then "in_and_out_request_splitbill_status_paid" will be displayed
    And "in_and_out_request_splitbill_status_unpaid" will be displayed
    And "in_and_out_request_splitbill_status_declined" will be displayed
    And "in_and_out_request_payme_details_select_mark" will be displayed

  @android @uidatabound
  Scenario:JENI857-C80591-the checkmark displays by default
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click element with text "in_and_out_payme_handphone"
    Then "in_and_out_request_splitbill_status_unpaid" will be displayed
    When User click "in_and_out_request_payme_details_dropdown_status"
    Then "in_and_out_request_payme_details_status_unpaid_selected_mark" will be displayed

  @android @uidatabound @continuous
  Scenario:JENI857-C80592-The checkmark will display based on the selected status option
    When User click "in_and_out_request_payme_details_status_paid"
    And User click "in_and_out_request_payme_details_dropdown_status"
    Then "in_and_out_request_payme_details_status_paid_selected_mark" will be displayed

    When User click "in_and_out_request_payme_details_status_declined"
    And User click "in_and_out_request_payme_details_dropdown_status"
    Then "in_and_out_request_payme_details_status_declined_selected_mark" will be displayed

    When User click "in_and_out_request_payme_details_status_unpaid"
    And User click "in_and_out_request_payme_details_dropdown_status"
    Then "in_and_out_request_payme_details_status_unpaid_selected_mark" will be displayed

  @android @uidatabound @continuous
  Scenario:JENI857-C80593-Set status manually to Paid/Declined
    When User click "in_and_out_request_payme_details_status_paid"
    Then "in_and_out_request_splitbill_status_paid" will be displayed
    And User check if today's date displayed
    And User click "back_button"
    Then "in_and_out_request_splitbill_status_paid" will be displayed
    And "in_and_out_request_delete_button" will be displayed

  @android @uidatabound @continuous
  Scenario:JENI857-C80594-Resetting status from Paid/Declined to 'Unpaid' again
    When User click element with text "in_and_out_payme_handphone"
    And User click "in_and_out_request_payme_details_dropdown_status"
    And User click "in_and_out_request_payme_details_status_unpaid"
    Then element with "in_and_out_request_payme_details_blank_resolved_date" text will be displayed

  #[JENI-3485] Delete a completed split bill (SB/SH) from within its details page
  @android @uidatabound
  Scenario:JENI3485-C80770-Show Confirmation Prompt, When Pressing Delete Button on SB Request with Non-**** User
    Given User is on in and out request tab in English language with "in_and_out_dynamic"    
    When User swipe up to "in_and_out_request_splitbill_with_two" text
    And User click element with text "in_and_out_request_splitbill_with_two"

    When User swipe up until found "in_and_out_request_splitbill_status_dropdown_first_non_****"
    And User click "in_and_out_request_splitbill_status_dropdown_first_non_****"
    And User click "in_and_out_request_payme_details_status_paid"

    When User swipe up until found "in_and_out_request_splitbill_status_dropdown_second_non_****"
    And User click "in_and_out_request_splitbill_status_dropdown_second_non_****"
    And User click "in_and_out_request_payme_details_status_paid"

    When User swipe up until found "in_and_out_request_splitbill_details_delete_button"
    Then "in_and_out_request_splitbill_details_delete_button" will be displayed

    When User click "in_and_out_request_splitbill_details_delete_button"
    Then "in_and_out_request_splitbill_details_confirm_delete_button" will be displayed
    And "in_and_out_request_splitbill_details_confirm_cancel_button" will be displayed

  @android @uidatabound @continuous
  Scenario:JENI3485-C80772-Click Cancel Button, when Deleting SB Request with Non-**** User
    When User click "in_and_out_request_splitbill_details_confirm_cancel_button"
    Then "in_and_out_request_splitbill_details_title" will be displayed
    And "in_and_out_request_splitbill_details_avatar" will be displayed

  @android @uidatabound @continuous
  Scenario:JENI3485-C80773-Click Confirm Button, when Deleting SB Request with Non-**** User
    When User click "in_and_out_request_splitbill_details_delete_button"
    And User click "in_and_out_request_splitbill_details_confirm_delete_button"
    Then "in_and_out_request_tab" will be displayed
    And User expect "in_and_out_request_splitbill_with_two" element not displayed

  #[JENI-3820] Delete a completed Pay Me request from within its details page
  @android @uidatabound
  Scenario:JENI3820-C80790-SHOW DELETE BUTTON FOR A RESOLVED PAY-ME REQUEST
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User swipe up to "in_and_out_request_payme_****_user" text
    And User click element with text "in_and_out_request_payme_****_user"
    Then User expect "in_and_out_request_payme_details_delete_button" doesn't exist

    When User click "back_button"
    And User swipe up to "in_and_out_request_payme_handphone" text
    And User click element with text "in_and_out_request_payme_handphone"
    Then User expect "in_and_out_request_payme_details_delete_button" doesn't exist
    #Add more after SEND IT implemented

  @android @uidatabound @continuous
  Scenario:JENI3820-C80795-Click Delete button on Non-**** only PM Detail
    When User click "back_button"
    And User swipe up to "in_and_out_request_payme_handphone" text
    And User click element with text "in_and_out_request_payme_handphone"
    And User click "in_and_out_request_payme_details_dropdown_status"
    And User click "in_and_out_request_payme_details_status_paid"
    Then "in_and_out_request_payme_details_delete_button" will be displayed

    When User click "in_and_out_request_payme_details_delete_button"
    Then "in_and_out_request_payme_details_confirm_delete_button" will be displayed
    And "in_and_out_request_payme_details_confirm_cancel_button" will be displayed

  @android @uidatabound @continuous
  Scenario:JENI3820-C80796-Click Delete button on Non-**** only PM Detail
    When User click "in_and_out_request_payme_details_confirm_cancel_button"
    Then "in_and_out_request_payme_details_title" will be displayed
    And "in_and_out_request_payme_details_avatar" will be displayed

  @android @uidatabound @continuous
  Scenario:JENI3820-C80797-Click Delete button on Non-**** only PM Detail
    When User click "in_and_out_request_payme_details_delete_button"
    And User click "in_and_out_request_payme_details_confirm_delete_button"
    Then "in_and_out_request_tab" will be displayed
    And User expect "in_and_out_request_payme_handphone" doesn't exist

  #[JENI-1651] Filter: Landing page for filter selection (No filters applied)
  @android @uidatabound
  Scenario:JENI1651-C48121-[Functional] Verify that filter selection page should be shown when a user clicks/taps on the filter icon
    Given User is on in and out page in English language with "in_and_out_static"
    And User wait "card_center_loading_screen" will be gone
    And User click "in_and_out_filter_button"
    And User click "in_and_out_filter_category"
    And User click "in_and_out_filter_category_children"
    And User click "in_and_out_filter_done"
    # And User click "in_and_out_filter_apply_button"
    Then "in_and_out_filter_screen" will be displayed
    Then User expect "in_and_out_filter_counter" equal with "in_and_out_filter_counter_one"

  @android @uidatabound
  Scenario:JENI1651-C48122-[Content] Verify Content shown should be based on language preference selected by user (English)
    Given User is on in and out page in English language with "in_and_out_static"
    And User wait "card_center_loading_screen" will be gone
    And User click "in_and_out_filter_button"
    And User click "in_and_out_filter_category"
    And User click "in_and_out_filter_category_children"
    And User click "in_and_out_filter_done"
    # And User click "in_and_out_filter_apply_button"
    Then "in_and_out_filter_screen" will be displayed
    Then User expect "in_and_out_filter_counter" equal with "in_and_out_filter_counter_one"
    Then User expect "in_and_out_filter_apply_button" equal with "in_and_out_filter_apply_filter_label"
    Then User expect "in_and_out_filter_category" equal with "in_and_out_filter_category_label"
    Then User expect "in_and_out_filter_amount_range" equal with "in_and_out_filter_amount_range_label"
    Then User expect "in_and_out_filter_time_range" equal with "in_and_out_filter_time_range_label"
    Then User expect "in_and_out_filter_transaction_type" equal with "in_and_out_filter_transaction_type_label"

  @android @uidatabound
  Scenario:JENI1651-C48123-[Content] Verify Content shown should be based on language preference selected by user (Bahasa Indonesia)
    Given User is on in and out page in Indonesia language with "in_and_out_static"
    And User wait "card_center_loading_screen" will be gone
    And User click "in_and_out_filter_button"
    And User click "in_and_out_filter_category_id"
    And User click "in_and_out_filter_category_children"
    And User click "in_and_out_filter_done_id"
    # And User click "in_and_out_filter_apply_button"
    Then "in_and_out_filter_screen" will be displayed
    Then User expect "in_and_out_filter_counter" equal with "in_and_out_filter_counter_one_id"
    Then User expect "in_and_out_filter_apply_button_id" equal with "in_and_out_filter_apply_filter_label_id"
    Then User expect "in_and_out_filter_category_id" equal with "in_and_out_filter_category_label_id"
    Then User expect "in_and_out_filter_amount_range_id" equal with "in_and_out_filter_amount_range_label_id"
    Then User expect "in_and_out_filter_time_range_id" equal with "in_and_out_filter_time_range_label_id"

  # Find issue in the step: the disable 'Apply Filter' button still clickable
  @android @ios @uispecific 
  Scenario:JENI1651-C48124-[Functional] Verify 'Apply Filter' button at the bottom should be disabled when no filter is applied 
    Given User is on in and out page in English language with "in_and_out_static"
    And User click "in_and_out_filter_button"
    And User click "in_and_out_filter_apply_button"
    Then "in_and_out_filter_screen" will be displayed
    And "in_and_out_filter_counter" will be displayed
    And "in_and_out_filter_apply_button" will be displayed
    And "in_and_out_category_menu" will be displayed
    And "in_and_out_amount_menu" will be displayed
    And "in_and_out_time_menu" will be displayed
    And "in_and_out_transaction_menu" will be displayed

  @android @ios @uispecific
  Scenario:JENI1651-C48125-[Content] Verify There must be 4 filter options listed 
    Given User is on in and out page in English language with "in_and_out_static"
    And User click "in_and_out_filter_button"
    Then "in_and_out_category_menu" will be displayed
    And "in_and_out_amount_menu" will be displayed
    And "in_and_out_time_menu" will be displayed
    And "in_and_out_transaction_menu" will be displayed

  @android @ios @uispecific
  Scenario:JENI1651-C48126-[Functionality] Verify there must be a 'Reset' button shown in inactive state when user has not selected any options 
    Given User is on in and out page in English language with "in_and_out_static"
    And User wait "card_center_loading_screen" will be gone
    And User click "in_and_out_filter_button"
    # Still not find a way to assert the disable/inactive 'Reset' button in the screen yet

  @android @uidatabound
  Scenario:JENI1651-C48127-[Functionality] Verify that 'Reset' button shown should be in active state when user has selected at least 1 of 4 filters  
    Given User is on in and out page in English language with "in_and_out_static"
    And User wait "card_center_loading_screen" will be gone
    And User click "in_and_out_filter_button"  
    And User click "in_and_out_filter_category"
    And User click "in_and_out_filter_category_children"
    And User click "in_and_out_filter_done"
    # Assert the Reset button is active by check it's function. Will erase the category selected number information in the screen
    Then "in_and_out_filter_select_one_category" will be displayed
    And User click "in_and_out_filter_reset"
    Then User expect "in_and_out_filter_counter" equal with "in_and_out_filter_counter_zero"
    Then User expect "in_and_out_filter_select_one_category" doesn't exist

  @android @uidatabound
  Scenario:JENI1651-C48128-[Functional] Verify there should be an indicator for how many filters are currently active
    Given User is on in and out page in English language with "in_and_out_static"
    And User wait "card_center_loading_screen" will be gone
    And User click "in_and_out_filter_button"  
    And User click "in_and_out_filter_category"
    And User click "in_and_out_filter_category_children"
    And User click "in_and_out_filter_done"
    Then User expect "in_and_out_filter_counter" equal with "in_and_out_filter_counter_one"

  @android @uidatabound
  Scenario:JENI1651-C48333-[Functional] Verify that the number being shown in active filter counter is equal to how many filters that are currently active 
    Given User is on in and out page in English language with "in_and_out_static"
    And User wait "card_center_loading_screen" will be gone
    And User click "in_and_out_filter_button"  
    # select first filter
    And User click "in_and_out_filter_category"
    And User click "in_and_out_filter_category_children"
    And User click "in_and_out_filter_done"
    # select second filter
    And User click "in_and_out_filter_transaction_type"
    And User click "in_and_out_filter_transaction_type_bank_charge"
    And User click "in_and_out_filter_done"
    # assert total selected filter number
    Then User expect "in_and_out_filter_counter" equal with "in_and_out_filter_counter_two"

  @android @ios @uispecific
  Scenario:JENI1651-C48129-[Functional] Verify the default state for active filter counter should be 0
    Given User is on in and out page in English language with "in_and_out_static"
    And User wait "card_center_loading_screen" will be gone
    And User click "in_and_out_filter_button"  
    Then User expect "in_and_out_filter_counter" equal with "in_and_out_filter_counter_zero"
  
  @android @uidatabound
  Scenario:JENI1651-C48130-[Functional] Verify that when user click 'Reset' button all selected filter will be unselect
    Given User is on in and out page in English language with "in_and_out_static"
    And User wait "card_center_loading_screen" will be gone
    And User click "in_and_out_filter_button"  
    And User click "in_and_out_filter_category"
    And User click "in_and_out_filter_category_children"
    And User click "in_and_out_filter_done"
    And User click "in_and_out_filter_transaction_type"
    And User click "in_and_out_filter_transaction_type_bank_charge"
    And User click "in_and_out_filter_done"
    # assert that filter counter is displayed in each selected filter
    Then "in_and_out_filter_select_one_category" will be displayed
    Then "in_and_out_filter_select_one_type" will be displayed
    # click reset button
    And User click "in_and_out_filter_reset"
    # assert that all selected filter is cleared
    Then User expect "in_and_out_filter_select_one_category" doesn't exist
    Then User expect "in_and_out_filter_select_one_type" doesn't exist
  
  @android @uidatabound
  Scenario:JENI1651-C48131-[Functional] Verify that when user click 'Reset' button, Active filter indicator should show 0 
    Given User is on in and out page in English language with "in_and_out_static"
    And User wait "card_center_loading_screen" will be gone
    And User click "in_and_out_filter_button"  
    And User click "in_and_out_filter_category"
    And User click "in_and_out_filter_category_children"
    And User click "in_and_out_filter_done"
    And User click "in_and_out_filter_transaction_type"
    And User click "in_and_out_filter_transaction_type_bank_charge"
    And User click "in_and_out_filter_done"
    Then User expect "in_and_out_filter_counter" equal with "in_and_out_filter_counter_two"
    # click reset button
    And User click "in_and_out_filter_reset"
    # assert that filter counter is zero
    Then User expect "in_and_out_filter_counter" equal with "in_and_out_filter_counter_zero"
  
  @android @ios @uispecific
  Scenario:JENI1651-C48212-[Functional] Verify that back button should redirect user to In & Out landing page
    Given User is on in and out page in English language with "in_and_out_static"
    And User wait "card_center_loading_screen" will be gone
    And User click "in_and_out_filter_button"  
    And User click "back_button"
    #  assert that in out landing page is displayed
    Then "in_and_out_page" will be displayed

  #[JENI-1372] History: Empty state when no transactions made
  @android @ios @uidatabound
  Scenario:JENI1372-C48329-[Functionality] User should be shown the empty state message when there are no transactions in History tab 
    Given User is on in and out page in English language with "in_and_out_static"
    And User check and click "tutorial_close" if exist
    Then "in_and_out_history_empty_image" will be displayed
    And User expect "in_and_out_history_empty_message" equal with "in_and_out_history_empty_message"

  @android @ios @uidatabound
  Scenario:JENI1372-C48330-[Content] User should be shown the empty state message in English/Bahasa based on their language preference  
    Given User is on in and out page in English language with "in_and_out_static"
    And User check and click "tutorial_close" if exist
    Then "in_and_out_history_empty_image" will be displayed
    And User expect "in_and_out_history_empty_message" equal with "in_and_out_history_empty_message"
    When User change language to "language_id"
    And User click "dashboard_hamburger_icon"
    And User click "in_and_out_menu"
    And User expect "in_and_out_history_empty_message" equal with "in_and_out_history_empty_message_id"

  @android @ios @databound
  Scenario:JENI1372-C48331-[Functionality] If there is at least 1 transaction in the History tab, the empty state message should not be shown  
    Given User is on in and out page in English language with "in_and_out_static"
    And User check and click "tutorial_close" if exist
    Then "in_and_out_history_number_transaction_label" will be displayed

  #[JENI-1652] Filters: Reset all filters
  @android @uidatabound
  Scenario:JENI1652-C48295-[Functionality] Verify that all filter selection should be unselected when user tap 'Reset' button
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User check and click "tutorial_close" if exist
    When User click "in_and_out_filter_button"
    And User set filter for amount range from 111 to 1111111
    # And User set filter for transaction type to all
    Then "in_and_out_transaction_filter" will be displayed

    When User click "in_and_out_reset_button"
    Then User expect "in_and_out_amount_filter" doesn't exist
    And User expect "in_and_out_category_filter" doesn't exist
    And User expect "in_and_out_time_filter" doesn't exist
    And User expect "in_and_out_transaction_filter" doesn't exist

  @android @uidatabound @continuous
  Scenario:JENI1652-C48297-[Functionality] Verify that Active filter indicator should be reset to 0 when user click 'Reset' button
    Then "in_and_out_number_active_filter_0" will be displayed

  @android @uidatabound @continuous
  Scenario:JENI1652-C48298-[Functionality] Verify that 'Apply Filter' button should be inactive again once user click reset button
    When User click "in_and_out_apply_filter_button"
    Then "in_and_out_transaction_menu" will be displayed

  @android @uidatabound @continuous
  Scenario:JENI1652-C70291-[Functionality] Keep user on the filters detail after resetting the filter
    And User set filter for amount range from 111 to 1111111
    When User click "in_and_out_reset_button"
    Then User expect "in_and_out_amount_filter" doesn't exist
    And "in_and_out_number_active_filter_0" will be displayed

  @android @uidatabound
  Scenario:JENI1652-C70292-[Functionality] Search result before using filter and after resetting filter should be equal
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User check and click "tutorial_close" if exist
    And User click "in_and_out_request_tab"
    Then "in_and_out_history_number_transaction_label" will be displayed

    When User click "in_and_out_filter_button"
    And User set filter for amount range from 1000000000 to 1000000001
    When User click "in_and_out_apply_filter_button"
    Then "in_and_out_request_empty_state_message" will be displayed
    When User click "in_and_out_filter_button"
    And User click "in_and_out_reset_button"
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_history_number_transaction_label" will be displayed

  @android @uidatabound
  Scenario:JENI1652-C70293-[Functionality] Search result before using filter and after resetting filter should be equal
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User check and click "tutorial_close" if exist
    And User click "in_and_out_request_tab"
    Then "in_and_out_history_number_transaction_label" will be displayed
    
    When User click "in_and_out_filter_button"
    And User set filter for amount range from 1000000000 to 1000000001
    When User click "in_and_out_apply_filter_button"
    Then "in_and_out_request_empty_state_message" will be displayed
    When User click "in_and_out_filter_button"
    And User click "in_and_out_reset_button"
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_history_number_transaction_label" will be displayed

  @android @uidatabound
  Scenario:JENI1652-C70346-[Functionality] Filtering using Time Range, then reset the filter
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User check and click "tutorial_close" if exist
    And User click "in_and_out_request_tab"
    Then "in_and_out_history_number_transaction_label" will be displayed
    
    When User click "in_and_out_filter_button"
    And User set filter for time range to this week
    When User click "in_and_out_apply_filter_button"
    Then "in_and_out_request_empty_state_message" will be displayed
    When User click "in_and_out_filter_button"
    And User click "in_and_out_reset_button"
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_history_number_transaction_label" will be displayed

  @android @uidatabound
  Scenario:JENI1652-C70349-[Functionality] Using the Search function, apply Amount filtering, and then reset the filter
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User check and click "tutorial_close" if exist
    And User click "in_and_out_request_tab"
    Then "in_and_out_history_number_transaction_label" will be displayed
    
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_test"
    Then "in_and_out_transaction_show_three_result" will be displayed

    When User click "in_and_out_filter_button"
    And User set filter for amount range from 1000000000 to 1000000001
    When User click "in_and_out_apply_filter_button"
    Then "in_and_out_request_no_matches" will be displayed
    When User click "in_and_out_filter_button"
    And User click "in_and_out_reset_button"
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_history_number_transaction_label" will be displayed

  @android @uidatabound
  Scenario:JENI1652-C70350-[Functionality] Using the Search function, apply Time Range filtering, and then reset the filter
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User check and click "tutorial_close" if exist
    And User click "in_and_out_request_tab"
    Then "in_and_out_history_number_transaction_label" will be displayed
    
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_test"
    Then "in_and_out_transaction_show_three_result" will be displayed
    
    When User click "in_and_out_filter_button"
    And User set filter for time range to last seven days
    When User click "in_and_out_apply_filter_button"
    Then "in_and_out_request_no_matches" will be displayed
    When User click "in_and_out_filter_button"
    And User click "in_and_out_reset_button"
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_history_number_transaction_label" will be displayed

  #[JENI-1650] Filter: Show # of filters applied
  @android @ios @uispecific
  Scenario:JENI1650-C48293-[Functionality] Verify when the number being shown is equal to numbers of filters applied
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User check and click "tutorial_close" if exist
    When User click "in_and_out_filter_button"
    And User set filter for amount range from 111 to 1111111
    And User set filter for time range to this week
    Then "in_and_out_number_active_filter_2" will be displayed
  
  @android @ios @uispecific
  Scenario:JENI1650-C48294-When user applies 0 filter, there should be no numbers shown
    Given User is on in and out page in English language with "in_and_out_static"
    And User check and click "tutorial_close" if exist
    And User click "in_and_out_filter_button"
    Then "in_and_out_number_active_filter_0" will be displayed

  #[JENI-2141] Time Range & Amount Range filter for Requests
  @android @uispecific @ios
  Scenario:JENI2141-C70301-Clicking 'APPLY FILTER' button when 'Amount Range' filter is applied
    Given User is on in and out page in English language with "in_and_out_static"
    When User click "in_and_out_request_tab"
    And User click "in_and_out_filter_button"
    And User set filter for amount range from 100000 to 1000
    Then "in_and_out_amount_from_texfield" will be displayed
    And "in_and_out_amount_to_texfield" will be displayed
  
  @android @uispecific @R3_2 @R3_3 @ios
  #JENI2117-C69689-Verify 'Custom' filter: If 'From' date selected is equal/older than 'To' date
  Scenario:JENI2141-C70306-Verify 'Custom' filter: If 'From' date selected is equal/older than 'To' date
    Given User is on in and out page in English language with "in_and_out_static"
    When User click "in_and_out_request_tab"
    And User click "in_and_out_filter_button"
    And User click "in_and_out_time_menu"
    And User select "in_and_out_to_date" days from today in "filter_time_range_input_to_date" date picker
    And User select "in_and_out_to_date" days from today in "filter_time_range_input_from_date" date picker
    And User click "in_and_out_filter_done"
    Then "in_and_out_filter_screen" will be displayed
    And User click "in_and_out_time_menu"
    And User select "in_and_out_next_month" days from today in "filter_time_range_input_to_date" date picker
    And User click "in_and_out_filter_done"
    Then "in_and_out_filter_screen" will be displayed

  @android @uispecific @R3_2 @R3_3 @ios
  #JENI2117-C69690-Verify 'Apply filter' button: User should be taken back to the Transactions Tab of 'In & Out'
  Scenario:JENI2141-C70307-Verify 'Apply filter' button: User should be taken back to the Transactions Tab of 'In & Out'
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_request_tab"
    And User click "in_and_out_filter_button"
    And User set filter for time range to this month
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_request_tab" will be displayed

  @android @uidatabound @R3_2 @R3_3 @ios
  # JENI2117-C69691-Verify 'Apply filter' button: Transactions list should be revised based on applied Time Range filter
  Scenario:JENI2141-C70308-Verify 'Apply filter' button: Transactions list should be revised based on applied Time Range filter
    Given User is on in and out page in English language with "in_and_out_credential"
    When User click "in_and_out_request_tab"
    And User click "in_and_out_filter_button"
    And User set filter for time range to this month
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_request_empty_image" will be displayed
    And "in_and_out_request_empty_message" will be displayed
    #Add more expectation after the data provided

  @android @uidatabound @R3_2 @ios
  # JENI2117-C69692-Verify 'Apply filter' button: If there exist other filters that have been applied, then the transaction list should get added on for filtration
  Scenario:JENI2141-C70309-Verify 'Apply filter' button: If there exist other filters that have been applied, then the transaction list should get added on for filtration
    Given User is on in and out page in English language with "in_and_out_credential"
    When User click "in_and_out_request_tab"
    And User click "in_and_out_filter_button"
    And User set filter for category to all
    And User set filter for time range to this week
    Then "in_and_out_number_active_filter_2" will be displayed
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_upcoming_tab" will be displayed
    And "in_and_out_request_empty_image" will be displayed
    And "in_and_out_request_empty_message" will be displayed
    #Add more expectation after the data provided
  
  @android @uidatabound
  Scenario:JENI2141-C70310-Verify 'Apply filter' button: If a search has been performed then the transaction result should get further narrowed down with the applied Time Range filter
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_request_tab"
    And User click "in_and_out_filter_button"
    And User set filter for time range to this week
    Then "in_and_out_number_active_filter_1" will be displayed
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_request_tab" will be displayed
    And "in_and_out_request_empty_image" will be displayed
    And "in_and_out_request_empty_message" will be displayed
    #Will update later. Add more expectation after the data provided
  
  @android @uispecific @ios @R3_2 @R3_3 
  # JENI2117-C69695-Verify time range filter for 'This week': user should be taken back to the 
  Scenario:JENI2141-C70311-Verify time range filter for 'This week': user should be taken back to the Transactions Tab of 'In & Out' landing page 
    Given User is on in and out page in English language with "in_and_out_static"
    When User click "in_and_out_request_tab"
    And User click "in_and_out_filter_button"
    And User set filter for time range to this week
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_request_tab" will be displayed
  
  @android @uidatabound @ios @R3_2 @R3_3
  # JENI2117-C69696-Verify time range filter for 'This week': Transactions list is revised based on applied Time Range filter
  Scenario:JENI2141-C70312-Verify time range filter for 'This week': Transactions list is revised based on applied Time Range filter
    Given User is on in and out page in English language with "in_and_out_credential"
    When User click "in_and_out_request_tab"
    And User click "in_and_out_filter_button"
    And User set filter for time range to this week
    And User click "in_and_out_apply_filter_button"
    And User wait 5 seconds
    Then "in_and_out_request_empty_image" will be displayed
    Then "in_and_out_request_empty_message" will be displayed
    # Wait for week data. Add more expectation after the data provided
  
  @android @uidatabound @R3_1 
  Scenario:JENI2141-C70313-Verify time range filter for 'This week': Only transactions between Monday 00:00hrs of the current week and current date/time are shown
    Given User is on in and out page in English language with "in_and_out_credential"
    When User click "in_and_out_request_tab"
    And User click "in_and_out_filter_button"
    And User set filter for time range to this week
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_request_empty_image" will be displayed
    And "in_and_out_request_empty_message" will be displayed
    #Wait for data transactions between Monday 00:00hrs of the current week and current date/time are shown. Add more expectation after the data provided
  
  @android @uidatabound
  Scenario:JENI2141-C70314-Verify time range filter for 'This week': If there exist other filters that have been applied, then the transaction list should get added on for filtration
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_request_tab"
    And User click "in_and_out_filter_button"
    And User set filter for category to all
    And User set filter for time range to this week
    Then "in_and_out_number_active_filter_2" will be displayed
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_request_empty_image" will be displayed
    And "in_and_out_request_empty_message" will be displayed
    #Wait for data. Add more expectation after the data provided
  
  @android @uidatabound
  Scenario:JENI2141-C70315-Verify time range filter for 'This week': If a search has been performed then the transaction result should get further narrowed down with the applied Time Range filter
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_request_tab"
    And User click "in_and_out_filter_button"
    And User set filter for time range to this week
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_request_empty_image" will be displayed
    And "in_and_out_request_empty_message" will be displayed
    #Wait for week data. Add more expectation after the data provided
  
  @android @uidatabound
  Scenario:JENI2141-C70316-Verify time range filter for 'This week': If a search has been performed & other filter(s) have been already applied, the applied time range filter should further narrow down the transaction list
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_request_tab"
    And User click "in_and_out_filter_button"
    And User set filter for time range to this week
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_request_empty_image" will be displayed
    And "in_and_out_request_empty_message" will be displayed
    #Wait for week data. Add more expectation after the data provided
  
  @android @uispecific @ios
  Scenario:JENI2141-C70317-Verify time range filter for 'This month': User should be taken back to the Transactions Tab of 'In & Out' landing page 
    Given User is on in and out page in English language with "in_and_out_static"
    When User click "in_and_out_request_tab"
    And User click "in_and_out_filter_button"
    And User set filter for time range to this month
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_request_tab" will be displayed
  
  @android @uidatabound
  Scenario:JENI2141-C70318-Verify time range filter for 'This month': Transactions list is revised based on applied Time Range filter
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_request_tab"
    And User click "in_and_out_filter_button"
    And User set filter for time range to this month
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_request_empty_image" will be displayed
    And "in_and_out_request_empty_message" will be displayed
    #Wait for month data. Add more expectation after the data provided
  
  @android @uidatabound
  Scenario:JENI2141-C70319-Verify time range filter for 'This month': Only transactions made between current date and 1st day of current month (00:00hrs) are shown
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_request_tab"
    And User click "in_and_out_filter_button"
    And User set filter for time range to this month
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_request_empty_image" will be displayed
    And "in_and_out_request_empty_message" will be displayed
    #Wait for transactions made between current date and 1st day of current month (00:00hrs) are shown. Add more expectation after the data provided
  
  @android @uidatabound
  Scenario:JENI2141-C70320-Verify time range filter for 'This month': If there exist other filters that have been applied, then the transaction list should get added on for filtration
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_request_tab"
    And User click "in_and_out_filter_button"
    And User set filter for category to all
    And User set filter for time range to this month
    Then "in_and_out_number_active_filter_2" will be displayed
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_request_tab" will be displayed
    And "in_and_out_request_empty_image" will be displayed
    And "in_and_out_request_empty_message" will be displayed
    #Add more expectation after the data provided
  
  @android @uidatabound
  Scenario:JENI2141-C70321-Verify time range filter for 'This month': If a search has been performed then the transaction result should get further narrowed down with the applied Time Range filter
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_request_tab"
    And User click "in_and_out_filter_button"
    And User set filter for time range to this month
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_request_empty_image" will be displayed
    And "in_and_out_request_empty_message" will be displayed
    #Wait for month data. Add more expectation after the data provided
  
  @android @uidatabound
  Scenario:JENI2141-C70322-Verify time range filter for 'This month': If a search has been performed & other filter(s) have been already applied, the applied time range filter should further narrow down the transaction list
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_request_tab"
    And User click "in_and_out_filter_button"
    And User set filter for category to all
    And User set filter for time range to this month
    Then "in_and_out_number_active_filter_2" will be displayed
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_request_tab" will be displayed
    And "in_and_out_request_empty_image" will be displayed
    And "in_and_out_request_empty_message" will be displayed
    #Add more expectation after the data provided
  
  @android @uispecific @ios
  Scenario:JENI2141-C70323-Verify time range filter for 'This year': User should be taken back to the Transactions Tab of 'In & Out' landing page 
    Given User is on in and out page in English language with "in_and_out_static"
    When User click "in_and_out_request_tab"
    And User click "in_and_out_filter_button"
    And User set filter for time range to this year
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_request_tab" will be displayed
  
  @android @uidatabound
  Scenario:JENI2141-C70324-Verify time range filter for 'This year': Transactions list is revised based on applied Time Range filter
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_request_tab"
    And User click "in_and_out_filter_button"
    And User set filter for time range to this year
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_request_empty_image" will be displayed
    And "in_and_out_request_empty_message" will be displayed
    #Wait for year data. Add more expectation after the data provided
  
  @android @uidatabound
  Scenario:JENI2141-C70325-Verify time range filter for 'This year': Only transactions made between current date and 1st Jan of current year (00:00hrs) are shown
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_request_tab"
    And User click "in_and_out_filter_button"
    And User set filter for time range to this year
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_request_empty_image" will be displayed
    And "in_and_out_request_empty_message" will be displayed
    #Wait for transactions made between current date and 1st Jan of current year (00:00hrs) are shown. Add more expectation after the data provided
  
  @android @uidatabound
  Scenario:JENI2141-C70326-Verify time range filter for 'This year': If there exist other filters that have been applied, then the transaction list should get added on for filtration
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_request_tab"
    And User click "in_and_out_filter_button"
    And User set filter for category to all
    And User set filter for time range to this year
    Then "in_and_out_number_active_filter_2" will be displayed
    When User click "in_and_out_apply_filter_button"
    Then "in_and_out_request_empty_image" will be displayed
    And "in_and_out_request_empty_message" will be displayed
    #Add more expectation after the data provided
  
  @android @uidatabound
  Scenario:JENI2141-C70327-Verify time range filter for 'This year': If a search has been performed then the transaction result should get further narrowed down with the applied Time Range filter
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_request_tab"
    And User click "in_and_out_filter_button"
    And User set filter for time range to this year
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_request_empty_image" will be displayed
    And "in_and_out_request_empty_message" will be displayed
    #Add more expectation after the data provided
    #Wait for year data. Add more expectation after the data provided
  
  @android @uidatabound
  Scenario:JENI2141-C70328-Verify time range filter for 'This year': If a search has been performed & other filter(s) have been already applied, the applied time range filter should further narrow down the transaction list
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_request_tab"
    And User click "in_and_out_filter_button"
    And User set filter for category to all
    And User set filter for time range to this year
    Then "in_and_out_number_active_filter_2" will be displayed
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_request_tab" will be displayed
    And "in_and_out_request_empty_image" will be displayed
    And "in_and_out_request_empty_message" will be displayed
    #Add more expectation after the data provided
  
  @android @uispecific @ios
  Scenario:JENI2141-C70329-Verify time range filter for 'Last 7 days': User should be taken back to the Transactions Tab of 'In & Out' landing page 
    Given User is on in and out page in English language with "in_and_out_static"
    When User click "in_and_out_request_tab"
    And User click "in_and_out_filter_button"
    And User set filter for time range to last seven days
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_request_tab" will be displayed
  
  @android @uidatabound
  Scenario:JENI2141-C70330-Verify time range filter for 'Last 7 days': Transactions list is revised based on applied Time Range filter
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_request_tab"
    And User click "in_and_out_filter_button"
    And User set filter for time range to last seven days
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_request_empty_image" will be displayed
    And "in_and_out_request_empty_message" will be displayed
    #Wait for year data. Add more expectation after the data provided
  
  @android @uidatabound
  Scenario:JENI2141-C70331-Verify time range filter for 'Last 7 days': Only transactions made between current date and previous 7 days are shown
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_request_tab"
    And User click "in_and_out_filter_button"
    And User set filter for time range to last seven days
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_request_empty_image" will be displayed
    And "in_and_out_request_empty_message" will be displayed
    #Wait for transactions made between current date and previous 7 days are shown. Add more expectation after the data provided
  
  @android @uidatabound
  Scenario:JENI2141-C70332-Verify time range filter for 'Last 7 days': If there exist other filters that have been applied, then the transaction list should get added on for filtration
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_request_tab"
    And User click "in_and_out_filter_button"
    And User set filter for category to all
    And User set filter for time range to last seven days
    Then "in_and_out_number_active_filter_2" will be displayed
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_request_tab" will be displayed
    And "in_and_out_request_empty_image" will be displayed
    And "in_and_out_request_empty_message" will be displayed
    #Add more expectation after the data provided
  
  @android @uidatabound
  Scenario:JENI2141-C70333-Verify time range filter for 'Last 7 days': If a search has been performed then the transaction result should get further narrowed down with the applied Time Range filter
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_request_tab"
    And User click "in_and_out_filter_button"
    And User set filter for time range to last seven days
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_request_empty_image" will be displayed
    And "in_and_out_request_empty_message" will be displayed
    #Wait for year data. Add more expectation after the data provided
  
  @android @uidatabound
  Scenario:JENI2141-C70334-Verify time range filter for 'Last 7 days': If a search has been performed & other filter(s) have been already applied, the applied time range filter should further narrow down the transaction list
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_request_tab"
    And User click "in_and_out_filter_button"
    And User set filter for category to all
    And User set filter for time range to last seven days
    Then "in_and_out_number_active_filter_2" will be displayed
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_request_tab" will be displayed
    And "in_and_out_request_empty_image" will be displayed
    And "in_and_out_request_empty_message" will be displayed
    #Add more expectation after the data provided

  @android @ios @uispecific
  Scenario:JENI2141-C70335-Verify time range filter for 'Last 30 days': User should be taken back to the Transactions Tab of 'In & Out' landing page 
    Given User is on in and out page in English language with "in_and_out_static"
    When User click "in_and_out_request_tab"
    And User click "in_and_out_filter_button"
    And User set filter for time range to last thirty days
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_request_tab" will be displayed
  
  @android @uidatabound
  Scenario:JENI2141-C70336-Verify time range filter for 'Last 30 days': Transactions list is revised based on applied Time Range filter
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_request_tab"
    And User click "in_and_out_filter_button"
    And User set filter for time range to last thirty days
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_request_empty_image" will be displayed
    And "in_and_out_request_empty_message" will be displayed
    #Wait for year data. Add more expectation after the data provided
  
  @android @uidatabound
  Scenario:JENI2141-C70337-Verify time range filter for 'Last 30 days': Only transactions made between current date and previous 30 days are shown
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_request_tab"
    And User click "in_and_out_filter_button"
    And User set filter for time range to last thirty days
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_request_empty_image" will be displayed
    And "in_and_out_request_empty_message" will be displayed
    #Wait for transactions made between current date and previous 7 days are shown. Add more expectation after the data provided
  
  @android @uidatabound
  Scenario:JENI2141-C70338-Verify time range filter for 'Last 30 days': If there exist other filters that have been applied, then the transaction list should get added on for filtration
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_request_tab"
    And User click "in_and_out_filter_button"
    And User set filter for category to all
    And User set filter for time range to last thirty days
    Then "in_and_out_number_active_filter_2" will be displayed
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_request_tab" will be displayed
    And "in_and_out_request_empty_image" will be displayed
    And "in_and_out_request_empty_message" will be displayed
    #Add more expectation after the data provided
  
  @android @uidatabound
  Scenario:JENI2141-C70339-Verify time range filter for 'Last 30 days': If a search has been performed then the transaction result should get further narrowed down with the applied Time Range filter
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_request_tab"
    And User click "in_and_out_filter_button"
    And User set filter for time range to last thirty days
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_request_empty_image" will be displayed
    And "in_and_out_request_empty_message" will be displayed
    #Wait for year data. Add more expectation after the data provided
  
  @android @uidatabound
  Scenario:JENI2141-C70340-Verify time range filter for 'Last 30 days': If a search has been performed & other filter(s) have been already applied, the applied time range filter should further narrow down the transaction list
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_request_tab"
    And User click "in_and_out_filter_button"
    And User set filter for category to all
    And User set filter for time range to last thirty days
    Then "in_and_out_number_active_filter_2" will be displayed
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_request_tab" will be displayed
    And "in_and_out_request_empty_image" will be displayed
    And "in_and_out_request_empty_message" will be displayed
    #Add more expectation after the data provided
  
  @android @ios @uispecific
  Scenario:JENI2141-C70341-Verify selected Time range filter indicator 
    Given User is on in and out page in English language with "in_and_out_static"
    When User click "in_and_out_request_tab"
    And User click "in_and_out_filter_button"
    And User set filter for time range to last thirty days
    Then "in_and_out_filter_screen" will be displayed
    Then User expect "in_and_out_filter_counter" equal with "in_and_out_filter_counter_one"

  #[JENI-1166] Requested transactions list
  @android @uidatabound
  Scenario:JENI1166-C48051-Verify Incomplete/ Open requests: Split bill request: Should display generic narrative text
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User check and click "tutorial_close" if exist
    When User click "in_and_out_request_tab"
    And User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_recipient_name_6"
    Then "in_and_out_request_splitbill_with_two" will be displayed

  @continuous @android @uidatabound
  Scenario:JENI1166-C48052-Verify Incomplete/ Open requests: Split bill request: Should show date when the split-bill request was made
    Then "in_and_out_request_date" will be displayed

  @continuous @android @uidatabound
  Scenario:JENI1166-C48053-Verify Incomplete/ Open requests: Split bill request: Should display the amount that has been requested for splitting
    Then "in_and_out_request_amount" will be displayed

  @continuous @android @uidatabound
  Scenario:JENI1166-C48049-Verify that Logo content for a split-bill request should be set to 'SB' - static text
    Then User expect "in_and_out_request_transactions_initial" equal with "in_and_out_request_split_bill_picture_initial"

  @android @uidatabound
  Scenario:JENI1166-C67384-Verify Incomplete/ Open requests: Pay Me request (sent via e-mail to **** user): Should show recipient's Full name with mobis icon as narrative
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User check and click "tutorial_close" if exist
    When User click "in_and_out_request_tab"
    And User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_recipient_first_name_5"
    Then "in_and_out_request_name" will be displayed

  @continuous @android @uidatabound
  Scenario:JENI1166-C67385-Verify Incomplete/ Open requests: Pay Me request (sent via e-mail to **** user): Should show date when the Pay Me request was made
    Then "in_and_out_request_date" will be displayed

  @continuous @android @uidatabound
  Scenario:JENI1166-C67386-Verify Incomplete/ Open requests: Pay Me request (sent via e-mail to **** user):Should display the amount that has been requested
    Then "in_and_out_request_amount" will be displayed

  @continuous @android @uidatabound
  Scenario:JENI1166-C67387-Verify Incomplete/ Open requests: Pay Me request (sent via e-mail to **** user): profile pic or initials
    Then "in_and_out_request_transactions_picture" will be displayed

  @continuous @android @uidatabound
  Scenario:JENI1166-C67395-Verify Incomplete/ Open requests: Pay Me request (sent via SMS to **** user): Should display recipient's Full name with mobis icon as narrative
    Then "in_and_out_****_icon" will be displayed 
    And User expect "in_and_out_request_name" equal with "in_and_out_search_recipient_full_name_5"

  @android @uidatabound
  Scenario:JENI1166-C67397-Verify Incomplete/ Open requests: Pay Me request (sent via SMS to **** user): Should display the amount that has been requested
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User check and click "tutorial_close" if exist
    When User click "in_and_out_request_tab"
    And User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_recipient_first_name_5"
    Then "in_and_out_request_amount" will be displayed

  @continuous @android @uidatabound
  Scenario:JENI1166-C67396-Verify Incomplete/ Open requests: Pay Me request (sent via SMS to **** user): Should show date when the request was made
    Then "in_and_out_request_date" will be displayed

  @continuous @android @ios @uidatabound
  Scenario:JENI1166-C67398-Verify Incomplete/ Open requests: Pay Me request (sent via SMS to **** user): profile pic or initials
    Then "in_and_out_request_transactions_picture" will be displayed

  @android @uidatabound
  Scenario:JENI1166-C67411-Verify Incomplete/ Open requests: Pay Me request (sent to a **** user by input manually cashtag): profile pic or initials
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User check and click "tutorial_close" if exist
    When User click "in_and_out_request_tab"
    And User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_recipient_first_name_5"
    Then "in_and_out_request_transactions_picture" will be displayed

  @continuous @android @uidatabound
  Scenario:JENI1166-C67410-Verify Incomplete/ Open requests: Pay Me request (sent to a **** user by input manually cashtag): **** user's Full name
    And User expect "in_and_out_request_name" equal with "in_and_out_search_recipient_full_name_5"

  @continuous @android @uidatabound
  Scenario:JENI1166-C67412-Verify Incomplete/ Open requests: Pay Me request (sent to a **** user by input manually cashtag): Mobis icon to indicate a **** user
    And "in_and_out_****_icon" will be displayed

  @continuous @android @uidatabound
  Scenario:JENI1166-C67413-Verify Incomplete/ Open requests: Pay Me request (sent to a **** user by input manually cashtag): Should show date when the pay-me request was made
    And "in_and_out_request_date" will be displayed

  @continuous @android @ios @uidatabound
  Scenario:JENI1166-C67414-Verify Incomplete/ Open requests: Pay Me request (sent to a **** user by input manually cashtag): Should display the amount that has been requested
    And "in_and_out_request_amount" will be displayed

  @continuous @android  @uidatabound
  Scenario:JENI1166-C67415-Verify Incomplete/ Open requests: Pay Me request (sent to a **** user by input manually cashtag): Category of request
    And User expect "in_and_out_request_category" equal with "in_and_out_request_payment_default_category"

  @android @uidatabound
  Scenario:JENI1166-C67416-Verify Completed requests: Replace the transaction amount with "REMOVE" button
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User check and click "tutorial_close" if exist
    When User click "in_and_out_request_tab"
    And User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_recipient_first_name_5"
    Then "in_and_out_request_remove_button" will be displayed
    And User expect "in_and_out_request_amount" doesn't exist

  @continuous @android @uidatabound
  Scenario:JENI1166-C67422-Verify Remove button for Completed request from within transaction list
    Then "in_and_out_request_remove_button" will be displayed

  @android @uidatabound
  Scenario:JENI1166-C67417-Verify Completed requests: Replace the date when request was made with status
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User check and click "tutorial_close" if exist
    When User click "in_and_out_request_tab"
    And User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_recipient_first_name_5"
    Then "in_and_out_request_status_value" will be displayed
    And User expect "in_and_out_request_date" doesn't exist

  @continuous @android @uidatabound
  Scenario:JENI1166-C67423-Verify transactions grouping:There should NOT be any grouping by month/year
    Then User expect "in_and_out_request_date_grouping" doesn't exist

  @android @uidatabound
  Scenario:JENI1166-C67426-Verify that Logo content for a split-bill request should be set to 'SB' - static text
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    And User check and click "tutorial_close" if exist
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_split"
    And User swipe up until found "in_and_out_request_splitbill_narrative_initial"
    Then "in_and_out_request_splitbill_narrative_initial" will be displayed

  @continuous @android @uidatabound
  Scenario:JENI1166-C67427-Verify Pay-me logo content for request made to **** user: with profile picture
    Then "in_and_out_request_transactions_picture" will be displayed

  @android @uidatabound
  Scenario:JENI1166-C67428-Verify Pay-me logo content for request made to **** user: without profile picture
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User check and click "tutorial_close" if exist
    When User click "in_and_out_request_tab"
    And User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_recipient_first_name_1"
    Then "in_and_out_request_status_value" will be displayed
    And User expect "in_and_out_request_transactions_initial" equal with "in_and_out_request_payme_contact_initial_one"

#[JENI-1153][]JENI-1905] Landing Page - Display Active Balance
  @android @uidatabound
  Scenario:JENI1153-C47763-Verify that active balance should be shown when user opens In & Out
    Given User is on in and out page in English language with "in_and_out_static"
    And User check and click "tutorial_close" if exist
    Then "in_and_out_title" will be displayed

    When User click "dashboard_hamburger_icon"
    And User click "dashboard_menu"
    And User wait 4 seconds
    And User click "dashboard_active_balance_icon"
    And User wait 4 seconds
    And User check and click "tutorial_close" if exist
    Then "in_and_out_title" will be displayed

    When User click "dashboard_hamburger_icon"
    And User click "dashboard_menu"
    And User wait 4 seconds
    And User swipe up until found "dashboard_card_center_widget"
    And User click "dashboard_view_in_and_out_widget"
    And User wait 4 seconds
    And User check and click "tutorial_close" if exist
    Then "in_and_out_title" will be displayed

  @android @uidatabound
  Scenario:JENI1153-C47765-[Functional] Verify that comma or period characters are used to indicate currency format in Bahasa/English
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe" until "in_and_out_filter_search_textfield" displayed
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_recipient_name_1"
    Then "in_and_out_result_comma" will be displayed

  @android @ios @uispecific
  Scenario:JENI1153-C47766-Verify that Rp/IDR is prefixed to the active balance to indicate currency name in Bahasa/English respectively
    Given User is on in and out page in English language with "in_and_out_static"
    And User check and click "tutorial_close" if exist
    Then "in_and_out_currency" will be displayed  

  @android @ios @uispecific
  Scenario:JENI1153-C17904-Check the arrow link on the top right of In & Out Widget
    Given User is on in and out page in English language with "in_and_out_static"
    And User check and click "tutorial_close" if exist
    Then "in_and_out_title" will be displayed

  @android @uidatabound
  Scenario:JENI1905-C67796-[Functionality] Verify Active Balance: Active Balance >0
    Given User is on dashboard page in English language with "card_center_temporarily_blocked_with_balance"
    When User check balances for "dashboard_wealth_widget_total_active_balance", "null_value", "null_value", "null_value" and "null_value"
    And User click "dashboard_active_balance_icon"
    Then User check total "in_and_out_active_balance_value" balance 
  
  @android @uidatabound
  Scenario:JENI1905-C67797-[Functionality] Verify Active Balance: Active Balance =0
    Given User is on dashboard page in English language with "save_it_no_balance_for_dream_flexi_saver"
    When User check balances for "dashboard_wealth_widget_total_active_balance", "null_value", "null_value", "null_value" and "null_value"
    And User click "dashboard_active_balance_icon"
    Then User check total "in_and_out_active_balance_value" balance

  @android @uispecific
  Scenario:JENI1904-C67798-[Functionality] Verify Active Balance: Error returns when retrieving Active Balance from API
    Given User is on in and out page in English language with "save_it_all_have_balance"
    When User turn off network connection for data and wifi
    Then User expect "dashboard_connection_loss_notification" equal with "connection_loss_notification"
    And User turn on network connection for data and wifi    

  @android @uidatabound
  Scenario:JENI1905-C67804-[Functionality] Verify Active Balance: Active Balance > 0, user account status = "Inactive"
    Given User is on dashboard page in English language with "card_center_temporarily_blocked_with_balance"
    When User check balances for "dashboard_wealth_widget_total_active_balance", "null_value", "null_value", "null_value" and "null_value"
    Then User check total "dashboard_wealth_widget_total_active_balance" balance 
  
  @android @uidatabound
  Scenario:JENI1905-C67805-[Functionality] Verify Active Balance: Active Balance > 0, user account status = "Inprogres"
    Given User is on dashboard page in English language with "card_center_temporarily_blocked_with_balance"
    When User check balances for "dashboard_wealth_widget_total_active_balance", "null_value", "null_value", "null_value" and "null_value"
    Then User check total "dashboard_wealth_widget_total_active_balance" balance 
  
  @android @uidatabound
  Scenario:JENI1905-C67806-[Functionality] Verify Active Balance: Active Balance > 0, m-Card is temporarily blocked
    Given User is on dashboard page in English language with "card_center_temporarily_blocked_with_balance"
    When User check balances for "dashboard_wealth_widget_total_active_balance", "null_value", "null_value", "null_value" and "null_value"
    Then User check total "dashboard_wealth_widget_total_active_balance" balance 
  
  @android @uidatabound
  Scenario:JENI1905-C67807-[Functionality] Verify Active Balance: Active Balance > 0, m-Card is permanent blocked, new system-generated M-Card is "Inactive"
    Given User is on dashboard page in English language with "card_center_temporarily_blocked_with_balance"
    When User check balances for "dashboard_wealth_widget_total_active_balance", "null_value", "null_value", "null_value" and "null_value"
    Then User check total "dashboard_wealth_widget_total_active_balance" balance 
  
  @android @uidatabound
  Scenario:JENI1905-C67808-[Functionality] Verify Active Balance: Active Balance > 0, m-Card is permanent blocked, new system-generated M-Card is "Active"
    Given User is on dashboard page in English language with "card_center_temporarily_blocked_with_balance"
    When User check balances for "dashboard_wealth_widget_total_active_balance", "null_value", "null_value", "null_value" and "null_value"
    Then User check "dashboard_wealth_widget_total_active_balance" balance 
    And User swipe down until found "dashboard_menu"
    And User click "dashboard_menu"
    And User wait 4 seconds

    When User swipe up until found "card_center_title"
    Then "in_and_out_title" will be displayed
    And User expect there are 3 of "dashboard_in_and_out_widget_3_most_recent"

  #[JENI-1538] Tabs for History/Upcoming/Requests and navigation between them
  @android @uidatabound
  Scenario:JENI1538-C48084-Content should be refreshed when user switches between tabs for the first time since user landed in In & Out page
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User check and click "tutorial_close" if exist
    Then "in_and_out_history_number_transaction_label" will be displayed

    When User click "in_and_out_request_tab"
    Then "in_and_out_history_number_transaction_label" will be displayed

  @android @uidatabound
  Scenario:JENI1538-C48085-Contents shoud NOT be refreshed when user switches to the tab which has been visited before
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User check and click "tutorial_close" if exist
    When User swipe up until found "in_and_out_history_cashwith_element"
    And User click "in_and_out_upcoming_tab"
    And User click "in_and_out_history_tab"
    Then "in_and_out_history_cashwith_element" will be displayed

    When User click "in_and_out_request_tab"
    And User swipe up until found "in_and_out_request_split_element"
    And User click "in_and_out_upcoming_tab"
    And User click "in_and_out_request_tab"
    Then "in_and_out_request_split_element" will be displayed

  @android @ios @uispecific
  Scenario:JENI1538-C48087-[Content] Verify the labels of tabs should be in English if user select English as language preference
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User check and click "tutorial_close" if exist
    Then User expect "in_and_out_history_tab" equal with "in_and_out_history_tab_text"
    Then User expect "in_and_out_upcoming_tab" equal with "in_and_out_upcoming_tab_text"
    Then User expect "in_and_out_request_tab" equal with "in_and_out_request_tab_text"

  @android @ios @uispecific
  Scenario:JENI1538-C48088-[Content] Verify the labels of tabs should be in Bahasa Indonesia if user select Bahasa Indonesia as language preference
    Given User is on in and out page in Indonesia language with "in_and_out_dynamic"
    And User check and click "tutorial_close" if exist
    Then User expect "in_and_out_history_tab_id" equal with "in_and_out_history_tab_text_id"
    Then User expect "in_and_out_upcoming_tab_id" equal with "in_and_out_upcoming_tab_text_id"
    Then User expect "in_and_out_request_tab_id" equal with "in_and_out_request_tab_text_id"

  #[JENI-1310]/[JENI-1622] Auto-close/open Active balance tile while scrolling to view transactions list (mobile)
  @android @uidatabound
  Scenario:JENI1310/JENI1622-C47723-History: Verify that active balance should stack up and hide when user scroll down to allow more space for transaction list
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User check and click "tutorial_close" if exist
    When User swipe up until found "in_and_out_history_cashwith_element"
    Then User expect "in_and_out_active_balance" doesn't exist

  @android @uidatabound
  Scenario:JENI1310/JENI1622-C47724-[Functionality] Upcoming: Verify that active balance should stack up and hide when user scroll down to allow more space for upcoming list
    Given User is on in and out upcoming tab in English language with "in_and_out_dynamic"
    And User check and click "tutorial_close" if exist
    When User swipe up until found "in_and_out_history_cashwith_element"
    Then User expect "in_and_out_active_balance" doesn't exist

  @android @uidatabound
  Scenario:JENI1310/JENI1622-C47725-Request: Verify that active balance should stack up and hide when user scroll down to allow more space for request list
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User check and click "tutorial_close" if exist
    When User click "in_and_out_request_tab"
    And User swipe up until found "in_and_out_request_split_element"
    Then User expect "in_and_out_active_balance" doesn't exist

  @android @uidatabound
  Scenario:JENI1310/JENI1622-C47728-History: Verify that active balance should show up again when user scroll up
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User check and click "tutorial_close" if exist
    When User swipe up until found "in_and_out_history_cashwith_element"
    Then User expect "in_and_out_active_balance" doesn't exist
    When User swipe down until found "in_and_out_active_balance"
    Then "in_and_out_active_balance" will be displayed

  @android @uidatabound
  Scenario:JENI1310/JENI1622-C47729-[Functionality] Upcoming: Verify that active balance should show up again when user scroll up
    Given User is on in and out upcoming tab in English language with "in_and_out_dynamic"
    And User check and click "tutorial_close" if exist
    When User swipe up until found "in_and_out_history_cashwith_element"
    Then User expect "in_and_out_active_balance" doesn't exist
    When User swipe down until found "in_and_out_active_balance"
    Then "in_and_out_active_balance" will be displayed

  @android @uidatabound
  Scenario:JENI1310/JENI1622-C47731-Request: Verify that active balance should show up again when user scroll up
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User check and click "tutorial_close" if exist
    When User click "in_and_out_upcoming_tab"
    And User click "in_and_out_request_tab"
    And User wait 4 seconds

    When User swipe up until found "in_and_out_request_split_element"
    Then User expect "in_and_out_active_balance" doesn't exist
    When User swipe down until found "in_and_out_active_balance"
    Then "in_and_out_active_balance" will be displayed

  #[JENI-1305] First time tutorial (FTT)    
  @android @uispecific
  Scenario:JENI1305-C109309-Displaying FTT when user has never visited In & Out before
    Given User is on dashboard page in English language with "in_and_out_dynamic"
    And User click "dashboard_hamburger_icon"
    And User click "in_and_out_menu"
    Then "in_and_out_tutorial_frame" will be displayed
    And "in_and_out_tutorial_logo" will be displayed
    And "in_and_out_tutorial_header" will be displayed
    And "in_and_out_tutorial_subtitle" will be displayed

  @android @uispecific @continuous
  Scenario:JENI1305-C109310-Navigation within tiles via 'Previous' and 'Next' buttons
    Then User expect "in_and_out_tutorial_header" equal with "in_and_out_tile_1"
    And "in_and_out_next_tutorial_button" will be displayed
    And User expect "in_and_out_prev_tutorial_button" doesn't exist
    When User click "in_and_out_next_tutorial_button"
    Then User expect "in_and_out_tutorial_header" equal with "in_and_out_tile_2"
    And "in_and_out_next_tutorial_button" will be displayed
    And "in_and_out_prev_tutorial_button" will be displayed

    When User click "in_and_out_prev_tutorial_button"
    Then User expect "in_and_out_tutorial_header" equal with "in_and_out_tile_1"
    When User click "in_and_out_next_tutorial_button"
    And User click "in_and_out_next_tutorial_button"
    Then User expect "in_and_out_tutorial_header" equal with "in_and_out_tile_3"
    And "in_and_out_next_tutorial_button" will be displayed
    And "in_and_out_prev_tutorial_button" will be displayed
    
    When User click "in_and_out_prev_tutorial_button"
    Then User expect "in_and_out_tutorial_header" equal with "in_and_out_tile_2"
    When User click "in_and_out_next_tutorial_button"
    And User click "in_and_out_next_tutorial_button"
    Then User expect "in_and_out_tutorial_header" equal with "in_and_out_tile_4"
    And User expect "in_and_out_next_tutorial_button" doesn't exist
    And "in_and_out_prev_tutorial_button" will be displayed

    When User click "in_and_out_prev_tutorial_button"
    Then User expect "in_and_out_tutorial_header" equal with "in_and_out_tile_3"

  @android @uispecific @continuous
  Scenario:JENI1305-C109311-Navigation b/w FTT tiles using swipe gesture
    When User click "in_and_out_prev_tutorial_button"
    And User click "in_and_out_prev_tutorial_button"
    Then User expect "in_and_out_tutorial_header" equal with "in_and_out_tile_1"
    When User swipe "in_and_out_tutorial_frame" to the left
    Then User expect "in_and_out_tutorial_header" equal with "in_and_out_tile_2"
    When User swipe "in_and_out_tutorial_frame" to the left
    Then User expect "in_and_out_tutorial_header" equal with "in_and_out_tile_3"
    When User swipe "in_and_out_tutorial_frame" to the left
    Then User expect "in_and_out_tutorial_header" equal with "in_and_out_tile_4"

  @android @uispecific @continuous
  Scenario:JENI1305-C109313-Closing/dismissing FTT on In & Out
    When User check and click "tutorial_close" if exist
    Then User expect "in_and_out_tutorial_frame" doesn't exist

  @android @ios @uispecific @R3_2 @R3_3
  Scenario:JENI1159/2944-C67393-[Functionality] Verify when the number being shown is equal to numbers of filters applied
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User check and click "tutorial_close" if exist
    When User click "in_and_out_filter_button"
    And User set filter for amount range from 111 to 1111111
    Then "in_and_out_filter_screen" will be displayed 
    And "in_and_out_fieldtext_comma" will be displayed
    And "in_and_out_filter_amount_range" will be displayed

  @android @uispecific @R3_2 @R3_3
  Scenario:JENI1159/2944-C67402-[Functionality] Clicking 'APPLY FILTER' button when 'Amount Range' filter is applied
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User check and click "tutorial_close" if exist
    When User click "in_and_out_filter_button"
    And User set filter for amount range from 1000 to 100000
    And User click "in_and_out_apply_filter_button"
    Then User expect all "in_and_out_history_amount" displayed, have value between "card_center_filter_amount_range_1" until "card_center_filter_amount_range_3" 
    And User expect "in_and_out_filter_bubble" equal with "in_and_out_one_value"

  @android @uispecific @R3_2 @R3_3
  Scenario:JENI2117-C69701-Verify time range filter for 'This month': User should be taken back to the Transactions Tab of 'In & Out' landing page
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User check and click "tutorial_close" if exist    
    When User click "in_and_out_filter_button"
    And User set filter for time range to this month
    When User click "in_and_out_apply_filter_button"
    Then "in_and_out_page" will be displayed

  @android @uispecific @R3_2 @R3_3
  Scenario:JENI2117-C69707-Verify time range filter for 'This year': User should be taken back to the Transactions Tab of 'In & Out' landing page
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User check and click "tutorial_close" if exist    
    When User click "in_and_out_filter_button"
    And User set filter for time range to this year
    When User click "in_and_out_apply_filter_button"
    Then "in_and_out_page" will be displayed

##################################
#Release 3.2
#Eko Adi Prabowo
#In and Out
##################################

#[JENI-2117][JENI-2944]
@android @uidatabound @ios @R3_2 @R3_3
Scenario:JENI2117/JENI2944-C69680-Verify Time range filter options and order
    Given User is on in and out upcoming tab in English language with "in_and_out_dynamic"
    And User check and click "tutorial_close" if exist
    And User click "in_and_out_filter_button"
    And User click "filter_time_range"
    And User expect "in_and_out_filter_custom" element displayed
    And User expect "in_and_out_filter_this_week" element displayed
    And User expect "in_and_out_filter_this_month" element displayed
    And User expect "in_and_out_filter_this_year" element displayed
    And User expect "in_and_out_filter_last_7_days" element displayed
    And User expect "in_and_out_filter_last_30_days" element displayed


@android @uidatabound @ios @R3_2 @R3_3
Scenario:JENI2117/JENI2944-C69681-Verify calendar selection component
    Given User is on in and out upcoming tab in English language with "in_and_out_dynamic"
    And User check and click "tutorial_close" if exist
    And User click "in_and_out_filter_button"
    And User click "filter_time_range"
    Then User expect "filter_time_range_input_from_date" is exist 


@android @uidatabound @ios @R3_2 @R3_3
Scenario:JENI2117/JENI2944-C69682-Verify there's a functional 'Clear' button
    Given User is on in and out upcoming tab in English language with "in_and_out_dynamic"
    And User check and click "tutorial_close" if exist
    And User click "in_and_out_filter_button"
    And User click "filter_time_range"
    Then User expect "filter_time_range_input_from_date" is exist 
    Then User expect "in_and_out_clear_button" is exist
    Then User click element with text "in_and_out_filter_this_month"
    And User click "in_and_out_clear_button"
    And User expect "in_and_out_request_payme_details_select_mark" doesn't exist


@android @uidatabound @ios @R3_2 @R3_3
Scenario:JENI2117/JENI2944-C69683-Verify calendar selection component
    Given User is on in and out upcoming tab in English language with "in_and_out_dynamic"
    And User check and click "tutorial_close" if exist
    And User click "in_and_out_filter_button"
    And User click "filter_time_range"
    Then User expect "in_and_out_filter_done" is exist 
    Then User click element with text "in_and_out_filter_this_month"
    And User click "in_and_out_filter_done"


@android @uidatabound  @ios @R3_2 @R3_3
Scenario:JENI2117/JENI2944-C69684-Verify there's a static text 'Select your time range'
    Given User is on in and out upcoming tab in English language with "in_and_out_dynamic"
    And User check and click "tutorial_close" if exist
    And User click "in_and_out_filter_button"
    And User click "filter_time_range"
    Then User expect "in_and_out_filter_counter" equal with "in_and_out_text_header"


@android @uidatabound @ios @R3_2 @R3_3
Scenario:JENI2117/JENI2944-C69685-Verify 'Custom' filter: Oldest 'from' or 'to' date that can be selected is 'Jan 1 2000'
    Given User is on in and out upcoming tab in English language with "in_and_out_dynamic"
    And User check and click "tutorial_close" if exist
    And User click "in_and_out_filter_button"
    And User click "filter_time_range"
    And User select "in_and_out_from_date" field and put "in_and_out_filter_day" as day "in_and_out_filter_month" as month "in_and_out_filter_year_2000" as year
    And User expect "in_and_out_result_filter_date_2000" element displayed
    And User click "in_and_out_clear_button"
    And User wait 5 seconds
    And User select "in_and_our_end_date" field and put "in_and_out_filter_day" as day "in_and_out_filter_month" as month "in_and_out_filter_year_2000" as year
    And User expect "in_and_out_result_filter_date_2000" element displayed
    And User click "in_and_out_clear_button"


@android @uidatabound @ios @R3_2 @R3_3
Scenario:JENI2117/JENI2944-C69686-Verify 'Custom' filter: Latest 'from' or 'to' date that can be selected is Jan 1 2020
    Given User is on in and out upcoming tab in English language with "in_and_out_dynamic"
    And User check and click "tutorial_close" if exist
    And User click "in_and_out_filter_button"
    And User click "filter_time_range"
    And User select "in_and_out_from_date" field and put "in_and_out_filter_day" as day "in_and_out_filter_month" as month "in_and_out_filter_year_2020" as year
    And User expect "in_and_out_result_filter_date_2020" element displayed
    And User click "in_and_out_clear_button"
    And User wait 5 seconds
    And User select "in_and_our_end_date" field and put "in_and_out_filter_day" as day "in_and_out_filter_month" as month "in_and_out_filter_year_2020" as year
    And User expect "in_and_out_result_filter_date_2020" element displayed
    And User click "in_and_out_clear_button"


@android @uidatabound @ios @R3_2 @R3_3
Scenario:JENI2117/JENI2944-C69709-Verify time range filter for 'This year': Only transactions made between current date and 1st Jan of current year (00:00hrs) are shown
    Given User is on in and out page in English language with "in_and_out_static"
    And User click "in_and_out_filter_button"
    And User click "in_and_out_time_menu"
    And User click "in_and_out_filter_time_range_this_year"
    And User click "filter_done"
    And User click "filter_apply_button"
    Then "in_and_out_history_empty_image" will be displayed
    And "in_and_out_history_empty_message" will be displayed
    # Then User expect all "in_and_out_history_date" displayed, have date value in this year


@android @uidatabound @ios @R3_2 @R3_3
Scenario:JENI2117/JENI2944-C69710-Verify time range filter for 'This year': If there exist other filters that have been applied, then the transaction list should get added on for filtration
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User click "in_and_out_filter_button"
    And User set filter for category to all
    # And User click "in_and_out_filter_button"
    And User click "filter_time_range"
    And User click "in_and_out_filter_time_range_this_year"
    And User click "filter_done"
    Then "in_and_out_number_active_filter_2" will be displayed
    And User click "filter_apply_button"
    Then "in_and_out_history_tab" will be displayed
    # Then "in_and_out_history_empty_image" will be displayed
    # And "in_and_out_history_empty_message" will be displayed
    Then User expect all "in_and_out_history_date" displayed, have date value in this year


@android @uispecific @ios @R3_2 @R3_3
Scenario:JENI2117/JENI2944-C69713-Verify time range filter for 'Last 7 days': User should be taken back to the Transactions Tab of 'In & Out' landing page 
    Given User is on in and out page in English language with "in_and_out_static"
    And User click "in_and_out_filter_button"
    And User set filter for time range to last seven days
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_history_tab" will be displayed


@android @uidatabound @ios @R3_2 @R3_3
Scenario:JENI2117/JENI2944-C69714-Verify time range filter for 'Last 7 days': Transactions list is revised based on applied Time Range filter
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User click "in_and_out_filter_button"
    And User set filter for time range to last seven days
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_history_empty_image" will be displayed
    And "in_and_out_history_empty_message" will be displayed
    # Then User expect all "in_and_out_history_date" displayed, have date value in last 7 days


@android @uidatabound @R3_2 @ios @R3_3
Scenario:JENI2117/JENI2944-C69715-Verify time range filter for 'Last 7 days': Only transactions made between current date and previous 7 days are shown
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User click "in_and_out_filter_button"
    And User set filter for time range to last seven days
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_history_empty_image" will be displayed
    And "in_and_out_history_empty_message" will be displayed
    # Then User expect all "in_and_out_history_date" displayed, have date value in last 7 days


@android @uidatabound @ios @R3_2 @R3_3
Scenario:JENI2117/JENI2944-C69716-Verify time range filter for 'Last 7 days': If there exist other filters that have been applied, then the transaction list should get added on for filtration
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User click "in_and_out_filter_button"
    And User set filter for category to all
    And User set filter for time range to last seven days
    Then "in_and_out_number_active_filter_2" will be displayed
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_history_tab" will be displayed
    And "in_and_out_history_empty_image" will be displayed
    And "in_and_out_history_empty_message" will be displayed
    # Then User expect all "in_and_out_history_date" displayed, have date value in last 7 days


@android @uispecific @ios @R3_2 @R3_3
Scenario:JENI2117/JENI2944-C69719-Verify time range filter for 'Last 30 days': User should be taken back to the Transactions Tab of 'In & Out' landing page 
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User click "in_and_out_filter_button"
    And User set filter for time range to last thirty days
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_history_tab" will be displayed


@android @uidatabound @ios @R3_2 @R3_3
Scenario:JENI2117/JENI2944-C69720-Verify time range filter for 'Last 30 days': Transactions list is revised based on applied Time Range filter
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User click "in_and_out_filter_button"
    And User set filter for time range to last thirty days
    And User click "in_and_out_apply_filter_button"
    # Then "in_and_out_history_empty_image" will be displayed
    # And "in_and_out_history_empty_message" will be displayed
    Then User expect all "in_and_out_history_date" displayed, have date value in last 30 days


@android @uidatabound @ios @R3_2 @R3_3
Scenario:JENI2117/JENI2944-C69721-Verify time range filter for 'Last 30 days': Only transactions made between current date and previous 30 days are shown
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User click "in_and_out_filter_button"
    And User set filter for time range to last thirty days
    And User click "in_and_out_apply_filter_button"
    # Then "in_and_out_history_empty_image" will be displayed
    # And "in_and_out_history_empty_message" will be displayed
    Then User expect all "in_and_out_history_date" displayed, have date value in last 30 days


@android @uispecific @ios @R3_2 @R3_3
Scenario: JENI2117/JENI2944-C69722-Verify time range filter for 'Last 30 days': If there exist other filters that have been applied, then the transaction list should get added on for filtration 
    Given User is on in and out page in English language with "card_center_e_card_transaction_history_cif"
    And User check and click "tutorial_close" if exist
    And User click "in_and_out_filter_button"
    And User click "filter_time_range"
    And User click "filter_time_range_sixth_last_thirty_days"
    And User click "filter_done"
    And User click "filter_apply_button"
    Then "in_and_our_transactions_tab" will be displayed


@android @uispecific @ios @R3_2 @R3_3
Scenario: JENI2117/JENI2944-C69725-Verify selected Time range filter indicator
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User check and click "tutorial_close" if exist
    And User click "in_and_out_filter_button"
    And User click "filter_time_range"
    And User click "filter_time_range_sixth_last_thirty_days"
    And User click "filter_done"
    Then "filter_apply_button" will be displayed

@android @uispecific @ios @R3_2 @R3_3
Scenario: JENI2117/JENI2944-C70646-[Functionality] Verify Warning Message appear when Custom Time Range is not Valid
Given User is on in and out page in English language with "in_and_out_dynamic"
    And User check and click "tutorial_close" if exist
    And User click "in_and_out_filter_button"
    And User click "filter_time_range"
    And User select "in_and_out_from_date" field and put "in_and_out_filter_day_25" as day "in_and_out_filter_month" as month "in_and_out_filter_year_2017" as year
    And User select "in_and_our_end_date" field and put "in_and_out_filter_day" as day "in_and_out_filter_month" as month "in_and_out_filter_year_2017" as year
    And User click "filter_done"
    And User check snackbar with static text "card_center_filter_time_range_starting_date_later_than_end_date_notification"


  #JENI1159 --> Update 3_3
  @android @ios @uispecific @R3_2 @R3_3
  Scenario:JENI1159-C67380-[Functionality] Verify 'DONE' button is enabled when user fill 'From' amount is less than 'To' amount
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_button"
    And User set filter for amount range from 999 to 912134566
    Then "in_and_out_filter_category" will be displayed
 
  @android @ios @uispecific @R3_2 @R3_3 
  Scenario:JENI1159-C67388-[Functionality] Verify 'DONE' button is disabled if 'From' and 'To' value are preset to the default value 0
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_button"
    And User click "in_and_out_amount_menu"
    Then User click "in_and_out_done_button" until "in_and_out_amount_from_texfield" displayed

  @android @ios @uispecific @continuous @R3_2 @R3_3
  Scenario:JENI1159-C67382-[Functionality] Verify 'DONE' button is enabled if user has cleared an existing applied amount range using 'CLEAR' button
    And User fill "in_and_out_amount_from_texfield" with "in_and_out_amount_from"
    And User fill "in_and_out_amount_to_texfield" with "in_and_out_amount_to"
    And User click "in_and_out_clear_button"
    Then User click "in_and_out_done_button" until "in_and_out_filter_category" displayed

  @android @ios @uispecific @R3_2 @R3_3 
  Scenario:JENI1159-C67403-[Functionality] Clicking back button in the header after user inputs a valid amount range should not save the changes
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_button"
    And User click "in_and_out_amount_menu"
    And User fill "in_and_out_amount_from_texfield" with "in_and_out_amount_from"
    And User fill "in_and_out_amount_to_texfield" with "in_and_out_amount_to"
    And User click "back_button"
    Then User expect "in_and_out_amount_filter_text" doesn't exist

  @android @ios @uispecific @R3_2 @R3_3
  Scenario:JENI1159-C67406-[Functionality] Verify that 'From' and 'To' fields meet the desired requirements
    Given User is on in and out page in English language with "in_and_out_dynamic"

    When User click "in_and_out_filter_button"
    And User wait 5 seconds
    And User click "in_and_out_amount_menu"
    Then User expect "in_and_out_amount_from_texfield" equal with "zero_value"
    And User expect "in_and_out_amount_to_texfield" equal with "zero_value"
    When User fill "in_and_out_amount_from_texfield" with "correct_cashtag_1"
    And User expect "in_and_out_amount_from_texfield" equal with "in_and_out_amount_range_null" 
    Then User fill "in_and_out_amount_to_texfield" with "correct_cashtag_1"
    And User expect "in_and_out_amount_to_texfield" equal with "in_and_out_amount_range_null"
    And User wait 5 seconds
    And User fill "in_and_out_amount_from_texfield" with "in_and_out_amount_max"
    And User expect "in_and_out_amount_from_texfield" equal with "in_and_out_amount_range_result"
    And User wait 5 seconds
    And User fill "in_and_out_amount_to_texfield" with "in_and_out_amount_max"
    And User expect "in_and_out_amount_from_texfield" equal with "in_and_out_amount_range_result"
    Then "in_and_out_fieldtext_comma" will be displayed
    Then User click "in_and_out_amount_from_texfield"
    And User hide the keyboard
    Then User click "in_and_out_amount_to_texfield"
    And User hide the keyboard

  @android @ios @uispecific @R3_2 @R3_3
  Scenario:JENI1159-C67408-[Functionality] Verify that 'CLEAR' button is enabled only if user input valid amount range
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_button"
    And User click "in_and_out_amount_menu"
    And User fill "in_and_out_amount_from_texfield" with "in_and_out_amount_from"
    And User fill "in_and_out_amount_to_texfield" with "in_and_out_amount_to"    
    And User click "in_and_out_clear_button"
    Then User expect "in_and_out_amount_from_texfield" equal with "in_and_out_amount_range_zero"  
    Then User expect "in_and_out_amount_to_texfield" equal with "in_and_out_amount_range_zero" 

  @android @ios @uispecific @continuous @R3_2 @R3_3
  Scenario:JENI1159-C67409-[Functionality] Clicking 'CLEAR' button should remove the added value in 'From' and 'To' fields
    Then User expect "in_and_out_amount_from_texfield" equal with "in_and_out_amount_range_zero"  
    Then User expect "in_and_out_amount_to_texfield" equal with "in_and_out_amount_range_zero" 

  @android @ios @uispecific @R3_2 @R3_3
  Scenario:JENI1159-C67420-[Functionality] Clicking 'DONE' button after user update the amount range filter to another valid amount
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_button"
    And User set filter for amount range from 111 to 1111111
    And User click "back_button"
    
    When User click "in_and_out_filter_button"
    And User click "in_and_out_amount_menu"
    And User fill "in_and_out_amount_from_texfield" with "in_and_out_amount_range_from_222"
    And User fill "in_and_out_amount_to_texfield" with "in_and_out_amount_range_to_222222222"
    Then User click "in_and_out_done_button"
    And User expect "in_and_out_amount_filter_text" equal with "in_and_out_filter_amount_range_from_222_to_222222222"

    When User click "in_and_out_amount_menu"
    And User expect "in_and_out_amount_from_texfield" equal with "in_and_out_amount_range_from_222"
    And User expect "in_and_out_amount_to_texfield" equal with "in_and_out_amount_range_to_222222222"

  @android @ios @uispecific @R3_2 @R3_3
  Scenario:JENI1159-C67438-[Functionality] Clicking back button in the header after user update the amount range filter to another valid amount
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_button"
    And User set filter for amount range from 111 to 111111111
    And User click "back_button"

    When User click "in_and_out_filter_button"
    And User click "in_and_out_amount_menu" until "in_and_out_amount_from_texfield" displayed
    And User fill "in_and_out_amount_from_texfield" with "in_and_out_amount_range_from_222"
    And User fill "in_and_out_amount_to_texfield" with "in_and_out_amount_range_to_222222222"
    When User click "back_button"

  @android @uispecific @R3_2 @R3_3
  Scenario:JENI1159-C67440-[Functionality] Remove an existing amount range filter applied
    Given User is on in and out page in English language with "in_and_out_dynamic"

    When User click "in_and_out_filter_button"
    And User wait 5 seconds
    And User click "in_and_out_amount_menu"

    When User fill "in_and_out_amount_from_texfield" with "in_and_out_amount_from"
    And User fill "in_and_out_amount_to_texfield" with "in_and_out_amount_to"    
    And User click "in_and_out_clear_button"
    And User click "in_and_out_done_button"
    Then User expect "in_and_out_number_active_filter" equal with "in_and_out_filter_counter_zero"
    And User expect "in_and_out_amount_filter_text" doesn't exist
    
    When User click "in_and_out_apply_filter_button"
    Then User expect "in_and_out_filter_bubble" doesn't exist

  #JENI1159
  @android @ios @uispecific @issue @R3_3
  Scenario:JENI1159-C70635-20 digits of number can be the input for Amount Range Filter
    Given User is on in and out page in English language with "in_and_out_static"
    When User click "in_and_out_filter_button"
    And User click "in_and_out_amount_menu"
    Then "filter_amount_range_page_title" will be displayed

    When User fill "in_and_out_amount_from_texfield" with "in_and_out_amount_max" 
    Then User expect "in_and_out_amount_from_texfield" equal with 10 characters
    When User fill "in_and_out_amount_to_texfield" with "in_and_out_amount_max" 
    Then User expect "in_and_out_amount_to_texfield" equal with 10 characters

  @android @ios @uidatabound @R3_2 @R3_3
  Scenario:JENI1159-C70645-Verify maximum search range can be handled by system
    Given User is on in and out page in English language with "in_and_out_dynamic"

    When User click "in_and_out_filter_button"
    And User wait 5 seconds
    And User click "in_and_out_amount_menu" 
    Then "filter_amount_range_page_title" will be displayed

    When User fill "in_and_out_amount_from_texfield" with "in_and_out_amount_range_zero" 
    And User fill "in_and_out_amount_to_texfield" with "in_and_out_amount_range_max"
    And User click "in_and_out_done_button"
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_history_tab" will be displayed
    #Will be added when data provided
  
# JENI-2117
@android @uispecific @R3_2 @R3_3 @ios
# JENI2117-C69687-Verify 'Custom' filter: 'From' date cannot be later than 'To' date
Scenario:JENI2117-C69688-Verify 'Custom' filter: Snack bar error notification should appear If 'From' date selected is later than 'To' date and user click 'Done'
    Given User is on in and out page in English language with "in_and_out_credential"
    When User click "in_and_out_request_tab"
    And User click "in_and_out_filter_button"
    And User click "in_and_out_time_menu"

    # And User click "filter_time_range_input_from_date"
    # And User click "filter_time_range_date_picker_ok"
    And User select "in_and_out_from_date" days from today in "filter_time_range_input_from_date" date picker

    # And User click "filter_time_range_input_to_date"
    # And User click "filter_time_range_date_picker_ok"
    And User select "in_and_out_to_date" days from today in "filter_time_range_input_to_date" date picker

    And User click "in_and_out_filter_done"
    Then element with "in_and_out_filter_time_range_starting_date_later_than_end_date_notification" text will be displayed

# JENI1653
  @android @ios @uidatabound @R3_2 @R3_3
  Scenario:JENI1653-C48032-[Functionality] Verify that the filter should show all 'n' transaction types to select form 
    Given User is on in and out page in English language with "in_and_out_static"
    And User click "in_and_out_filter_button"  
    And User click "in_and_out_transaction_menu"
    Then "in_and_out_filter_transaction_type_card_refund" will be displayed
    Then "in_and_out_filter_transaction_type_card_top_up" will be displayed
    Then "in_and_out_filter_transaction_type_incoming_transfer" will be displayed
    Then "in_and_out_filter_transaction_type_interest" will be displayed
    Then "in_and_out_filter_transaction_type_outgoing_transfer" will be displayed       
    And User swipe up until found "in_and_out_filter_transaction_type_top_up_savings_balance"
    Then "in_and_out_filter_transaction_type_principal_placement" will be displayed
    Then "in_and_out_filter_transaction_type_principal_repayment" will be displayed
    Then "in_and_out_filter_transaction_type_saving_withdrawal" will be displayed
    Then "in_and_out_filter_transaction_type_top_up_savings_balance" will be displayed

  @android @ios @uispecific @R3_2 @R3_3 
  Scenario:JENI1653-C48033-[Content] Verify there should be a static text to indicate that a user can select more than 1 transaction
    Given User is on in and out page in English language with "in_and_out_static"
    And User wait "card_center_loading_screen" will be gone
    And User check and click "tutorial_close" if exist
    And User click "in_and_out_filter_button"
    And User click "in_and_out_transaction_menu"
    Then "in_and_out_filter_select_more_than_one" will be displayed

  @android @ios @uidatabound @R3_2 @R3_3
  Scenario:JENI1653-C48034-[Functionality] Verify that 'SELECT ALL' button should select all listed transaction types 
    Given User is on in and out page in English language with "in_and_out_static"
    And User click "in_and_out_filter_button"
    And User click "in_and_out_transaction_menu"
    And User click "filter_select_all"
    And User expect there are 6 of "in_and_out_filter_selected_filter"
    And User swipe up until found "in_and_out_filter_transaction_type_top_up_savings_balance_checked"
    And User expect there are 6 of "in_and_out_filter_selected_filter"
    And User click "in_and_out_filter_done"
    Then User expect "in_and_out_filter_select_all_type" equal with "in_and_out_filter_selected_all_transaction_type"

  @android @ios @uidatabound @R3_2 @R3_3
  Scenario:JENI1653-C48040-[Functionality] If 1 or more transaction types have been selected, the landing page should indicate this number next to the filter option 'Transaction Type'
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User click "in_and_out_filter_button"
    And User click "filter_time_range"
    Then User expect "in_and_out_filter_done" is exist 
    Then User click element with text "in_and_out_filter_this_month"
    And User click "in_and_out_filter_done"

  @android @ios @uidatabound @continuous @R3_2 @R3_3 
  Scenario:JENI1653-C48038-[Functionality] Verify that Clicking 'Clear' when 1 or more listed transaction type(s) have been selected should cause them become unselected
    And User click "in_and_out_transaction_menu"    
    When User click "in_and_out_clear_button"
    Then User expect "in_and_out_selected_mark" doesn't exist

  @android @ios @uidatabound @continuous @R3_2 @R3_3 
  Scenario:JENI1650-C48047-[Functionality] Verify If all applied transaction types are unselected and changes saved by user, the 'Active filters' count should be reduced by 1
    And User wait 5 seconds
    And User click "card_center_result_card_refund_text"
    And User click "in_and_out_filter_done"
    Then "in_and_out_number_active_filter_1" will be displayed

  @android @ios @uidatabound @R3_2 @R3_3 
  Scenario:JENI1653-C48039-[Functionality] Clicking 'Done' when 1 or more transaction is selected should take the user to landing page of filters
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User click "in_and_out_filter_button"
    And User click "filter_time_range"
    Then User expect "in_and_out_filter_done" is exist 
    Then User click element with text "in_and_out_filter_this_month"
    And User click "in_and_out_filter_done"
    Then "in_and_out_transaction_menu" will be displayed

  @android @ios @uidatabound @R3_2 @R3_3 
  Scenario:JENI1653-C48046-[Functionality] Verify that Application of transaction filters should increment the 'Active filters' on landing page by 1
    Given User is on in and out page in English language with "in_and_out_static"
    And User check and click "tutorial_close" if exist
    When User click "in_and_out_filter_button"
    And User set filter for transaction type to all
    Then "in_and_out_number_active_filter_1" will be displayed

  @android @ios @uidatabound @continuous @R3_2 @R3_3 
  Scenario:JENI1653-C48042-[Functionality] Clicking 'APPLY FILTER' when 1 or more transaction type(s) have been selected should Take user back to the In & Out tab which was opened before applying transaction type filter   
    When User click "in_and_out_apply_filter_button"
    Then "in_and_out_page" will be displayed

  @android @ios @uidatabound @R3_2 @R3_3 
  Scenario:JENI1653-C48044-[Content] Content shown should be based on language preference set by user (English/Bahasa)
    Given User is on in and out page in English language with "in_and_out_static"
    And User click "in_and_out_filter_button"
    And User click "in_and_out_transaction_menu"
    Then User expect "filter_select_all" equal with "in_and_out_filter_select_all_label"
    Then User expect "in_and_out_filter_done" equal with "in_and_out_filter_done_label"
    Then User expect "in_and_out_filter_transaction_type_card_refund" equal with "in_and_out_filter_category_card_refund_label"
    Then User expect "in_and_out_filter_transaction_type_card_top_up" equal with "in_and_out_filter_category_card_top_up_label"

  @android @ios @uidatabound @R3_2 @R3_3 
  Scenario:JENI1653-C48045-[Functionality] Clicking back button should not save any changes to existing transaction type filter or selection of new filter and take user back to landing page
    Given User is on in and out page in English language with "in_and_out_static"
    When User click "in_and_out_filter_button"
    And User set filter for transaction type to all
    Then "in_and_out_number_active_filter_1" will be displayed
    And User expect "in_and_out_filter_bubble" doesn't exist
    #there is no in_and_out_filter_bubble element in new iOS build (17 Nov 2017)

  #JENI1162
  @android @uidatabound @R3_3
  Scenario:JENI1162-C70568-Verify that drop-down should be shown when user click on category
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User click "in_and_out_history_bene"
    When User swipe up until found "in_and_out_history_category_dropdown"
    And "in_and_out_history_category_dropdown" will be displayed

  @android @uidatabound @R3_3
  Scenario:JENI1162-C70572-Verify that user can view more categories using scroll inside the drop-down list
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User swipe up until found "in_and_out_history_bene"
    And User click "in_and_out_history_bene"
    When User swipe up until found "in_and_out_history_category_dropdown"
    And User select "in_and_out_history_category_dropdown" dropdown with "in_and_out_history_category_uncategorized"

  @android @uidatabound @R3_3
  Scenario:JENI1162-C70575-Verify that user can change category when transaction category had already set previously
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User swipe up until found "in_and_out_history_bene"
    And User click "in_and_out_history_bene" 
    When User swipe up until found "in_and_out_history_category_dropdown"
    And User select "in_and_out_history_category_dropdown" dropdown with "in_and_out_history_category_uncategorized"
    And User select "in_and_out_history_category_dropdown" dropdown with "in_and_out_history_category_entertaiment"
    
  @android @uidatabound @R3_3
  Scenario:JENI1162-C70577-Verify that user can set category back to 'Uncategorized'
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User swipe up until found "in_and_out_history_bene"
    And User click "in_and_out_history_bene" 
    When User swipe up until found "in_and_out_history_category_dropdown"
    And User select "in_and_out_history_category_dropdown" dropdown with "in_and_out_history_category_uncategorized"

  @android @uidatabound @R3_3
  Scenario:JENI1162-C70588-Verify there should be a green check mark to indicate which category which is being selected
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User swipe up until found "in_and_out_history_bene"
    And User click "in_and_out_history_bene"
    When User swipe up until found "in_and_out_history_category_dropdown"
    Then "in_and_out_history_category_dropdown" will be displayed
    And User click "in_and_out_history_category_dropdown" 

  @android @uidatabound @R3_3
  Scenario:JENI1162-C70585#C70674#C70586#C70579#C70582-[Functionality] Verify if successful changed, new Category of a Transaction will be visible on History tab results
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User swipe up until found "in_and_out_history_bene"
    And User click "in_and_out_history_bene" 
    When User swipe up until found "in_and_out_history_category_dropdown"
    And User select "in_and_out_history_category_dropdown" dropdown with "in_and_out_history_category_uncategorized"
    And User check snackbar with static text "in_and_out_history_category_snapbar"
    And User wait 5 seconds
    And element with "in_and_out_history_category_snapbar" text will not displayed

  @android @uispecific @R3_3
  Scenario: JENI2117/JENI2944-C70646-[Functionality] Verify Warning Message appear when Custom Time Range is not Valid
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User click "in_and_out_filter_button"
    And User click "filter_time_range"
    And User select "in_and_out_from_date" field and put "in_and_out_filter_day_25" as day "in_and_out_filter_month" as month "in_and_out_filter_year_2017" as year
    And User select "in_and_our_end_date" field and put "in_and_out_filter_day" as day "in_and_out_filter_month" as month "in_and_out_filter_year_2017" as year
    And User click "filter_done"
    And User check snackbar with static text "card_center_filter_time_range_starting_date_later_than_end_date_notification"
    And User wait 5 seconds
    And User expect "in_and_out_snap_bar_filter" doesn't exist 


  #[JENI-2074] Filters: By Category (UI only)
    @android @uidatabound @ios @R3_3
  Scenario:JENI2074-C69652-Verify there is should be a functional 'SELECT ALL' button
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User click "in_and_out_filter_button"
    And User click "in_and_out_category_menu"
    And User expect "filter_select_all" is exist
    And User click "filter_select_all"

    @android @uidatabound @ios @R3_3
  Scenario:JENI2074-C69653#C69652#C69654-Verify that Button for 'Clear' should be disabled/inactive if no category is selected
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User click "in_and_out_filter_button"
    And User click "in_and_out_category_menu"
    And User expect "filter_clear" is exist
    And User click "filter_clear"

    @android @uidatabound @ios @R3_3
    #JENI2074-C69655-Verify functionality of 'Done' button
  Scenario:JENI2074-C69655#C69656-Verify functionality of category filter counter
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User click "in_and_out_filter_button"
    And User click "in_and_out_category_menu"
    And User click "filter_select_all"
    And User click "filter_done"

    @android @uidatabound @ios @R3_3
  Scenario:JENI2074-C69657-Verify 'Apply Filter' button when 1 or more categories selected: Apply the filter on listed transactions (all tabs - history/upcoming/requests)
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User click "in_and_out_filter_button"
    And User click "in_and_out_category_menu"
    And User click "filter_select_all"
    And User click "filter_done"
    And User wait 3 seconds
    And User click "in_and_out_filter_apply_button"
    And User expect "in_and_out_history_tab" is exist
    And User expect "in_and_out_upcoming_tab" is exist
    And User expect "in_and_out_request_tab" is exist

    @android @uidatabound @ios @R3_3
  Scenario:JENI2074-C69658-Verify 'Apply Filter' button when 1 or more categories selected:Take user back to the In & Out tab which was opened before applying category filter
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User click "in_and_out_filter_button"
    And User click "in_and_out_category_menu"
    And User click "filter_select_all"
    And User click "filter_done"
    And User wait 3 seconds
    And User click "in_and_out_filter_apply_button"
    And User expect "in_and_out_history_tab" is exist

    @android @uidatabound @ios @R3_3
  Scenario:JENI2074-C69661-Verify functionality of back button
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User click "in_and_out_filter_button"
    And User click "in_and_out_category_menu"
    And User click "filter_select_all"
    And User click "back_button_icon"
    And User expect "in_and_out_filter_counter_category" doesn't exist

    @android @uidatabound @ios @R3_3
  Scenario:JENI2074-C69663-Verify functionality of 'Reset' button
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User click "in_and_out_filter_button"
    And User click "in_and_out_category_menu"
    And User click "filter_select_all"
    And User click "filter_done"
    And User wait 3 seconds
    And User click "in_and_out_reset_button"
    And User expect "in_and_out_filter_counter_category" doesn't exist 

    @android @uidatabound @ios @R3_3
  Scenario:JENI2074-C69664-Verify 'Active filter' status on In & Out landing page
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User click "in_and_out_filter_button"
    And User click "in_and_out_category_menu"
    And User click "filter_select_all"
    And User click "filter_done"
    And User wait 3 seconds
    And User click "in_and_out_filter_apply_button"
    And User expect "in_and_out_history_tab" is exist
    And User expect "in_and_out_upcoming_tab" is exist
    And User expect "in_and_out_request_tab" is exist
    
# JENI-8021 [In&Out] [History tab] [Send It] [Individual Transfer] [Immediate Transfer] Get list of Send It pending transaction on history tab
@android @uidatabound @R3_6
Scenario:JENI8021-C137457-Scenario : Space of pending transaction will be filled by succeed transaction once the status has been changed to success
    Given User is on in and out request tab in English language with "in_and_out_history"
    Then element with "in_and_out_pending_status" text will not displayed
    And "in_and_out_history_first_item" will be displayed

@android @uidatabound @R3_6
Scenario:JENI8021-C137458-Scenario : Filter transaction on history
    Given User is on in and out request tab in English language with "in_and_out_history"
    And User click "in_and_out_filter_button"
    And User click "in_and_out_transaction_menu"
    And User swipe up until found "in_and_out_transaction_incoming_transfer"
    And User click "in_and_out_transaction_incoming_transfer"
    And User click "filter_done"
    And User wait 3 seconds
    And User click "in_and_out_filter_apply_button"
    Then element with "in_and_out_pending_status" text will not displayed
    And "in_and_out_history_first_item" will be displayed

@android @uidatabound @R3_6
Scenario:JENI8021-C137460-Scenario : Search transaction on history
    Given User is on in and out request tab in English language with "in_and_out_history"
    And User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield_default" with "in_and_out_history_sender"
    And User wait 3 seconds
    Then element with "in_and_out_pending_status" text will not displayed
    And "in_and_out_history_first_item" will be displayed

@android @uidatabound @R3_6
Scenario:JENI8021-C137456-Scenario : When the status of pending transaction change to success
    Given User is on in and out request tab in English language with "in_and_out_history_incoming"
    Then element with "in_and_out_pending_status" text will not displayed
    And "in_and_out_history_first_item" will be displayed
    And User click "in_and_out_history_first_item"    
    Then User expect "in_and_out_history_detail_first_item" doesn't exist


# JENI-8671 [In&Out > History Tab > Filter] Filter Transaction Type (**** to **** Transfer Transaction)
@android @uidatabound @R3_6
# C128103-[Scenario][TC_582]Filter Transaction Type by "Incoming Transfer" for Send It - Immediate transfer
# C128104-[Scenario][TC_582]Filter Transaction Type by "Incoming Transfer" for Send It - Scheduled Transfer
# C140821-[Scenario][TC_582]Filter Transaction Type by "Incoming Transfer" for Send It - Recurring transfer
# C128105-[Scenario][TC_582]Filter Transaction Type by "Incoming Transfer" for Pay Me request
# C128106-[Scenario][TC_582]Filter Transaction Type by "Incoming Transfer" for Split Bill request
Scenario:JENI8671-C128103#C128104#C140821#C128105#C128106-[Scenario][TC_582]Filter Transaction Type by "Incoming Transfer"
    Given User is on in and out page in English language with "in_and_out_history_incoming"
    And User click "in_and_out_filter_button"
    And User click "in_and_out_transaction_menu"
    And User swipe up until found "in_and_out_transaction_incoming_transfer"
    And User click "in_and_out_transaction_incoming_transfer"
    And User click "filter_done"
    And User wait 3 seconds
    And User click "in_and_out_filter_apply_button"
    Then User expect "in_and_out_tab_history" is exist
    And element with "in_and_out_type_incoming" text will be displayed

@android @uidatabound @R3_6
# C128107-[Scenario][TC_082]Filter Transaction Type by "Outgoing Transfer" for Send It - Immediate Transfer
# C128108-[Scenario][TC_082]Filter Transaction Type by "Outgoing Transfer" for Send It - Scheduled Transfer
# C140822-[Scenario][TC_082]Filter Transaction Type by "Outgoing Transfer" for Send It - Recurring Transfer
# C128109-[Scenario[TC_082]Filter Transaction Type by "Outgoing Transfer" for Pay Me request
# C128110-[Scenario][TC_082]Filter Transaction Type by "Outgoing Transfer" for Split Bill request
Scenario:JENI8671-C128107#C128108#C140822#C128109#C128110-[Scenario][TC_582]Filter Transaction Type by "Outgoing Transfer"
    Given User is on in and out page in English language with "in_and_out_history_outgoing"
    And User click "in_and_out_filter_button"
    And User click "in_and_out_transaction_menu"
    And User swipe up until found "in_and_out_transaction_outgoing_transfer"
    And User click "in_and_out_transaction_outgoing_transfer"
    And User click "filter_done"
    And User wait 3 seconds
    And User click "in_and_out_filter_apply_button"
    Then User expect "in_and_out_tab_history" is exist
    And element with "in_and_out_type_outgoing" text will be displayed




