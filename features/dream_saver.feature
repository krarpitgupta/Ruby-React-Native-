@dreamsaver @dreamsaver_flexisaver  
Feature: Dream Saver

# JENI-4427
@android @uidatabound @ios
Scenario:JENI4427-C80861-[Functional] verify when user want to see dream saver from dashboard 
  Given User is on Dashboard screen in selected environment and logged with "save_it_cif_with_ds"
  And User swipe up until found "save_it_widget_dream_saver_balance"
  And User click "save_it_widget_dream_saver_balance"
  And User wait 3 seconds
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  Then "save_it_container" will be displayed
  And User expect "save_it_dream_saver_list_expand" is exist

@android @uidatabound @ios
Scenario:JENI4427-C80862-[Functional] verify when user want to see dream saver from navigation menu 
  Given User is on Dashboard screen in selected environment and logged with "save_it_cif_with_ds"
  And User click "dashboard_hamburger_icon"
  And User click "save_it_side_menu"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  Then "save_it_container" will be displayed

@android @uidatabound @ios
Scenario:JENI4427-C80863-[Scenario] Expand dream saver list 
  Given User is on Dashboard screen in selected environment and logged with "save_it_cif_with_ds"
  And User click "dashboard_hamburger_icon"
  And User click "save_it_side_menu"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User swipe up until found "save_it_dream_saver_list_collapse"
  And User click "save_it_dream_saver_list_collapse"
  Then "save_it_dream_saver_list_expand" will be displayed
  And User swipe up until found "save_it_dream_saver_list_collapse"
  And User click "save_it_dream_saver_list_collapse"
  Then User expect "save_it_dream_saver_list_expand" doesn't exist

@android @uidatabound
Scenario:JENI4427-C80865-[Content] verify dream saver balance is total current balance in dream saver 
  Given User is on Dashboard screen in selected environment and logged with "save_it_cif_with_ds"
  And User click "dashboard_hamburger_icon"
  And User click "save_it_side_menu"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And System save "save_it_overview_dream_saver_amount" value
  And User swipe up until found "save_it_dream_saver_list_collapse" 
  And User click "save_it_dream_saver_list_collapse"
  And User swipe up until found "save_it_dream_saver_list_collapse" 
  Then User expect the total of "save_it_dream_saver_list_item_amount" list displayed equal to saved value number 1

@android @uidatabound @ios
Scenario:JENI4427-C94339-[Scenario] No Dream Saver 
  Given User is on Dashboard screen in selected environment and logged with "save_it_cif_no_saving"
  And User click "dashboard_hamburger_icon"
  And User click "save_it_side_menu"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User expect "save_it_overview_dream_saver_amount" doesn't exist

# JENI-4186
@android @ios @uispecific
# JENI4186-C80943-[Scenario] Create Name for Dream Saver
# JENI4186-C81067-[Function] Verify The DS Name will be Cut Off if User Input More Than 30 Characters
# JENI4186-C81068-[Function] Verify There is an Error Notification if User leave the field blank
Scenario:JENI4186-C80943#C81067#C81068-Create Name for Dream Saver
  Given User is on Dashboard screen in selected environment and logged with "save_it_cif_without_ds"
  And User click "dashboard_hamburger_icon"
  And User click "save_it_side_menu"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User click "save_it_create_new_dream_saver"
  Then "save_it_dream_saver_creation_page" will be displayed
  # assertion for name input field is filled correctly
  And User fill "save_it_dream_saver_name_input_field" with "save_it_dream_saver_name_input_1"
  Then User expect "save_it_dream_saver_name_input_field" equal with "save_it_dream_saver_name_input_1"
  And User fill "save_it_dream_saver_name_input_field" with "save_it_dream_saver_name_input_2"
  Then User expect "save_it_dream_saver_name_input_field" equal with "save_it_dream_saver_name_input_2"
  # assertion for name input field is fileed with name over maximum length and scenario C81067
  And User fill "save_it_dream_saver_name_input_field" with "save_it_dream_saver_name_input_over"
  Then User expect "save_it_dream_saver_name_input_field" equal with "save_it_dream_saver_name_input_over_result"
  And User expect "save_it_dream_saver_name_input_field" equal with 30 characters 
  # assertion for name input field is filled with name between spaces
  And User fill "save_it_dream_saver_name_input_field" with "save_it_dream_saver_name_input_between_spaces"
  Then User expect "save_it_dream_saver_name_input_field" equal with "save_it_dream_saver_name_input_between_spaces_result"
  # assertion for name input field is empty/blank and scenario C81068
  And User fill "save_it_dream_saver_name_input_field" with "save_it_dream_saver_empty"
  Then User expect "save_it_dream_saver_name_input_field" equal with "save_it_dream_saver_name_default"
  And User expect "save_it_dream_saver_name_input_hint" equal with "save_it_dream_saver_name_field_blank_notification"
  # assertion for name input field is filled with spaces only
  And User fill "save_it_dream_saver_name_input_field" with "save_it_dream_saver_name_input_space_only"
  Then User expect "save_it_dream_saver_name_input_field" equal with "save_it_dream_saver_name_input_space_only"
  And User expect "save_it_dream_saver_name_input_hint" equal with "save_it_dream_saver_name_field_blank_notification"

@android @ios @uispecific
Scenario:JENI4186-C81069-[Function] Verify The Next Button is Disable when User Input more than 30 char or field is blank
  Given User is on Dashboard screen in selected environment and logged with "save_it_cif_without_ds"
  And User click "dashboard_hamburger_icon"
  And User click "save_it_side_menu"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User click "save_it_create_new_dream_saver"
  And User fill "save_it_dream_saver_name_input_field" with "save_it_dream_saver_empty"
  And User click "save_it_dream_saver_next_button"
  Then User expect "save_it_dream_saver_name_input_hint" equal with "save_it_dream_saver_name_field_blank_notification"

# JENI-4195
@android @ios @uispecific
# also include for other scenarios, which:
# JENI4195-C80944-[Scenario] Verify Dream Saver Target Amount
# JENI4195-C81070-[Function] Verify User cannot input the Target Amount less than Minimum Target Amount (Currently Min. Target Amount is 100,000) 
# JENI4195-C81071-[Function] Verify User cannot input the Target Amount more than Maximum Target Amount (Currently Min. Target Amount is 1,000,000,000) 
Scenario:JENI4195-C80944#C81070#C81071-Verify Dream Saver Target Amount
  Given User is on Dashboard screen in selected environment and logged with "save_it_cif_without_ds"
  And User click "dashboard_hamburger_icon"
  And User click "save_it_side_menu"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User click "save_it_create_new_dream_saver"
  And User check and click "save_it_maxi_saver_overview_ok_got_it_button" if exist
  Then "save_it_dream_saver_creation_page" will be displayed
  And User fill "save_it_dream_saver_name_input_field" with "save_it_dream_saver_name_input_1"
  # assertion for target amount filled with minimum amount
  And User fill "save_it_dream_saver_target_amount_input_field" with "save_it_dream_saver_target_amount_input_bottom_boundary"
  Then User expect "save_it_dream_saver_target_amount_hint" doesn't exist
  # assertion for target amount filled with maximum amount
  And User fill "save_it_dream_saver_target_amount_input_field" with "save_it_dream_saver_target_amount_input_top_boundary"
  Then User expect "save_it_dream_saver_target_amount_hint" doesn't exist
  # assertion for target amount filled with between boundary amount
  And User fill "save_it_dream_saver_target_amount_input_field" with "save_it_dream_saver_target_amount_input"
  Then User expect "save_it_dream_saver_target_amount_hint" doesn't exist
  # assertion for target amount filled less than minimum amount and Scenario C81070
  And User fill "save_it_dream_saver_target_amount_input_field" with "save_it_dream_saver_target_amount_input_below_boundary"
  Then User expect "save_it_dream_saver_target_amount_hint" is exist
  And User expect "save_it_dream_saver_target_amount_hint" equal with "save_it_dream_saver_target_amount_minimum_notification"
  # assertion for target amount filled more than maximum amount and Scenario C81701
  And User fill "save_it_dream_saver_target_amount_input_field" with "save_it_dream_saver_target_amount_input_above_boundary"
  Then User expect "save_it_dream_saver_target_amount_hint" is exist
  And User expect "save_it_dream_saver_target_amount_hint" equal with "save_it_dream_saver_target_amount_maximum_notification"

@continuous @android @ios @uispecific
Scenario:JENI4195-C81072-[Function] Verify User only able input the Numeric Characters 
  And User fill "save_it_dream_saver_target_amount_input_field" with "save_it_dream_saver_target_amount_input"
  Then User expect "save_it_dream_saver_target_amount_hint" doesn't exist
  And User fill "save_it_dream_saver_target_amount_input_field" with "save_it_dream_saver_name_input_1"
  Then User expect "save_it_dream_saver_target_amount_hint" is exist
  And User expect "save_it_dream_saver_target_amount_hint" equal with "save_it_dream_saver_target_amount_minimum_notification"

@android @ios @uispecific
Scenario:JENI4195-C80945-[Scenario] Verify the activate of Next Button
  Given User is on Dashboard screen in selected environment and logged with "save_it_cif_without_ds"
  And User click "dashboard_hamburger_icon"
  And User click "save_it_side_menu"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User click "save_it_create_new_dream_saver"
  And User check and click "save_it_maxi_saver_overview_ok_got_it_button" if exist
  Then "save_it_dream_saver_creation_page" will be displayed
  And User fill "save_it_dream_saver_name_input_field" with "save_it_dream_saver_name_input_1"
  # assertion for verify next button when target amount filled less than minimum amount 
  And User fill "save_it_dream_saver_target_amount_input_field" with "save_it_dream_saver_target_amount_input_below_boundary"
  Then User expect "save_it_dream_saver_target_amount_hint" is exist
  And User expect "save_it_dream_saver_target_amount_hint" equal with "save_it_dream_saver_target_amount_minimum_notification"
  And User click "save_it_dream_saver_next_button"
  Then User expect "save_it_dream_saver_creation_page" is exist
  # assertion for verify next button when target amount filled more than maximum amount
  And User fill "save_it_dream_saver_target_amount_input_field" with "save_it_dream_saver_target_amount_input_above_boundary"
  Then User expect "save_it_dream_saver_target_amount_hint" is exist
  And User expect "save_it_dream_saver_target_amount_hint" equal with "save_it_dream_saver_target_amount_maximum_notification"
  And User click "save_it_dream_saver_next_button"
  Then User expect "save_it_dream_saver_creation_page" is exist
  # assertion for verify next button when target amount filled with valid value
  And User fill "save_it_dream_saver_target_amount_input_field" with "save_it_dream_saver_target_amount_input"
  Then User expect "save_it_dream_saver_target_amount_hint" doesn't exist
  And User click "save_it_dream_saver_next_button"
  Then User expect "save_it_dream_saver_creation_page" doesn't exist

# JENI-4393
@android @ios @uispecific
Scenario:JENI41393-C80946-[Scenario] Upload picture for new Dream Saver 
  Given User is on Dashboard screen in selected environment and logged with "save_it_cif_without_ds"
  And User click "dashboard_hamburger_icon"
  And User click "save_it_side_menu"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User click "save_it_create_new_dream_saver"
  And User check and click "save_it_maxi_saver_overview_ok_got_it_button" if exist
  And User click "save_it_dream_saver_upload_picture"
  Then "save_it_dream_saver_upload_picture_from_camera" will be displayed
  And "save_it_dream_saver_upload_picture_from_gallery" will be displayed
  And "save_it_dream_saver_upload_picture_cancel_button" will be displayed
  # assertion for cancel upload picture using 'Cancel' button
  And User click "save_it_dream_saver_upload_picture_cancel_button"
  Then "save_it_dream_saver_creation_page" will be displayed
  And User expect "save_it_dream_saver_upload_picture_new_picture" doesn't exist
  # assertion for take and upload new picture from camera
  And User click "save_it_dream_saver_upload_picture"
  And User click "save_it_dream_saver_upload_picture_from_camera"
  And User wait 5 seconds
  And User check and click allow or ok button if exist
  And User click "save_it_dream_saver_upload_picture_camera_shutter"
  Then User expect "save_it_dream_saver_upload_picture_new_picture" is exist

#JENI4250
@android @uidatabound
Scenario: JENI4250-C80889-[Scenario]In progress dream saver detail (active)
  Given User is logged in with cif "save_it_cif_with_ds"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "save_it_title_widget_menu"
  And User click "dashboard_save_it_icon"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User swipe up until found "save_it_maxi_saver_list_collapse"
  And User click "save_it_maxi_saver_list_collapse"
  Then "save_it_dream_saver_list_expanded" will be displayed
  And User swipe up to "save_it_dream_saver_name_1" text
  And User click element with text "save_it_dream_saver_name_1"
  Then element with "save_it_dream_saver_name_1" text will be displayed
  Then "save_it_dream_saver_detail_tab_savings_item" will be displayed
  Then "save_it_dream_saver_detail_tab_history_item" will be displayed
  Then "save_it_dream_saver_detail_reeaching_by_label" will be displayed
  Then "save_it_dream_saver_detail_date_label" will be displayed
  Then "save_it_dream_saver_detail_month_year_label" will be displayed
  Then "save_it_dream_saver_detail_progress_bar" will be displayed
  Then "save_it_dream_saver_detail_dream_amount" will be displayed
  Then "save_it_dream_saver_detail_target_amount" will be displayed
  Then "save_it_dream_saver_detail_frequency" will be displayed
  Then "save_it_dream_saver_detail_saving_amount_label" will be displayed 
  Then "save_it_dream_saver_detail_change_amount" will be displayed 
  Then "save_it_dream_saver_detail_add_money" will be displayed 
  Then "save_it_dream_saver_detail_pause_savings" will be displayed 

@android @uidatabound
Scenario: JENI4250-C80890-[Functional] Verify that the TRANSACTION tab button will open transaction history
  Given User is logged in with cif "save_it_cif_with_ds"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "save_it_title_widget_menu"
  And User click "dashboard_save_it_icon"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User swipe up until found "save_it_maxi_saver_list_collapse"
  And User click "save_it_maxi_saver_list_collapse"
  Then "save_it_dream_saver_list_expanded" will be displayed
  And User swipe up to "save_it_dream_saver_name_1" text
  And User click element with text "save_it_dream_saver_name_1"
  Then element with "save_it_dream_saver_name_1" text will be displayed
  And User click "save_it_dream_saver_detail_tab_history_item"
  #Then "" will be displayed

@android @uidatabound
Scenario: JENI4250-C80891-[Functional] Verify that the TRANSACTION tab button will open transaction history
  Given User is logged in with cif "save_it_cif_with_ds"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "save_it_title_widget_menu"
  And User click "dashboard_save_it_icon" until "card_center_close_tutorial" displayed
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User swipe up until found "save_it_maxi_saver_list_collapse"
  And User click "save_it_maxi_saver_list_collapse"
  Then "save_it_dream_saver_list_expanded" will be displayed
  And User swipe up to "save_it_dream_saver_name_1" text
  And User click element with text "save_it_dream_saver_name_1"
  Then element with "save_it_dream_saver_name_1" text will be displayed
  And User click "save_it_dream_saver_detail_tab_savings_item"
  Then "save_it_dream_saver_detail_reeaching_by_label" will be displayed
  Then "save_it_dream_saver_detail_date_label" will be displayed

@android @uidatabound
Scenario: JENI4250-C80892-[Scenario] Change recurring saving amount
  Given User is logged in with cif "save_it_cif_with_ds"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "save_it_title_widget_menu"
  And User click "dashboard_save_it_icon" until "card_center_close_tutorial" displayed
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User swipe up until found "save_it_maxi_saver_list_collapse"
  And User click "save_it_maxi_saver_list_collapse"
  Then "save_it_dream_saver_list_expanded" will be displayed
  And User swipe up to "save_it_dream_saver_name_1" text
  And User click element with text "save_it_dream_saver_name_1"
  Then element with "save_it_dream_saver_name_1" text will be displayed
  And User click "save_it_dream_saver_detail_change_amount"
  #Then "simulation_page" will be displayed
 
@android @uidatabound
Scenario: JENI4250-C80893-[Scenario] Add money to dream saver
  Given User is logged in with cif "save_it_cif_with_ds"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User click "dashboard_hamburger_icon"
  And User click "save_it_side_menu"
  And User check and click "card_center_close_tutorial" if exist
  And User click "save_it_maxi_saver_list_collapse"
  And User swipe up to "save_it_dream_saver_name_1" text
  And User click element with text "save_it_dream_saver_name_1"
  And User click "save_it_dream_saver_detail_add_money"
  Then "save_it_dream_saver_detail_top_up_from_my_balance" will be displayed
  And "save_it_dream_saver_detail_top_up_request_others" will be displayed

@android @uidatabound
Scenario: JENI4250-C80894-[Scenario] Pause saving
  Given User is logged in with cif "save_it_cif_with_ds"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "save_it_title_widget_menu"
  And User click "dashboard_save_it_icon" until "card_center_close_tutorial" displayed
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User swipe up until found "save_it_maxi_saver_list_collapse"
  And User click "save_it_maxi_saver_list_collapse"
  Then "save_it_dream_saver_list_expanded" will be displayed
  And User swipe up to "save_it_dream_saver_name_1" text
  And User click element with text "save_it_dream_saver_name_1"
  Then element with "save_it_dream_saver_name_1" text will be displayed
  And User click "save_it_dream_saver_detail_pause_savings"
  #THEN it will pause the the DS

@android @uidatabound
Scenario: JENI4250-C94340-[Scenario] Dream saver detail
  Given User is logged in with cif "save_it_cif_with_ds"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "save_it_side_menu"
  And User check and click "card_center_close_tutorial" if exist
  And User click "save_it_dream_saver_list_collapse"
  Then "save_it_dream_saver_list_expanded" will be displayed
  And User swipe up to "save_it_dream_saver_name_1" text
  And User click element with text "save_it_dream_saver_name_1"
  Then element with "save_it_dream_saver_name_1" text will be displayed
  Then "save_it_dream_saver_detail_tab_savings_item" will be displayed
  Then "save_it_dream_saver_detail_tab_history_item" will be displayed
  # Then "save_it_dream_saver_detail_reeaching_by_label" will be displayed
  # Then "save_it_dream_saver_detail_date_label" will be displayed
  # Then "save_it_dream_saver_detail_month_year_label" will be displayed
  Then "save_it_dream_saver_detail_progress_bar" will be displayed
  Then "save_it_dream_saver_detail_target_date" will be displayed
  Then "save_it_dream_saver_detail_recurring_amount" will be displayed
  Then "save_it_dream_saver_detail_target_amount" will be displayed
  Then "save_it_dream_saver_detail_dream_amount" will be displayed
  # Then "save_it_dream_saver_detail_frequency" will be displayed
  # Then "save_it_dream_saver_detail_saving_amount_label" will be displayed 
  # Then "save_it_dream_saver_detail_change_amount" will be displayed 
  # Then "save_it_dream_saver_detail_add_money" will be displayed 
  # Then "save_it_dream_saver_detail_pause_savings" will be displayed 

@android @uidatabound
Scenario: JENI4250-C94343-[Scenario] Back to save it page
  Given User is logged in with cif "save_it_cif_with_ds"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User click "dashboard_hamburger_icon"
  And User click "save_it_side_menu"
  And User check and click "card_center_close_tutorial" if exist
  And User click "save_it_dream_saver_list_collapse"
  And User swipe up to "save_it_dream_saver_name_1" text
  And User click element with text "save_it_dream_saver_name_1"
  Then element with "save_it_dream_saver_name_1" text will be displayed
  And User click "back_button"
  Then "save_it_container" will be displayed

@android @uidatabound
Scenario: JENI4250-C94344-[Scenario] Edit dream saver
  Given User is logged in with cif "save_it_cif_with_ds"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User click "dashboard_hamburger_icon"
  And User click "save_it_side_menu"
  And User check and click "card_center_close_tutorial" if exist
  And User click "save_it_dream_saver_list_collapse"
  And User swipe up to "save_it_dream_saver_name_1" text
  And User click element with text "save_it_dream_saver_name_1"
  And User click "save_it_dream_saver_detail_edit_button"
  Then "save_it_dream_saver_creation_page" will be displayed

#JENI4258
@android @uidatabound
Scenario: JENI4258-C81031-[Scenario] Create new dream saver
    Given User is on Save It screen in selected environment and logged with "save_it_cif_with_ds"
    And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
    And User click "save_it_create_new_dream_saver"
    And User fill "save_it_dream_saver_name_input_field" with "save_it_dream_saver_name_input_1"
    And User fill "save_it_dream_saver_target_amount_input_field" with "save_it_value_6"
    And User click "save_it_dream_saver_next_button"
    And User click "save_it_dream_saver_recurring_next_button"
    And User click "save_it_dream_saver_confirmation_button"
    And User click "save_it_dream_saver_name_input_1" text
    And User click "save_it_dream_saver_detail_tab_history_item"
    Then element with "save_it_first_deposit_avatar" text will be displayed
    And element with "save_it_first_deposit" text will be displayed
    And element with "save_it_value_6_label" text will be displayed

  @android @uidatabound @endtoend
  Scenario: JENI4258-C81032-[Scenario] Recurring saving daily/weekly/monthly
    Given User is on Save It screen in selected environment and logged with "save_it_cif_with_ds"
    And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
    And User click "save_it_dream_saver_name_input_1" text
    And User click "save_it_dream_saver_detail_tab_history_item"
    Then element with "save_it_daily_saving_avatar" text will be displayed
    And element with "save_it_daily_saving" text will be displayed

  @android @uidatabound
  Scenario: JENI4258-C81033-[Scenario] Top up more money to existing DS
    Given User is logged in with cif "save_it_cif_with_ds"
    And User change language to "language"
    Then "dashboard" will be displayed
    And User swipe up until found "save_it_title_widget_menu"
    And User click "dashboard_save_it_icon" until "card_center_close_tutorial" displayed
    And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
    And User swipe up until found "save_it_dream_saver_list_collapse"
    And User click "save_it_dream_saver_list_collapse"
    Then "save_it_dream_saver_list_expanded" will be displayed
    And User swipe up to "save_it_dream_saver_name_1" text
    And User click element with text "save_it_dream_saver_name_1"
    Then element with "save_it_dream_saver_name_1" text will be displayed
    And User click "save_it_flexi_saver_top_up_button"
    #WHEN user goes to DS Transaction History 
    #THEN user will see the transaction history of top up saving

  @android @uidatabound
  Scenario: JENI4258-C81034-[Scenario] Monthly interest
    Given User is logged in with cif "save_it_cif_with_ds"
    And User change language to "language"
    Then "dashboard" will be displayed
    And User swipe up until found "save_it_title_widget_menu"
    And User click "dashboard_save_it_icon" until "card_center_close_tutorial" displayed
    And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
    And User swipe up until found "save_it_dream_saver_list_collapse"
    And User click "save_it_dream_saver_list_collapse"
    Then "save_it_dream_saver_list_expanded" will be displayed
    And User swipe up to "save_it_dream_saver_name_1" text
    And User click element with text "save_it_dream_saver_name_1"
    Then element with "save_it_dream_saver_name_1" text will be displayed
    And User click "save_it_dream_saver_detail_tab_history_item"
    Then element with "save_it_dream_saver_interest_history_label" text will be displayed

  @android @uidatabound
  Scenario: JENI4258-C81035-[Scenario] Tax on interest
    Given User is logged in with cif "save_it_cif_with_ds"
    And User change language to "language"
    Then "dashboard" will be displayed
    And User swipe up until found "save_it_title_widget_menu"
    And User click "dashboard_save_it_icon" until "card_center_close_tutorial" displayed
    And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
    And User swipe up until found "save_it_dream_saver_list_collapse"
    And User click "save_it_dream_saver_list_collapse"
    Then "save_it_dream_saver_list_expanded" will be displayed
    And User swipe up to "save_it_dream_saver_name_1" text
    And User click element with text "save_it_dream_saver_name_1"
    Then element with "save_it_dream_saver_name_1" text will be displayed
    And User click "save_it_dream_saver_detail_tab_history_item"
    Then element with "save_it_dream_saver_tax_history_label" text will be displayed

  @android @uidatabound
  Scenario: JENI4258-C81036-[Scenario] Request money
    Given User is logged in with cif "save_it_cif_with_ds"
    And User change language to "language"
    Then "dashboard" will be displayed
    And User swipe up until found "save_it_title_widget_menu"
    And User click "dashboard_save_it_icon" until "card_center_close_tutorial" displayed
    And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
    And User swipe up until found "save_it_dream_saver_list_collapse"
    And User click "save_it_dream_saver_list_collapse"
    Then "save_it_dream_saver_list_expanded" will be displayed
    And User swipe up to "save_it_dream_saver_name_1" text
    And User click element with text "save_it_dream_saver_name_1"
    Then element with "save_it_dream_saver_name_1" text will be displayed
    And User click "save_it_dream_saver_detail_tab_history_item"
    Then element with "save_it_dream_saver_send_money_label" text will be displayed

  @android @uidatabound
  Scenario: JENI4258-C81037-[Scenario] Edit new dream saver
    Given User is logged in with cif "save_it_cif_with_ds"
    And User change language to "language"
    Then "dashboard" will be displayed
    And User swipe up until found "save_it_title_widget_menu"
    And User click "dashboard_save_it_icon" until "card_center_close_tutorial" displayed
    And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
    And User swipe up until found "save_it_dream_saver_list_collapse"
    And User click "save_it_dream_saver_list_collapse"
    Then "save_it_dream_saver_list_expanded" will be displayed
    And User swipe up to "save_it_dream_saver_name_1" text
    And User click element with text "save_it_dream_saver_name_1"
    Then element with "save_it_dream_saver_name_1" text will be displayed
    And User click "save_it_dream_saver_detail_edit_button"
    #And user edit
    And User click "save_it_dream_saver_detail_tab_history_item"
    Then element with "save_it_dream_saver_send_money_label" text will be displayed

  # @android @uidatabound
  # Scenario: JENI4258-C81038-[Scenario] Download transaction history
  #   Given User is logged in with cif "save_it_cif_with_ds"
  #   And User change language to "language"
  #   Then "dashboard" will be displayed
  #   And User swipe up until found "save_it_title_widget_menu"
  #   And User click "dashboard_save_it_icon" until "card_center_close_tutorial" displayed
  #   And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  #   And User swipe up until found "save_it_dream_saver_list_collapse"
  #   And User click "save_it_dream_saver_list_collapse"
  #   Then "save_it_dream_saver_list_expanded" will be displayed
  #   And User swipe up to "save_it_dream_saver_name_1" text
  #   And User click element with text "save_it_dream_saver_name_1"
  #   Then element with "save_it_dream_saver_name_1" text will be displayed
  #   And User click "save_it_dream_saver_detail_tab_history_item"
  #   #Then User click "download_history"

#JENI4184
@android @uidatabound
Scenario: JENI4184-C80851-[Scenario] User is able to create 10 account as max
  Given User is logged in with cif "save_it_cif_with_max_active_ds"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "save_it_side_menu"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User click "save_it_create_new_dream_saver"
  Then "save_it_dream_saver_creation_page" will be displayed
  # Then "save_it_dream_saver_name_input_field" will be displayed
  # And User fill "save_it_dream_saver_name_input_field" with "save_it_dream_saver_create_name"
  # And User fill "save_it_dream_saver_target_amount_input_field" with "save_it_dream_saver_create_amount"
  # And User click "save_it_dream_saver_next_button"
  #WHEN user goes to DS Transaction History
  #THEN user will see the transaction history of creating new DS
  # And User check and click "save_it_maxi_saver_overview_ok_got_it_button" if exist
  # Then "save_it_dream_saver_creation_page" will be displayed
  And User fill "save_it_dream_saver_name_input_field" with "save_it_dream_saver_name_input_1"
  And User fill "save_it_dream_saver_target_amount_input_field" with "save_it_dream_saver_one_million_target_amount"
  And User click "save_it_dream_saver_next_button"
  And User fill "save_it_dream_saver_recurring_amount_debit" with "save_it_value_6"
  And User click "save_it_dream_saver_recurring_next_button"
  And User click "save_it_dream_saver_confirmation_button"
  And User wait 10 seconds
  Then "save_it_maxi_saver_loading_screen" will be displayed

@android @uidatabound @ios
Scenario: JENI4184-C80852-[Scenario] Navigate to Dream Saver screen
  Given User is logged in with cif "save_it_cif_with_ds"
  And User change language to "language"
    # Then "dashboard" will be displayed
    # And User swipe up until found "save_it_widget_create_dream_saver"
    # Then User click "save_it_widget_create_dream_saver" 
  And User click "dashboard_hamburger_icon"
  And User click "save_it_side_menu"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User click "save_it_create_new_dream_saver"
  Then "save_it_dream_saver_creation_page" will be displayed

@android @uidatabound @ios
Scenario: JENI4184-C80856-[Scenario] Input target amount
  Given User is logged in with cif "save_it_cif_with_ds"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "save_it_side_menu"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User click "save_it_create_new_dream_saver"
  And User fill "save_it_dream_saver_target_amount_input_field" with "save_it_zero_value"
  Then User expect "save_it_dream_saver_target_amount_hint" equal with "save_it_dream_saver_target_amount_minimum_notification"
  And User fill "save_it_dream_saver_target_amount_input_field" with "save_it_dream_saver_target_amount_input_below_boundary"
  Then User expect "save_it_dream_saver_target_amount_hint" equal with "save_it_dream_saver_target_amount_minimum_notification"
  And User fill "save_it_dream_saver_target_amount_input_field" with "save_it_dream_saver_target_amount_input_bottom_boundary"
  Then User expect "save_it_dream_saver_target_amount_hint" doesn't exist
  And User fill "save_it_dream_saver_target_amount_input_field" with "save_it_dream_saver_target_amount_input_top_boundary"
  Then User expect "save_it_dream_saver_target_amount_hint" doesn't exist
  And User fill "save_it_dream_saver_target_amount_input_field" with "save_it_dream_saver_target_amount_input_above_boundary"
  Then User expect "save_it_dream_saver_target_amount_hint" equal with "save_it_dream_saver_target_amount_maximum_notification"

@android @uidatabound 
Scenario: JENI4184-C80857-[Scenario] Input first balance and recurring saving amount
  Given User is on Save It screen in selected environment and logged with "save_it_cif_with_ds"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User click "save_it_create_new_dream_saver"
  And User fill "save_it_dream_saver_name_input_field" with "save_it_dream_saver_name_input_1"
  And User fill "save_it_dream_saver_target_amount_input_field" with "save_it_dream_saver_one_million_target_amount"
  And User click "save_it_dream_saver_next_button"
  # insufficient active balance, first balance > active balance
  And User fill "save_it_dream_saver_first_balance" with "save_it_dream_saver_first_balance_over"
  And User fill "save_it_dream_saver_recurring_amount_debit" with "save_it_dream_saver_target_amount_input_bottom_boundary"
  And User click "save_it_dream_saver_recurring_next_button"
  Then "save_it_dream_saver_recurring_error" will be displayed
  And User expect "save_it_dream_saver_recurring_error" equal with "save_it_dream_saver_insufficient_active_balance"
  # need money in DS, first balance < 1
  And User fill "save_it_dream_saver_first_balance" with "save_it_zero_value"
  And User fill "save_it_dream_saver_recurring_amount_debit" with "save_it_dream_saver_target_amount_input_bottom_boundary"
  And User click "save_it_dream_saver_recurring_next_button"
  Then "save_it_dream_saver_recurring_error" will be displayed
  And User expect "save_it_dream_saver_recurring_error" equal with "save_it_dream_saver_invalid_first_balance"
  # recurring debit amount must be greater than 0
  And User fill "save_it_dream_saver_first_balance" with "save_it_dream_saver_invalid_first_balance"
  And User fill "save_it_dream_saver_recurring_amount_debit" with "save_it_zero_value"
  And User click "save_it_dream_saver_recurring_next_button"
  Then "save_it_dream_saver_recurring_error" will be displayed
  And User expect "save_it_dream_saver_recurring_error" equal with "save_it_dream_saver_invalid_recurring_debit_amount"
  # dont't need to create DS, first balance > target amount
  And User fill "save_it_dream_saver_first_balance" with "save_it_dream_saver_first_balance_over"
  And User fill "save_it_dream_saver_recurring_amount_debit" with "save_it_dream_saver_target_amount_input_bottom_boundary"
  And User click "save_it_dream_saver_recurring_next_button"
  Then "save_it_dream_saver_recurring_error" will be displayed
  And User expect "save_it_dream_saver_recurring_error" equal with "save_it_dream_saver_over_first_balance"
  # success 7 cases
  And User fill "save_it_dream_saver_first_balance" with "save_it_dream_saver_target_amount_input_bottom_boundary"
  And User fill "save_it_dream_saver_recurring_amount_debit" with "save_it_dream_saver_target_amount_input_bottom_boundary"
  And User click "save_it_dream_saver_recurring_next_button"
  Then "save_it_dream_saver_creatioin_summary_page" will be displayed

@android @uidatabound 
Scenario: JENI4184-C81442-[Scenario] Verify user able input the First Balance by slide the Slider 
  Given User is on Save It screen in selected environment and logged with "save_it_cif_with_ds"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User click "save_it_create_new_dream_saver"
  And User fill "save_it_dream_saver_name_input_field" with "save_it_dream_saver_name_input_1"
  And User fill "save_it_dream_saver_target_amount_input_field" with "save_it_dream_saver_one_million_target_amount"
  And User click "save_it_dream_saver_next_button"
  And User slide "save_it_dream_saver_first_balance_slider" to "save_it_principal_slider_scale" of slider width
  Then User expect "save_it_dream_saver_first_balance" more than "save_it_value_1"

@continuous @android @uidatabound 
Scenario: JENI4184-C81443-[Scenario] Verify user able input the First Balance manually 
  And User fill "save_it_dream_saver_first_balance" with "save_it_value_6"
  Then User expect "save_it_dream_saver_first_balance" more than "save_it_value_6_label"

@android01 @uidatabound
Scenario: JENI4184-C94346-[Scenario] Change First Balance When Target Date is Locked 
  Given User is on Save It screen in selected environment and logged with "save_it_cif_with_ds"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User click "save_it_create_new_dream_saver"
  And User fill "save_it_dream_saver_name_input_field" with "save_it_dream_saver_name_input_1"
  And User fill "save_it_dream_saver_target_amount_input_field" with "save_it_dream_saver_one_million_target_amount"
  And User click "save_it_dream_saver_next_button"
  And User click "save_it_dream_saver_date_lock_switch"
  # save displayed value, maturity date, month, year, and recurring debit amount
  And System save "save_it_dream_saver_mature_date" value
  And System save "save_it_dream_saver_mature_month" value
  And System save "save_it_dream_saver_mature_year" value
  And System save "save_it_dream_saver_recurring_frequency_dropdown_label" value
  And System save "save_it_dream_saver_recurring_amount_debit" value
  # change first balance
  And User fill "save_it_dream_saver_first_balance" with "save_it_dream_saver_target_amount_input_bottom_boundary"
  # Assertion
  Then User expect "save_it_dream_saver_mature_date" equal with saved data number 1
  Then User expect "save_it_dream_saver_mature_month" equal with saved data number 2
  Then User expect "save_it_dream_saver_mature_year" equal with saved data number 3
  Then User expect "save_it_dream_saver_mature_year" equal with saved data number 4
  Then User expect "save_it_dream_saver_recurring_amount_debit" not equal with saved data number 5

@android01 @uidatabound
Scenario: JENI4184-C94347-[Scenario] Change First Balance When Target Date is Unlocked 
  Given User is on Save It screen in selected environment and logged with "save_it_cif_with_ds"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User click "save_it_create_new_dream_saver"
  And User fill "save_it_dream_saver_name_input_field" with "save_it_dream_saver_name_input_1"
  And User fill "save_it_dream_saver_target_amount_input_field" with "save_it_dream_saver_one_million_target_amount"
  And User click "save_it_dream_saver_next_button"
  And User click "save_it_dream_saver_date_lock_switch"
  # save displayed value, maturity date, month, year, and recurring debit amount
  And System save "save_it_dream_saver_mature_date" value
  And System save "save_it_dream_saver_mature_month" value
  And System save "save_it_dream_saver_mature_year" value
  And System save "save_it_dream_saver_recurring_amount_debit" value
  # change first balance
  And User fill "save_it_dream_saver_first_balance" with "save_it_dream_saver_target_amount_input_bottom_boundary"
  # Assertion
  Then User expect "save_it_dream_saver_mature_date" not equal with saved data number 1
  Then User expect "save_it_dream_saver_recurring_amount_debit" equal with saved data number 4

# JENI4241
@android @uidatabound
Scenario: JENI4241-C80953-[Scenario] Saving Frequency Option (Daily, Weekly, Monthly) 
  Given User is on Save It screen in selected environment and logged with "save_it_cif_with_ds"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User click "save_it_create_new_dream_saver"
  And User fill "save_it_dream_saver_name_input_field" with "save_it_dream_saver_name_input_1"
  And User fill "save_it_dream_saver_target_amount_input_field" with "save_it_dream_saver_one_million_target_amount"
  And User click "save_it_dream_saver_next_button"
  # And User fill "save_it_dream_saver_first_balance" with "save_it_value_6"
  And User fill "save_it_dream_saver_recurring_amount_debit" with "save_it_value_6"
  # below 10 years
  # check for weekly
  And User select "save_it_dream_saver_recurring_frequency_dropdown" dropdown with "save_it_weekly"
  Then User expect target date with first balance "save_it_dream_saver_first_balance" and weekly recurring amount "save_it_dream_saver_recurring_amount_debit" are calculated correctly with target amount "save_it_dream_saver_one_million_target_amount"
  # check for monthly
  And User select "save_it_dream_saver_recurring_frequency_dropdown" dropdown with "save_it_monthly"
  Then User expect target date with first balance "save_it_dream_saver_first_balance" and monthly recurring amount "save_it_dream_saver_recurring_amount_debit" are calculated correctly with target amount "save_it_dream_saver_one_million_target_amount"
  # check for daily
  And User select "save_it_dream_saver_recurring_frequency_dropdown" dropdown with "save_it_daily"
  Then User expect target date with first balance "save_it_dream_saver_first_balance" and daily recurring amount "save_it_dream_saver_recurring_amount_debit" are calculated correctly with target amount "save_it_dream_saver_one_million_target_amount"
  # more than 10 years
  # And User fill "save_it_dream_saver_first_balance" with "save_it_value_6"
  And User fill "save_it_dream_saver_recurring_amount_debit" with "save_it_value_1"
  # check for weekly
  And User select "save_it_dream_saver_recurring_frequency_dropdown" dropdown with "save_it_weekly"
  Then User expect target date with first balance "save_it_dream_saver_first_balance" and weekly recurring amount "save_it_dream_saver_recurring_amount_debit" are calculated correctly with target amount "save_it_dream_saver_one_million_target_amount"
  # check for monthly
  And User select "save_it_dream_saver_recurring_frequency_dropdown" dropdown with "save_it_monthly"
  Then User expect target date with first balance "save_it_dream_saver_first_balance" and monthly recurring amount "save_it_dream_saver_recurring_amount_debit" are calculated correctly with target amount "save_it_dream_saver_one_million_target_amount"
  # check for daily
  And User select "save_it_dream_saver_recurring_frequency_dropdown" dropdown with "save_it_daily"
  Then User expect target date with first balance "save_it_dream_saver_first_balance" and daily recurring amount "save_it_dream_saver_recurring_amount_debit" are calculated correctly with target amount "save_it_dream_saver_one_million_target_amount"

@android @uidatabound
Scenario: JENI4241-C94107-[Scenario] Change Saving Frequency When Target Date is Locked 
  Given User is on Save It screen in selected environment and logged with "save_it_cif_with_ds"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User click "save_it_create_new_dream_saver"
  And User fill "save_it_dream_saver_name_input_field" with "save_it_dream_saver_name_input_1"
  And User fill "save_it_dream_saver_target_amount_input_field" with "save_it_dream_saver_one_million_target_amount"
  And User click "save_it_dream_saver_next_button"
  And User click "save_it_dream_saver_date_lock_switch"
  # And User fill "save_it_dream_saver_first_balance" with "save_it_value_6"
  And User fill "save_it_dream_saver_recurring_amount_debit" with "save_it_value_5"
  And System save "save_it_dream_saver_mature_date" value
  And System save "save_it_dream_saver_mature_month" value
  And System save "save_it_dream_saver_mature_year" value
  And System save "save_it_dream_saver_recurring_amount_debit" value
  # change saving frequency
  And User select "save_it_dream_saver_recurring_frequency_dropdown" dropdown with "save_it_monthly"
  # Assertion
  Then User expect "save_it_dream_saver_mature_date" equal with saved data number 1
  Then User expect "save_it_dream_saver_mature_month" equal with saved data number 2
  Then User expect "save_it_dream_saver_mature_year" equal with saved data number 3
  Then User expect "save_it_dream_saver_recurring_amount_debit" not equal with saved data number 4

@android @uidatabound
Scenario: JENI4241-C94108-[Scenario] Change Saving Frequency When Target Date is Unlocked 
  Given User is on Save It screen in selected environment and logged with "save_it_cif_with_ds"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User click "save_it_create_new_dream_saver"
  And User fill "save_it_dream_saver_name_input_field" with "save_it_dream_saver_name_input_1"
  And User fill "save_it_dream_saver_target_amount_input_field" with "save_it_dream_saver_one_million_target_amount"
  And User click "save_it_dream_saver_next_button"
  # And User fill "save_it_dream_saver_first_balance" with "save_it_value_6"
  And User fill "save_it_dream_saver_recurring_amount_debit" with "save_it_value_5"
  And System save "save_it_dream_saver_mature_date" value
  And System save "save_it_dream_saver_mature_month" value
  And System save "save_it_dream_saver_mature_year" value
  And System save "save_it_dream_saver_recurring_amount_debit" value
  # change saving frequency
  And User wait 3 seconds
  And User select "save_it_dream_saver_recurring_frequency_dropdown" dropdown with "save_it_monthly"
  # Assertion
  Then User expect "save_it_dream_saver_mature_date" not equal with saved data number 1
  Then User expect "save_it_dream_saver_mature_month" not equal with saved data number 2
  Then User expect "save_it_dream_saver_mature_year" not equal with saved data number 3
  Then User expect "save_it_dream_saver_recurring_amount_debit" equal with saved data number 4
  Then User expect target date with first balance "save_it_dream_saver_first_balance" and monthly recurring amount "save_it_dream_saver_recurring_amount_debit" are calculated correctly with target amount "save_it_dream_saver_one_million_target_amount"

# JENI4309 fail, issue beda sehari untuk daily
@android @uidatabound
Scenario: JENI4309-C80949-[Scenario] Set Recurring Saving Amount 
  Given User is on Save It screen in selected environment and logged with "save_it_cif_with_ds"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User click "save_it_create_new_dream_saver"
  And User fill "save_it_dream_saver_name_input_field" with "save_it_dream_saver_name_input_1"
  And User fill "save_it_dream_saver_target_amount_input_field" with "save_it_dream_saver_one_million_target_amount"
  And User click "save_it_dream_saver_next_button"
  # And User fill "save_it_dream_saver_first_balance" with "save_it_value_6"
  # daily recurring debit
  And User select "save_it_dream_saver_recurring_frequency_dropdown" dropdown with "save_it_daily"
  And User fill "save_it_dream_saver_recurring_amount_debit" with "save_it_value_5"
  Then User expect target date with first balance "save_it_dream_saver_first_balance" and daily recurring amount "save_it_dream_saver_recurring_amount_debit" are calculated correctly with target amount "save_it_dream_saver_one_million_target_amount"
  # change the recurring debit amount
  And User fill "save_it_dream_saver_recurring_amount_debit" with "save_it_value_6"
  Then User expect target date with first balance "save_it_dream_saver_first_balance" and daily recurring amount "save_it_dream_saver_recurring_amount_debit" are calculated correctly with target amount "save_it_dream_saver_one_million_target_amount"
  # weekly recurring debit
  And User select "save_it_dream_saver_recurring_frequency_dropdown" dropdown with "save_it_weekly"
  And User fill "save_it_dream_saver_recurring_amount_debit" with "save_it_value_5"
  Then User expect target date with first balance "save_it_dream_saver_first_balance" and weekly recurring amount "save_it_dream_saver_recurring_amount_debit" are calculated correctly with target amount "save_it_dream_saver_one_million_target_amount"
  # change the recurring debit amount
  And User fill "save_it_dream_saver_recurring_amount_debit" with "save_it_value_6"
  Then User expect target date with first balance "save_it_dream_saver_first_balance" and weekly recurring amount "save_it_dream_saver_recurring_amount_debit" are calculated correctly with target amount "save_it_dream_saver_one_million_target_amount"
  # monthly recurring debit
  And User select "save_it_dream_saver_recurring_frequency_dropdown" dropdown with "save_it_monthly"
  And User fill "save_it_dream_saver_recurring_amount_debit" with "save_it_value_5"
  Then User expect target date with first balance "save_it_dream_saver_first_balance" and monthly recurring amount "save_it_dream_saver_recurring_amount_debit" are calculated correctly with target amount "save_it_dream_saver_one_million_target_amount"
  # change the recurring debit amount
  And User fill "save_it_dream_saver_recurring_amount_debit" with "save_it_value_6"
  Then User expect target date with first balance "save_it_dream_saver_first_balance" and monthly recurring amount "save_it_dream_saver_recurring_amount_debit" are calculated correctly with target amount "save_it_dream_saver_one_million_target_amount"
  # first balance > target amount
  And User fill "save_it_dream_saver_first_balance" with "save_it_value_8"
  Then User expect "save_it_dream_saver_first_balance_hint" equal with "save_it_dream_saver_first_balance_error_1"
  # # recurring debit amount > target amount
  # And User fill "save_it_dream_saver_recurring_amount_debit" with "save_it_value_8"
  # Then User expect "save_it_dream_saver_recurring_amount_debit_hint" equal with "save_it_dream_saver_recurring_amount_debit_error_1"

# fail, issue - error message ndak kelihatan, recurring saving amount > 10 tahun
@android @uidatabound
Scenario: JENI4309-C93250-[Scenario] Saving amount too low that cause the target date exceeded more than 10 years 
  Given User is on Save It screen in selected environment and logged with "save_it_cif_with_ds"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User click "save_it_create_new_dream_saver"
  And User fill "save_it_dream_saver_name_input_field" with "save_it_dream_saver_name_input_1"
  And User fill "save_it_dream_saver_target_amount_input_field" with "save_it_dream_saver_one_million_target_amount"
  And User click "save_it_dream_saver_next_button"
  And User fill "save_it_dream_saver_recurring_amount_debit" with "save_it_value_1"
  Then User expect Dream Saver target date is 10 year(s) from today
  And User click "save_it_dream_saver_recurring_next_button"
  Then User expect "save_it_dream_saver_recurring_page" is exist
  And User click "save_it_dream_saver_recurring_amount_debit"
  And User expect "save_it_dream_saver_recurring_amount_debit_hint" equal with "save_it_dream_saver_recurring_amount_debit_error_2"

@android @uidatabound
Scenario: JENI4309-C94286-[Scenario] Change Recurring Amount When Target Date is Unlocked
  Given User is on Save It screen in selected environment and logged with "save_it_cif_with_ds"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User click "save_it_create_new_dream_saver"
  And User fill "save_it_dream_saver_name_input_field" with "save_it_dream_saver_name_input_1"
  And User fill "save_it_dream_saver_target_amount_input_field" with "save_it_dream_saver_one_million_target_amount"
  And User click "save_it_dream_saver_next_button"
  And User fill "save_it_dream_saver_recurring_amount_debit" with "save_it_value_5"
  And System save "save_it_dream_saver_mature_date" value
  And System save "save_it_dream_saver_mature_month" value
  And System save "save_it_dream_saver_mature_year" value
  And System save "save_it_dream_saver_first_balance" value
  # change recurring saving debit amount
  And User fill "save_it_dream_saver_recurring_amount_debit" with "save_it_value_4"
  # Assertion
  Then User expect "save_it_dream_saver_mature_date" not equal with saved data number 1
  Then User expect "save_it_dream_saver_mature_month" not equal with saved data number 2
  Then User expect "save_it_dream_saver_mature_year" not equal with saved data number 3
  Then User expect "save_it_dream_saver_first_balance" equal with saved data number 4
  # Then User expect target date with first balance "save_it_dream_saver_first_balance" and daily recurring amount "save_it_dream_saver_recurring_amount_debit" are calculated correctly with target amount "save_it_dream_saver_one_million_target_amount"

@android @uidatabound
Scenario: JENI4309-C94287-[Scenario] Change Recurring Amount When Target Date is Locked 
  Given User is on Save It screen in selected environment and logged with "save_it_cif_with_ds"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User click "save_it_create_new_dream_saver"
  And User fill "save_it_dream_saver_name_input_field" with "save_it_dream_saver_name_input_1"
  And User fill "save_it_dream_saver_target_amount_input_field" with "save_it_dream_saver_one_million_target_amount"
  And User click "save_it_dream_saver_next_button"
  And User click "save_it_dream_saver_date_lock_switch"
  And User fill "save_it_dream_saver_recurring_amount_debit" with "save_it_value_5"
  And System save "save_it_dream_saver_mature_date" value
  And System save "save_it_dream_saver_mature_month" value
  And System save "save_it_dream_saver_mature_year" value
  And System save "save_it_dream_saver_first_balance" value
  # change recurring saving debit amount
  And User fill "save_it_dream_saver_recurring_amount_debit" with "save_it_value_4"
  # Assertion
  Then User expect "save_it_dream_saver_mature_date" equal with saved data number 1
  Then User expect "save_it_dream_saver_mature_month" equal with saved data number 2
  Then User expect "save_it_dream_saver_mature_year" equal with saved data number 3
  Then User expect "save_it_dream_saver_first_balance" not equal with saved data number 4

# JENI4453
@android @uidatabound
Scenario: JENI4453-C80952-[Scenario] Click Create New Dream Saver Button on Confirmation Page 
  Given User is on Save It screen in selected environment and logged with "save_it_cif_with_ds"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User click "save_it_create_new_dream_saver"
  And User fill "save_it_dream_saver_name_input_field" with "save_it_dream_saver_name_input_1"
  And User fill "save_it_dream_saver_target_amount_input_field" with "save_it_value_9"
  And User click "save_it_dream_saver_next_button"
  # And User fill "save_it_dream_saver_recurring_amount_debit" with "save_it_value_6"
  # And User select "save_it_dream_saver_recurring_frequency_dropdown" dropdown with "save_daily"
  # And User wait 3 seconds
  And User click "save_it_dream_saver_recurring_next_button"
  And User click "save_it_dream_saver_confirmation_button"
  Then User expect "top_notification_snackbar" equal with "save_it_dream_saver_creation_success_message"
  And "save_it_container" will be displayed
  # assert for created dream saver in the list
  # And User click "save_it_dream_saver_list_collapse"
  # And User swipe up until found ""

@android @uidatabound
Scenario: JENI4453-C94109-[Scenario] Verify Content on Confirmation Page 
  Given User is on Save It screen in selected environment and logged with "save_it_cif_with_ds"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User click "save_it_create_new_dream_saver"
  And User fill "save_it_dream_saver_name_input_field" with "save_it_dream_saver_name_input_1"
  And User fill "save_it_dream_saver_target_amount_input_field" with "save_it_dream_saver_one_million_target_amount"
  And User click "save_it_dream_saver_next_button"
  # And User fill "save_it_dream_saver_recurring_amount_debit" with "save_it_value_6"
  # And User click "save_it_dream_saver_recurring_amount_debit"
  # And User wait 3 seconds
  And User click "save_it_dream_saver_recurring_next_button"
  Then "save_it_dream_saver_confirmation_page" will be displayed
  And User expect "save_it_dream_saver_confirmation_avatar" is exist
  And User expect "save_it_dream_saver_confirmation_name" is exist
  And User expect "save_it_dream_saver_confirmation_target_date" is exist
  And User expect "save_it_dream_saver_confirmation_short_tutorial" is exist
  And User expect "save_it_dream_saver_confirmation_target_amount" is exist
  And User expect "save_it_dream_saver_confirmation_first_balance" is exist
  And User expect "save_it_dream_saver_confirmation_saving_freq" is exist
  And User expect "save_it_dream_saver_confirmation_saving_start" is exist
  And User expect "save_it_dream_saver_confirmation_recur_saving_amount" is exist
  And User expect "save_it_dream_saver_confirmation_button" is exist
  
# JENI5222
@android @uidatabound
Scenario: JENI5222-C84897-[Scenario]User don't have any dream saver 
  Given User is on Dashboard screen in selected environment and logged with "save_it_cif_without_ds"
  And User swipe up until found "save_it_widget_create_dream_saver"
  Then User expect "save_it_widget_dream_saver_balance" doesn't exist
  And User expect "save_it_widget_create_dream_saver" is exist

@android @uidatabound
Scenario: JENI5222-C84898-[Scenario]User have dream saver(s) 
  Given User is on Dashboard screen in selected environment and logged with "save_it_cif_with_ds"
  And User swipe up until found "save_it_widget_dream_saver_balance"
  Then User expect "save_it_widget_dream_saver_balance" is exist
  And User expect "save_it_widget_create_dream_saver" doesn't exist

@android @uidatabound
Scenario: JENI5222-C92460-[Scenario]Accumulate the Dream Saver balance following these transactions 
  Given User is on Dashboard screen in selected environment and logged with "save_it_cif_with_ds"
  And User swipe up until found "save_it_widget_dream_saver_balance"
  And System save "save_it_widget_dream_saver_balance" value
  And User click "save_it_widget_dream_saver_balance"
  Then User expect "save_it_dream_saver_balance" equal with saved data number 1

#JENI-4201
@android @uidatabound
Scenario: JENI4201-C80950-[Scenario] Verify the Recurring Amount when Select the Date 
  Given User is on Save It screen in selected environment and logged with "save_it_cif_with_ds"
  And User check and click "tutorial_close" if exist
  When User click "save_it_create_new_dream_saver"
  And User fill "save_it_dream_saver_name_input_field" with "save_it_dream_saver_name_input_1"
  And User fill "save_it_dream_saver_target_amount_input_field" with "save_it_dream_saver_one_million_target_amount"
  And User click "save_it_dream_saver_next_button"
  Then User expect "save_it_dream_saver_recurring_amount_debit" equal with "save_it_expect_value_1"
  
  When User click "save_it_dream_saver_date_lock_switch"
  And User select "save_it_dream_saver_change_date" field and put "save_it_dream_saver_day_29" as day "save_it_dream_saver_month_7" as month "save_it_dream_saver_year_20" as year
  Then User expect "save_it_dream_saver_recurring_amount_debit" equal with "save_it_expect_value_3"

  When User click "save_it_dream_saver_date_lock_switch"
  And User select "save_it_dream_saver_change_date" field and put "save_it_dream_saver_day_27" as day "save_it_dream_saver_month_7" as month "save_it_dream_saver_year_20" as year
  Then User expect "save_it_dream_saver_recurring_amount_debit" equal with "save_it_expect_value_2"

  When User click "save_it_dream_saver_date_lock_switch"
  And User select "save_it_dream_saver_change_date" field and put "save_it_dream_saver_day_8" as day "save_it_dream_saver_month_7" as month "save_it_dream_saver_year_18" as year
  Then User expect "save_it_dream_saver_recurring_amount_debit" equal with "save_it_expect_value_4"

@android @uidatabound @continuous
Scenario: JENI4201-C80951-[Scenario] Verify the cancel button on Calendar Date Picker
  When User click "save_it_dream_saver_date_lock_switch"
  And User select yesterday in "save_it_dream_saver_change_date" date picker
  Then User expect "save_it_dream_saver_recurring_amount_debit" equal with "save_it_expect_value_4"

@android @uidatabound @continuous
Scenario: JENI4201-C81444-[Scenario] Verify user cannot pick the current or pass date
  When User click "save_it_dream_saver_date_lock_switch"
  And User click "cancel_button"
  Then User expect "save_it_dream_saver_recurring_amount_debit" equal with "save_it_expect_value_4"
  And "save_it_dream_saver_new_title" will be displayed

#JENI-4435
@android @uidatabound
Scenario: JENI4435-C94079-[Scenario] Dream Saver Handholding Tooltips When Go To Detail for First Time
  Given User is on Save It screen in selected environment and logged with "save_it_cif_with_ds"
  And User check and click "tutorial_close" if exist
  When User click "save_it_create_new_dream_saver"
  And User fill "save_it_dream_saver_name_input_field" with "save_it_dream_saver_name_1"
  And User fill "save_it_dream_saver_target_amount_input_field" with "save_it_dream_saver_one_million_target_amount"
  And User click "save_it_dream_saver_next_button"

  When User click "save_it_dream_saver_next_button"
  And User click "save_it_dream_saver_confirmation_button"
  And User swipe up until found "save_it_dream_saver_list_collapse"
  And User click "save_it_dream_saver_list_collapse"
  And User swipe up to "save_it_dream_saver_name_1" text
  And User click element with text "save_it_dream_saver_name_1"
  Then element with "save_it_dream_saver_tooltips_1" text will be displayed
  When User click element with text "save_it_dream_saver_tooltips_1"
  Then element with "save_it_dream_saver_tooltips_2" text will be displayed
  And User click element with text "save_it_dream_saver_tooltips_2"

@android @uidatabound @continuous
Scenario: JENI4435-C94080-[Scenario] Dream Saver Handholding Tooltips When Go To Detail for Second Time
  When User click "back_button"
  And User swipe up until found "save_it_dream_saver_list_collapse"
  And User click "save_it_dream_saver_list_collapse"
  And User swipe up to "save_it_dream_saver_name_1" text
  And User click element with text "save_it_dream_saver_name_1"
  Then element with "save_it_dream_saver_tooltips_1" text will not displayed
  Then element with "save_it_dream_saver_tooltips_2" text will not displayed

# JENI-1178
@android @uidatabound
Scenario: JENI1178-C84901-[Scenario]Cancel for Stopping the Dream Saver
  Given User is on Save It screen in selected environment and logged with "save_it_cif_with_ds"
  And User check and click "tutorial_close" if exist
  And User swipe up until found "save_it_dream_saver_list_collapse"
  And User click "save_it_dream_saver_list_collapse"
  And User swipe up until found "save_it_dream_saver_list_first_item"
  And User click "save_it_dream_saver_list_first_item"
  And User click "save_it_maxi_saver_detail_coach_mark_touchable" until "save_it_maxi_saver_detail_coach_mark_touchable" gone
  And User click "save_it_dream_saver_detail_more_button"
  Then "save_it_dream_saver_detail_pause_menu" will be displayed
  Then "save_it_dream_saver_detail_stop_menu" will be displayed
  Then "save_it_dream_saver_detail_settings_menu" will be displayed
  Then "save_it_dream_saver_detail_cancel_menu" will be displayed
  And User click "save_it_dream_saver_detail_stop_menu"
  Then "save_it_dream_saver_detail_terminate_pop_up" will be displayed
  And User click "save_it_dream_saver_detail_terminate_cancel_button"
  Then "save_it_dream_saver_detail_tab_savings_item" will be displayed

@android @ios @uidatabound
# JENI1178-C84900-[Scenario]Stop Dream Saver
# JENI1178-C92471-[Scenario]Active Balance induction and dream saver deduction after stopping/terminating DS
Scenario: JENI1178-C84900#C92471-[Scenario]Stop/Terminate Dream Saver
  Given User is on Dashboard screen in selected environment and logged with "save_it_cif_with_ds"
  And System save "dashboard_wealth_widget_total_active_balance" value
  And System save "dashboard_wealth_widget_total_save_it_balance" value
  And User swipe up until found "save_it_widget_dream_saver_section"
  And System save "save_it_widget_dream_saver_section" value
  And User click "dashboard_hamburger_icon"
  And User click "save_it_side_menu"
  And User check and click "tutorial_close" if exist
  And User swipe up until found "save_it_dream_saver_list_collapse"
  And User click "save_it_dream_saver_list_collapse"
  And User swipe up until found "save_it_dream_saver_list_first_item"
  And User click "save_it_dream_saver_list_first_item"
  And User click "save_it_maxi_saver_detail_coach_mark_touchable" until "save_it_maxi_saver_detail_coach_mark_touchable" gone
  And System save "save_it_dream_saver_detail_current_amount" value
  And User click "save_it_dream_saver_detail_more_button"
  Then "save_it_dream_saver_detail_pause_menu" will be displayed
  Then "save_it_dream_saver_detail_stop_menu" will be displayed
  Then "save_it_dream_saver_detail_settings_menu" will be displayed
  Then "save_it_dream_saver_detail_cancel_menu" will be displayed
  And User click "save_it_dream_saver_detail_stop_menu"
  Then "save_it_dream_saver_detail_terminate_pop_up" will be displayed
  And User click "save_it_dream_saver_detail_terminate_stop_button"
  And "snackbar" will be displayed
  And "save_it_container" will be displayed
  And User click "dashboard_hamburger_icon"
  And User click "dashboard_menu"
  Then User expect value of "dashboard_wealth_widget_total_active_balance" element equal with the total amount of saved data number 1 and 4
  Then User expect value of "dashboard_wealth_widget_total_save_it_balance" element equal with the substraction amount of saved data number 2 and 4
  And User swipe up until found "save_it_widget_dream_saver_balance"
  Then User expect value of "save_it_widget_dream_saver_balance" element equal with the substraction amount of saved data number 3 and 4
  And User click "save_it_widget_dream_saver_balance"
  Then User expect value of "save_it_dream_saver_balance" element equal with the substraction amount of saved data number 3 and 4
  And System save "save_it_dream_saver_balance" value
  And User expect the total of "save_it_dream_saver_list_item_amount" list displayed equal to saved value number 5