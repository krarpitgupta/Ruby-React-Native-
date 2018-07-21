@flexisaver @dreamsaver_flexisaver
Feature: FlexiSaver Module

  #This scenario need to be revisited again, since this scenario still in progress and need some updates after back end up
#########################################################################################################
#       Description         : - **** User has active balance
#                             - **** User has flexi saver
#       Created By          : Novi
########################################################################################################
  @android @uidatabound
  Scenario: JENI3077-C75887-Check System lead to Flexi Saver Main Screen from Dashboard
    Given User is on flexi saver wigdet dashboard with cif "save_it_flexi_saver_with_flexi_account" and language "language"
    And User click "save_it_flexi_saver_widget_on_dashboard"
    Then User expect "save_it_flexi_saver_title_screen" is exist
    Then User expect "flexi_saver_tab_savings_text" is exist
    And User expect "flexi_saver_tab_history_text" is exist
    And User expect "flexi_saver_add_money_button" is exist
    And User expect "flexi_saver_withdrawal_button" is exist

  #This scenario need to be revisited again, since this scenario still in progress and need some updates after back end up
#########################################################################################################
#       Description         : - **** User has active balance
#                             - **** User has flexi saver
#       Created By          : Novi
########################################################################################################
  @android @uidatabound
  Scenario: JENI3077-C75888-Check System lead to Flexi Saver Main Screen from Save It Screen
    Given User is on flexi saver page from side menu with cif "save_it_flexi_saver_with_flexi_account" and language "language"
    Then User click "flexi_saver_view_detail_on_save_it"
    Then User expect "save_it_flexi_saver_title_screen" is exist
    When User click "flexi_saver_start_saving_button_from_save_it"
    Then User expect "flexi_saver_tab_savings_text" is exist
    And User expect "flexi_saver_tab_history_text" is exist
    And User expect "flexi_saver_add_money_button" is exist
    And User expect "flexi_saver_withdrawal_button" is exist

  #This scenario need to be revisited again, since this scenario still in progress and need some updates after back end up
#########################################################################################################
#       Description         : - **** User has active balance
#                             - **** User has flexi saver
#       Created By          : Novi
########################################################################################################
  @android @uidatabound
  Scenario: JENI3077-C75890-Check Copywriter of Flexi Saver Main Screen show correctly
    Given User is on flexi saver page from side menu with cif "save_it_flexi_saver_with_flexi_account" and language "language"
    Then User click "flexi_saver_view_detail_on_save_it"
    Then User expect "save_it_flexi_saver_title_screen" is exist
    #And User click "flexi_saver_close_button_on_popup_tutorial"
    When User click "flexi_saver_start_saving_button_from_save_it"
    Then User expect "flexi_saver_tab_savings_text" equal with "flexi_saver_savings_tab_label"
    And User expect "flexi_saver_tab_history_text" equal with "flexi_saver_history_tab_label"
    Then User expect "flexi_saver_saving_balance_text" equal with "flexi_saver_savings_balance"
    And User expect "flexi_saver_savings_description_text" equal with "flexi_saver_savings_description"
    #This steps is commented because some features are take out in R3
    # Then User expect "flexi_saver_add_money_button" equal with "flexi_saver_add_money_button_label"
    # And User expect "flexi_saver_withdrawal_button" equal with "flexi_saver_withdrawal_button_label"

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
    Given User is on flexi saver page from side menu with cif "save_it_flexi_saver_no_flexi_account" and language "language_id"
    And User click "save_it_flexi_saver_start_button_id"
    Then User expect "save_it_flexi_saver_default_amount" equal with "save_it_flexi_saver_one_balance"
    Then User expect "save_it_flexi_saver_currency" equal with "flexi_saver_id_currency_format"
    And User fill "save_it_flexi_saver_first_balance_textfield" with "flexi_saver_amount"
    Then User expect "flexi_saver_savings_input_amount" equal with "flexi_saver_amount_id"
    And User fill "save_it_flexi_saver_first_balance_textfield" with "flexi_saver_character"
    Then User expect "save_it_flexi_saver_default_amount" equal with "save_it_flexi_saver_zero_balance"

  @android @uispecific
  Scenario: JENI3080-C75837-Scenario : ENG format - active balance not 0
    Given User is on flexi saver page from side menu with cif "save_it_flexi_saver_no_flexi_account" and language "language"
    And User click "save_it_flexi_saver_start_button"
    Then User expect "save_it_flexi_saver_default_amount" equal with "save_it_flexi_saver_one_balance"
    Then User expect "save_it_flexi_saver_currency" equal with "flexi_saver_eng_currency_format"
    And User fill "save_it_flexi_saver_first_balance_textfield" with "flexi_saver_amount"
    Then User expect "flexi_saver_savings_input_amount" equal with "flexi_saver_amount_en"
    And User fill "save_it_flexi_saver_first_balance_textfield" with "flexi_saver_character"
    Then User expect "save_it_flexi_saver_default_amount" equal with "save_it_flexi_saver_zero_balance"

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
  Scenario: JENI3061-C70490-create flexi saver - side menu - active balance not 0
    Given User is on flexi saver page from side menu with cif "save_it_flexi_saver_no_flexi_account" and language "language"
    And User click "save_it_flexi_saver_start_button"
    Then User expect "flexi_saver_active_balance_on_top_up_screen" is exist
    Then User expect "save_it_flexi_saver_first_balance_textfield" is exist
    Then User click "save_it_flexi_saver_create_submit_button"
    Then User expect "save_it_flexi_saver_start_saving_button" is exist

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
  Scenario: JENI3061-C70490-create flexi saver - widget - active balance not 0
    Given User is on flexi saver wigdet dashboard with cif "save_it_flexi_saver_no_flexi_account" and language "language"
    And User click "save_it_flexi_saver_start_button_widget"
    And User check and click "tutorial_close" if exist
    Then User expect "flexi_saver_active_balance_on_top_up_screen" is exist
    Then User expect "save_it_flexi_saver_first_balance_textfield" is exist
    Then User click "save_it_flexi_saver_create_submit_button"
    Then User expect "save_it_flexi_saver_start_saving_button" doesn't exist

  @android @ios @uispecific
  Scenario: JENI3061-C70492-0 amount condition 
    Given User is on flexi saver page from side menu with cif "save_it_flexi_saver_no_flexi_account" and language "language"
    And User click "save_it_flexi_saver_start_button"
    Then User fill "save_it_flexi_saver_first_balance_textfield" with "save_it_flexi_saver_zero_balance"
    Then User click "save_it_flexi_saver_create_submit_button"
    Then User expect "save_it_flexi_saver_start_saving_button" doesn't exist

@android @uidatabound
  Scenario: JENI3061-C70493-minimum amount to deposit 
    Given User expect active balance with cif "save_it_flexi_saver_cif_requestor"
    And User click "dashboard_hamburger_icon"
    And User click "save_it_side_menu"
    And User click "tutorial_close"
    And User click "save_it_flexi_saver_start_button"
    And User fill "save_it_flexi_saver_first_balance_textfield" with "save_it_flexi_saver_balance_less_than_min_allowed"
    Then "save_it_flexi_saver_less_than_min_allowed_error_message" will be displayed
    When User click "save_it_flexi_saver_create_submit_button"
    Then User expect "save_it_flexi_saver_start_saving_button" doesn't exist 
    
  @android @ios @uispecific
  Scenario: JENI3061-C70507-can't exceed amount in active balance 
    Given User is on flexi saver page from side menu with cif "save_it_flexi_saver_no_flexi_account" and language "language"
    And User click "save_it_flexi_saver_start_button"
    And System save balance "flexi_saver_active_balance_on_top_up_screen" value
    And User fill "save_it_flexi_saver_first_balance_textfield" with value larger than balance
    Then "save_it_flexi_saver_balance_large_than_active_balance_error_message" will be displayed
    When User click "save_it_flexi_saver_create_submit_button"
    Then User expect "save_it_flexi_saver_start_saving_button" doesn't exist 
 
  @android @ios @uispecific
  Scenario: JENI3061-C70508-maximum deposit allowed
    Given User is on flexi saver page from side menu with cif "save_it_flexi_saver_no_flexi_account" and language "language"
    And User click "save_it_flexi_saver_start_button"
    And User fill "save_it_flexi_saver_first_balance_textfield" with "save_it_flexi_saver_balance_more_than_max_allowed"
    Then "save_it_flexi_saver_balance_large_than_max_allowed_error_message" will be displayed
    When User click "save_it_flexi_saver_create_submit_button"
    Then User expect "save_it_flexi_saver_start_saving_button" doesn't exist  

  @android @ios @uispecific
  Scenario: JENI3061-C70509-enabling next button
    Given User is on flexi saver page from side menu with cif "save_it_flexi_saver_no_flexi_account" and language "language"
    And User click "save_it_flexi_saver_start_button"
    And System save balance "flexi_saver_active_balance_on_top_up_screen" value
    And User fill "save_it_flexi_saver_first_balance_textfield" with active balance
    When User click "save_it_flexi_saver_create_submit_button"
    Then User expect "save_it_flexi_saver_start_saving_button" is exist  

  @android @uispecific
  Scenario: JENI3061-C70510-see confirmation page
    Given User is on flexi saver page from side menu with cif "save_it_flexi_saver_no_flexi_account" and language "language"
    And User click "save_it_flexi_saver_start_button"
    And System save balance "flexi_saver_active_balance_on_top_up_screen" value
    And User fill "save_it_flexi_saver_first_balance_textfield" with active balance
    And User click "save_it_flexi_saver_create_submit_button"
    Then User expect "save_it_flexi_saver_start_saving_button" is exist
    Then User expect "save_it_flexi_saver_input_balance" is exist

#Below script is commented because some feature is already take out in Release 3. 

# #This scenario need to be revisited again, since this scenario still in progress and need some updates after get account flexi from QA
# @android @uidatabound
#   Scenario: JENI3061-C70511-successfully created flexi saver account 
#     Given User expect active balance with cif "save_it_flexi_saver_cif_requestor"
#     And User click "dashboard_hamburger_icon"
#     And User click "save_it_side_menu"
#     And User click "tutorial_close"
#     And User click "save_it_flexi_saver_start_button"
#     And User fill "save_it_flexi_saver_first_balance_textfield" with active balance
#     And User click "save_it_flexi_saver_create_submit_button"
#     And System save "save_it_flexi_saver_input_balance" value 
#     And User click "save_it_flexi_saver_start_saving_button" 
#     Then User expect "save_it_flexi_saver_success_create_snack_bar" is exist 
#     Then User expect "save_it_flexi_saver_new_amount" will be added with "save_it_flexi_saver_input_balance"
#     #need to change selector "save_it_flexi_saver_new_amount" after get account flexi saver from QA

# #This scenario need to be revisited again, since this scenario still in progress and need some updates after get account flexi from QA
# @android @uidatabound
#   Scenario: JENI3076-C80866-Flexi Saving Balance show correctly after Top Up - in-menu Widget
#     Given User expect active balance with cif "save_it_flexi_saver_cif_requestor_2"
#     When User click "dashboard_hamburger_icon"
#     And User click "save_it_side_menu"
#     And User click "tutorial_close"
#     And User click "save_it_flexi_saver_view_detail_button"
#     And User click "save_it_flexi_saver_top_up_button"
#     And User fill "save_it_flexi_saver_top_up_field_amount" with "save_it_flexi_saver_top_up_amount"
#     And User click "save_it_flexi_saver_top_up_submit_button"
#     And User click "save_it_flexi_saver_top_up_confirm_button"
#     Then User expect "save_it_flexi_saver_success_create_snack_bar" is exist 
#     Then User expect "save_it_flexi_saver_new_amount" is exist
#     And User click "save_it_flexi_saver_back_button"
#     Then User expect "save_it_flexi_saver_title_screen" is exist
#     Then User expect "save_it_flexi_saver_new_amount" will be added with "save_it_flexi_saver_top_up_amount"
#     #need to change selector "save_it_flexi_saver_new_amount" after get account flexi saver from QA

# #This scenario need to be revisited again, since this scenario still in progress and need some updates after get account flexi from QA
# @android @uidatabound
#   Scenario: JENI3076-C80867-Flexi Saving Balance show correctly after Withdraw - in-menu Widget
#     Given User expect active balance with cif "save_it_flexi_saver_cif_requestor_2"
#     When User click "dashboard_hamburger_icon"
#     And User click "save_it_side_menu"
#     And User click "tutorial_close"
#     And User click "save_it_flexi_saver_view_detail_button"
#     And User click "save_it_flexi_saver_withdraw_button"
#     And User fill "save_it_flexi_saver_withdraw_field_amount" with "save_it_flexi_saver_withdraw_amount"
#     And User click "save_it_flexi_saver_withdraw_submit_button"
#     And User click "save_it_flexi_saver_withdraw_confirm_button"
#     Then User expect "save_it_flexi_saver_success_create_snack_bar" is exist 
#     Then User expect "save_it_flexi_saver_new_amount" is exist
#     And User click "save_it_flexi_saver_back_button"
#     Then User expect "save_it_flexi_saver_title_screen" is exist
#     Then User expect "save_it_flexi_saver_new_amount" will be minus with "save_it_flexi_saver_withdraw_amount"
#     #need to change selector "save_it_flexi_saver_new_amount" after get account flexi saver from QA

# #This scenario need to be revisited again, since this scenario still in progress and need some updates after get account flexi from QA
# @android @uidatabound
#   Scenario: JENI3076-C80868-Flexi Saving Balance show correctly after Top Up - Dashboard Widget
#     Given User expect active balance with cif "save_it_flexi_saver_cif_requestor_2"
#     When User click "dashboard_hamburger_icon"
#     And User click "dashboard_menu"
#     And User swipe up until found "save_it_flexi_saver_title"
#     And User click "save_it_flexi_saver_title"
#     And User click "tutorial_close"
#     And User click "save_it_flexi_saver_view_detail_button"
#     And User click "save_it_flexi_saver_top_up_button"
#     And User fill "save_it_flexi_saver_top_up_field_amount" with "save_it_flexi_saver_top_up_amount"
#     And User click "save_it_flexi_saver_top_up_submit_button"
#     And User click "save_it_flexi_saver_top_up_confirm_button"
#     Then User expect "save_it_flexi_saver_success_create_snack_bar" is exist 
#     Then User expect "save_it_flexi_saver_new_amount" will be added with "save_it_flexi_saver_top_up_amount"
#     When User click "dashboard_hamburger_icon"
#     And User click "dashboard_menu"
#     And User swipe up until found "save_it_flexi_saver_title"
#     Then User expect "save_it_flexi_saver_new_amount" will be added with "save_it_flexi_saver_top_up_amount"
#     #need to change selector "save_it_flexi_saver_new_amount" after get account flexi saver from QA

# #This scenario need to be revisited again, since this scenario still in progress and need some updates after get account flexi from QA
# @android @uidatabound
#   Scenario: JENI3076-C80869-Flexi Saving Balance show correctly after Withdraw - Dashboard Widget
#     Given User expect active balance with cif "save_it_flexi_saver_cif_requestor_2"
#     When User click "dashboard_hamburger_icon"
#     And User click "dashboard_menu"
#     And User swipe up until found "save_it_flexi_saver_title"
#     And User click "save_it_flexi_saver_title"
#     And User click "tutorial_close"
#     And User click "save_it_flexi_saver_view_detail_button"
#     And User click "save_it_flexi_saver_withdraw_button"
#     And User fill "save_it_flexi_saver_withdraw_field_amount" with "save_it_flexi_saver_withdraw_amount"
#     And User click "save_it_flexi_saver_withdraw_submit_button"
#     And User click "save_it_flexi_saver_withdraw_confirm_button"
#     Then User expect "save_it_flexi_saver_success_create_snack_bar" is exist 
#     Then User expect "save_it_flexi_saver_new_amount" will be minus with "save_it_flexi_saver_withdraw_amount"
#     When User click "dashboard_hamburger_icon"
#     And User click "dashboard_menu"
#     And User swipe up until found "save_it_flexi_saver_title"
#     Then User expect "save_it_flexi_saver_new_amount" will be minus with "save_it_flexi_saver_withdraw_amount"
#     #need to change selector "save_it_flexi_saver_new_amount" after get account flexi saver from QA

# #This scenario is still in progress and need update later after get info about account flexi saver with QA
# @android @uidatabound
#   Scenario: JENI3078-C80903-successfully withdrawn money from flexi saver account
#     Given User expect active balance with cif "save_it_flexi_saver_cif_requestor_2"
#     When User click "dashboard_hamburger_icon"
#     And User click "save_it_side_menu"
#     And User click "tutorial_close"
#     And User click "save_it_flexi_saver_view_detail_button"
#     And User click "save_it_flexi_saver_withdraw_button"
#     And User fill "save_it_flexi_saver_withdraw_field_amount" with "save_it_flexi_saver_withdraw_amount"
#     And User click "save_it_flexi_saver_withdraw_submit_button"
#     And User click "save_it_flexi_saver_withdraw_confirm_button"
#     Then User expect "save_it_flexi_saver_success_create_snack_bar" is exist 
#     Then User expect "save_it_flexi_saver_new_amount" will be minus with "save_it_flexi_saver_withdraw_amount"
#     And User click "save_it_flexi_saver_back_button"
#     Then User expect "save_it_flexi_saver_title_screen" is exist
#     Then User expect "save_it_flexi_saver_new_amount" will be minus with "save_it_flexi_saver_withdraw_amount"
#     #need to change selector "save_it_flexi_saver_new_amount" after get account flexi saver from QA

# @android @uidatabound
#   Scenario: JENI3078-C80897-accessing Flexi withdrawal screen
#     Given User is logged in with cif "save_it_flexi_saver_cif_requestor_2"
#     When User click "dashboard_hamburger_icon"
#     And User click "save_it_side_menu"
#     And User click "tutorial_close"
#     And User click "save_it_flexi_saver_view_detail_button"
#     And User click "save_it_flexi_saver_withdraw_button"
#     And User expect "save_it_flexi_saver_withdraw_field_amount" is exist
#     And User expect "save_it_flexi_saver_withdraw_submit_button" is exist

# @android @uidatabound
#   Scenario: JENI3078-C80898-0 amount condition
#     Given User is logged in with cif "save_it_flexi_saver_cif_requestor_2"
#     When User click "dashboard_hamburger_icon"
#     And User click "save_it_side_menu"
#     And User click "tutorial_close"
#     And User click "save_it_flexi_saver_view_detail_button"
#     And User click "save_it_flexi_saver_withdraw_button"
#     Then User expect "save_it_flexi_saver_withdraw_submit_button"

# @android @uidatabound
#   Scenario: JENI3078-C80899-can't exceed amount in active balance 
#     Given User is logged in with cif "save_it_flexi_saver_cif_requestor_2"
#     When User click "dashboard_hamburger_icon"
#     And User click "save_it_side_menu"
#     And User click "tutorial_close"
#     And User click "save_it_flexi_saver_view_detail_button"
#     And User click "save_it_flexi_saver_withdraw_button"
#     And User fill "save_it_flexi_saver_withdraw_field_amount" with "save_it_flexi_saver_large_than_flexi_balance"
#     And User expect "save_it_flexi_saver_withdraw_large_error_message" is exist

# @android @uidatabound
#   Scenario: JENI3078-C80900-can't withdraw money more than minimum flexi balancee 
#     Given User is logged in with cif "save_it_flexi_saver_cif_requestor_2"
#     When User click "dashboard_hamburger_icon"
#     And User click "save_it_side_menu"
#     And User click "tutorial_close"
#     And User click "save_it_flexi_saver_view_detail_button"
#     And User click "save_it_flexi_saver_withdraw_button"
#     And User fill "save_it_flexi_saver_withdraw_field_amount" with "save_it_flexi_saver_large_than_flexi_balance"
#     And User expect "save_it_flexi_saver_withdraw_large_error_message" is exist

# @android @uidatabound
#   Scenario: JENI3078-C80901-enabling next button
#     Given User is logged in with cif "save_it_flexi_saver_cif_requestor_2"
#     When User click "dashboard_hamburger_icon"
#     And User click "save_it_side_menu"
#     And User click "tutorial_close"
#     And User click "save_it_flexi_saver_view_detail_button"
#     And User click "save_it_flexi_saver_withdraw_button"
#     And User fill "save_it_flexi_saver_withdraw_field_amount" with "save_it_flexi_saver_withdraw_amount"
#     And User expect "save_it_flexi_saver_withdraw_submit_button" is exist

# #This scenario is still in progress and need update later after get info about account flexi saver with QA
# @android @uidatabound
#   Scenario: JENI3076-C80902-see withdrawal confirmation page
#     Given User is logged in with cif "save_it_flexi_saver_cif_requestor_2"
#     When User click "dashboard_hamburger_icon"
#     And User click "save_it_side_menu"
#     And User click "tutorial_close"
#     And User click "save_it_flexi_saver_view_detail_button"
#     And User click "save_it_flexi_saver_withdraw_button"
#     And User fill "save_it_flexi_saver_withdraw_field_amount" with "save_it_flexi_saver_withdraw_amount"
#     Then User expect "save_it_flexi_saver_withdraw_submit_button" is exist
#     Then User expect "save_it_flexi_saver_withdraw_confirm_button" is exist
#     Then element with "save_it_flexi_saver_withdraw_amount" text will be displayed

# #This scenario is still in progress and need update later after get info about account flexi saver with QA
# @android @uidatabound
#   Scenario: JENI3076-C80911-Saving Balance show correctly after double click Withdraw button
#     Given User expect active balance with cif "save_it_flexi_saver_cif_requestor_2"
#     When User click "dashboard_hamburger_icon"
#     And User click "save_it_side_menu"
#     And User click "tutorial_close"
#     And User click "save_it_flexi_saver_view_detail_button"
#     And User click "save_it_flexi_saver_withdraw_button"
#     And User fill "save_it_flexi_saver_withdraw_field_amount" with "save_it_flexi_saver_withdraw_amount"
#     And User click "save_it_flexi_saver_withdraw_submit_button"
#     And User click "save_it_flexi_saver_withdraw_confirm_button"
#     Then User expect "save_it_flexi_saver_success_create_snack_bar" is exist 
#     Then User expect "save_it_flexi_saver_new_amount" will be minus with "save_it_flexi_saver_withdraw_amount"

# #This scenario need to be revisited again, since this scenario still in progress and need some updates after get the active balance 
# @android @uidatabound
#   Scenario: JENI3079-C80880-successfully add money to flexi saver account
#     Given User expect active balance with cif "save_it_flexi_saver_cif_requestor_2"
#     When User click "dashboard_hamburger_icon"
#     And User click "save_it_side_menu"
#     And User click "tutorial_close"
#     And User click "save_it_flexi_saver_view_detail_button"
#     And User click "save_it_flexi_saver_top_up_button"
#     And User fill "save_it_flexi_saver_top_up_field_amount" with "save_it_flexi_saver_top_up_amount"
#     And User click "save_it_flexi_saver_top_up_submit_button"
#     And User click "save_it_flexi_saver_top_up_confirm_button"
#     Then User expect "save_it_flexi_saver_success_create_snack_bar" is exist 
#     Then User expect "save_it_flexi_saver_new_amount" will be added with "save_it_flexi_saver_top_up_amount"

# #This scenario need to be revisited again, since this scenario still in progress and need some updates after get the active balance
# @android @uidatabound
#   Scenario: JENI3079-C80874-accessing Flexi addmoney screen 
#     Given User expect active balance with cif "save_it_flexi_saver_cif_requestor_2"
#     When User click "dashboard_hamburger_icon"
#     And User click "save_it_side_menu"
#     And User click "tutorial_close"
#     And User click "save_it_flexi_saver_view_detail_button"
#     And User click "save_it_flexi_saver_top_up_button"
#     Then User expect "save_it_flexi_saver_top_up_field_amount" is exist
#     #This step will be discussed again with Novi
#     #Then User expect amount dislpayed correctly

# #This scenario need to be revisited again, since this scenario still in progress and need some updates after get the active balance
# @android @uidatabound
#   Scenario: JENI3079-C80875-0 amount condition
#     Given User is logged in with cif "save_it_flexi_saver_cif_requestor_2"
#     When User click "dashboard_hamburger_icon"
#     And User click "save_it_side_menu"
#     And User click "tutorial_close"
#     And User click "save_it_flexi_saver_view_detail_button"
#     And User click "save_it_flexi_saver_top_up_button"
#     And User fill "save_it_flexi_saver_top_up_field_amount" with "save_it_flexi_saver_zero_balance"
#     Then User expect "save_it_flexi_saver_top_up_submit_button" is exist

# #This scenario need to be revisited again, since this scenario still in progress and need some updates after get the active balance
# @android @uidatabound
#   Scenario: JENI3079-C80876-can't exceed amount in active balance
#     Given User is logged in with cif "save_it_flexi_saver_cif_requestor_2"
#     When User click "dashboard_hamburger_icon"
#     And User click "save_it_side_menu"
#     And User click "tutorial_close"
#     And User click "save_it_flexi_saver_view_detail_button"
#     And User click "save_it_flexi_saver_top_up_button"
#     And User fill "save_it_flexi_saver_top_up_field_amount" with "save_it_flexi_saver_balance_large_than_active_balance"
#     Then User expect "save_it_flexi_saver_withdraw_large_error_message" is exist

# #This scenario need to be revisited again, since this scenario still in progress and need some updates after get the active balance
# @android @uidatabound
#   Scenario: JENI3079-C80877-maximum flexi balance allowed
#     Given User is logged in with cif "save_it_flexi_saver_cif_requestor_2"
#     When User click "dashboard_hamburger_icon"
#     And User click "save_it_side_menu"
#     And User click "tutorial_close"
#     And User click "save_it_flexi_saver_view_detail_button"
#     And User click "save_it_flexi_saver_top_up_button"
#     And User fill "save_it_flexi_saver_top_up_field_amount" with "save_it_flexi_saver_balance_more_than_max_allowed"
#     Then User expect "save_it_flexi_saver_more_than_max_flexi_allowed_error_message" is exist

# #This scenario need to be revisited again, since this scenario still in progress and need some updates after get the active balance
# @android @uidatabound
#   Scenario: JENI3079-C80878-enabling next button
#     Given User is logged in with cif "save_it_flexi_saver_cif_requestor_2"
#     When User click "dashboard_hamburger_icon"
#     And User click "save_it_side_menu"
#     And User click "tutorial_close"
#     And User click "save_it_flexi_saver_view_detail_button"
#     And User click "save_it_flexi_saver_top_up_button"
#     And User fill "save_it_flexi_saver_top_up_field_amount" with "save_it_flexi_saver_top_up_amount"
#     Then User expect "save_it_flexi_saver_top_up_submit_button" is exist

# #This scenario need to be revisited again, since this scenario still in progress and need some updates after get the active balance
# @android @uidatabound
#   Scenario: JENI3079-C80879-see add money confirmation page
#     Given User is logged in with cif "save_it_flexi_saver_cif_requestor_2"
#     When User click "dashboard_hamburger_icon"
#     And User click "save_it_side_menu"
#     And User click "tutorial_close"
#     And User click "save_it_flexi_saver_view_detail_button"
#     And User click "save_it_flexi_saver_top_up_button"
#     And User fill "save_it_flexi_saver_top_up_field_amount" with "save_it_flexi_saver_top_up_amount"
#     And User click "save_it_flexi_saver_top_up_submit_button"
#     Then User expect "save_it_flexi_saver_top_up_confirm_button" is exist
#     Then element with "save_it_flexi_saver_top_up_amount" will be displayed

#########################################################################################################
#       Description         : - **** User has active balance
#                             - **** User doesn't has flexi saver before
#       Created By          : Novi
########################################################################################################
  @android @uidatabound
  Scenario:JENI3160-C75832-default slider head position & left end = 0 amount of money
    Given User is on application screen
    And User check and click 2 times if allow or ok button exist
    And User click "authentication_button"
    When User login with credential "flexi_saver_cif_2"
    Then User click "pay_me_next_button_on_login_screen"
    When User click "dashboard_hamburger_icon"
    And User scroll to "pay_me_****_help_menu"
    And User check app language is "language"
    And User click "flexi_saver_for_save_it_menu"
    And User click "flexi_saver_close_button_on_popup_tutorial"
    Then User expect "flexi_saver_view_detail_on_save_it" is exist
    And User click "flexi_saver_view_detail_on_save_it"
    When User click "flexi_saver_top_up_on_save_it"
    Then "flexi_saver_slider_head" will be displayed

#########################################################################################################
#       Description         : - **** User has active balance
#                             - **** User doesn't has flexi saver before
#       Created By          : Novi
########################################################################################################
  @android @uidatabound
  Scenario:JENI3160-C75833-slider head position at right end = max amount of money in balance
    Given User is on application screen
    And User check and click 2 times if allow or ok button exist
    And User click "authentication_button"
    When User login with credential "flexi_saver_cif_2"
    Then User click "pay_me_next_button_on_login_screen"
    When User click "dashboard_hamburger_icon"
    And User scroll to "pay_me_****_help_menu"
    And User check app language is "language"
    And User click "flexi_saver_for_save_it_menu"
    And User click "flexi_saver_close_button_on_popup_tutorial"
    Then User expect "flexi_saver_view_detail_on_save_it" is exist
    And User click "flexi_saver_view_detail_on_save_it"
    When User click "flexi_saver_top_up_on_save_it"
    Then "flexi_saver_slider_head" will be displayed
    And User slide "flexi_saver_slider_head" to "flexi_saver_slider_scale" of slider width
    Then User expect that amount of "flexi_saver_amount_field_on_top_up_screen" is equal with amount of "flexi_saver_active_balance_on_top_up_screen"

#########################################################################################################
#       Description               : - **** User has active balance
#                                   - **** User doesn't has flexi saver before
#       Created By                : Novi
#       Specification by example  : - Active Balance more than zero (eg. 1000)
#                                   - Slider position move to left-end (scale = 0)
#                                   - Amount in amount field should be zero (0)
#                                   
########################################################################################################
  @android @uidatabound
  Scenario:JENI3160-C75834-the amount of money in amount field follow the slider head position
    Given User is on application screen
    And User check and click 2 times if allow or ok button exist
    And User click "authentication_button"
    When User login with credential "flexi_saver_cif_2"
    Then User click "pay_me_next_button_on_login_screen"
    When User click "dashboard_hamburger_icon"
    And User scroll to "pay_me_****_help_menu"
    And User check app language is "language"
    And User click "flexi_saver_for_save_it_menu"
    And User click "flexi_saver_close_button_on_popup_tutorial"
    Then User expect "flexi_saver_view_detail_on_save_it" is exist
    And User click "flexi_saver_view_detail_on_save_it"
    When User click "flexi_saver_top_up_on_save_it"
    And "flexi_saver_slider_head" will be displayed
    Then User expect "flexi_saver_amount_field_on_top_up_screen" equal with "flexi_saver_zero_amount"

#########################################################################################################
#       Description               : - **** User has active balance
#                                   - **** User doesn't has flexi saver before
#       Created By                : Novi
#       Specification by example  : - Active Balance more than zero (eg. 1000)
#                                   - Slider position move to right-end (scale = 1)
#                                   - Amount in amount field should be the same with active balance (eg. 1000)
#
########################################################################################################
  @android @uidatabound
  Scenario:JENI3160-C75834-the amount of money in amount field follow the slider head position
    Given User is on application screen
    And User check and click 2 times if allow or ok button exist
    And User click "authentication_button"
    When User login with credential "flexi_saver_cif_2"
    Then User click "pay_me_next_button_on_login_screen"
    When User click "dashboard_hamburger_icon"
    And User scroll to "pay_me_****_help_menu"
    And User check app language is "language"
    And User click "flexi_saver_for_save_it_menu"
    And User click "flexi_saver_close_button_on_popup_tutorial"
    Then User expect "flexi_saver_view_detail_on_save_it" is exist
    And User click "flexi_saver_view_detail_on_save_it"
    When User click "flexi_saver_top_up_on_save_it"
    Then "flexi_saver_slider_head" will be displayed
    And User slide "flexi_saver_slider_head" to "flexi_saver_slider_scale" of slider width
    Then User expect that amount of "flexi_saver_amount_field_on_top_up_screen" is equal with amount of "flexi_saver_active_balance_on_top_up_screen"

#########################################################################################################
#       Description               : - **** User has active balance
#                                   - **** User doesn't has flexi saver before
#       Created By                : Novi
#       Specification by example  : - Active Balance more than zero (eg. 1000)
#                                   - Slider position move into the middle
#                                   - Amount in amount field should be half ofthe active balance (eg. 500)
#
########################################################################################################
  @android @uidatabound
  Scenario:JENI3160-C75834-the amount of money in amount field follow the slider head position
    Given User is on application screen
    And User check and click 2 times if allow or ok button exist
    And User click "authentication_button"
    When User login with credential "flexi_saver_cif_2"
    Then User click "pay_me_next_button_on_login_screen"
    When User click "dashboard_hamburger_icon"
    And User scroll to "pay_me_****_help_menu"
    And User check app language is "language"
    And User click "flexi_saver_for_save_it_menu"
    And User click "flexi_saver_close_button_on_popup_tutorial"
    Then User expect "flexi_saver_view_detail_on_save_it" is exist
    And User click "flexi_saver_view_detail_on_save_it"
    When User click "flexi_saver_top_up_on_save_it"
    Then "flexi_saver_slider_head" will be displayed
    And User slide "flexi_saver_slider_head" to "flexi_saver_middle_slider_scale" of slider width
    Then User check the amount of "flexi_saver_amount_field_on_top_up_screen" will be "flexi_saver_middle_slider_scale" of the total of "flexi_saver_active_balance_on_top_up_screen"

#########################################################################################################
#       Description               : - **** User has active balance
#                                   - **** User doesn't has flexi saver before
#       Created By                : Novi
#       Specification by example  : - Active Balance more than zero (eg. 1000)
#                                   - Slider position move to 3/4 slider line from the left
#                                   - Amount in amount field should be the same with active balance (eg. 750)
#
########################################################################################################
  @android @uidatabound
  Scenario:JENI3160-C75834-the amount of money in amount field follow the slider head position
    Given User is on application screen
    And User check and click 2 times if allow or ok button exist
    And User click "authentication_button"
    When User login with credential "flexi_saver_cif_2"
    Then User click "pay_me_next_button_on_login_screen"
    When User click "dashboard_hamburger_icon"
    And User scroll to "pay_me_****_help_menu"
    And User check app language is "language"
    And User click "flexi_saver_for_save_it_menu"
    And User click "flexi_saver_close_button_on_popup_tutorial"
    Then User expect "flexi_saver_view_detail_on_save_it" is exist
    And User click "flexi_saver_view_detail_on_save_it"
    When User click "flexi_saver_top_up_on_save_it"
    Then "flexi_saver_slider_head" will be displayed
    And User slide "flexi_saver_slider_head" to "flexi_saver_more_than_quarter_slider_scale" of slider width
    Then User check the amount of "flexi_saver_amount_field_on_top_up_screen" will be "flexi_saver_more_than_quarter_slider_scale" of the total of "flexi_saver_active_balance_on_top_up_screen"

#########################################################################################################
#       Description               : - **** User has active balance
#                                   - **** User doesn't has flexi saver before
#       Created By                : Novi
#       Specification by example  : - Active Balance more than zero (eg. 1000)
#                                   - Slider position move to 1/4 slider line from the left
#                                   - Amount in amount field should be the same with active balance (eg. 250)
#
########################################################################################################
  @android @uidatabound
  Scenario:JENI3160-C75834-the amount of money in amount field follow the slider head position
    Given User is on application screen
    And User check and click 2 times if allow or ok button exist
    And User click "authentication_button"
    When User login with credential "flexi_saver_cif_2"
    Then User click "pay_me_next_button_on_login_screen"
    When User click "dashboard_hamburger_icon"
    And User scroll to "pay_me_****_help_menu"
    And User check app language is "language"
    And User click "flexi_saver_for_save_it_menu"
    And User click "flexi_saver_close_button_on_popup_tutorial"
    Then User expect "flexi_saver_view_detail_on_save_it" is exist
    And User click "flexi_saver_view_detail_on_save_it"
    When User click "flexi_saver_top_up_on_save_it"
    Then "flexi_saver_slider_head" will be displayed
    And User slide "flexi_saver_slider_head" to "flexi_saver_quarter_slider_scale" of slider width
    Then User check the amount of "flexi_saver_amount_field_on_top_up_screen" will be "flexi_saver_quarter_slider_scale" of the total of "flexi_saver_active_balance_on_top_up_screen"

#########################################################################################################
#       Description               : - **** User has active balance
#                                   - **** User doesn't has flexi saver before
#       Created By                : Novi
#       Specification by example  : - Active Balance more than zero (eg. 1000)
#                                   - Slider position move to left-end (scale = 0)
#                                   - Amount in amount field should be zero (0)
########################################################################################################
  #This scenario need to revisit again, since currently active balance for all user still 0 and we can't continue to inspect the element
  @android @uidatabound
  Scenario:JENI3160-C75835-slider head position follow the amount of money in amount field - case left end
    Given User is logged in with cif "cif_requestor_3"
    And User change language to "language"
    And User click "dashboard_hamburger_icon"
    And User swipe up until found "****_contatcs_****_help_menu"
    And User click "flexi_saver_for_save_it_menu"
    And User click "flexi_saver_close_button_on_popup_tutorial"
    Then User expect "flexi_saver_view_detail_on_save_it" is exist
    And User click "flexi_saver_view_detail_on_save_it"
    When User click "flexi_saver_top_up_on_save_it"
    Then "flexi_saver_slider_head" will be displayed
    And User fill the amount "flexi_saver_amount_field_on_top_up_screen" to see the slider position of "flexi_saver_zero_amount" based on the total "flexi_saver_active_balance_on_top_up_screen"
    Then User will check the position of progress "flexi_saver_slider_progress" on slider "flexi_saver_slider_head" after updating the amount field "flexi_saver_amount_field_on_top_up_screen" based on "flexi_saver_active_balance_on_top_up_screen"

#########################################################################################################
#       Description               : - **** User has active balance
#                                   - **** User doesn't has flexi saver before
#       Created By                : Novi
#       Specification by example  : - Active Balance more than zero (eg. 1000)
#                                   - Slider position move to right-end (scale = 1)
#                                   - Amount in amount field should be zero (1000)
########################################################################################################
  #This scenario need to revisit again, since currently active balance for all user still 0 and we can't continue to inspect the element
  @android @uidatabound
  Scenario:JENI3160-C75835-slider head position follow the amount of money in amount field - case right end
    Given User is logged in with cif "cif_requestor_3"
    And User change language to "language"
    And User click "dashboard_hamburger_icon"
    And User swipe up until found "****_contatcs_****_help_menu"
    And User click "flexi_saver_for_save_it_menu"
    And User click "flexi_saver_close_button_on_popup_tutorial"
    Then User expect "flexi_saver_view_detail_on_save_it" is exist
    And User click "flexi_saver_view_detail_on_save_it"
    When User click "flexi_saver_top_up_on_save_it"
    Then "flexi_saver_slider_head" will be displayed
    And User fill the amount "flexi_saver_amount_field_on_top_up_screen" to see the slider position of "flexi_saver_slider_scale" based on the total "flexi_saver_active_balance_on_top_up_screen"
    Then User will check the position of progress "flexi_saver_slider_progress" on slider "flexi_saver_slider_head" after updating the amount field "flexi_saver_amount_field_on_top_up_screen" based on "flexi_saver_active_balance_on_top_up_screen"

#########################################################################################################
#       Description               : - **** User has active balance
#                                   - **** User doesn't has flexi saver before
#       Created By                : Novi
#       Specification by example  : - Active Balance more than zero (eg. 1000)
#                                   - Slider position move to right-end (scale = 0.5)
#                                   - Amount in amount field should be zero (500)
########################################################################################################
  #This scenario need to revisit again, since currently active balance for all user still 0 and we can't continue to inspect the element
  @android @uidatabound
  Scenario:JENI3160-C75835-slider head position follow the amount of money in amount field - case middle
    Given User is on flexi saver page from side menu with cif "save_it_flexi_saver_no_flexi_account" and language "language"
    And User click "save_it_flexi_saver_start_button"
    And System save balance "flexi_saver_active_balance_on_top_up_screen" value
    And User fill "save_it_flexi_saver_first_balance_textfield" with half active balance
    # Then User expect "flexi_saver_view_detail_on_save_it" is exist
    # And User click "flexi_saver_view_detail_on_save_it"
    # When User click "flexi_saver_top_up_on_save_it"
    Then "flexi_saver_slider_head" will be displayed
    And User fill the amount "flexi_saver_amount_field_on_top_up_screen" to see the slider position of "flexi_saver_middle_slider_scale" based on the total "flexi_saver_active_balance_on_top_up_screen"
    Then User will check the position of progress "flexi_saver_slider_progress" on slider "flexi_saver_slider_head" after updating the amount field "flexi_saver_amount_field_on_top_up_screen" based on "flexi_saver_active_balance_on_top_up_screen"

#########################################################################################################
#       Description               : - **** User has active balance
#                                   - **** User doesn't has flexi saver before
#       Created By                : Novi
#       Specification by example  : - Active Balance more than zero (eg. 1000)
#                                   - Slider position move to right-end (scale = 0.75)
#                                   - Amount in amount field should be zero (750)
########################################################################################################
  #This scenario need to revisit again, since currently active balance for all user still 0 and we can't continue to inspect the element
  @android @uidatabound
  Scenario:JENI3160-C75835-slider head position follow the amount of money in amount field - 3/4 slider line from the left
    Given User is logged in with cif "cif_requestor_3"
    And User change language to "language"
    And User click "dashboard_hamburger_icon"
    And User swipe up until found "****_contatcs_****_help_menu"
    And User click "flexi_saver_for_save_it_menu"
    And User click "flexi_saver_close_button_on_popup_tutorial"
    Then User expect "flexi_saver_view_detail_on_save_it" is exist
    And User click "flexi_saver_view_detail_on_save_it"
    When User click "flexi_saver_top_up_on_save_it"
    Then "flexi_saver_slider_head" will be displayed
    And User fill the amount "flexi_saver_amount_field_on_top_up_screen" to see the slider position of "flexi_saver_more_than_quarter_slider_scale" based on the total "flexi_saver_active_balance_on_top_up_screen"
    Then User will check the position of progress "flexi_saver_slider_progress" on slider "flexi_saver_slider_head" after updating the amount field "flexi_saver_amount_field_on_top_up_screen" based on "flexi_saver_active_balance_on_top_up_screen"

#########################################################################################################
#       Description               : - **** User has active balance
#                                   - **** User doesn't has flexi saver before
#       Created By                : Novi
#       Specification by example  : - Active Balance more than zero (eg. 1000)
#                                   - Slider position move to right-end (scale = 0.25)
#                                   - Amount in amount field should be zero (250)
########################################################################################################
  #This scenario need to revisit again, since currently active balance for all user still 0 and we can't continue to inspect the element
  @android @uidatabound
  Scenario:JENI3160-C75835-slider head position follow the amount of money in amount field - 1/4 slider line from the left
    Given User is logged in with cif "cif_requestor_3"
    And User change language to "language"
    And User click "dashboard_hamburger_icon"
    And User swipe up until found "****_contatcs_****_help_menu"
    And User click "flexi_saver_for_save_it_menu"
    And User click "flexi_saver_close_button_on_popup_tutorial"
    Then User expect "flexi_saver_view_detail_on_save_it" is exist
    And User click "flexi_saver_view_detail_on_save_it"
    When User click "flexi_saver_top_up_on_save_it"
    Then "flexi_saver_slider_head" will be displayed
    And User fill the amount "flexi_saver_amount_field_on_top_up_screen" to see the slider position of "flexi_saver_quarter_slider_scale" based on the total "flexi_saver_active_balance_on_top_up_screen"
    Then User will check the position of progress "flexi_saver_slider_progress" on slider "flexi_saver_slider_head" after updating the amount field "flexi_saver_amount_field_on_top_up_screen" based on "flexi_saver_active_balance_on_top_up_screen"

#JENI-3080
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

  @android @uidatabound
  Scenario: JENI3078-C80903-scenario : successfully withdrawn money from flexi saver account
    Given User is logged in with cif "save_it_flexi_saver_cif_requestor_2"
    And User change language to "language"
    When User click "dashboard_hamburger_icon"
    And User click "save_it_side_menu"
    And User click "tutorial_close"
    And User click "save_it_flexi_saver_view_detail_button"
    And User click "save_it_flexi_saver_withdraw_button"
    And User fill "save_it_flexi_saver_withdraw_field_amount" with "save_it_flexi_saver_withdraw_amount"
    And User click "save_it_flexi_saver_withdraw_submit_button"
    And User click "save_it_flexi_saver_withdraw_confirm_button"
    Then "save_it_flexi_saver_success_create_snack_bar" will be displayed
    Then User expect "save_it_flexi_saver_new_amount" will be minus with "save_it_flexi_saver_withdraw_amount"
    And "save_it_flexi_saver_title_screen" will be displayed

  @android @uidatabound
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

  @android @uidatabound @continuous
  Scenario: JENI3078-C80900-scenario : can't withdraw money more than minimum flexi balance 2
    And User fill "save_it_flexi_saver_withdraw_field_amount" with "save_it_flexi_saver_withdraw_amount_three"
    And User click "save_it_flexi_saver_withdraw_submit_button"
    Then "save_it_flexi_saver_withdraw_field_amount" will be displayed
    And User expect "save_it_flexi_saver_withdraw_field_amount_underline_text" equal with "save_it_flexi_saver_withdraw_exceeds_saving_balance_notification"

  @android @uidatabound @continuous
  Scenario: JENI3078-C80900-scenario : can't withdraw money more than minimum flexi balance 3
    And User fill "save_it_flexi_saver_withdraw_field_amount" with "save_it_flexi_saver_withdraw_amount_four"
    And User click "save_it_flexi_saver_withdraw_submit_button"
    Then "save_it_flexi_saver_withdraw_field_amount" will be displayed
    And User expect "save_it_flexi_saver_withdraw_field_amount_underline_text" equal with "save_it_flexi_saver_withdraw_below_minimum_balance_notification"

  @android @uidatabound @continuous
  Scenario: JENI3078-C80900-scenario : can't withdraw money more than minimum flexi balance 4
    And User fill "save_it_flexi_saver_withdraw_field_amount" with "save_it_flexi_saver_withdraw_amount"
    And User click "save_it_flexi_saver_withdraw_submit_button"
    Then "save_it_flexi_saver_withdraw_confirmation_page" will be displayed

  @android @uidatabound
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
    And User expect "save_it_flexi_saver_withdraw_field_amount" equal with "save_it_flexi_saver_withdraw_amount"