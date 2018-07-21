@r3_dreamsaver_flexisaver 
Feature: Release 3 - FLEXI SAVER Module

#JENI-3061
  @android @ios @uispecific
  Scenario: JENI3061-C70490-create flexi saver - side menu - active balance 0
    Given User is on flexi saver page from side menu with cif "save_it_flexi_saver_no_active_account" and language "language"
    And User click "save_it_flexi_saver_start_button"
    Then User expect "flexi_saver_active_balance_on_top_up_screen" is exist
    Then User expect "save_it_flexi_saver_first_balance_textfield" is exist
    Then User click "save_it_flexi_saver_create_submit_button"
    Then User expect "save_it_flexi_saver_start_saving_button" doesn't exist

  @android @ios @uispecific
  Scenario: JENI3061-C70490-create flexi saver - widget - active balance 0
    Given User is on flexi saver wigdet dashboard with cif "save_it_flexi_saver_no_active_account" and language "language"
    And User click "save_it_flexi_saver_start_button_widget"
    And User check and click "tutorial_close" if exist
    Then User expect "flexi_saver_active_balance_on_top_up_screen" is exist
    Then User expect "save_it_flexi_saver_first_balance_textfield" is exist
    Then User click "save_it_flexi_saver_create_submit_button"
    Then User expect "save_it_flexi_saver_start_saving_button" doesn't exist    

  @android @ios @uispecific
  Scenario: JENI3061-C70490-create flexi saver - side menu - active balance not 0
    Given User is on flexi saver page from side menu with cif "save_it_flexi_saver_no_flexi_account_2" and language "language"
    And User click "save_it_flexi_saver_start_button"
    Then User expect "flexi_saver_active_balance_on_top_up_screen" is exist
    Then User expect "save_it_flexi_saver_first_balance_textfield" is exist
    Then User click "save_it_flexi_saver_create_submit_button"
    Then User expect "save_it_flexi_saver_start_saving_button" is exist

  @android @ios @uispecific
  Scenario: JENI3061-C70490-create flexi saver - widget - active balance not 0
    Given User is on flexi saver wigdet dashboard with cif "save_it_flexi_saver_no_flexi_account_2" and language "language"
    And User click "save_it_flexi_saver_start_button_widget"
    And User check and click "tutorial_close" if exist
    Then User expect "flexi_saver_active_balance_on_top_up_screen" is exist
    Then User expect "save_it_flexi_saver_first_balance_textfield" is exist
    Then User click "save_it_flexi_saver_create_submit_button"
    Then User expect "save_it_flexi_saver_start_saving_button" doesn't exist

  @android @ios @uispecific
  Scenario: JENI3061-C70492-0 amount condition 
    Given User is on flexi saver page from side menu with cif "save_it_flexi_saver_no_flexi_account_2" and language "language"
    And User click "save_it_flexi_saver_start_button"
    Then User fill "save_it_flexi_saver_first_balance_textfield" with "save_it_flexi_saver_zero_balance"
    Then User click "save_it_flexi_saver_create_submit_button"
    Then User expect "save_it_flexi_saver_start_saving_button" doesn't exist

  @ndroid @ios @uispecific
  Scenario: JENI3061-C70507-can't exceed amount in active balance 
    Given User is on flexi saver page from side menu with cif "save_it_flexi_saver_no_flexi_account_2" and language "language"
    And User click "save_it_flexi_saver_start_button"
    And System save balance "flexi_saver_active_balance_on_top_up_screen" value
    And User fill "save_it_flexi_saver_first_balance_textfield" with value larger than balance
    Then "save_it_flexi_saver_balance_large_than_active_balance_error_message" will be displayed
    When User click "save_it_flexi_saver_create_submit_button"
    Then User expect "save_it_flexi_saver_start_saving_button" doesn't exist 
 
  @ndroid @ios @uispecific
  Scenario: JENI3061-C70508-maximum deposit allowed
    Given User is on flexi saver page from side menu with cif "save_it_flexi_saver_no_flexi_account" and language "language"
    And User click "save_it_flexi_saver_start_button"
    And User fill "save_it_flexi_saver_first_balance_textfield" with "save_it_flexi_saver_balance_more_than_max_allowed"
    Then "save_it_flexi_saver_balance_large_than_max_allowed_error_message" will be displayed
    When User click "save_it_flexi_saver_create_submit_button"
    Then User expect "save_it_flexi_saver_start_saving_button" doesn't exist   

  @ndroid @ios @uispecific
  Scenario: JENI3061-C70509-enabling next button
    Given User is on flexi saver page from side menu with cif "save_it_flexi_saver_no_flexi_account_2" and language "language"
    And User click "save_it_flexi_saver_start_button"
    And System save balance "flexi_saver_active_balance_on_top_up_screen" value
    And User fill "save_it_flexi_saver_first_balance_textfield" with active balance
    When User click "save_it_flexi_saver_create_submit_button"
    Then User expect "save_it_flexi_saver_start_saving_button" is exist 

  @ndroid @ios @uispecific
  Scenario: JENI3061-C70510-see confirmation page
    Given User is on flexi saver page from side menu with cif "save_it_flexi_saver_no_flexi_account_2" and language "language"
    And User click "save_it_flexi_saver_start_button"
    And System save balance "flexi_saver_active_balance_on_top_up_screen" value
    And User fill "save_it_flexi_saver_first_balance_textfield" with active balance
    And User click "save_it_flexi_saver_create_submit_button"
    Then User expect "save_it_flexi_saver_start_saving_button" is exist
    Then User expect "save_it_flexi_saver_input_balance" is exist

#JENI-3076
@ndroid @ios @uispecific
  Scenario: JENI3076-C75840-Never create Flexi Saver account - in-menu Widget
    Given User is on flexi saver page from side menu with cif "save_it_flexi_saver_no_flexi_account_2" and language "language"
    And User expect "save_it_flexi_saver_start_button" is exist

@android @ios @uispecific
  Scenario: JENI3076-C75842-Never create Flexi Saver account - Dashboard Widget
    Given User is on flexi saver wigdet dashboard with cif "save_it_flexi_saver_no_flexi_account" and language "language"
    And User expect "save_it_flexi_saver_start_button_widget" is exist
    
@android @ios @uispecific
  Scenario: JENI3076-C75845-Click header of Save It Dashboard Widget
    Given User is on flexi saver wigdet dashboard with cif "save_it_flexi_saver_no_flexi_account" and language "language"
    And User click "save_it_title_on_dashboard"
    And User check and click "tutorial_close" if exist
    Then User expect "save_it_title" is exist

@android @ios @uispecific
  Scenario: JENI3076-C75844-Click Dashboard Widget
    Given User is on flexi saver wigdet dashboard with cif "save_it_flexi_saver_with_flexi_account" and language "language"
    And User click "save_it_flexi_saver_widget_on_dashboard"
    Then User expect "save_it_flexi_saver_title_screen" is exist

@android @ios @uispecific
  Scenario: JENI3076-C75841-Already have Flexi Saver account - in-menu Widget
    Given User is on flexi saver page from side menu with cif "save_it_flexi_saver_with_flexi_account" and language "language"
    Then User expect "save_it_flexi_saver_current_amount_on_save_it_screen" is exist
    Then User expect "flexi_saver_view_detail_on_save_it" is exist

@android @ios @uispecific
  Scenario: JENI3076-C75843-Already have Flexi Saver account - Dashboard Widget
    Given User is on flexi saver wigdet dashboard with cif "save_it_flexi_saver_with_flexi_account" and language "language"
    And User expect "save_it_flexi_saver_current_amount_on_dashboard_screen" is exist  

@android @ios @uispecific
  Scenario: JENI3076-C80864-Click Flexi Saver account - in-menu Widget
    Given User is on flexi saver page from side menu with cif "save_it_flexi_saver_with_flexi_account" and language "language"
    Then User click "flexi_saver_view_detail_on_save_it"
    Then User expect "save_it_flexi_saver_title_screen" is exist

#JENI-3077
  @android @uidatabound
  Scenario: JENI3077-C75887-Check System lead to Flexi Saver Main Screen from Dashboard
    Given User is on flexi saver wigdet dashboard with cif "save_it_flexi_saver_with_flexi_account" and language "language"
    And User click "save_it_flexi_saver_widget_on_dashboard"
    Then User expect "save_it_flexi_saver_title_screen" is exist
    Then User expect "flexi_saver_tab_savings_text" is exist
    And User expect "flexi_saver_tab_history_text" is exist
    And User expect "flexi_saver_add_money_button" is exist
    And User expect "flexi_saver_withdrawal_button" is exist

  @android @uidatabound
  Scenario: JENI3077-C75888-Check System lead to Flexi Saver Main Screen from Save It Screen
    Given User is on flexi saver page from side menu with cif "save_it_flexi_saver_with_flexi_account" and language "language"
    Then User click "flexi_saver_view_detail_on_save_it"
    Then User expect "save_it_flexi_saver_title_screen" is exist
    #When User click "flexi_saver_start_saving_button_from_save_it"
    Then User expect "flexi_saver_tab_savings_text" is exist
    And User expect "flexi_saver_tab_history_text" is exist
    And User expect "flexi_saver_add_money_button" is exist
    And User expect "flexi_saver_withdrawal_button" is exist

#JENI-3080
  @android @uispecific
  Scenario: JENI3080-C75836-Scenario : IDN format - active balance 0
    Given User is on flexi saver page from side menu with cif "save_it_flexi_saver_no_active_account" and language "language_id"
    And User click "save_it_flexi_saver_start_button_id"
    Then User expect "save_it_flexi_saver_default_amount" equal with "save_it_flexi_saver_zero_balance"
    Then User expect "save_it_flexi_saver_currency" equal with "flexi_saver_id_currency_format"
    And User fill "save_it_flexi_saver_first_balance_textfield" with "flexi_saver_amount"
    Then User expect "flexi_saver_savings_input_amount" equal with "flexi_saver_amount_id"
    And User fill "save_it_flexi_saver_first_balance_textfield" with "flexi_saver_character"
    Then User expect "save_it_flexi_saver_default_amount" equal with "save_it_flexi_saver_zero_balance"

  @android @uispecific
  Scenario: JENI3080-C75837-Scenario : ENG format - active balance 0
    Given User is on flexi saver page from side menu with cif "save_it_flexi_saver_no_active_account" and language "language"
    And User click "save_it_flexi_saver_start_button"
    Then User expect "save_it_flexi_saver_default_amount" equal with "save_it_flexi_saver_zero_balance"
    Then User expect "save_it_flexi_saver_currency" equal with "flexi_saver_eng_currency_format"
    And User fill "save_it_flexi_saver_first_balance_textfield" with "flexi_saver_amount"
    Then User expect "flexi_saver_savings_input_amount" equal with "flexi_saver_amount_en"
    And User fill "save_it_flexi_saver_first_balance_textfield" with "flexi_saver_character"
    Then User expect "save_it_flexi_saver_default_amount" equal with "save_it_flexi_saver_zero_balance"

  @android @uispecific
  Scenario: JENI3080-C75836-Scenario : IDN format - active balance not 0
    Given User is on flexi saver page from side menu with cif "save_it_flexi_saver_no_flexi_account_2" and language "language_id"
    And User click "save_it_flexi_saver_start_button_id"
    Then User expect "save_it_flexi_saver_default_amount" equal with "save_it_flexi_saver_one_balance"
    Then User expect "save_it_flexi_saver_currency" equal with "flexi_saver_id_currency_format"
    And User fill "save_it_flexi_saver_first_balance_textfield" with "flexi_saver_amount"
    Then User expect "flexi_saver_savings_input_amount" equal with "flexi_saver_amount_id"
    And User fill "save_it_flexi_saver_first_balance_textfield" with "flexi_saver_character"
    Then User expect "save_it_flexi_saver_default_amount" equal with "save_it_flexi_saver_zero_balance"

  @android @uispecific
  Scenario: JENI3080-C75837-Scenario : ENG format - active balance not 0
    Given User is on flexi saver page from side menu with cif "save_it_flexi_saver_no_flexi_account_2" and language "language"
    And User click "save_it_flexi_saver_start_button"
    Then User expect "save_it_flexi_saver_default_amount" equal with "save_it_flexi_saver_one_balance"
    Then User expect "save_it_flexi_saver_currency" equal with "flexi_saver_eng_currency_format"
    And User fill "save_it_flexi_saver_first_balance_textfield" with "flexi_saver_amount"
    Then User expect "flexi_saver_savings_input_amount" equal with "flexi_saver_amount_en"
    And User fill "save_it_flexi_saver_first_balance_textfield" with "flexi_saver_character"
    Then User expect "save_it_flexi_saver_default_amount" equal with "save_it_flexi_saver_zero_balance"

  @android @uidatabound
  Scenario: JENI3080-C75838-Scenario : can't proceed if amount is 0
    Given User is logged in with cif "save_it_flexi_saver_cif_requestor"
    And User change language to "language"
    When User click "dashboard_hamburger_icon"
    And User click "save_it_side_menu"
    And User click "tutorial_close"
    Then User expect "save_it_title" is exist
    And User click "save_it_flexi_saver_start_button"
    Then User click "save_it_flexi_saver_create_submit_button"
    Then User expect "save_it_flexi_saver_start_screen" doesn't exist

  @android @ios @uidatabound @R3_2
  Scenario: JENI3078-C80903-scenario : successfully withdrawn money from flexi saver account
    Given User is logged in with cif "save_it_flexi_saver_cif_requestor_2"
    And User change language to "language"
    When User click "dashboard_hamburger_icon"
    And User click "save_it_side_menu"
    And User click "tutorial_close"
    And User click "save_it_flexi_saver_view_detail_button"
    And System save balance "save_it_flexi_saver_new_amount" value
    And User click "save_it_flexi_saver_withdraw_button"
    And User fill "save_it_flexi_saver_withdraw_field_amount" with "save_it_flexi_saver_withdraw_amount"
    And User click "save_it_flexi_saver_withdraw_submit_button"
    And User click "save_it_flexi_saver_withdraw_confirm_button"
    Then User check snackbar with dynamic text "save_it_flexi_saver_success_create_snack_bar"
    Then User expect "save_it_flexi_saver_new_amount" will be minus with "save_it_flexi_saver_withdraw_amount"
    And "save_it_flexi_saver_title_screen" will be displayed

  @android @ios @uidatabound @R3_2
  Scenario: JENI3078-C80897-accessing Flexi withdrawal screen
    Given User is logged in with cif "save_it_flexi_saver_cif_requestor_2"
    When User click "dashboard_hamburger_icon"
    And User click "save_it_side_menu"
    And User click "tutorial_close"
    And User click "save_it_flexi_saver_view_detail_button"
    And User click "save_it_flexi_saver_withdraw_button"
    And User expect "save_it_flexi_saver_withdraw_field_amount" is exist
    And User expect "save_it_flexi_saver_withdraw_submit_button" is exist

  @android @ios @uidatabound @R3_2
  Scenario: JENI3078-C80898-0 amount condition
    Given User is logged in with cif "save_it_flexi_saver_cif_requestor_2"
    When User click "dashboard_hamburger_icon"
    And User click "save_it_side_menu"
    And User click "tutorial_close"
    And User click "save_it_flexi_saver_view_detail_button"
    And User click "save_it_flexi_saver_withdraw_button"
    Then User expect "save_it_flexi_saver_withdraw_submit_button" is exist
    Then User expect "save_it_flexi_saver_withdraw_confirm_button" doesn't exist

  @android @ios @uidatabound @R3_2
  Scenario: JENI3078-C80899-can't exceed amount in active balance 
    Given User is logged in with cif "save_it_flexi_saver_cif_requestor_2"
    When User click "dashboard_hamburger_icon"
    And User click "save_it_side_menu"
    And User click "tutorial_close"
    And User click "save_it_flexi_saver_view_detail_button"
    And System save balance "save_it_flexi_saver_balance" value
    And User click "save_it_flexi_saver_withdraw_button"
    And User fill "save_it_flexi_saver_withdraw_field_amount" with value larger than balance
    And "save_it_flexi_saver_withdraw_large_error_message" will be displayed

  @android @ios @uidatabound @R3_2
  Scenario: JENI3078-C80900-scenario : can't withdraw money more than minimum flexi balance 1
    Given User is logged in with cif "save_it_flexi_saver_cif_requestor_2"
    And User change language to "language"
    When User click "dashboard_hamburger_icon"
    And User click "save_it_side_menu"
    And User click "tutorial_close"
    And User click "save_it_flexi_saver_view_detail_button"
    And User click "save_it_flexi_saver_withdraw_button"
    And User fill "save_it_flexi_saver_withdraw_field_amount" with "save_it_flexi_saver_withdraw_amount_two"
    And User click "save_it_flexi_saver_withdraw_submit_button"
    Then "save_it_flexi_saver_withdraw_field_amount" will be displayed

  @android @ios @uidatabound @R3_2 @continuous
  Scenario: JENI3078-C80900-scenario : can't withdraw money more than minimum flexi balance 2
    And User fill "save_it_flexi_saver_withdraw_field_amount" with "save_it_flexi_saver_withdraw_amount_three"
    And User click "save_it_flexi_saver_withdraw_submit_button"
    Then "save_it_flexi_saver_withdraw_field_amount" will be displayed
    And User expect "save_it_flexi_saver_withdraw_field_amount_underline_text" equal with "save_it_flexi_saver_withdraw_exceeds_saving_balance_notification"

  @android @ios @uidatabound @R3_2 @continuous
  Scenario: JENI3078-C80900-scenario : can't withdraw money more than minimum flexi balance 3
    And User fill "save_it_flexi_saver_withdraw_field_amount" with "save_it_flexi_saver_withdraw_amount_four"
    And User click "save_it_flexi_saver_withdraw_submit_button"
    Then "save_it_flexi_saver_withdraw_field_amount" will be displayed
    And User expect "save_it_flexi_saver_withdraw_field_amount_underline_text" equal with "save_it_flexi_saver_withdraw_below_minimum_balance_notification"

  @android @ios @uidatabound @R3_2 @continuous
  Scenario: JENI3078-C80900-scenario : can't withdraw money more than minimum flexi balance 4
    And User fill "save_it_flexi_saver_withdraw_field_amount" with "save_it_flexi_saver_withdraw_amount"
    And User click "save_it_flexi_saver_withdraw_submit_button"
    Then "save_it_flexi_saver_withdraw_confirmation_page" will be displayed

  @android @ios @uidatabound @R3_2
  Scenario: JENI3078-C118197-Scenario: Cancelling on confirmation screen (mobile version)
    Given User is logged in with cif "save_it_flexi_saver_cif_requestor_2"
    And User change language to "language"
    When User click "dashboard_hamburger_icon"
    And User click "save_it_side_menu"
    And User click "tutorial_close"
    And User click "save_it_flexi_saver_view_detail_button"
    And User click "save_it_flexi_saver_withdraw_button"
    And User fill "save_it_flexi_saver_withdraw_field_amount" with "save_it_flexi_saver_withdraw_amount"
    And User click "save_it_flexi_saver_withdraw_submit_button"
    And User click "save_it_flexi_saver_back_button"
    Then "save_it_flexi_saver_withdraw_field_amount" will be displayed
    And User expect "save_it_flexi_saver_withdraw_field_amount" equal with "save_it_flexi_saver_withdraw_amount_with_coma"

##################################
#Release 3.2
#Eko Adi Prabowo
#Flaxi saver
##################################

#JENI-3079
  @android @uidatabound @ios @R3_2
  Scenario: JENI3079-C80880-scenario : successfully add money to flexi saver account
    Given User is logged in with cif "save_it_flexi_saver_cif_requestor"
    And User change language to "language"
    When User click "dashboard_hamburger_icon"
    And User click "save_it_side_menu"
    And User check and click "tutorial_close" if exist
    Then User expect "save_it_title" is exist
    And User click "flexi_saver_view_detail_on_save_it"
    And System save balance "save_it_flexi_saver_balance" value
    And User click "flexi_saver_top_up_on_save_it"
    And User fill "flexi_saver_savings_input_amount" with "flexi_saver_add_amount_50k"
    And User click "flexi_saver_next_button"
    And User click "save_it_flexi_saver_top_up_confirm_button"
    And User expect "snackbar" equal with "flexi_saver_snapbar_success"
    And User wait 5 seconds 
    And User expect "save_it_flexi_saver_balance" will be added with "flexi_saver_add_amount_50k"


  @android @uispecific @ios @R3_2
  Scenario: JENI3079-C80874-Scenario : accessing Flexi addmoney screen
    Given User is logged in with cif "save_it_flexi_saver_cif_requestor"
    And User change language to "language"
    When User click "dashboard_hamburger_icon"
    And User click "save_it_side_menu"
    And User check and click "tutorial_close" if exist
    Then User expect "save_it_title" is exist
    And User click "flexi_saver_view_detail_on_save_it"
    And User expect "save_it_flexi_saver_balance" is exist
    And User expect "flexi_saver_top_up_on_save_it" is exist


  @android @uispecific @ios @R3_2
  Scenario: JENI3079-C80875-Scenario : 0 amount condition
    Given User is logged in with cif "save_it_flexi_saver_cif_requestor"
    And User change language to "language"
    When User click "dashboard_hamburger_icon"
    And User click "save_it_side_menu"
    And User check and click "tutorial_close" if exist
    Then User expect "save_it_title" is exist
    And User click "flexi_saver_view_detail_on_save_it"
    And User click "flexi_saver_top_up_on_save_it"
    And User click "flexi_saver_next_button"
    Then User expect "snackbar" doesn't exist 


  @android @uispecific @ios @R3_2
  Scenario: JENI3079-C80876-scenario : can't exceed amount in active balance
    Given User is logged in with cif "bill_payment_user_active_balance_<20k"
    And User change language to "language"
    When User click "dashboard_hamburger_icon"
    And User click "save_it_side_menu"
    And User check and click "tutorial_close" if exist
    Then User expect "save_it_title" is exist
    And User click "flexi_saver_view_detail_on_save_it"
    And User click "flexi_saver_top_up_on_save_it"
    And User click "flexi_saver_next_button"
    And User fill "flexi_saver_savings_input_amount" with "profile_and_setting_change_limit_value_3"
    And User click "flexi_saver_next_button"
    And User wait 5 seconds 
    And User expect "save_it_flexi_saver_balance_large_than_active_balance_error_message" is exist


  @android @uispecific @ios @R3_2
  Scenario: JENI3079-C80877-scenario : maximum flexi balance allowed
    Given User is logged in with cif "bill_payment_user_active_balance_<20k"
    And User change language to "language"
    When User click "dashboard_hamburger_icon"
    And User click "save_it_side_menu"
    And User check and click "tutorial_close" if exist
    Then User expect "save_it_title" is exist
    And User click "flexi_saver_view_detail_on_save_it"
    And User click "flexi_saver_top_up_on_save_it"
    And User click "flexi_saver_next_button"
    And User fill "flexi_saver_savings_input_amount" with "profile_and_setting_change_limit_value_3"
    And User click "flexi_saver_next_button"
    And User wait 5 seconds 
    And User expect "save_it_flexi_saver_balance_large_than_active_balance_error_message" is exist
    And User fill "flexi_saver_savings_input_amount" with "flexi_saver_add_amount_20k"


  @android @uispecific @ios @R3_2
  Scenario: JENI3079-C80878-scenario : enabling next button
    Given User is logged in with cif "bill_payment_user_active_balance_<20k"
    And User change language to "language"
    When User click "dashboard_hamburger_icon"
    And User click "save_it_side_menu"
    And User check and click "tutorial_close" if exist
    Then User expect "save_it_title" is exist
    And User click "flexi_saver_view_detail_on_save_it"
    And User click "flexi_saver_top_up_on_save_it"
    And User click "flexi_saver_next_button"
    And User fill "flexi_saver_savings_input_amount" with "flexi_saver_add_amount_20k"
    And User click "flexi_saver_next_button"


  @android @uispecific @ios @R3_2
  Scenario: JENI3079-C80879-scenario : see add money confirmation page
    Given User is logged in with cif "bill_payment_user_active_balance_<20k"
    And User change language to "language"
    When User click "dashboard_hamburger_icon"
    And User click "save_it_side_menu"
    And User check and click "tutorial_close" if exist
    Then User expect "save_it_title" is exist
    And User click "flexi_saver_view_detail_on_save_it"
    And User click "flexi_saver_top_up_on_save_it"
    And User click "flexi_saver_next_button"
    And User fill "flexi_saver_savings_input_amount" with "flexi_saver_add_amount_20k"
    And User click "flexi_saver_next_button"
    And User expect "flexi_saver_add_money_text" is exist
    And User expect "save_it_expect_value_5" is exist


  @android @uispecific @ios @R3_2
  Scenario: JENI3079-C80879-scenario : see add money confirmation page
    Given User is logged in with cif "bill_payment_user_active_balance_<20k"
    And User change language to "language"
    When User click "dashboard_hamburger_icon"
    And User click "save_it_side_menu"
    And User check and click "tutorial_close" if exist
    Then User expect "save_it_title" is exist
    And User click "flexi_saver_view_detail_on_save_it"
    And User click "flexi_saver_top_up_on_save_it"
    And User click "flexi_saver_next_button"
    And User fill "flexi_saver_savings_input_amount" with "flexi_saver_add_amount_20k"
    And User click "flexi_saver_next_button"
    And User wait 5 seconds 
    And User press back button on device
    And User expect "flexi_saver_savings_input_amount" equal with "flexi_saver_amount_eng_20000"

#JENI-5856
  @android @uidatabound @R3_5
  Scenario: JENI5856-C116848-Scenario : access Flexi Saver transaction history
    Given User is logged in with cif "save_it_flexi_saver_cif_requestor"
    And User change language to "language"
    When User click "dashboard_hamburger_icon"
    And User click "save_it_side_menu"
    And User check and click "tutorial_close" if exist
    And User click "flexi_saver_view_detail_on_save_it"
    And User click "flexi_saver_tab_history_text"
    Then "save_it_flexi_saver_history_list" will be displayed

  @android @uidatabound @R3_5
  Scenario: JENI5856-C116849-Scenario: [TC_584][Flexi Saver] Create Flexi Savings
    Given User is on flexi saver page from side menu with cif "save_it_flexi_saver_no_flexi_account_2" and language "language"
    And User click "save_it_flexi_saver_start_button"
    And System save balance "save_it_flexi_saver_top_up_active_balance" value
    And User fill "save_it_flexi_saver_first_balance_textfield" with active balance
    And User click "save_it_flexi_saver_create_submit_button"
    And User click "save_it_flexi_saver_start_saving_button"
    And User click "flexi_saver_tab_history_text"
    Then "save_it_flexi_saver_history_list" will be displayed
    And "save_it_flexi_saver_history_cell_avatar" will be displayed
    And "save_it_flexi_saver_history_cell_title" will be displayed
    And "save_it_flexi_saver_history_cell_amount" will be displayed
    And "save_it_flexi_saver_history_cell_text_detail" will be displayed
    And "save_it_flexi_saver_history_cell_category" will be displayed
    And element with "save_it_flexi_saver_title_deposit" text will be displayed
    And element with "save_it_flexi_saver_type_deposit" text will be displayed
    And element with "save_it_flexi_saver_category_savings" text will be displayed
    # And User check if today's date displayed

  @android @uidatabound @R3_5
  Scenario: JENI5856-C130312-Scenario: [TC_584][Flexi Saver] Topup Flexi Savings
    Given User is logged in with cif "save_it_flexi_saver_cif_requestor"
    And User change language to "language"
    When User click "dashboard_hamburger_icon"
    And User click "save_it_side_menu"
    And User check and click "tutorial_close" if exist
    And User click "flexi_saver_view_detail_on_save_it"
    And User wait "save_it_maxi_saver_loading_screen" will be gone
    And User click "flexi_saver_top_up_on_save_it"
    And User fill "flexi_saver_savings_input_amount" with "flexi_saver_add_amount_50k"
    And User click "flexi_saver_next_button"
    And User click "save_it_flexi_saver_top_up_confirm_button"
    And User wait 5 seconds
    And User click "flexi_saver_tab_history_text"
    Then "save_it_flexi_saver_history_list" will be displayed
    And "save_it_flexi_saver_history_cell_avatar" will be displayed
    And "save_it_flexi_saver_history_cell_title" will be displayed
    And "save_it_flexi_saver_history_cell_amount" will be displayed
    And "save_it_flexi_saver_history_cell_text_detail" will be displayed
    And "save_it_flexi_saver_history_cell_category" will be displayed
    And element with "save_it_flexi_saver_category_savings" text will be displayed
    And element with "save_it_flexi_saver_type_top_up" text will be displayed
    # And User check if today's date displayed

  @android @uidatabound @R3_5
  Scenario: JENI5856-C116850-Scenario: [TC 87][Flexi Saver]Flexi Savings Withdrawal
    Given User is logged in with cif "save_it_flexi_saver_cif_requestor"
    And User change language to "language"
    When User click "dashboard_hamburger_icon"
    And User click "save_it_side_menu"
    And User click "tutorial_close"
    And User click "save_it_flexi_saver_view_detail_button"
    And User wait "save_it_maxi_saver_loading_screen" will be gone
    And User wait 5 seconds
    And User click "save_it_flexi_saver_withdraw_button"
    And User fill "save_it_flexi_saver_withdraw_field_amount" with "save_it_flexi_saver_withdraw_amount"
    And User click "save_it_flexi_saver_withdraw_submit_button"
    And User click "save_it_flexi_saver_withdraw_confirm_button"
    And User wait "save_it_maxi_saver_loading_screen" will be gone
    And User wait 5 seconds
    And User click "flexi_saver_tab_history_text"
    Then "save_it_flexi_saver_history_list" will be displayed
    And "save_it_flexi_saver_history_cell_avatar" will be displayed
    And "save_it_flexi_saver_history_cell_title" will be displayed
    And "save_it_flexi_saver_history_cell_amount" will be displayed
    And "save_it_flexi_saver_history_cell_text_detail" will be displayed
    And "save_it_flexi_saver_history_cell_category" will be displayed
    And element with "save_it_flexi_saver_category_savings" text will be displayed
    And element with "save_it_flexi_saver_type_withdrawal" text will be displayed
    # And User check if today's date displayed

  @android @uidatabound @R3_5
  Scenario: JENI5856-C116853-Scenario : scrolling behaviour
    Given User is logged in with cif "save_it_flexi_saver_cif_requestor"
    And User change language to "language"
    When User click "dashboard_hamburger_icon"
    And User click "save_it_side_menu"
    And User click "tutorial_close"
    And User click "save_it_flexi_saver_view_detail_button"
    And User wait "save_it_maxi_saver_loading_screen" will be gone
    And User wait 5 seconds
    And User click "flexi_saver_tab_history_text"
    Then "save_it_flexi_saver_history_cell_title_1" will be displayed
    And User swipe up until found "save_it_flexi_saver_history_cell_title_10"
    Then "save_it_flexi_saver_history_cell_title_10" will be displayed

    #JENI-5857
  @android @uidatabound @R3_6
  Scenario: JENI5857-C110412-Scenario: [TC_584][Flexi Saver] Create Flexi Savings
    Given User is on flexi saver page from side menu with cif "save_it_flexi_saver_no_flexi_account_3" and language "language"
    And User click "save_it_flexi_saver_start_button"
    And User fill "save_it_flexi_saver_first_balance_textfield" with "flexi_saver_amount"
    And User click "save_it_flexi_saver_create_submit_button"
    And User click "save_it_flexi_saver_start_saving_button"
    And User click "flexi_saver_view_detail_on_save_it"
    And User click "flexi_saver_tab_history_text"
    When User click "flexi_saver_history_in_out"
    And User wait 5 seconds
    Then "in_and_out_filter_transaction_type_top_up_savings_balance2" will be displayed
    And User expect "flexi_saver_history_avatar" is exist
    And User expect "flexi_saver_top_up_on_save_it" is exist
    And User expect "in_and_out_detail_amount" is exist
    And User expect "flexi_saver_history_transaction_date" is exist
    And User expect "flexi_saver_history_transaction_id" is exist
    And User expect "flexi_saver_history_category_savings" is exist
    And User expect "in_and_out_history_bill_payment_download_button_id" doesn't exist
    And User expect "split_bill_label" doesn't exist
    And User expect "****_contact_mobius_icon" doesn't exist
    And User expect "in_and_out_detail_notes" doesn't exist

  @android @uidatabound @R3_6
  Scenario: JENI5857-C133620-SCenario: [TC_584][Flexi Saver] Top up Flexi Savings
    Given User is on flexi saver page from side menu with cif "save_it_flexi_saver_cif_requestor" and language "language"
    And User click "flexi_saver_view_detail_on_save_it"
    And User click "flexi_saver_top_up_on_save_it"
    And User fill "flexi_saver_savings_input_amount" with "flexi_saver_add_amount_50k"
    And User click "flexi_saver_next_button"
    And User click "save_it_flexi_saver_top_up_confirm_button"
    #And User expect "snackbar" equal with "flexi_saver_snapbar_success"
    And User wait 8 seconds
    And User click "flexi_saver_tab_history_text"
    When User click "flexi_saver_history_in_out"
    And User wait 5 seconds
    Then "in_and_out_filter_transaction_type_top_up_savings_balance2" will be displayed
    And User expect "flexi_saver_history_avatar" is exist
    And User expect "flexi_saver_top_up_on_save_it" is exist
    And User expect "flexi_saver_top_up_history_amount" equal with "find_us_withdraw_amount_0_data"
    And User expect "flexi_saver_history_transaction_date" is exist
    And User expect "flexi_saver_history_transaction_id" is exist
    And User expect "flexi_saver_history_category_savings" is exist
    And User expect "in_and_out_history_bill_payment_download_button_id" doesn't exist
    And User expect "split_bill_label" doesn't exist
    And User expect "****_contact_mobius_icon" doesn't exist
    And User expect "in_and_out_detail_notes" doesn't exist

  @android @uidatabound @R3_6
  Scenario: JENI5857-C110413-Scenario: [TC 87][Flexi Saver]Flexi Savings Withdrawal
    Given User is on flexi saver page from side menu with cif "save_it_flexi_saver_cif_requestor" and language "language"
    And User click "save_it_flexi_saver_view_detail_button"
    And User wait 5 seconds
    And User click "save_it_flexi_saver_withdraw_button"
    And User fill "save_it_flexi_saver_withdraw_field_amount" with "save_it_flexi_saver_withdraw_amount"
    And User click "save_it_flexi_saver_withdraw_submit_button"
    And User click "save_it_flexi_saver_withdraw_confirm_button"
    And User wait "save_it_maxi_saver_loading_screen" will be gone
    And User wait 5 seconds
    When User click "flexi_saver_tab_history_text"
    When User click "flexi_saver_history_in_out"
    Then "in_and_out_filter_transaction_type_saving_withdrawal" will be displayed
    And User expect "flexi_saver_history_avatar" is exist
    And User expect "flexi_saver_history_savings_withdrawal" is exist
    And User expect contact of "find_us_withdraw_amount_0_data" will exist
    And User expect "flexi_saver_history_transaction_date" is exist
    And User expect "flexi_saver_history_transaction_id" is exist
    And User expect "flexi_saver_history_category_savings_withdrawal" is exist
    And User expect "in_and_out_history_bill_payment_download_button_id" doesn't exist
    And User expect "split_bill_label" doesn't exist
    And User expect "****_contact_mobius_icon" doesn't exist
    And User expect "in_and_out_detail_notes" doesn't exist