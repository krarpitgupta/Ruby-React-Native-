@r3_maxisaver_full
Feature: Release 3 - MAXI SAVER module

# JENI-2540
@android @uidatabound
Scenario: JENI2540-C70136-Verify There is handholding tooltip for 'Termination' when user open the Term Deposit screen for the first time 
  Given User is on Save It screen in selected environment and logged with "save_it_cif_with_td"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User swipe up until found "save_it_maxi_saver_list_collapse"
  And User click "save_it_maxi_saver_list_collapse"
  And User swipe up to element contains "save_it_maxi_saver_with_cashout" text
  And User click element contains "save_it_maxi_saver_with_cashout" text
  Then "save_it_maxi_saver_detail_title_tutorial_1" will be displayed
  And User expect "save_it_maxi_saver_detail_title_tutorial_1" equal with "save_it_maxi_saver_detail_handhold_info_1"

@continuous @android @uidatabound
Scenario: JENI2540-C70135-Verify There is handholding tooltip for maturity option when user open the Term Deposit screen for the first time
  And User click "save_it_maxi_saver_detail_coach_mark_touchable"
  Then "save_it_maxi_saver_detail_title_tutorial_2" will be displayed
  And User expect "save_it_maxi_saver_detail_title_tutorial_2" equal with "save_it_maxi_saver_detail_handhold_info_2"

@continuous @android @uidatabound
Scenario: JENI2540-C70137-Verify the handholding tooltip will dismiss when user taping anywhere on the screen 
  And User click "save_it_maxi_saver_detail_coach_mark_touchable"
  Then User expect "save_it_maxi_saver_detail_coach_mark_touchable" doesn't exist
  And User expect "save_it_maxi_saver_detail_title_tutorial_2" doesn't exist

@continuous @android @uidatabound
Scenario: JENI2540-C70138-Verify the handholding tooltip for Three buttons (Option to Terminate) and edit button will not appear again if it ever appeared
  And User click "back_button"
  And User click element contains "save_it_maxi_saver_with_cashout" text
  Then User expect "save_it_maxi_saver_detail_coach_mark_touchable" doesn't exist

# JENI-2545
# C70020-Verify TD name on confirmation screen when user create TD
# C70021-Verify Icon on confirmation screen when user create TD
# C70022-Verify TD Tenor on confirmation screen when user create TD
# C70023-Verify Principal amount on confirmation screen when user create TD
# C70024-Verify Interest on confirmation screen when user create TD
# C70025-Verify Estimated Total Amount on confirmation screen when user create TD
# C70026-Verify Maturity date on confirmation screen when user choose Roll Over Principal
# C70027-Verify Maturity date on confirmation screen when user choose Roll Over Principal + Interest
# C70028-Verify Maturity date on confirmation screen when user choose Return to Active Balance
# C70029-User should be able to tick "Term&Condition" option on confirmation screen
# C70030-User should be able to click "Term&Condition" detail link on confirmation screen
# C70033-User should be able to click "Back" button on app
@android @uidatabound
Scenario: JENI2545-C70020#C70021#C70022#C70023#C70024#C70025#C70026#C70027#C70028#C70029#C70030-Verify TD confirmation screen
  Given User is on Save It screen in selected environment and logged with "save_it_cif_with_td"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User swipe up until found "save_it_create_new_maxi_saver"
  # And System save "save_it_overview_maxi_saver_amount" value
  And User click "save_it_create_new_maxi_saver"
  And User click "save_it_maxi_saver_overview_ok_got_it_button" until "save_it_maxi_saver_overview" gone
  And User fill "save_it_maxi_saver_principal_input_amount" with "save_it_principal_amount_5"
  And User click "save_it_next_button"
  And User click "save_it_select_aro_next_button"
  And "save_it_maxi_saver_confirmation_screen" will be displayed
  # assertion for C70020
  Then User expect "save_it_maxi_saver_confirmation_screen_name" equal with "save_it_maxi_saver"
  # assertion for C70021
  Then "save_it_maxi_saver_confirmation_screen_icon" will be displayed
  # assertion for C70022
  Then User expect "save_it_maxi_saver_confirmation_screen_maturity_term" equal with "save_it_maturity_minimum_tenor"
  # assertion for C70023
  Then User expect "save_it_maxi_saver_confirmation_screen_principal" equal with "save_it_principal_amount_5"
  # assertion for C70024
  Then User expect "save_it_maxi_saver_confirmation_screen_interest" equal with "save_it_annual_interest_rate_2"
  # assertion for C70025
  Then User expect the estimated total amount of "save_it_maxi_saver_confirmation_screen_estimated_amount" will be calculated correctly from "save_it_maxi_saver_confirmation_screen_principal"
  # assertion for C70026
  Then User expect "save_it_maxi_saver_confirmation_screen_maturity_option" equal with "save_it_maxi_saver_rop"
  # assertion for C70027
  And User click "back_button"
  And User swipe the right menu to the left 
  And User click "save_it_select_aro_next_button"
  And "save_it_maxi_saver_confirmation_screen" will be displayed
  Then User expect "save_it_maxi_saver_confirmation_screen_maturity_option" equal with "save_it_maxi_saver_ropi"
  # assertion for C70028
  # assertion for C70033
  And User click "back_button"
  And User swipe the right menu to the left 
  And User swipe the right menu to the left 
  And User swipe the right menu to the left 
  And User click "save_it_select_aro_next_button"
  And "save_it_maxi_saver_confirmation_screen" will be displayed
  Then User expect "save_it_maxi_saver_confirmation_screen_maturity_option" equal with "save_it_maxi_saver_cash_out"
  # assertion for C70029
  And User click "save_it_maxi_saver_confirmation_check_box"
  Then "save_it_maxi_saver_confirmation_check_box_checked" will be displayed
  # assertion for C70030
  And User click "save_it_maxi_saver_confirmation_tc_link"
  Then "save_it_maxi_saver_confirmation_tc_page" will be displayed

@continuous @android @uidatabound
Scenario: JENI2545-C70031-Verify the Confirm Button is disabled when Term and Condition is unticked
  And User click "save_it_maxi_saver_confirmation_check_box" until "save_it_maxi_saver_confirmation_check_box_checked" gone
  And User click "save_it_maxi_saver_confirmation_button"
  Then User expect "save_it_maxi_saver_confirmation_button_yes" doesn't exist
  Then User expect "save_it_maxi_saver_confirmation_screen" is exist

@continuous @android @uidatabound
Scenario: JENI2545-C70032-Verify the Confirm Button is enable when Term and Condition is ticked
  And User click "save_it_maxi_saver_confirmation_check_box"
  And User click "save_it_maxi_saver_confirmation_button"
  Then "save_it_maxi_saver_confirmation_button_yes" will be displayed

@continuous @android @uidatabound
Scenario: JENI2545-C70052-Verify User Back to TD Overview Page after click Confirmation Page
  And User click "save_it_maxi_saver_confirmation_button_yes"
  And User expect "top_notification_snackbar" equal with "save_it_maxi_saver_creation_success_message"
  Then "save_it_container" will be displayed

# JENI-2546
@android @uidatabound
Scenario: JENI2546-C70054-Verify automatic roll over options in term deposit creation
  Given User is on Save It screen in selected environment and logged with "save_it_cif_with_td"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User swipe up until found "save_it_create_new_maxi_saver"
  And User click "save_it_create_new_maxi_saver"
  And User click "save_it_maxi_saver_overview_ok_got_it_button" until "save_it_maxi_saver_overview" gone
  And User fill "save_it_maxi_saver_principal_input_amount" with "save_it_principal_amount_5"
  And User click "save_it_next_button"
  Then "save_it_maxi_saver_aro_p" will be displayed
  And User swipe the right menu to the left 
  Then "save_it_maxi_saver_aro_pi" will be displayed
  And User swipe the right menu to the left 
  Then "save_it_maxi_saver_cash_out" will be displayed
  And User swipe the left menu to the right
  Then "save_it_maxi_saver_aro_pi" will be displayed
  And User swipe the left menu to the right
  Then "save_it_maxi_saver_aro_p" will be displayed

@android @uidatabound
Scenario: JENI2546-C70058-Verify "back arrow" button on ARO setting in TD creation
  Given User is on Save It screen in selected environment and logged with "save_it_cif_with_td"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User swipe up until found "save_it_create_new_maxi_saver"
  # And System save "save_it_overview_maxi_saver_amount" value
  And User click "save_it_create_new_maxi_saver"
  And User click "save_it_maxi_saver_overview_ok_got_it_button" until "save_it_maxi_saver_overview" gone
  And User fill "save_it_maxi_saver_principal_input_amount" with "save_it_principal_amount_5"
  And User click "save_it_next_button"
  Then "save_it_maxi_saver_aro_p" will be displayed
  And User click "back_button"
  Then "save_it_maxi_saver_creation_screen" will be displayed
  Then User expect "save_it_maxi_saver_principal_input_amount" equal with "save_it_principal_amount_5_label"
  And User expect "save_it_maxi_saver_maturity_period" equal with "save_it_maturity_minimum_tenor"

@android @uidatabound
Scenario: JENI2546-C70190-Verify the ARO Principal will be the default option on the ARO setting
  Given User is on Save It screen in selected environment and logged with "save_it_cif_with_td"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User swipe up until found "save_it_create_new_maxi_saver"
  # And System save "save_it_overview_maxi_saver_amount" value
  And User click "save_it_create_new_maxi_saver"
  And User click "save_it_maxi_saver_overview_ok_got_it_button" until "save_it_maxi_saver_overview" gone
  And User fill "save_it_maxi_saver_principal_input_amount" with "save_it_principal_amount_5"
  And User click "save_it_next_button"
  Then "save_it_maxi_saver_aro_p" will be displayed

@android @uidatabound
Scenario: JENI2546-C70193-Verify user should move to Confirmation Page after click the Next Button
  Given User is on Save It screen in selected environment and logged with "save_it_cif_with_td"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User swipe up until found "save_it_create_new_maxi_saver"
  # And System save "save_it_overview_maxi_saver_amount" value
  And User click "save_it_create_new_maxi_saver"
  And User click "save_it_maxi_saver_overview_ok_got_it_button" until "save_it_maxi_saver_overview" gone
  And User fill "save_it_maxi_saver_principal_input_amount" with "save_it_principal_amount_5"
  And User click "save_it_next_button"
  And User click "save_it_select_aro_next_button"
  And "save_it_maxi_saver_confirmation_screen" will be displayed

# JENI 2651
@android @ios @uispecific
Scenario:JENI2651-C70454-Access product overview when create MS from navigation menu 
  Given User is on Dashboard screen in selected environment and logged with "save_it_cif_without_td"
  And User click "hamburger"
  And User click "save_it_side_menu"
  And User click "tutorial_close" until "card_center_tutorial_frame" gone
  And User swipe up until found "save_it_create_new_maxi_saver"
  And User click "save_it_create_new_maxi_saver"
  Then "save_it_maxi_saver_overview" will be displayed

@android @ios @uispecific
Scenario:JENI2651-C75715-Access product overview when create MS from widget 
  Given User is on Dashboard screen in selected environment and logged with "save_it_cif_without_td"
  And User swipe up until found "save_it_widget_title"
  And User click "save_it_widget_title" until "save_it_widget_title" gone
  And User click "tutorial_close" until "card_center_tutorial_frame" gone
  And User swipe up until found "save_it_create_new_maxi_saver"
  And User click "save_it_create_new_maxi_saver"
  Then "save_it_maxi_saver_overview" will be displayed

@continuous @android @ios @uispecific
Scenario:JENI2651-C70456-Close product overview 
  And User click "save_it_maxi_saver_overview_ok_got_it_button" until "save_it_maxi_saver_overview_ok_got_it_button" gone
  And User wait "save_it_maxi_saver_overview" will be gone
  Then "save_it_maxi_saver_creation_screen" will be displayed

# C75719-Product overview will not be displayed after the last TD's achieve the maturity date 
@android @uidatabound
Scenario:JENI2651-C75716#C75719-Product overview is not displayed when create MS from navigation menu 
  Given User is on Dashboard screen in selected environment and logged with "save_it_cif_with_td"
  And User click "hamburger"
  And User click "save_it_side_menu"
  And User click "tutorial_close" until "card_center_tutorial_frame" gone
  And User swipe up until found "save_it_create_new_maxi_saver"
  And User click "save_it_create_new_maxi_saver"
  Then User expect "save_it_maxi_saver_overview" doesn't exist

@android @uidatabound
Scenario:JENI2651-C75717-Product overview is not displayed when create MS from widget 
  Given User is on Dashboard screen in selected environment and logged with "save_it_cif_with_td"
  And User swipe up until found "save_it_widget_title"
  And User click "save_it_widget_title"
  And User click "tutorial_close" until "card_center_tutorial_frame" gone
  And User swipe up until found "save_it_create_new_maxi_saver"
  And User click "save_it_create_new_maxi_saver"
  Then User expect "save_it_maxi_saver_overview" doesn't exist
  
@android @uidatabound
Scenario:JENI2651-C70421-Product overview is not appear for the second time 
  Given User is on Dashboard screen in selected environment and logged with "save_it_cif_without_td"
  And User click "hamburger"
  And User click "save_it_side_menu"
  And User click "tutorial_close" until "card_center_tutorial_frame" gone
  And User swipe up until found "save_it_create_new_maxi_saver"
  And User click "save_it_create_new_maxi_saver"
  Then "save_it_maxi_saver_overview" will be displayed
  And User click "save_it_maxi_saver_overview_ok_got_it_button"
  Then User expect "save_it_maxi_saver_overview" doesn't exist
  And User click "back_button"
  And User click "save_it_create_new_maxi_saver"
  Then User expect "save_it_maxi_saver_overview" doesn't exist

# JENI-2440
# referred by: 
# JENI2440-C69815-Verify there should be a CREATE NEW DEPOSIT button in the Save It overview screen 
# JENI2440-C69816-Verify user able to click CREATE NEW DEPOSIT button 
# JENI2440-C69857-Verify User will be directed to the initial screen after click CREATE NEW DEPOSIT button 
@android @ios @uispecific
Scenario:JENI2440-C69815#C69816#C69857-CREATE NEW DEPOSIT button in the Save It overview screen 
  Given User is on Save It screen in selected environment and logged with "save_it_cif_without_td"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User swipe up until found "save_it_create_new_maxi_saver"
  Then User expect "save_it_create_new_maxi_saver" is exist
  And User click "save_it_create_new_maxi_saver"
  And User wait "save_it_create_new_maxi_saver" will be gone
  And User click "save_it_maxi_saver_overview_ok_got_it_button" until "save_it_maxi_saver_overview_ok_got_it_button" gone
  Then "save_it_maxi_saver_creation_screen" will be displayed

@android @ios @uispecific
Scenario:JENI2440-C69909-Verify User should not be able to create the Term Deposit if the main account is inactive
  Given User is on Save It screen in selected environment and logged with "save_it_cif_inactive_account"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User swipe up until found "save_it_create_new_maxi_saver"
  And User click "save_it_create_new_maxi_saver"
  Then "save_it_maxi_saver_inactive_account_notification" will be displayed

@android @ios @uispecific
Scenario:JENI2440-C69910-Verify user should be able to see the TD Creation Overview pop-up when user click CREATE NEW DEPOSIT button if user does not have TD 
  Given User is on Save It screen in selected environment and logged with "save_it_cif_without_td"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User swipe up until found "save_it_create_new_maxi_saver"
  And User click "save_it_create_new_maxi_saver"
  Then "save_it_maxi_saver_overview" will be displayed

@continuous @android @ios @uispecific
Scenario:JENI2440-C69912-Verify there should be an OK, GOT IT button in the TD Creation Overview pop-up 
  Then User expect "save_it_maxi_saver_overview_ok_got_it_button" is exist

@continuous @android @ios @uispecific
Scenario:JENI2440-C69913-Verify user should be able to click the OK, GOT IT button in the TD Creation Overview pop-up
  And User click "save_it_maxi_saver_overview_ok_got_it_button" until "save_it_maxi_saver_overview_ok_got_it_button" gone
  Then User expect "save_it_maxi_saver_overview_ok_got_it_button" doesn't exist

@continuous @android @ios @uispecific
Scenario:JENI2440-C69914-Verify user will be directed to the TD initial screen after click the OK, GOT IT button in the TD Creation Overview pop-up
  Then User expect "save_it_maxi_saver_creation_screen" is exist

@android @uidatabound
Scenario:JENI2440-C69911-Verify user should not see the TD Creation Overview pop-up after click CREATE NEW DEPOSIT if already have TD 
  Given User is on Save It screen in selected environment and logged with "save_it_cif_with_td"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User swipe up until found "save_it_create_new_maxi_saver"
  And User click "save_it_create_new_maxi_saver"
  Then User expect "save_it_maxi_saver_overview" doesn't exist
  And "save_it_maxi_saver_creation_screen" will be displayed
  # Then User expect "save_it_maxi_saver_overview_ok_got_it_button" is exist

@android @ios @uispecific
Scenario:JENI2440-C69919-Verify there should be an "i" button for information in the TD initial screen
  Given User is on Save It screen in selected environment and logged with "save_it_cif_without_td"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User swipe up until found "save_it_create_new_maxi_saver"
  And User click "save_it_create_new_maxi_saver"
  And User wait "save_it_create_new_maxi_saver" will be gone
  And User click "save_it_maxi_saver_overview_ok_got_it_button" until "save_it_maxi_saver_overview_ok_got_it_button" gone
  Then "save_it_maxi_saver_creation_screen" will be displayed
  And User expect "save_it_maxi_saver_i_button" is exist

# being refererd by:
# JENI2440-C69920-Verify user should be able to click "i" button in the TD initial screen 
# JENI2440-C69921-Verify user will be directed to the TD Creation Overview pop-up after click "i" button in the TD initial screen
@continuous @android @ios @uispecific
Scenario:JENI2440-C69920#C69921-Verify TD Creation Overview pop-up after click "i" button in the TD initial screen 
  And User click "save_it_maxi_saver_i_button"
  Then "save_it_maxi_saver_overview" will be displayed

@android @uidatabound
Scenario:JENI2440-C69859-Verify User should not be able to click NEXT button if the initial screen is blank 
  Given User is on Save It screen in selected environment and logged with "save_it_cif_with_td"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User swipe up until found "save_it_create_new_maxi_saver"
  And User click "save_it_create_new_maxi_saver"
  And User click "save_it_maxi_saver_overview_ok_got_it_button" until "save_it_maxi_saver_overview" gone
  And User fill "save_it_maxi_saver_principal_input_amount" with "save_it_zero_value"
  And User click "save_it_next_button"
  Then User expect "save_it_maxi_saver_creation_screen" is exist

@continuous @android @uidatabound
Scenario:JENI2440-C69858-Verify The NEXT button should become active after fulfill all the fields in the TD initial screen 
  And User fill "save_it_maxi_saver_principal_input_amount" with "save_it_minimum_principal_amount"
  And User click "save_it_next_button"
  Then User expect "save_it_maxi_saver_creation_screen" doesn't exist
  And "save_it_maxi_saver_select_aro_screen" will be displayed

@android @uidatabound
Scenario:JENI2440-C69860-Principal Field - Verify User should be able to input the principal by sliding the slide bar 
  Given User is on Save It screen in selected environment and logged with "save_it_cif_with_td"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User swipe up until found "save_it_create_new_maxi_saver"
  And User click "save_it_create_new_maxi_saver"
  And User click "save_it_maxi_saver_overview_ok_got_it_button" until "save_it_maxi_saver_overview" gone
  And User slide "save_it_maxi_saver_principal_slider" to "save_it_principal_slider_scale" of slider width
  And User click "save_it_maxi_saver_maturity_period"
  Then User expect "save_it_maxi_saver_principal_input_amount" more than "save_it_minimum_principal_amount"

@android @uidatabound
Scenario:JENI2440-C69861-Principal Field - Verify if the slide bar starts from 0 IDR if Active Balance less than Minimum Amount in DC Admin
  Given User is on Save It screen in selected environment and logged with "save_it_cif_balance_less_than_minimum_amount"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User swipe up until found "save_it_create_new_maxi_saver"
  And User click "save_it_create_new_maxi_saver"
  And User click "save_it_maxi_saver_overview_ok_got_it_button" until "save_it_maxi_saver_overview" gone
  Then User expect "save_it_maxi_saver_active_balance" less than "save_it_minimum_principal_amount"
  # And User expect the value of "save_it_maxi_saver_principal_input_amount" equal with "save_it_maxi_saver_active_balance" element
  And User expect "save_it_maxi_saver_principal_input_amount" equal with "save_it_zero_value"

@android @uidatabound
Scenario:JENI2440-C69864-Principal Field - Verify if the slide bar starts from the minimum amount in DC Admin if Active Balance greater than minimum amount in DC Admin
  Given User is on Save It screen in selected environment and logged with "save_it_cif_balance_more_than_minimum_amount"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User swipe up until found "save_it_create_new_maxi_saver"
  And User click "save_it_create_new_maxi_saver"
  And User click "save_it_maxi_saver_overview_ok_got_it_button" until "save_it_maxi_saver_overview" gone
  Then User expect "save_it_maxi_saver_active_balance" more than "save_it_minimum_principal_amount"
  And User expect "save_it_maxi_saver_principal_input_amount" equal with "save_it_minimum_principal_amount_label"
  And User expect "save_it_maxi_saver_maturity_period" equal with "save_it_maturity_minimum_tenor"

@android @uidatabound
Scenario:JENI2440-C69869-Principal Field - Verify User should be able to input manually the principal
  Given User is on Save It screen in selected environment and logged with "save_it_cif_with_td"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User swipe up until found "save_it_create_new_maxi_saver"
  And User click "save_it_create_new_maxi_saver"
  And User click "save_it_maxi_saver_overview_ok_got_it_button" until "save_it_maxi_saver_overview" gone
  And User fill "save_it_maxi_saver_principal_input_amount" with "save_it_input_principal_amount"
  Then User expect "save_it_maxi_saver_principal_input_amount" more than "save_it_input_principal_amount_label"

@android @uidatabound
Scenario:JENI2440-C69900-Principal Field - Verify if user try to input manually the principal but less than minimum amount in DC Admin 
  Given User is on Save It screen in selected environment and logged with "save_it_cif_with_td"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User swipe up until found "save_it_create_new_maxi_saver"
  And User click "save_it_create_new_maxi_saver"
  And User click "save_it_maxi_saver_overview_ok_got_it_button" until "save_it_maxi_saver_overview" gone
  And User fill "save_it_maxi_saver_principal_input_amount" with "save_it_input_less_than_minimum_principal"
  And User click "save_it_next_button"
  Then User expect "save_it_maxi_saver_less_than_allowed_amount_notification" is exist
  Then User expect "save_it_maxi_saver_creation_screen" is exist
  # assert the error message
  # issue raised, no error message displayed in the element

@android @uidatabound
Scenario:JENI2440-C69902-Principal Field - Verify if user try to input manually the principal but bigger than active balance 
  Given User is on Save It screen in selected environment and logged with "save_it_cif_with_td"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User swipe up until found "save_it_create_new_maxi_saver"
  And User click "save_it_create_new_maxi_saver"
  And User click "save_it_maxi_saver_overview_ok_got_it_button" until "save_it_maxi_saver_overview" gone
  And User fill "save_it_maxi_saver_principal_input_amount" with "save_it_input_more_than_active_balance"
  And User click "save_it_next_button"
  Then User expect "save_it_maxi_saver_more_than_allowed_amount_notification" is exist
  Then User expect "save_it_maxi_saver_creation_screen" is exist
  # assert the error message
  # issue raised, no error message displayed in the element

@android @uidatabound
Scenario:JENI2440-C69903-Maturity Period Field - User can only input the maturity period by slider 
  Given User is on Save It screen in selected environment and logged with "save_it_cif_with_td"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User swipe up until found "save_it_create_new_maxi_saver"
  And User click "save_it_create_new_maxi_saver"
  And User click "save_it_maxi_saver_overview_ok_got_it_button" until "save_it_maxi_saver_overview" gone
  And User slide "save_it_maxi_saver_maturity_slider" until "save_it_maxi_saver_maturity_period" equal to "save_it_maturity_tenor" with maximum tenor "save_it_maximum_tenor"
  Then User expect "save_it_maxi_saver_maturity_period" equal with "save_it_maturity_tenor"

@android @uidatabound
Scenario:JENI2440-C69904-Maturity Period Field - Verify if the maximum maturity period is parameterized in DC Admin 
  Given User is on Save It screen in selected environment and logged with "save_it_cif_with_td"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User swipe up until found "save_it_create_new_maxi_saver"
  And User click "save_it_create_new_maxi_saver"
  And User click "save_it_maxi_saver_overview_ok_got_it_button" until "save_it_maxi_saver_overview" gone
  And User slide "save_it_maxi_saver_maturity_slider" until "save_it_maxi_saver_maturity_period" equal to "save_it_maturity_maximum_tenor" with maximum tenor "save_it_maximum_tenor"
  Then User expect "save_it_maxi_saver_maturity_period" equal with "save_it_maturity_maximum_tenor"

@android @uidatabound
Scenario:JENI2440-C69905-Verify the interest if user input principal amount 10.000.000≤P≤50.000.000 (Parameterized in DC Admin) 
  Given User is on Save It screen in selected environment and logged with "save_it_cif_with_td"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User swipe up until found "save_it_create_new_maxi_saver"
  And User click "save_it_create_new_maxi_saver"
  And User click "save_it_maxi_saver_overview_ok_got_it_button" until "save_it_maxi_saver_overview" gone
  And User fill "save_it_maxi_saver_principal_input_amount" with "save_it_principal_amount_1"
  Then User expect "save_it_maxi_saver_interest_option_1" equal with "save_it_annual_interest_rate_1"

@android @uidatabound
Scenario:JENI2440-C69906-Verify the interest if user input principal amount 50.000.001≤P≤100.000.000 (Parameterized in DC Admin) 
  Given User is on Save It screen in selected environment and logged with "save_it_cif_with_td"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User swipe up until found "save_it_create_new_maxi_saver"
  And User click "save_it_create_new_maxi_saver"
  And User click "save_it_maxi_saver_overview_ok_got_it_button" until "save_it_maxi_saver_overview" gone
  And User fill "save_it_maxi_saver_principal_input_amount" with "save_it_principal_amount_2"
  Then User expect "save_it_maxi_saver_interest_option_2" equal with "save_it_annual_interest_rate_2"

@android @uidatabound
Scenario:JENI2440-C69907-Verify the interest if user input principal amount 100.000.001≤P (Parameterized in DC Admin) 
  Given User is on Save It screen in selected environment and logged with "save_it_cif_with_td"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User swipe up until found "save_it_create_new_maxi_saver"
  And User click "save_it_create_new_maxi_saver"
  And User click "save_it_maxi_saver_overview_ok_got_it_button" until "save_it_maxi_saver_overview" gone
  And User fill "save_it_maxi_saver_principal_input_amount" with "save_it_principal_amount_3"
  Then User expect "save_it_maxi_saver_interest_option_3" equal with "save_it_annual_interest_rate_3"

@android @uidatabound
Scenario:JENI2440-C69908-Validate the expected amount at maturity in TD simulation 
  Given User is on Save It screen in selected environment and logged with "save_it_cif_with_td"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User swipe up until found "save_it_create_new_maxi_saver"
  And User click "save_it_create_new_maxi_saver"
  And User click "save_it_maxi_saver_overview_ok_got_it_button" until "save_it_maxi_saver_overview" gone
  And User fill "save_it_maxi_saver_principal_input_amount" with "save_it_principal_amount_4"
  Then User expect the estimated total amount of "save_it_maxi_saver_estimated_principal_amount" will be calculated correctly from "save_it_maxi_saver_principal_input_amount"
  # have an issue, raised to QA

@android @uidatabound
Scenario:JENI2440-C69829-Verify the ARO Setting page will show up after user input the Principal, Maturity Months and click Next Button 
  Given User is on Save It screen in selected environment and logged with "save_it_cif_with_td"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User swipe up until found "save_it_create_new_maxi_saver"
  And User click "save_it_create_new_maxi_saver"
  And User click "save_it_maxi_saver_overview_ok_got_it_button" until "save_it_maxi_saver_overview" gone
  And User fill "save_it_maxi_saver_principal_input_amount" with "save_it_principal_amount_3"
  And User click "save_it_next_button"
  Then "save_it_maxi_saver_select_aro_screen" will be displayed

@android @uidatabound
Scenario:JENI2440-C69830-Verify the inputted data will be similar with inputted Principal, Maturity Months and Setting on Confirmation Page 
  Given User is on Save It screen in selected environment and logged with "save_it_cif_with_td"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User swipe up until found "save_it_create_new_maxi_saver"
  And System save "save_it_overview_maxi_saver_amount" value
  And User click "save_it_create_new_maxi_saver"
  And User click "save_it_maxi_saver_overview_ok_got_it_button" until "save_it_maxi_saver_overview" gone
  And User fill "save_it_maxi_saver_principal_input_amount" with "save_it_principal_amount_1"
  # And User slide "save_it_maxi_saver_maturity_slider" until "save_it_maxi_saver_maturity_period" equal to "save_it_maturity_maximum_tenor" with maximum tenor "save_it_maximum_tenor"
  And User click "save_it_next_button"
  And User swipe the right menu to the left 
  And User swipe the right menu to the left 
  And User swipe the right menu to the left 
  And User click "save_it_select_aro_next_button"
  Then "save_it_maxi_saver_confirmation_screen" will be displayed
  Then User expect "save_it_maxi_saver_confirmation_screen_maturity_term" equal with "save_it_confirmation_screen_maturity_term"
  Then User expect "save_it_maxi_saver_confirmation_screen_principal" equal with "save_it_confirmation_screen_principal"
  Then User expect "save_it_maxi_saver_confirmation_screen_interest" equal with "save_it_confirmation_screen_interest"
  Then User expect "save_it_maxi_saver_confirmation_screen_maturity_option" equal with "save_it_confirmation_screen_maturity_option"
  Then User expect "save_it_maxi_saver_confirmation_screen_end_of_term" is set after "save_it_maxi_saver_confirmation_screen_maturity_term" term long from today

@android @uidatabound @continuous
Scenario:JENI2440-C69831-Verify the default of Term and Condition option on Confirmation Page is unticked 
  Then User expect "save_it_maxi_saver_confirmation_check_box" checkbox is unticked

@android @uidatabound @continuous
Scenario:JENI2440-C69832-Verify the Confirm Button is disabled when Term and Condition is unchecked 
  And User click "save_it_maxi_saver_confirmation_button"
  Then User expect "save_it_maxi_saver_confirmation_screen" is exist

@android @endtoend
# JENI2440-C69833-Verify the Confirm Button is enable when Term and Condition is checked 
# JENI2440-C69930-Verify user should able to see the success message snackbar at the top of Save It overview after TD creation 
# JENI2440-C69936-Verify if there is snackbar after create a New TD 
Scenario:JENI2440-C69833#C69834#C69929#C69930#C69931#C69936-Create Maxi Saver Succesfully
  Given User is on Save It screen in selected environment and logged with "save_it_cif_with_td"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User swipe up until found "save_it_create_new_maxi_saver"
  And System save "save_it_overview_maxi_saver_amount" value
  And User click "save_it_create_new_maxi_saver"
  And User click "save_it_maxi_saver_overview_ok_got_it_button" until "save_it_maxi_saver_overview" gone
  And User fill "save_it_maxi_saver_principal_input_amount" with "save_it_principal_amount_5"
  # And User slide "save_it_maxi_saver_maturity_slider" until "save_it_maxi_saver_maturity_period" equal to "save_it_maturity_maximum_tenor" with maximum tenor "save_it_maximum_tenor"
  And User click "save_it_next_button"
  And User swipe the right menu to the left 
  And User swipe the right menu to the left 
  And User swipe the right menu to the left 
  And User click "save_it_select_aro_next_button"
  # assertion for C69833
  And User click "save_it_maxi_saver_confirmation_check_box"
  And User click "save_it_maxi_saver_confirmation_button"
  # assertion for C69930 and C69936
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  Then "top_notification_snackbar" will be displayed
  And User expect "top_notification_snackbar" equal with "save_it_maxi_saver_creation_success_message"

@continuous @android @endtoend
Scenario:JENI2440-C69929-Verify user should be directed back to the Save It overview page after TD creation 
  Then "save_it_container" will be displayed

@continuous @android @endtoend
Scenario:JENI2440-C69931-Verify The TD Summary in Save It overview page should be expanded automatically after TD creation
  And User swipe up until found "save_it_maxi_saver_list_expanded"
  And "save_it_maxi_saver_list_expanded" will be displayed

@continuous @android @endtoend
Scenario:JENI2440-C69834-Verify the accumulation on Maxi Saver will be counted on the Save It Overview 
  Then User expect "save_it_maxi_saver_balance" is exist
  Then User expect "save_it_maxi_saver_balance" will be added with "save_it_principal_amount_4"

@continuous @android @endtoend
Scenario:JENI2440-C69934-Verify balance movement after TD creation
  And User click "dashboard_hamburger_icon"
  And User click "in_and_out_menu"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  Then User expect "save_it_maxi_saver_balance" will be minus with "save_it_principal_amount_4"

@continuous @android @endtoend
Scenario:JENI2440-C69935-Verify if there is TD transaction history after TD creation
  And User expect "in_and_out_history_first_item_title" equal with "save_it_maxi_saver"
  And User expect "in_and_out_history_first_item_amount" equal with "save_it_principal_amount_4"

@android @uidatabound
Scenario:JENI2440-C69928-Verify the slide bar of principal should be the multiples of 1000
  Given User is on Save It screen in selected environment and logged with "save_it_cif_with_td"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User swipe up until found "save_it_create_new_maxi_saver"
  And User click "save_it_create_new_maxi_saver"
  And User click "save_it_maxi_saver_overview_ok_got_it_button" until "save_it_maxi_saver_overview" gone
  And User slide "save_it_maxi_saver_principal_slider" to "save_it_principal_slider_scale" of slider width
  Then User expect "save_it_maxi_saver_principal_input_amount" is multipled by "save_it_principal_slider_multiplication"

@android @ios @uispecific
# being referred by:
# JENI2440-C69922-[Mobile] Verify there should be back arrow button in the TD initial screen
# JENI2440-C69923-[Mobile] Verify user should be able to click the back arrow button in the TD initial screen 
# JENI2440-C69924-[Mobile] Verify user will be directed to the Save It Overview screen after click the back arrow button
Scenario:JENI2440-C69922#C69923#C69924-User will be directed to the Save It Overview screen after click the back arrow button
  Given User is on Save It screen in selected environment and logged with "save_it_cif_with_td"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User swipe up until found "save_it_create_new_maxi_saver"
  And User click "save_it_create_new_maxi_saver"
  And User click "save_it_maxi_saver_overview_ok_got_it_button" until "save_it_maxi_saver_overview" gone
  # assertion for C69922
  Then "back_button" will be displayed
  # assertion for C69923
  And User click "back_button"
  # assertion for C69924
  Then "save_it_container" will be displayed

# JENI 2550
@android @uidatabound
Scenario:JENI2550-C69862-User want to see Save It Widget Screen
  Given User is on Dashboard screen in selected environment and logged with "save_it_cif_with_td"
  And User swipe up until found "save_it_widget_title"
  Then User expect "save_it_widget_create_flexi_saver" is exist
  Then User expect "save_it_widget_create_dream_saver" is exist
  Then User expect "save_it_widget_maxi_saver_balance" is exist

@android @ios @uispecific
# JENI2550-C69846-Verify widget is empty 
# JENI2550-C69847-Verify widget when user don't have DS saving 
# JENI2550-C69848-Verify widget when user don't have TD saving 
Scenario:JENI2550-C69846#C69847#C69848-Verify Save It Widget UI when user don't have any saving
  Given User is on Dashboard screen in selected environment and logged with "save_it_cif_no_saving"
  Then User expect "wealth_widget_total_balance" equal with "wealth_widget_total_balance_zero_balance"
  And User swipe up until found "save_it_widget_create_maxi_saver"
  Then User expect "save_it_widget_create_flexi_saver" is exist
  Then User expect "save_it_widget_dream_saver_balance" doesn't exist
  Then User expect "save_it_widget_create_dream_saver" is exist
  Then User expect "save_it_widget_maxi_saver_balance" doesn't exist
  Then User expect "save_it_widget_create_maxi_saver" is exist

@android @uidatabound
# JENI2550-C69852-[Functional] Verify Term Deposit list expand 
# JENI2550-C69863-Verify Date TD list display by (dd (space) mm (space) yyyy) 
# JENI2550-C69888-User should be able to see the TD Tenor in "Months" in Save It overview 
Scenario:JENI2550-C69852#C69863#C69888-Term Deposit list expand 
  Given User is on Save It screen in selected environment and logged with "save_it_cif_with_td"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User swipe up until found "save_it_create_new_maxi_saver"
  And User click "save_it_maxi_saver_list_collapse"
  Then "save_it_maxi_saver_list_expanded" will be displayed
  And User expect "save_it_maxi_saver_item_circle_progres_bar" is exist
  And User expect "save_it_maxi_saver_item_date_and_aro_type" is exist
  And User expect "save_it_maxi_saver_item_balance" is exist
  # assert for C69888 test case
  And User expect "save_it_maxi_saver_item_tenor" is exist
  # assert date format for C69854 test case
  Then User expect the date format of "save_it_maxi_saver_item_date_and_aro_type" is "save_it_maturity_date_format"

@android @uidatabound
Scenario:JENI2550-C69855-[Functional] Verify maxi saver and Dream Saver expand button
  Given User is on Save It screen in selected environment and logged with "save_it_cif_with_td_and_ds"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User swipe up until found "save_it_create_new_maxi_saver"
  And User click "save_it_maxi_saver_list_collapse"
  Then "save_it_maxi_saver_list_expanded" will be displayed
  And User click "save_it_dream_saver_list_collapse"
  Then "save_it_dream_saver_list_expanded" will be displayed
  And User swipe up until found "save_it_maxi_saver_list_expanded"
  Then "save_it_maxi_saver_list_expanded" will be displayed

@android @uidatabound
Scenario:JENI2550-C69854-Verify saving list detail when user don't have TD saving 
  Given User is on Save It screen in selected environment and logged with "save_it_cif_no_saving"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User swipe up until found "save_it_create_new_maxi_saver"
  Then User expect "save_it_overview_maxi_saver_amount" doesn't exist
  And User expect "save_it_overview_maxi_saver_descrption" equal with "save_it_overview_maxi_saver_description"
  And User expect "save_it_create_new_maxi_saver" is exist

@android @uidatabound
Scenario:JENI2550-C69876-User want to see Dream Saver from Dashboard
  Given User is on Dashboard screen in selected environment and logged with "save_it_cif_with_ds"
  And User swipe up until found "save_it_widget_maxi_saver_balance"
  And User click "save_it_widget_dream_saver_balance"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  Then "save_it_dream_saver_list_expanded" will be displayed

@android @uidatabound
Scenario:JENI2550-C69885-Verify the 'Save It' on the Widget when user only have several 'Maxi Saver'
  Given User is on Dashboard screen in selected environment and logged with "save_it_cif_with_td"
  And User swipe up until found "save_it_widget_maxi_saver_balance"
  Then User expect "save_it_widget_create_flexi_saver" is exist
  Then User expect "save_it_widget_create_dream_saver" is exist
  Then User expect "save_it_widget_maxi_saver_balance" is exist

@android @uidatabound
Scenario:JENI2550-C69877-User want to see Term Deposit from Dashboard
  Given User is on Dashboard screen in selected environment and logged with "save_it_cif_with_td"
  And User swipe up until found "save_it_widget_maxi_saver_balance"
  And User click "save_it_widget_maxi_saver_balance"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  Then "save_it_maxi_saver_list_expanded" will be displayed

@android @uidatabound
# JENI2550-C69893-Verify Maturity Mode on TD overview list (ARO Principal) 
# JENI2550-C69894-Verify Maturity Mode on TD overview list (ARO Principal + Interest) 
# JENI2550-C69895-Verify Maturity Mode on TD overview list (Deposit Withdrawal) 
Scenario:JENI2550-C69893#C69894#C69895-View Term Deposit Maturity Mode
  Given User is on Save It screen in selected environment and logged with "save_it_cif_with_td"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User swipe up until found "save_it_create_new_maxi_saver"
  And User click "save_it_maxi_saver_list_collapse"
  # C69893
  # And User swipe up until found "save_it_maxi_saver_item_date_and_aro_p"
  Then User expect the date format of "save_it_maxi_saver_item_date_and_aro_p" is "save_it_maturity_date_format"
  Then User expect the ARO type of "save_it_maxi_saver_item_date_and_aro_p" is "save_it_maturity_aro_type_1"
  # C69894
  # And User swipe up until found "save_it_maxi_saver_item_date_and_aro_pi"
  Then User expect the date format of "save_it_maxi_saver_item_date_and_aro_pi" is "save_it_maturity_date_format"
  Then User expect the ARO type of "save_it_maxi_saver_item_date_and_aro_pi" is "save_it_maturity_aro_type_2"
  # C69895/-
  # And User swipe up until found "save_it_maxi_saver_item_date_and_withdrawal"
  Then User expect the date format of "save_it_maxi_saver_item_date_and_withdrawal" is "save_it_maturity_date_format"
  Then User expect the ARO type of "save_it_maxi_saver_item_date_and_withdrawal" is "save_it_maturity_aro_type_3"

# JENI 2538
@android @uidatabound
Scenario:JENI2538-C69963-Open TD detail from save it menu 
  Given User is on Dashboard screen in selected environment and logged with "save_it_cif_with_td"
  And User swipe up until found "save_it_widget_maxi_saver_balance"
  And User click "save_it_widget_maxi_saver_balance"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User click "save_it_maxi_saver_list_item"
  And User click "save_it_maxi_saver_detail_coach_mark_touchable" until "save_it_maxi_saver_detail_coach_mark_touchable" gone
  Then "save_it_maxi_saver_detail_principal_amount" will be displayed
  And "save_it_maxi_saver_detail_tenor" will be displayed
  And "save_it_maxi_saver_detail_interest_rate" will be displayed
  And "save_it_maxi_saver_detail_maturity_date" will be displayed
  And "save_it_maxi_saver_detail_aro_setting" will be displayed
  And "save_it_maxi_saver_detail_maturity_option_button" will be displayed
  And "save_it_maxi_saver_detail_view_advice_button" will be displayed
  And "save_it_maxi_saver_detail_more_button" will be displayed

@continuous @android @uidatabound
# JENI2538-C69972-[Functional] Verify Term's and Condition button on TD detail 
# JENI2538-C69977-Verify view More button on TD detail
Scenario:JENI2538-C69972#C69977-Verify buttons on TD detail 
  And User click "save_it_maxi_saver_detail_more_button"
  Then "save_it_maxi_saver_detail_term_condition_button" will be displayed
  Then "save_it_maxi_saver_detail_terminate_button" will be displayed
  And User click "back_button"

@continuous @android @uidatabound
Scenario:JENI2538-C69970-[Functional] verify back button on TD detail 
  And User click "back_button"
  Then "save_it_maxi_saver_list_expanded" will be displayed

@android @uidatabound
Scenario:JENI2538-C69978-verify the maturity date is calculated correctly 
  Given User is on Dashboard screen in selected environment and logged with "save_it_cif_with_td"
  And User swipe up until found "save_it_widget_maxi_saver_balance"
  And User click "save_it_widget_maxi_saver_balance"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User click "save_it_maxi_saver_list_item"
  And User click "save_it_maxi_saver_detail_coach_mark_touchable" until "save_it_maxi_saver_detail_coach_mark_touchable" gone
  Then User expect maturity date "save_it_maxi_saver_detail_maturity_date" is calculated correctly with "save_it_maxi_saver_detail_maturity_remaining_months" months and "save_it_maxi_saver_detail_maturity_remaining_days" days left

@continuous @android @uidatabound
Scenario:JENI2538-C69979-verify the maturity mode for 'roll over principal' TD 
  And User click "back_button"
  And User click "save_it_maxi_saver_item_date_and_aro_p"
  Then User expect "save_it_maxi_saver_detail_aro_setting" equal with "save_it_maturity_aro_type_1"

@continuous @android @uidatabound
Scenario:JENI2538-C69980-verify the maturity mode for 'roll over principal+interest' TD
  And User click "back_button"
  And User click "save_it_maxi_saver_item_date_and_aro_pi"
  Then User expect "save_it_maxi_saver_detail_aro_setting" equal with "save_it_maturity_aro_type_2"

@continuous @android @uidatabound
Scenario:JENI2538-C69981-verify the maturity mode for 'deposit withdraw' TD
  And User click "back_button"
  And User click "save_it_maxi_saver_item_date_and_withdrawal"
  Then User expect "save_it_maxi_saver_detail_aro_setting" equal with "save_it_maturity_aro_type_3"

@android @uidatabound
Scenario:JENI2538-C69982-verify amount of principal TD in TD detail
  Given User is on Dashboard screen in selected environment and logged with "save_it_cif_with_one_td"  
  And User swipe up until found "save_it_widget_maxi_saver_balance"
  And User click "save_it_widget_maxi_saver_balance"
  And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  And User swipte up until found "save_it_maxi_saver_list_item"
  And User click "save_it_maxi_saver_list_item"
  And System save "save_it_maxi_saver_item_balance" value
  And User click "save_it_maxi_saver_item_balance"
  And User click "save_it_maxi_saver_detail_coach_mark_touchable" until "save_it_maxi_saver_detail_coach_mark_touchable" gone
  Then User expect "save_it_maxi_saver_detail_principal_amount" equal with saved data number 1

# @android @uidatabound
# Scenario:JENI2538-C70064-[Functional] Verify MORE button in Term Deposit detail
#   Given User is on Dashboard screen in selected environment and logged with "save_it_cif_with_td"
#   And User swipe up until found "save_it_widget_maxi_saver_balance"
#   And User click "save_it_widget_maxi_saver_balance"
#   And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
#   And User click "save_it_maxi_saver_list_item"
#   And User click "save_it_maxi_saver_detail_coach_mark_touchable" until "save_it_maxi_saver_detail_coach_mark_touchable" gone
#   And User click "save_it_maxi_saver_detail_more_button"
#   Then User expect "save_it_maxi_saver_detail_term_condition_button" is exist
#   Then User expect "save_it_maxi_saver_detail_terminate_button" is exist
#   Then User expect "save_it_maxi_saver_detail_cancel_button" is exist

# JENI 2541
@android @ios @uispecific
Scenario:JENI2541-C70374-[Functional] Access 'Save it's first time tutorial from navigation menu 
  Given User is on Dashboard screen in selected environment and logged with "save_it_cif_with_td"
  And User click "hamburger"
  And User click "save_it_side_menu"
  Then "card_center_tutorial_frame" will be displayed
  
@android @ios @uispecific
Scenario:JENI2541-C70375-[Functional] Access 'Save it's first time tutorial from widget 
  Given User is on Dashboard screen in selected environment and logged with "save_it_cif_with_td"
  And User swipe up until found "save_it_widget_title"
  And User click "save_it_widget_title"
  And User wait "save_it_widget_title" will be gone
  Then "card_center_tutorial_frame" will be displayed

@continuous @android @ios @uispecific
Scenario:JENI2541-C70376-Verify content of the first time save it tutorial 
  Then User expect "card_center_tutorial_logo" is exist
  Then User expect "card_center_tutorial_header" is exist
  Then User expect "card_center_tutorial_subtitle" is exist
  Then User expect "card_center_tutorial_next" is exist
  Then User expect "tutorial_navigation_dot_button" is exist

@continuous @android @ios @uispecific
Scenario:JENI2541-C70379-[Functional] User can slide or click NEXT button in the first time tutorial 
  And User click "card_center_tutorial_next" until "card_center_tutorial_next" gone
  Then User expect "card_center_tutorial_ok" is exist

@continuous @android @ios @uispecific
Scenario:JENI2541-C70414-Save it first time tutorial is not appear for the second time 
  And User click "tutorial_close" until "card_center_tutorial_frame" gone
  And User click "hamburger"
  And User click "dashboard_menu"
  And User click "hamburger"
  And User click "save_it_side_menu"
  Then User expect "card_center_tutorial_frame" doesn't exist
  # have issue, tutorial still displayed


#JENI2549
@android @ios @uidatabound @R3_1
Scenario: JENI2549-C70070-[Functional] Verify User able to click Term & Condition Menu
    Given User is logged in with cif "save_it_cif_with_td_static"
    And User change language to "language"
    And User click "dashboard_hamburger_icon"
    And User click "save_it_side_menu"
    And User wait "save_it_maxi_saver_loading_screen" will be gone
    And User check and click "card_center_close_tutorial" if exist
    And User swipe up until found "save_it_maxi_saver_list_collapse"
    And User click "save_it_maxi_saver_list_collapse"
    # Then "save_it_maxi_saver_list_expanded" will be displayed
    And User swipe up to element contains "save_it_maxi_saver_with_cashout" text
    And User click element contains "save_it_maxi_saver_with_cashout" text
    And User wait "save_it_maxi_saver_loading_screen" will be gone
    And User check and click "save_it_maxi_saver_detail_coach_mark_touchable" if exist
    And User check and click "save_it_maxi_saver_detail_coach_mark_touchable" if exist
    # Then "save_it_maxi_saver_detail_more_button" will be displayed
    And User click "save_it_maxi_saver_detail_more_button"
    And User click "save_it_maxi_saver_detail_term_condition_button"
    Then "save_it_maxi_saver_term_condition_detail_view" will be displayed

@android @ios @uidatabound @R3_1
Scenario: JENI2549-C76050-[Functional] Verify There is Confirmation Pop Up if user click Terminate Button
    Given User is logged in with cif "save_it_cif_with_td_static"
    And User change language to "language"
    And User click "dashboard_hamburger_icon"
    And User click "save_it_side_menu"
    And User wait "save_it_maxi_saver_loading_screen" will be gone
    And User check and click "card_center_close_tutorial" if exist
    And User swipe up until found "save_it_maxi_saver_list_collapse"
    And User click "save_it_maxi_saver_list_collapse"
    And User swipe up to element contains "save_it_maxi_saver_with_cashout" text
    And User click element contains "save_it_maxi_saver_with_cashout" text
    And User wait "save_it_maxi_saver_loading_screen" will be gone
    And User check and click "save_it_maxi_saver_detail_coach_mark_touchable" if exist
    And User check and click "save_it_maxi_saver_detail_coach_mark_touchable" if exist
    Then "save_it_maxi_saver_detail_more_button" will be displayed
    And User click "save_it_maxi_saver_detail_more_button"
    And User click "save_it_maxi_saver_detail_terminate_button" 
    Then "save_it_maxi_saver_terminate_popup" will be displayed

@android @uidatabound @R3_1
Scenario: JENI2549-C70071-[Functional] Verify User able to click Cancel Button on Confirmation Pop Up
    Given User is logged in with cif "save_it_cif_with_td_static"
    And User change language to "language"
    And User click "dashboard_hamburger_icon"
    And User click "save_it_side_menu"
    And User wait "save_it_maxi_saver_loading_screen" will be gone
    And User check and click "card_center_close_tutorial" if exist
    And User swipe up until found "save_it_maxi_saver_list_collapse"
    And User click "save_it_maxi_saver_list_collapse"
    Then "save_it_maxi_saver_list_expanded" will be displayed
    And User swipe up to element contains "save_it_maxi_saver_with_cashout" text
    And User click element contains "save_it_maxi_saver_with_cashout" text
    And User wait "save_it_maxi_saver_loading_screen" will be gone
    # Then "save_it_maxi_saver_detail_coach_mark_touchable" will be displayed
    And User check and click "save_it_maxi_saver_detail_coach_mark_touchable" if exist
    And User check and click "save_it_maxi_saver_detail_coach_mark_touchable" if exist
    Then "save_it_maxi_saver_detail_more_button" will be displayed
    And User click "save_it_maxi_saver_detail_more_button"
    And User click "save_it_maxi_saver_detail_terminate_button" 
    Then "save_it_maxi_saver_terminate_popup" will be displayed
    And User click "save_it_maxi_saver_confirmation_cancel_terminate"
    Then "save_it_maxi_saver_detail_more_button" will be displayed

@android @ios @endtoend @R3_1
Scenario: JENI2549-C70069-[Functional] Verify User able to Terminate TD
    Given User is logged in with cif "save_it_cif_with_td_dynamic"
    And User change language to "language"
    And System save balance "dashboard_wealth_widget_total_active_balance" value
    And User click "dashboard_hamburger_icon"
    And User click "save_it_side_menu"
    And User wait "save_it_maxi_saver_loading_screen" will be gone
    And User check and click "card_center_close_tutorial" if exist
    And User swipe up until found "save_it_maxi_saver_list_collapse"
    And User click "save_it_maxi_saver_list_collapse"
    # And User swipe up to element contains "save_it_maxi_saver_with_cashout" text
    And User click "save_it_maxi_saver_first_td"
    And User wait "save_it_maxi_saver_loading_screen" will be gone
    And User check and click "save_it_maxi_saver_detail_coach_mark_touchable" if exist
    And User check and click "save_it_maxi_saver_detail_coach_mark_touchable" if exist
    And System save balance "save_it_maxi_saver_detail_principal_amount" value
    And System save "save_it_maxi_saver_detail_name" value
    And User click "save_it_maxi_saver_detail_more_button"
    And User click "save_it_maxi_saver_detail_terminate_button" 
    Then "save_it_maxi_saver_terminate_popup" will be displayed
    And User click "save_it_maxi_saver_confirmation_yes_terminate"
    # Then User expect "top_notification_snackbar_maxi_saver" equal with "save_it_maxi_saver_terminated_successfully"
    Then User check snackbar with static text "save_it_maxi_saver_terminated_successfully"
    And "save_it_container" will be displayed
    Then User expect "save_it_maxi_saver_first_td_title" not equal with saved data number 3
    And User click "dashboard_hamburger_icon"
    And User click "dashboard_menu"
    Then User expect value of "dashboard_wealth_widget_total_active_balance" element equal with the total amount of saved data number 1 and 2

@android @endtoend @R3_1
Scenario: JENI2549-C117848-[Functional] Verify that user can not terminate Maxi in the same creation date - terminate  button should be disable
  Given User is on Save It screen in selected environment and logged with "save_it_cif_with_td_dynamic"
  And User check and click "card_center_close_tutorial" if exist
  And User swipe up until found "save_it_create_new_maxi_saver"
  And User click "save_it_create_new_maxi_saver"
  And User check and click "save_it_maxi_saver_overview_ok_got_it_button" if exist
  And User click "save_it_next_button"
  And User click "save_it_select_aro_next_button"
  And User click "save_it_maxi_saver_confirmation_check_box"
  And System save "save_it_maxi_saver_confirmation_screen_end_of_term" value
  And User change date format of save data number 1 from [dd MM yyyy] to [dd mm yyyy]
  And User click "save_it_maxi_saver_confirmation_button"
  And User check and click "card_center_close_tutorial" if exist
  And User swipe up until found "save_it_maxi_saver_list_collapse"
  And User click "save_it_maxi_saver_list_collapse"
  And User swipe up to element contains saved data number 1
  And User click element contains saved data number 1
  And User check and click "save_it_maxi_saver_detail_coach_mark_touchable" if exist
  And User check and click "save_it_maxi_saver_detail_coach_mark_touchable" if exist
  And User click "save_it_maxi_saver_detail_more_button"
  And User click "save_it_maxi_saver_detail_terminate_button"
  Then User expect "save_it_maxi_saver_detail_terminate_button" is exist

#JENI2543
@android @uidatabound @ios @R3_1
Scenario: JENI2543-C70078-[Mobile] Verify User should be able to click CHANGE button in TD Detail
    Given User is logged in with cif "save_it_cif_with_td_static"
    And User change language to "language"
    And User click "dashboard_hamburger_icon"
    And User click "save_it_side_menu"
    And User wait "save_it_maxi_saver_loading_screen" will be gone
    And User check and click "card_center_close_tutorial" if exist
    And User swipe up until found "save_it_maxi_saver_list_collapse"
    And User click "save_it_maxi_saver_list_collapse"
    # Then "save_it_maxi_saver_list_expanded" will be displayed
    And User swipe up to element contains "save_it_maxi_saver_with_aro_p_i" text
    And User click element contains "save_it_maxi_saver_with_aro_p_i" text
    And User wait "save_it_maxi_saver_loading_screen" will be gone
    And User check and click "save_it_maxi_saver_detail_coach_mark_touchable" if exist
    And User check and click "save_it_maxi_saver_detail_coach_mark_touchable" if exist
    And User click "save_it_maxi_saver_detail_maturity_option_button"
    Then User expect "save_it_maxi_saver_detail_maturity_option_button" doesn't exist
    And "save_it_edit_maxi_saver_label" will be displayed

@android @uidatabound @ios @R3_1
Scenario: JENI2543-C70079-[Mobile] Verify User will be directed to the Change TD page
    Given User is logged in with cif "save_it_cif_with_td_static"
    And User change language to "language"
    And User click "dashboard_hamburger_icon"
    And User click "save_it_side_menu"
    And User wait "save_it_maxi_saver_loading_screen" will be gone
    And User check and click "card_center_close_tutorial" if exist
    And User swipe up until found "save_it_maxi_saver_list_collapse"
    And User click "save_it_maxi_saver_list_collapse"
    # Then "save_it_maxi_saver_list_expanded" will be displayed
    And User swipe up to element contains "save_it_maxi_saver_with_aro_p_i" text
    And User click element contains "save_it_maxi_saver_with_aro_p_i" text
    And User wait "save_it_maxi_saver_loading_screen" will be gone
    And User check and click "save_it_maxi_saver_detail_coach_mark_touchable" if exist
    And User check and click "save_it_maxi_saver_detail_coach_mark_touchable" if exist
    And User click "save_it_maxi_saver_detail_maturity_option_button"
    Then "save_it_edit_maxi_saver_label" will be displayed

@android @uidatabound @ios @R3_1
Scenario: JENI2543-C70080-[Mobile] Verify User with ARO Cash Out should be able to choose ARO P in Change TD page by swiping the options
  Given User is logged in with cif "save_it_cif_with_td_static"
  And User change language to "language"
  # Then "dashboard" will be displayed
  And User click "dashboard_hamburger_icon"
  And User click "save_it_side_menu"
  And User wait "save_it_maxi_saver_loading_screen" will be gone
  And User check and click "card_center_close_tutorial" if exist
  And User swipe up until found "save_it_maxi_saver_list_collapse"
  And User click "save_it_maxi_saver_list_collapse"
  # Then "save_it_maxi_saver_list_expanded" will be displayed
  And User swipe up to element contains "save_it_maxi_saver_with_cashout" text
  And User click element contains "save_it_maxi_saver_with_cashout" text
  And User wait "save_it_maxi_saver_loading_screen" will be gone
  And User check and click "save_it_maxi_saver_detail_coach_mark_touchable" if exist
  And User check and click "save_it_maxi_saver_detail_coach_mark_touchable" if exist
  And User click "save_it_maxi_saver_detail_maturity_option_button" 
  Then "save_it_maxi_saver_aro_p" will be displayed

@android @uidatabound @R3_1
Scenario: JENI2543-C70081-[Mobile] Verify User with ARO Cash Out should be able to choose ARO P+I in Change TD page by swiping the options
  Given User is logged in with cif "save_it_cif_with_td_static"
  And User change language to "language"
  # Then "dashboard" will be displayed
  And User click "dashboard_hamburger_icon"
  And User click "save_it_side_menu"
  And User wait "save_it_maxi_saver_loading_screen" will be gone
  And User check and click "card_center_close_tutorial" if exist
  And User swipe up until found "save_it_maxi_saver_list_collapse"
  And User click "save_it_maxi_saver_list_collapse"
  # Then "save_it_maxi_saver_list_expanded" will be displayed
  And User swipe up to element contains "save_it_maxi_saver_with_cashout" text
  And User click element with text "save_it_maxi_saver_with_cashout"
  And User wait "save_it_maxi_saver_loading_screen" will be gone
  And User check and click "save_it_maxi_saver_detail_coach_mark_touchable" if exist
  And User check and click "save_it_maxi_saver_detail_coach_mark_touchable" if exist
  Then "save_it_maxi_saver_detail_maturity_option_button" will be displayed
  And User click "save_it_maxi_saver_detail_maturity_option_button"
  Then "save_it_maxi_saver_aro_p" will be displayed
  # And User swipe from "save_it_maxi_saver_aro_p" to "save_it_maxi_saver_aro_pi" displayed
  And User swipe the right menu to the left
  And User swipe the right menu to the left
  Then "save_it_maxi_saver_aro_pi" will be displayed

@android @uidatabound @R3_1
Scenario: JENI2543-C70082-[Mobile] Verify User with ARO P should be able to choose ARO P+I in Change TD page by swiping the options
  Given User is logged in with cif "save_it_cif_with_td_static"
  And User change language to "language"
  # Then "dashboard" will be displayed
  And User click "dashboard_hamburger_icon"
  And User click "save_it_side_menu"
  And User wait "save_it_maxi_saver_loading_screen" will be gone
  And User check and click "card_center_close_tutorial" if exist
  And User swipe up until found "save_it_maxi_saver_list_collapse"
  And User click "save_it_maxi_saver_list_collapse"
  # Then "save_it_maxi_saver_list_expanded" will be displayed
  And User swipe up to element contains "save_it_maxi_saver_with_aro_p" text
  And User click element with text "save_it_maxi_saver_with_aro_p" 
  And User wait "save_it_maxi_saver_loading_screen" will be gone
  And User check and click "save_it_maxi_saver_detail_coach_mark_touchable" if exist
  And User check and click "save_it_maxi_saver_detail_coach_mark_touchable" if exist
  And User wait "save_it_maxi_saver_loading_screen" will be gone
  And User click "save_it_maxi_saver_detail_maturity_option_button"
  Then "save_it_maxi_saver_aro_pi" will be displayed

@android @uidatabound @R3_1
Scenario: JENI2543-C70083-[Mobile] Verify User with ARO P should be able to choose ARO Cash Out in Change TD page by swiping the options
  Given User is logged in with cif "save_it_cif_with_td_static"
  And User change language to "language"
  # Then "dashboard" will be displayed
  And User click "dashboard_hamburger_icon"
  And User click "save_it_side_menu"
  And User wait "save_it_maxi_saver_loading_screen" will be gone
  And User check and click "card_center_close_tutorial" if exist
  And User swipe up until found "save_it_maxi_saver_list_collapse"
  And User click "save_it_maxi_saver_list_collapse"
  # Then "save_it_maxi_saver_list_expanded" will be displayed
  And User swipe up to element contains "save_it_maxi_saver_with_aro_p" text
  And User click element contains "save_it_maxi_saver_with_aro_p" text
  And User wait "save_it_maxi_saver_loading_screen" will be gone
  And User check and click "save_it_maxi_saver_detail_coach_mark_touchable" if exist
  And User check and click "save_it_maxi_saver_detail_coach_mark_touchable" if exist
  And User wait "save_it_maxi_saver_loading_screen" will be gone
  And User click "save_it_maxi_saver_detail_maturity_option_button"
  Then "save_it_maxi_saver_aro_pi" will be displayed
  And User swipe the right menu to the left
  Then "save_it_maxi_saver_cash_out" will be displayed

@android @uidatabound @ios @R3_1
Scenario: JENI2543-C70084-[Mobile] Verify User with ARO P+I should be able to choose ARO P in Change TD page by swiping the options
  Given User is logged in with cif "save_it_cif_with_td_static"
  And User change language to "language"
  # Then "dashboard" will be displayed
  And User click "dashboard_hamburger_icon"
  And User click "save_it_side_menu"
  And User wait "save_it_maxi_saver_loading_screen" will be gone
  And User check and click "card_center_close_tutorial" if exist
  And User swipe up until found "save_it_maxi_saver_list_collapse"
  And User click "save_it_maxi_saver_list_collapse"
  # Then "save_it_maxi_saver_list_expanded" will be displayed
  And User swipe up to element contains "save_it_maxi_saver_with_aro_p_i" text
  And User click element contains "save_it_maxi_saver_with_aro_p_i" text
  And User wait "save_it_maxi_saver_loading_screen" will be gone
  And User check and click "save_it_maxi_saver_detail_coach_mark_touchable" if exist
  And User check and click "save_it_maxi_saver_detail_coach_mark_touchable" if exist
  And User wait "save_it_maxi_saver_loading_screen" will be gone
  And User click "save_it_maxi_saver_detail_maturity_option_button"
  Then "save_it_maxi_saver_aro_p" will be displayed

@android @uidatabound @ios @R3_1
Scenario: JENI2543-C70085-[Mobile] Verify User with ARO P+I should be able to choose ARO Cash Out in Change TD page by swiping the options
  Given User is logged in with cif "save_it_cif_with_td_static"
  And User change language to "language"
  # Then "dashboard" will be displayed
  And User click "dashboard_hamburger_icon"
  And User click "save_it_side_menu"
  And User wait "save_it_maxi_saver_loading_screen" will be gone
  And User check and click "card_center_close_tutorial" if exist
  And User swipe up until found "save_it_maxi_saver_list_collapse"
  And User click "save_it_maxi_saver_list_collapse"
  # Then "save_it_maxi_saver_list_expanded" will be displayed
  And User swipe up to element contains "save_it_maxi_saver_with_aro_p_i" text
  And User click element contains "save_it_maxi_saver_with_aro_p_i" text
  And User wait "save_it_maxi_saver_loading_screen" will be gone
  And User check and click "save_it_maxi_saver_detail_coach_mark_touchable" if exist
  And User check and click "save_it_maxi_saver_detail_coach_mark_touchable" if exist
  And User wait "save_it_maxi_saver_loading_screen" will be gone
  And User click "save_it_maxi_saver_detail_maturity_option_button"
  Then "save_it_maxi_saver_aro_p" will be displayed 
  And User swipe the right menu to the left 
  Then "save_it_maxi_saver_cash_out" will be displayed

@android @uidatabound @ios @R3_1
Scenario: JENI2543-C70086-[[Mobile] Verify User should be able to click the CHANGE button in Change TD page
  Given User is logged in with cif "save_it_cif_with_td_static"
  And User change language to "language"
  # Then "dashboard" will be displayed
  And User click "dashboard_hamburger_icon"
  And User click "save_it_side_menu"
  And User wait "save_it_maxi_saver_loading_screen" will be gone
  And User check and click "card_center_close_tutorial" if exist
  And User swipe up until found "save_it_maxi_saver_list_collapse"
  And User click "save_it_maxi_saver_list_collapse"
  # Then "save_it_maxi_saver_list_expanded" will be displayed
  And User swipe up to element contains "save_it_maxi_saver_with_aro_p_i" text
  And User click element contains "save_it_maxi_saver_with_aro_p_i" text
  And User wait "save_it_maxi_saver_loading_screen" will be gone
  And User check and click "save_it_maxi_saver_detail_coach_mark_touchable" if exist
  And User check and click "save_it_maxi_saver_detail_coach_mark_touchable" if exist
  And User wait "save_it_maxi_saver_loading_screen" will be gone
  And User click "save_it_maxi_saver_detail_maturity_option_button"
  Then "save_it_maxi_saver_aro_p" will be displayed
  And User swipe the right menu to the left 
  Then "save_it_select_aro_next_button" will be displayed
  And User click "save_it_select_aro_next_button"
  Then User expect "save_it_maxi_saver_confirmation_button_cancel" is exist

@android @uidatabound @ios @R3_1
Scenario: JENI2543-C70087-[Mobile] Verify User should be able to see the confirmation pop-up after click CONFIRM button
  Given User is logged in with cif "save_it_cif_with_td_static"
  And User change language to "language"
  # Then "dashboard" will be displayed
  And User click "dashboard_hamburger_icon"
  And User click "save_it_side_menu"
  And User wait "save_it_maxi_saver_loading_screen" will be gone
  And User check and click "card_center_close_tutorial" if exist
  And User swipe up until found "save_it_maxi_saver_list_collapse"
  And User click "save_it_maxi_saver_list_collapse"
  # Then "save_it_maxi_saver_list_expanded" will be displayed
  And User swipe up to element contains "save_it_maxi_saver_with_aro_p_i" text
  And User click element contains "save_it_maxi_saver_with_aro_p_i" text
  And User wait "save_it_maxi_saver_loading_screen" will be gone
  And User check and click "save_it_maxi_saver_detail_coach_mark_touchable" if exist
  And User check and click "save_it_maxi_saver_detail_coach_mark_touchable" if exist
  And User click "save_it_maxi_saver_detail_maturity_option_button"
  Then "save_it_maxi_saver_aro_p" will be displayed
  And User swipe the right menu to the left 
  Then "save_it_maxi_saver_cash_out" will be displayed
  And User click "save_it_select_aro_next_button"
  Then User expect "save_it_maxi_saver_confirmation_button_yes" is exist

@android @uidatabound @ios @R3_1
Scenario: JENI2543-C70088-[Mobile] Verify if the Narrative of confirmation pop-up is matched with the new chosen ARO setting
  Given User is logged in with cif "save_it_cif_with_td_static"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "save_it_side_menu"
  And User wait "save_it_maxi_saver_loading_screen" will be gone
  And User check and click "card_center_close_tutorial" if exist
  And User swipe up until found "save_it_maxi_saver_list_collapse"
  And User click "save_it_maxi_saver_list_collapse"
  # Then "save_it_maxi_saver_list_expanded" will be displayed
  And User swipe up to element contains "save_it_maxi_saver_with_aro_p" text
  And User click element contains "save_it_maxi_saver_with_aro_p" text
  And User wait "save_it_maxi_saver_loading_screen" will be gone
  And User check and click "save_it_maxi_saver_detail_coach_mark_touchable" if exist
  And User check and click "save_it_maxi_saver_detail_coach_mark_touchable" if exist
  And User click "save_it_maxi_saver_detail_maturity_option_button"
  Then "save_it_maxi_saver_aro_pi" will be displayed
  And User click "save_it_select_aro_next_button" 
  Then User expect "save_it_maxi_saver_confirmation_button_yes" is exist
  Then User expect "save_it_maxi_saver_narrative_confirmation_pop_up" equal with "save_it_maxi_saver_narrative_confirmation_pop_up_arop_to_aropi"

@android @uidatabound @ios @R3_1
Scenario: JENI2543-C70089-[Mobile] Verify The confirmation pop-up should be closed when user click CANCEL button
  Given User is logged in with cif "save_it_cif_with_td_static"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "save_it_side_menu"
  And User wait "save_it_maxi_saver_loading_screen" will be gone
  And User check and click "card_center_close_tutorial" if exist
  And User swipe up until found "save_it_maxi_saver_list_collapse"
  And User click "save_it_maxi_saver_list_collapse"
  # Then "save_it_maxi_saver_list_expanded" will be displayed
  And User swipe up to element contains "save_it_maxi_saver_with_aro_p_i" text
  And User click element contains "save_it_maxi_saver_with_aro_p_i" text
  And User wait "save_it_maxi_saver_loading_screen" will be gone
  And User check and click "save_it_maxi_saver_detail_coach_mark_touchable" if exist
  And User check and click "save_it_maxi_saver_detail_coach_mark_touchable" if exist
  And User wait "save_it_maxi_saver_loading_screen" will be gone
  And User click "save_it_maxi_saver_detail_maturity_option_button"
  Then "save_it_maxi_saver_aro_p" will be displayed
  And User click "save_it_select_aro_next_button"
  Then "save_it_maxi_saver_confirmation_button_cancel" will be displayed
  And User click "save_it_maxi_saver_confirmation_button_cancel"
  Then "save_it_select_aro_next_button" will be displayed

@android @uidatabound @ios @R3_1
# JENI2543-C70120-[Mobile] Verify There should be a warning pop-up message when user already reach max ARO 
# JENI2543-C70121-[Mobile] Verify the warning pop-up message narrative when user already reach max ARO setting parameter
# JENI2543-C70122-[Mobile] Verify Close the warning pop-up message by clicking OK, GOT IT button when user already reach max ARO setting parameter
Scenario: JENI2543-C70120#C70121#C70122-[Mobile] Verify warning pop-up message when reach max edit ARO setting parameter
  Given User is logged in with cif "save_it_cif_with_td_static"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "save_it_side_menu"
  And User wait "save_it_maxi_saver_loading_screen" will be gone
  And User check and click "card_center_close_tutorial" if exist
  And User swipe up until found "save_it_maxi_saver_list_collapse"
  And User click "save_it_maxi_saver_list_collapse"
  And User swipe up until found "save_it_maxi_saver_max_edit_td"
  And User click "save_it_maxi_saver_max_edit_td"
  And User check and click "save_it_maxi_saver_detail_coach_mark_touchable" if exist
  And User check and click "save_it_maxi_saver_detail_coach_mark_touchable" if exist
  And User click "save_it_maxi_saver_detail_maturity_option_button"
  # assertion for C70120
  Then "save_it_maxi_saver_detail_max_edit_reach_pop_up" will be displayed
  # assertion for C70121
  Then User expect "save_it_maxi_saver_detail_max_edit_reach_narrative" equal with "save_it_maxi_saver_maximum_edit_narrative_confirmation_pop_up"
  # assertion for C70122
  And User click "save_it_maxi_saver_detail_max_edit_reach_ok_button"
  Then "save_it_maxi_saver_detail_screen" will be displayed
  And User expect "save_it_maxi_saver_detail_max_edit_reach_pop_up" doesn't exist
 
@android @uidatabound @endtoend @ios @R3_1
Scenario: JENI2543-C117847-Verify that user can not edit Maxi in the same creation date - Maturity Option button should be disable
  Given User is logged in with cif "save_it_cif_with_td_dynamic"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "save_it_side_menu"
  And User wait "save_it_maxi_saver_loading_screen" will be gone
  And User check and click "card_center_close_tutorial" if exist
  And User swipe up until found "save_it_create_new_maxi_saver"
  And User click "save_it_create_new_maxi_saver"
  And User check and click "save_it_maxi_saver_overview_ok_got_it_button" if exist
  And User click "save_it_next_button"

  And User click "save_it_select_aro_next_button"
  And User click "save_it_maxi_saver_confirmation_check_box"
  And System save "save_it_maxi_saver_confirmation_screen_end_of_term" value
  And User change date format of save data number 1 from [dd MM yyyy] to [dd mm yyyy]
  And User click "save_it_maxi_saver_confirmation_button"
  And User check and click "card_center_close_tutorial" if exist
  # And User swipe up until found "save_it_maxi_saver_list_collapse"
  # And User click "save_it_maxi_saver_list_collapse"
  And User swipe up to element contains saved data number 1
  And User click element contains saved data number 1
  And User check and click "save_it_maxi_saver_detail_coach_mark_touchable" if exist
  And User check and click "save_it_maxi_saver_detail_coach_mark_touchable" if exist
  And User click "save_it_maxi_saver_detail_maturity_option_button" 
  Then User expect "save_it_maxi_saver_detail_maturity_option_button" is exist

@android @endtoend @ios @R3_1
Scenario: JENI2543-C70091-[Mobile] Verify User should be able to see the success message snackbar in the new TD detail after click YES, I'M SURE in confirmation pop-up
  Given User is logged in with cif "save_it_cif_with_td_dynamic"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "save_it_side_menu"
  And User wait "save_it_maxi_saver_loading_screen" will be gone
  And User check and click "card_center_close_tutorial" if exist
  And User swipe up until found "save_it_maxi_saver_list_collapse"
  And User click "save_it_maxi_saver_list_collapse"
  Then "save_it_maxi_saver_list_expanded" will be displayed
  And User swipe up to element contains "save_it_maxi_saver_with_aro_p_i" text
  And User click element contains "save_it_maxi_saver_with_aro_p_i" text
  And User wait "save_it_maxi_saver_loading_screen" will be gone
  And User check and click "save_it_maxi_saver_detail_coach_mark_touchable" if exist
  And User check and click "save_it_maxi_saver_detail_coach_mark_touchable" if exist
  And User click "save_it_maxi_saver_detail_maturity_option_button"
  Then "save_it_maxi_saver_aro_p" will be displayed
  And User swipe the right menu to the left
  And User click "save_it_select_aro_next_button"
  And User click "save_it_maxi_saver_confirmation_button_yes"
  # And User wait "save_it_maxi_saver_loading_screen" will be gone
  Then User check snackbar with dynamic text "save_it_maxi_saver_change_to_aro_p_notification"

@android @endtoend @ios @R3_1 @continuous
Scenario: JENI2543-C70090-[Mobile] Verify User should be directed to the new TD detail after click YES, I'M SURE button in confirmation pop-up
  Then "save_it_maxi_saver_detail_screen" will be displayed

@android @endtoend @ios @R3_1 @continuous
Scenario: JENI2543-C70108-Verify User should be able to see the new ARO setting in the TD detail
  Then User expect "save_it_maxi_saver_detail_aro_setting" equal with "save_it_maxi_saver_rop"
