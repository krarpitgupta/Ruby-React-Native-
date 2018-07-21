@findus @run 
Feature: Find Us

# JENI-1208
@android @uispecific
Scenario:JENI1208-C75818-Verify that the DEPOSIT page is displayed when clicking on Deposit tab 
  Given User is on Dashboard screen in selected environment and logged with "save_it_cif_without_td"
  And User click "hamburger"
  And User swipe up until found "find_us_side_menu"
  And User click "find_us_side_menu"
  And User click "find_us_add_money_tab"
  Then "find_us_add_money_tab_screen" will be displayed

@android @uispecific @continuous
Scenario:JENI1208-C75824-Verify that some information of the Deposit page is displayed correctly by default 
  And "find_us_add_money_icon" will be displayed
  And "find_us_add_money_description" will be displayed
  And "find_us_add_money_timer" will be displayed
  And "find_us_add_money_qr_code" will be displayed

@android @uispecific
Scenario:JENI1208-C80928-Verify that the count down time on Deposit page work correctly 
  Given User is on Dashboard screen in selected environment and logged with "save_it_cif_without_td"
  And User click "hamburger"
  And User swipe up until found "find_us_side_menu"
  And User click "find_us_side_menu"
  And User click "find_us_add_money_tab"
  Then User expect "find_us_add_money_timer" equal with "find_us_add_money_qr_timer_start"
  And User wait 29 seconds
  Then User expect "find_us_add_money_timer" equal with "find_us_add_money_qr_timer_run_down"

@android @uispecific @continuous
Scenario:JENI1208-C80929-Verify that the regenerate warning pop up is displayed when the QR code is expired on Deposit page 
  And User wait 30 seconds
  Then "find_us_add_money_session_exp_notif" will be displayed

@android @uispecific @continuous
Scenario:JENI1208-C80932-Verify that the new QR code is regenerated directly when clicking on Regenerate button 
  And User click "find_us_add_money_session_exp_notif_new_code_button"
  Then User expect "find_us_add_money_timer" is not equal with "find_us_add_money_qr_timer_end"

@android @uispecific @continuous
Scenario:JENI1208-C80930-Verify that the Location page is returned when clicking on Back to Input button
  And User wait 60 seconds
  And User click "find_us_add_money_session_exp_notif_go_back_button"
  Then "find_us_location_list_container" will be displayed

#JENI-1207
@android @uispecific
Scenario:JENI1207-C75791 Verify that the Find Us page is opened from the Find Us widget correctly
  Given User is on Dashboard screen without login
  #And User scroll to "find us widget in dashboard"
  #And User click "find us widget in dashboard"
  #I using below step to replace the above commented step that not implemented yet in apps
  And User click "hamburger"
  And User scroll to "pay_me_****_help_menu"
  And User click "find_us_side_menu"
  Then "find_us_switch_text_hide_map" will be displayed

@android @uispecific
Scenario:JENI1207-C75792 Verify that the Find Us page is opened from the Find Us menu correctly
  Given User is on Dashboard screen without login
  And User click "hamburger"
  And User scroll to "pay_me_****_help_menu"
  And User click "find_us_side_menu"
  Then "find_us_switch_text_hide_map" will be displayed

@android @uispecific
Scenario:JENI1207-C75793 Verify that the WITHDRAW page is displayed when clicking on withdraw tab
  Given User is on Dashboard screen without login
  #And User scroll to "find us widget in dashboard"
  #And User click "find us widget in dashboard"
  #I using below step to replace the above commented step that not implemented yet in apps
  And User click "hamburger"
  And User scroll to "pay_me_****_help_menu"
  And User click "find_us_side_menu"
  And User click "find_us_withdraw_tab"
  Then "find_us_form_amount_input_withdraw" will be displayed

@android @uispecific
Scenario:JENI1207-C75794 Verify that some information of the Withdraw page is displayed correctly by default
  Given User is on Dashboard screen without login
  #And User scroll to "find us widget in dashboard"
  #And User click "find us widget in dashboard"
  #I using below step to replace the above commented step that not implemented yet in apps
  And User click "hamburger"
  And User scroll to "pay_me_****_help_menu"
  And User click "find_us_side_menu"
  And User click "find_us_withdraw_tab"
  Then "find_us_form_amount_input_withdraw" will be displayed
  Then "find_us_active_balance" will be displayed
  Then "find_us_withdraw_amount_0" will be displayed
  Then "find_us_withdraw_amount_1" will be displayed
  Then "find_us_withdraw_amount_2" will be displayed
  Then "find_us_withdraw_amount_3" will be displayed
  Then "find_us_withdraw_amount_4" will be displayed
  Then "find_us_withdraw_amount_5" will be displayed

@android @uispecific
Scenario:JENI1207-C75795 Verify that user can input the amount manually into the Amount field
  Given User is on Dashboard screen without login
  #And User scroll to "find us widget in dashboard"
  #And User click "find us widget in dashboard"
  #I using below step to replace the above commented step that not implemented yet in apps
  And User click "hamburger"
  And User scroll to "pay_me_****_help_menu"
  And User click "find_us_side_menu"
  And User click "find_us_withdraw_tab"
  And User fill "find_us_form_amount_input_withdraw" with "find_us_withdraw_amount"

@android @uispecific
Scenario:JENI1207-C75796 Verify that user can select any amount on the fast amount list
  Given User is on Dashboard screen without login
  #And User scroll to "find us widget in dashboard"
  #And User click "find us widget in dashboard"
  #I using below step to replace the above commented step that not implemented yet is apps
  And User click "hamburger"
  And User scroll to "pay_me_****_help_menu"
  And User click "find_us_side_menu"
  And User click "find_us_withdraw_tab"
  And User click "find_us_withdraw_amount_0"
  Then User expect "find_us_form_amount_input_withdraw" equal with "find_us_withdraw_amount_0_data"

@android @uispecific
Scenario:JENI1207-C75799 Verify that the max amount for each time to withdraw
  Given User is on Dashboard screen without login
  #And User scroll to "find us widget in dashboard"
  #And User click "find us widget in dashboard"
  #I using below step to replace the above commented step that not implemented yet in apps
  And User click "hamburger"
  And User scroll to "pay_me_****_help_menu"
  And User click "find_us_side_menu"
  And User click "find_us_withdraw_tab"
  And User fill "find_us_form_amount_input_withdraw" with "find_us_withdraw_amount_more_than_max_allowed"
  Then User expect "find_us_withdraw_amount_error_message" equal with "find_us_max_withdraw_amount_error_message"

@android @uispecific @continuous
Scenario:JENI1207-C75799 Verify that the max amount for each time to withdraw
  When User fill "find_us_form_amount_input_withdraw" with "find_us_withdraw_amount_less_than_min_allowed"
  Then User expect "find_us_withdraw_amount_error_message" equal with "find_us_min_withdraw_amount_error_message"

@android @uispecific
Scenario:JENI1207-C75825 Verify that the Withdraw page is displayed again when clicking on Back to Input button
  Given User is on Dashboard screen without login
  #And User scroll to "find us widget in dashboard"
  #And User click "find us widget in dashboard"
  #I using below step to replace the above commented step that not implemented yet in apps
  And User click "hamburger"
  And User scroll to "pay_me_****_help_menu"
  And User click "find_us_side_menu"
  And User click "find_us_withdraw_tab"
  And User click "find_us_withdraw_amount_0"
  And User swipe up until found "find_us_withdraw_button"
  And User click "find_us_withdraw_button"
  And "find_us_withdraw_qr_code_container" will be displayed
  And User click "back_button"
  Then User expect "find_us_form_amount_input_withdraw" equal with "find_us_withdraw_amount_0_data"

@android @uispecific
Scenario:JENI1206-C80959 [Scenario]User can go back the previous page
  Given User is on Dashboard screen without login
  And User click "hamburger"
  And User scroll to "pay_me_****_help_menu"
  And User click "find_us_side_menu"
  Then User press back button on device
  Then "dashboard_account_status_widget_container" will be displayed

@android @uispecific
Scenario:JENI3638-C81041 [Scenario]Navigate to the Search page
  Given User is on Dashboard screen without login
  And User click "hamburger"
  And User scroll to "pay_me_****_help_menu"
  And User click "find_us_side_menu"
  Then "find_us_search_icon" will be displayed
