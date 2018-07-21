@r3_cardcenter
Feature: Release 3 - CARD CENTER module
  
#JENI-60 
@android @uidatabound
Scenario:JENI60-C17867-Check layout of the card center landing page
  Given User is logged in with cif "card_center_active_x_card_for_ui_transaction"
  Then "dashboard" will be displayed
  And User change language to "language"
  And User access card center from side menu
  And User click "card_center_close_tutorial" until "card_center_m_card_clickable" displayed
  Then "card_center_m_card_clickable" will be displayed
  Then "card_center_dropdown_option_e_card" will be displayed
  Then "card_center_first_x_card_dashboard" will be displayed
  Then "card_center_landing_page_cta_top_up" will be displayed
  Then "card_center_landing_page_cta_new_card" will be displayed
  Then "card_center_landing_page_cta_block" will be displayed

@android @uidatabound
Scenario:JENI60-C17868-Check order of cards when it has 1 active m-card, active e-card, 1 active x-card
  Given User is logged in with cif "card_center_active_x_card_for_ui_transaction"
  Then "dashboard" will be displayed
  And User change language to "language"
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  Then "card_center_m_card_clickable" will be displayed
  Then "card_center_dropdown_option_e_card" will be displayed
  Then "card_center_first_x_card_dashboard" will be displayed
  Then User expect "card_center_m_card_landing_title" equal with "card_center_m_card"
  Then User expect "card_center_e_card_landing_title" equal with "card_center_e_card"
  Then User expect "card_center_first_x_card_landing_title" equal with "card_center_first_x_card"

@android @uidatabound
Scenario:JENI60-C17869-Check order of cards when it has 1 active m-card, active e-card, 2 active x-card
  Given User is logged in with cif "card_center_active_x_card_for_ui_transaction"
  Then "dashboard" will be displayed
  And User change language to "language"
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  Then "card_center_m_card_clickable" will be displayed
  Then "card_center_dropdown_option_e_card" will be displayed
  Then "card_center_first_x_card_dashboard" will be displayed
  Then User expect "card_center_m_card_landing_title" equal with "card_center_m_card"
  Then User expect "card_center_e_card_landing_title" equal with "card_center_e_card"
  Then User expect "card_center_first_x_card_landing_title" equal with "card_center_first_x_card"
  Then User expect "card_center_second_x_card_landing_title" equal with "card_center_second_x_card"

@android @uidatabound
Scenario:JENI60-C17870-Check order of cards when it has 1 active m-card, active e-card, 3 active x-card
  Given User is logged in with cif "card_center_active_x_card_for_ui_transaction"
  Then "dashboard" will be displayed
  And User change language to "language"
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  Then "card_center_m_card_clickable" will be displayed
  Then "card_center_dropdown_option_e_card" will be displayed
  Then "card_center_first_x_card_dashboard" will be displayed
  Then User expect "card_center_m_card_landing_title" equal with "card_center_m_card"
  Then User expect "card_center_e_card_landing_title" equal with "card_center_e_card"
  Then User expect "card_center_first_x_card_landing_title" equal with "card_center_first_x_card"
  Then User expect "card_center_second_x_card_landing_title" equal with "card_center_second_x_card"
  Then User expect "card_center_third_x_card_landing_title" equal with "card_center_third_x_card"

@android @uidatabound
Scenario:JENI60-C17877-Verify e-card has "Virtual Card" type
  Given User is logged in with cif "card_center_active_card_for_ui_transaction"
  Then "dashboard" will be displayed
  And User change language to "language"
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  Then "card_center_dropdown_option_e_card" will be displayed
  Then User expect "card_center_e_card_type" equal with "card_center_e_card_type"

@android @uidatabound
Scenario:JENI60-C17878-Verify CTA actions: new card, Top up, Block Card
  Given User is logged in with cif "card_center_active_card_for_ui_transaction"
  Then "dashboard" will be displayed
  And User change language to "language"
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  Then "card_center_landing_page_cta_top_up" will be displayed
  Then "card_center_landing_page_cta_new_card" will be displayed
  Then "card_center_landing_page_cta_block" will be displayed

@android @uidatabound
Scenario:JENI60-C17872-Check order of cards when it has 1 temporarily blocked m-card, temporarily blocked e-card, 1 active x-card
  Given User is logged in with cif "card_center_block_card_for_ui_transaction"
  Then "dashboard" will be displayed
  And User change language to "language"
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  Then "card_center_m_card_clickable" will be displayed
  Then "card_center_dropdown_option_e_card" will be displayed
  Then "card_center_first_x_card_dashboard" will be displayed
  Then User expect "card_center_m_card_landing_title" equal with "card_center_m_card"
  Then User expect "card_center_m_card_status_dashboard" equal with "card_center_temporarily_blocked"
  Then User expect "card_center_e_card_landing_title" equal with "card_center_e_card"
  Then User expect "card_center_e_card_status_dashboard" equal with "card_center_temporarily_blocked"
  Then User expect "card_center_first_x_card_landing_title" equal with "card_center_first_x_card"
  Then User expect "card_center_first_x_card_status_dashboard" equal with "card_center_active"  

#Cover for T1339713, T1339714, 
@android @uidatabound   
Scenario:JENI60-C17873-Check order of cards when it has 1 temporarily blocked m-card, temporarily blocked e-card, 1 temporarily blocked x-card
  Given User is logged in with cif "card_center_block_card_for_ui_transaction"
  Then "dashboard" will be displayed
  And User change language to "language"
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  Then "card_center_m_card_clickable" will be displayed
  Then "card_center_dropdown_option_e_card" will be displayed
  Then "card_center_first_x_card_dashboard" will be displayed
  Then User expect "card_center_m_card_landing_title" equal with "card_center_m_card"
  Then User expect "card_center_m_card_status_dashboard" equal with "card_center_temporarily_blocked"
  Then User expect "card_center_e_card_landing_title" equal with "card_center_e_card"
  Then User expect "card_center_e_card_status_dashboard" equal with "card_center_temporarily_blocked"
  Then User expect "card_center_first_x_card_landing_title" equal with "card_center_first_x_card"
  Then User expect "card_center_first_x_card_status_dashboard" equal with "card_center_temporarily_blocked"  

@android @uidatabound   
Scenario:JENI60-C17874-Check order of cards when it has 1 permanently blocked m-card, temporarily blocked e-card, 1 PB x-card, 1 active x-card
  Given User is logged in with cif "card_center_block_card_for_ui_transaction"
  Then "dashboard" will be displayed
  And User change language to "language"
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  Then "card_center_m_card_clickable" will be displayed
  Then "card_center_dropdown_option_e_card" will be displayed
  Then "card_center_first_x_card_dashboard" will be displayed
  Then User expect "card_center_m_card_landing_title" equal with "card_center_m_card"
  Then User expect "card_center_m_card_status_dashboard" equal with "card_center_permanently_blocked"
  Then User expect "card_center_e_card_landing_title" equal with "card_center_e_card"
  Then User expect "card_center_e_card_status_dashboard" equal with "card_center_temporarily_blocked"
  Then User expect "card_center_first_x_card_landing_title" equal with "card_center_first_x_card"
  Then User expect "card_center_first_x_card_status_dashboard" equal with "card_center_permanently_blocked"
  Then User expect "card_center_second_x_card_landing_title" equal with "card_center_second_x_card"
  Then User expect "card_center_second_x_card_status_dashboard" equal with "card_center_active"

@android @uidatabound   
Scenario:JENI60-C17875-Check order of cards, in case it has 1 PB m-card, 1 activate m-card, active e-card, 1 PB x-card, 1 active x-card
  Given User is logged in with cif "card_center_block_card_for_ui_transaction"
  Then "dashboard" will be displayed
  And User change language to "language"
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  Then User expect "card_center_m_card_landing_title" equal with "card_center_m_card"
  Then User expect "card_center_m_card_status_dashboard" equal with "card_center_temporarily_blocked"
  Then User expect "card_center_e_card_landing_title" equal with "card_center_m_card"
  Then User expect "card_center_e_card_status_dashboard" equal with "card_center_activate"
  Then User expect "card_center_first_x_card_landing_title" equal with "card_center_e_card"
  Then User expect "card_center_first_x_card_status_dashboard" equal with "card_center_active"
  Then User expect "card_center_second_x_card_landing_title" equal with "card_center_first_x_card"
  Then User expect "card_center_second_x_card_status_dashboard" equal with "card_center_permanently_blocked"
  And User swipe up until found "card_center_third_x_card_landing_title"
  Then User expect "card_center_third_x_card_landing_title" equal with "card_center_second_x_card"
  Then User expect "card_center_third_x_card_status_dashboard" equal with "card_center_active"

@android @uidatabound
 Scenario: JENI60-C17876-Verify the active m-card doesn't show its balance
  Given User is logged in with cif "card_center_active_card_for_ui_transaction"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  And "card_center_m_card_clickable" will be displayed
  And User click "card_center_m_card_clickable"
  Then User expect "card_center_m_card_balance_dashboard" doesn't exist

@android @uidatabound
 Scenario: JENI60-C17879-The account is inactive: m-card and e-card status is Processing
  Given User is logged in with cif "card_center_processing_card"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  And "card_center_m_card_clickable" will be displayed
  Then "card_center_dropdown_option_e_card" will be displayed
  Then User expect "card_center_m_card_status_dashboard" equal with "card_center_processing"
  Then User expect "card_center_e_card_status_dashboard" equal with "card_center_processing"

@android @uidatabound
Scenario: JENI60-C17880-The account is inactive: main account balance should be shown
  Given User is logged in with cif "card_center_inactive_account"
  And User change language to "language"
  Then "dashboard" will be displayed
  Then User expect "dashboard_total_balance_widget" is exist
 
@android @uidatabound
Scenario: JENI60-C17881-The account is inactive: the action in the bottom menu is in disabled state
  Given User is logged in with cif "card_center_inactive_account"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  And "card_center_landing_page_cta_new_card" will be displayed
  And "card_center_landing_page_cta_top_up" will be displayed
  And "card_center_landing_page_cta_block" will be displayed
  And User click "card_center_landing_page_cta_new_card"
  Then "card_center_landing_page_cta_new_card" will be displayed
  Then "card_center_landing_page_cta_top_up" will be displayed
  Then "card_center_landing_page_cta_block" will be displayed
  And User click "card_center_landing_page_cta_top_up"
  Then "card_center_landing_page_cta_new_card" will be displayed
  Then "card_center_landing_page_cta_top_up" will be displayed
  Then "card_center_landing_page_cta_block" will be displayed
  And User click "card_center_landing_page_cta_block"
  Then "card_center_landing_page_cta_new_card" will be displayed
  Then "card_center_landing_page_cta_top_up" will be displayed
  Then "card_center_landing_page_cta_block" will be displayed
  
#JENI-118 #Fixco
#For check active all card 
@android @uidatabound  
Scenario:JENI118-C17804-Verify the card center widget in case: m-card is active, e-card is active, x-card active
  Given User is logged in with cif "card_center_active_all_card_for_ui_transaction"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_e_card_tb_dashboard"
  Then "card_center_m_card_clickable" will be displayed
  Then "card_center_dropdown_option_e_card" will be displayed
  Then "card_center_first_x_card_dashboard" will be displayed
  Then User expect "card_center_m_card_status_dashboard" equal with "card_center_active"
  Then User expect "card_center_e_card_status_dashboard" equal with "card_center_active"
  Then User expect "card_center_first_x_card_status_dashboard" equal with "card_center_active"

#For check all card Permanen Block
@android @uidatabound  
Scenario:JENI118-C17799-Verify the card center widget in case: m-card is Permanently Blocked, e-card is Permanent Block, x-card id Permanent Block
  Given User is logged in with cif "card_center_permanent_block_account"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_e_card_tb_dashboard"
  Then "card_center_m_card_clickable" will be displayed
  Then "card_center_dropdown_option_e_card" will be displayed
  Then "card_center_first_x_card_dashboard" will be displayed
  Then User expect "card_center_m_card_status_dashboard" equal with "card_center_permanently_blocked"
  Then User expect "card_center_e_card_status_dashboard" equal with "card_center_permanently_blocked"
  Then User expect "card_center_first_x_card_status_dashboard" equal with "card_center_permanently_blocked"

#For check all card Temporarily Block
@android @uidatabound  
Scenario:JENI118-C17797-Verify the card center widget in case: m-card is Temporarily Blocked, e-card is Temporarily Block, x-card id Temporarily Block
  Given User is logged in with cif "card_center_block_card_for_ui_transaction"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_e_card_tb_dashboard"
  Then "card_center_m_card_clickable" will be displayed
  Then "card_center_dropdown_option_e_card" will be displayed
  Then "card_center_first_x_card_dashboard" will be displayed
  Then User expect "card_center_m_card_status_dashboard" equal with "card_center_temporarily_blocked"
  Then User expect "card_center_e_card_status_dashboard" equal with "card_center_temporarily_blocked"
  Then User expect "card_center_first_x_card_status_dashboard" equal with "card_center_temporarily_blocked"

@android @uidatabound   
Scenario:JENI118-C17797-Verify the card center widget in case: m-card is Temporarily Block, e-card is Active
  Given User is logged in with cif "card_center_tb_m_card_active_e_card"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_e_card_tb_dashboard"
  Then "card_center_m_card_clickable" will be displayed
  Then "card_center_dropdown_option_e_card" will be displayed
  Then User expect "card_center_m_card_status_dashboard" equal with "card_center_temporarily_blocked"
  Then User expect "card_center_e_card_status_dashboard" equal with "card_center_active"

@android @uidatabound   
Scenario:JENI118-C17799-Verify the card center widget in case: m-card is Permanently Blocked, e-card is Active
  Given User is logged in with cif "card_center_active_m_card_pb_m_card_active_e_card"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_e_card_tb_dashboard"
  Then "card_center_m_card_clickable" will be displayed
  Then "card_center_dropdown_option_e_card" will be displayed
  Then "card_center_first_x_card_dashboard" will be displayed
  Then User expect "card_center_m_card_status_dashboard" equal with "card_center_active"
  Then User expect "card_center_e_card_status_dashboard" equal with "card_center_permanently_blocked"
  Then User expect "card_center_first_x_card_status_dashboard" equal with "card_center_active"

@android @uidatabound   
Scenario:JENI118-C17801-Verify the card center widget in case: m-card is Active, e-card is Temporarily Blocked
  Given User is logged in with cif "card_center_active_m_card_tb_e_card"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_e_card_tb_dashboard"
  Then "card_center_m_card_clickable" will be displayed
  Then "card_center_dropdown_option_e_card" will be displayed
  Then User expect "card_center_m_card_status_dashboard" equal with "card_center_active"
  Then User expect "card_center_e_card_status_dashboard" equal with "card_center_temporarily_blocked"
 
@android @uidatabound   
Scenario:JENI118-C17804-Verify the card center widget in case: m-card is Active, e-card is Active, x-card is Activate
  Given User is logged in with cif "card_center_active_all_card"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_e_card_tb_dashboard"
  Then "card_center_m_card_clickable" will be displayed
  Then "card_center_dropdown_option_e_card" will be displayed
  Then "card_center_first_x_card_dashboard" will be displayed
  Then User expect "card_center_m_card_status_dashboard" equal with "card_center_active"
  Then User expect "card_center_e_card_status_dashboard" equal with "card_center_active"
  Then User expect "card_center_x_card_activate_dashboard" is exist

@android @uidatabound   
Scenario:JENI118-C17805-Verify the card center widget in case: m-card is Active, e-card is Active, x-card is Active
  Given User is logged in with cif "card_center_active_all_card"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_e_card_tb_dashboard"
  Then "card_center_m_card_clickable" will be displayed
  Then "card_center_dropdown_option_e_card" will be displayed
  Then "card_center_first_x_card_dashboard" will be displayed
  Then User expect "card_center_m_card_status_dashboard" equal with "card_center_active"
  Then User expect "card_center_e_card_status_dashboard" equal with "card_center_active"
  Then User expect "card_center_first_x_card_status_dashboard" equal with "card_center_active"

@android @uidatabound   
Scenario:JENI118-C17806-Verify the card center widget in case: m-card is Active, e-card is Active, x-card is Temporarily Blocked
  Given User is logged in with cif "card_center_active_m_card_e_card_tb_x_card"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_e_card_tb_dashboard"
  Then "card_center_m_card_clickable" will be displayed
  Then "card_center_dropdown_option_e_card" will be displayed
  Then "card_center_first_x_card_dashboard" will be displayed
  Then User expect "card_center_m_card_status_dashboard" equal with "card_center_active"
  Then User expect "card_center_e_card_status_dashboard" equal with "card_center_active"
  Then User expect "card_center_first_x_card_status_dashboard" equal with "card_center_temporarily_blocked"

@android @uidatabound   
Scenario:JENI118-C17807-Verify the card center widget in case: m-card is Active, e-card is Active, x-card is Permanently Blocked
  Given User is logged in with cif "card_center_active_m_card_e_card_pb_x_card"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_e_card_tb_dashboard"
  Then "card_center_m_card_clickable" will be displayed
  Then "card_center_dropdown_option_e_card" will be displayed
  Then "card_center_first_x_card_dashboard" will be displayed
  Then User expect "card_center_m_card_status_dashboard" equal with "card_center_active"
  Then User expect "card_center_e_card_status_dashboard" equal with "card_center_active"
  Then User expect "card_center_first_x_card_status_dashboard" equal with "card_center_permanently_blocked"

@android @uidatabound
Scenario:JENI118-C17808-Verify the card center widget: m-card=Active, e-card=Active, oldest x-card = Permanently Blocked, next x-card = Activate
  Given User is logged in with cif "card_center_active_m_card_active_e_card_pb_first_x_card_activate_second_x_card"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_e_card_tb_dashboard"
  Then "card_center_m_card_clickable" will be displayed
  Then "card_center_dropdown_option_e_card" will be displayed
  Then "card_center_first_x_card_dashboard" will be displayed
  Then User expect "card_center_m_card_status_dashboard" equal with "card_center_active"
  Then User expect "card_center_e_card_status_dashboard" equal with "card_center_active"
  Then User expect "card_center_first_x_card_status_dashboard" equal with "card_center_permanently_blocked"
  Then User expect "card_center_x_card_activate_dashboard" is exist

@android @uidatabound
Scenario:JENI118-C17809-Verify the card center widget: m-card=Active, e-card=Active, oldest x-card = Permanently Blocked, next x-card = Active
  Given User is logged in with cif "card_center_active_m_card_active_e_card_pb_first_x_card_active_second_x_card"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_e_card_tb_dashboard"
  Then "card_center_m_card_clickable" will be displayed
  Then "card_center_dropdown_option_e_card" will be displayed
  Then "card_center_first_x_card_dashboard" will be displayed
  Then User expect "card_center_m_card_status_dashboard" equal with "card_center_active"
  Then User expect "card_center_e_card_status_dashboard" equal with "card_center_active"
  Then User expect "card_center_first_x_card_status_dashboard" equal with "card_center_permanently_blocked"
  Then User expect "card_center_second_x_card_status_dashboard" equal with "card_center_active"
  
@android @uidatabound
Scenario:JENI118-C17810-Verify the card center widget: m-card=Active, e-card=Active, oldest x-card = Permanently Blocked, next x-card = Temporarily Blocked
  Given User is logged in with cif "card_center_active_m_card_e_card_pb_first_x_card_tb_second_x_card"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_e_card_tb_dashboard"
  Then "card_center_m_card_clickable" will be displayed
  Then "card_center_dropdown_option_e_card" will be displayed
  Then "card_center_first_x_card_dashboard" will be displayed
  Then "card_center_first_x_card_dashboard" will be displayed
  Then User expect "card_center_m_card_status_dashboard" equal with "card_center_active"
  Then User expect "card_center_e_card_status_dashboard" equal with "card_center_active"
  Then User expect "card_center_first_x_card_status_dashboard" equal with "card_center_permanently_blocked"
  Then User expect "card_center_second_x_card_status_dashboard" equal with "card_center_temporarily_blocked"

@android @uidatabound
Scenario:JENI118-C17811-Verify the card center widget: m-card=Active, e-card=Active, oldest x-card = Permanently Blocked, next x-card = Permanently Blocked  
  Given User is logged in with cif "card_center_active_m_card_e_card_pb_first_x_card_pb_second_x_card"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_e_card_tb_dashboard"
  Then "card_center_m_card_clickable" will be displayed
  Then "card_center_dropdown_option_e_card" will be displayed
  Then "card_center_first_x_card_dashboard" will be displayed
  Then "card_center_first_x_card_dashboard" will be displayed
  Then User expect "card_center_m_card_status_dashboard" equal with "card_center_active"
  Then User expect "card_center_e_card_status_dashboard" equal with "card_center_active"
  Then User expect "card_center_first_x_card_status_dashboard" equal with "card_center_permanently_blocked"
  Then User expect "card_center_second_x_card_status_dashboard" equal with "card_center_permanently_blocked"

@android @uidatabound
Scenario:JENI118-C17812-Verify the card center widget: m-card=Active, e-card=Temporarily Blocked, oldest x-card = Permanently Blocked, next x-card = Permanently Blocked
  Given User is logged in with cif "card_center_active_m_card_tb_e_card_pb_first_x_card_active_second_x_card"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_e_card_tb_dashboard"
  Then "card_center_m_card_clickable" will be displayed
  Then "card_center_dropdown_option_e_card" will be displayed
  Then "card_center_first_x_card_dashboard" will be displayed
  Then "card_center_first_x_card_dashboard" will be displayed
  Then User expect "card_center_m_card_status_dashboard" equal with "card_center_active"
  Then User expect "card_center_e_card_status_dashboard" equal with "card_center_temporarily_blocked"
  Then User expect "card_center_first_x_card_status_dashboard" equal with "card_center_permanently_blocked"
  Then User expect "card_center_second_x_card_status_dashboard" equal with "card_center_permanently_blocked"

@android @uidatabound
Scenario:JENI118-C17813-Verify the card center widget: m-card=Temporarily Blocked (TB), e-card=TB, oldest x-card = Permanently Blocked (PB), next x-card = PB
  Given User is logged in with cif "card_center_tb_m_card_e_card_pb_first_x_card_second_x_card"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_e_card_tb_dashboard"
  Then "card_center_m_card_clickable" will be displayed
  Then "card_center_dropdown_option_e_card" will be displayed
  Then "card_center_first_x_card_dashboard" will be displayed
  Then "card_center_first_x_card_dashboard" will be displayed
  Then User expect "card_center_m_card_status_dashboard" equal with "card_center_temporarily_blocked"
  Then User expect "card_center_e_card_status_dashboard" equal with "card_center_temporarily_blocked"
  Then User expect "card_center_first_x_card_status_dashboard" equal with "card_center_permanently_blocked"
  Then User expect "card_center_second_x_card_status_dashboard" equal with "card_center_permanently_blocked"

@android @uidatabound
Scenario:JENI118-C17814-Verify the card center widget: m-card=Permanently Blocked (PB), e-card=Temporarily Blocked, oldest x-card =PB, next x-card = PB
  Given User is logged in with cif "card_center_pb_m_card_tb_e_card_pb_first_x_card_second_x_card"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_e_card_tb_dashboard"
  Then "card_center_m_card_clickable" will be displayed
  Then "card_center_dropdown_option_e_card" will be displayed
  Then "card_center_first_x_card_dashboard" will be displayed
  Then "card_center_first_x_card_dashboard" will be displayed
  Then User expect "card_center_m_card_status_dashboard" equal with "card_center_permanently_blocked"
  Then User expect "card_center_e_card_status_dashboard" equal with "card_center_temporarily_blocked"
  Then User expect "card_center_first_x_card_status_dashboard" equal with "card_center_permanently_blocked"
  Then User expect "card_center_second_x_card_status_dashboard" equal with "card_center_permanently_blocked"

@android @uidatabound
Scenario:JENI118-C17815-Verify the card center widget: m-card=Temporarily Blocked (TB), e-card=Active, oldest x-card = Active
  Given User is logged in with cif "card_center_temporarily_block_m_card_e_card_active_x_card"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_e_card_tb_dashboard"
  Then "card_center_m_card_clickable" will be displayed
  Then "card_center_dropdown_option_e_card" will be displayed
  Then "card_center_first_x_card_dashboard" will be displayed
  Then User expect "card_center_m_card_status_dashboard" equal with "card_center_temporarily_blocked"
  Then User expect "card_center_e_card_status_dashboard" equal with "card_center_active"
  Then User expect "card_center_first_x_card_status_dashboard" equal with "card_center_active"

@android @uidatabound
Scenario:JENI118-C17816-Verify 3 dots, CTA with m-card is Processing
  Given User is logged in with cif "card_center_processing_card"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_e_card_tb_dashboard"
  Then "card_center_m_card_clickable" will be displayed
  Then User expect "card_center_active_m_card_three_dots" doesn't exist

@android @uidatabound
Scenario:JENI118-C17817-Verify 3 dots, CTA with m-card is Activate
  Given User is logged in with cif "card_center_active_card_with_inactive_m_card"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_e_card_tb_dashboard"
  Then "card_center_m_card_clickable" will be displayed
  Then User expect "card_center_active_m_card_three_dots" doesn't exist

@android @uidatabound
Scenario:JENI118-C17818-Verify 3 dots, CTA, balance of card with m-card is Active
  Given User is logged in with cif "card_center_active_all_card_for_ui_transaction"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_e_card_tb_dashboard"
  Then "card_center_m_card_clickable" will be displayed
  Then User expect "card_center_active_m_card_three_dots" is exist
  Then User expect "card_center_m_card_balance_dashboard" is exist

@android @uidatabound
Scenario:JENI118-C17821-Verify 3 dots, CTA with m-card is Temporarily Blocked
  Given User is logged in with cif "card_center_block_card_for_ui_transaction"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_m_card_clickable"
  Then "card_center_m_card_clickable" will be displayed
  Then User expect "card_center_m_card_status_dashboard" equal with "card_center_temporarily_blocked"
  Then User expect "card_center_active_m_card_three_dots" is exist

@android @uidatabound
Scenario:JENI118-C17822-Verify 3 dots, CTA with m-card is Permanently Blocked
  Given User is logged in with cif "card_center_permanent_block_account"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_e_card_tb_dashboard"
  Then "card_center_m_card_clickable" will be displayed
  Then User expect "card_center_m_card_status_dashboard" equal with "card_center_permanently_blocked"
  Then User expect "card_center_active_m_card_three_dots" doesn't exist

@android @uidatabound
Scenario:JENI118-C17819-Verify 3 dots, CTA with e-card is Processing
  Given User is logged in with cif "card_center_processing_card"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_dropdown_option_e_card"
  Then "card_center_dropdown_option_e_card" will be displayed
  Then User expect "card_center_e_card_tb_dashboard" doesn't exist

@android @uidatabound
Scenario:JENI118-C17820-Verify 3 dots, CTA, balance show with e-card is Active
  Given User is logged in with cif "card_center_active_all_card_with_zero_balance"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_dropdown_option_e_card"
  Then "card_center_dropdown_option_e_card" will be displayed
  Then User expect "card_center_e_card_tb_dashboard" is exist

@android @uidatabound
Scenario:JENI118-C17823-Verify 3 dots, CTA with e-card is Temporarily Blocked
  Given User is logged in with cif "card_center_block_card_for_ui_transaction"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_dropdown_option_e_card"
  Then "card_center_dropdown_option_e_card" will be displayed
  Then User expect "card_center_e_card_tb_dashboard" is exist
  
@android @uidatabound
Scenario:JENI118-C17959-Verify 3 dots, CTA with e-card is Permanently Blocked
  Given User is logged in with cif "card_center_permanent_block_account"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_dropdown_option_e_card"
  Then "card_center_dropdown_option_e_card" will be displayed
  Then User expect "card_center_e_card_tb_dashboard" doesn't exist

@android @uidatabound
Scenario:JENI118-C17824-Verify 3 dots, CTA with x-card is Processing
  Given User is logged in with cif "card_center_processing_card"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_first_x_card_dashboard"
  Then "card_center_first_x_card_dashboard" will be displayed
  Then User expect "card_center_active_x_card_three_dots" doesn't exist
  
@android @uidatabound
Scenario:JENI118-C17826-Verify 3 dots, CTA with x-card is Activate
  Given User is logged in with cif "card_center_processing_card"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_first_x_card_dashboard"
  Then "card_center_first_x_card_dashboard" will be displayed
  Then User expect "card_center_active_x_card_three_dots" doesn't exist
 
 
@android @uidatabound
Scenario:JENI118-C17827-Verify 3 dots, CTA, balance of the card with x-card is Active
  Given User is logged in with cif "card_center_active_all_card_for_ui_transaction"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_first_x_card_dashboard"
  Then "card_center_first_x_card_dashboard" will be displayed
  Then User expect "card_center_active_x_card_three_dots" is exist
  Then User expect "card_center_first_x_card_balance_dashboard" is exist

  
@android @uidatabound
Scenario:JENI118-C17828-Verify 3 dots, CTA with x-card is Temporarily Blocked
  Given User is logged in with cif "card_center_block_card_for_ui_transaction"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_first_x_card_dashboard"
  Then "card_center_first_x_card_dashboard" will be displayed
  Then User expect "card_center_active_x_card_three_dots" is exist

  
@android @uidatabound
Scenario:JENI118-C17829-Verify 3 dots, CTA with x-card is Permanently Blocked
  Given User is logged in with cif "card_center_permanent_block_account"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_first_x_card_dashboard"
  Then "card_center_first_x_card_dashboard" will be displayed
  Then User expect "card_center_active_x_card_three_dots" doesn't exist


@android @uidatabound
Scenario:JENI118-C17825-Verify 3 dots, CTA with x-card is Processing
  Given User is logged in with cif "card_center_processing_card"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_first_x_card_dashboard"
  Then "card_center_first_x_card_dashboard" will be displayed
  Then User expect "card_center_active_x_card_three_dots" doesn't exist 

@android @uidatabound
 Scenario: JENI118-C17802-Verify the card center widget in case: m-card is Active, e-card is Active, x-card is Processing
  Given User is logged in with cif "card_center_activate_xcard"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_e_card_tb_dashboard"
  Then "card_center_m_card_clickable" will be displayed
  Then "card_center_dropdown_option_e_card" will be displayed
  Then "card_center_first_x_card_dashboard" will be displayed
  Then User expect "card_center_m_card_status_dashboard" equal with "card_center_active"
  Then User expect "card_center_e_card_status_dashboard" equal with "card_center_active"
  Then User expect "card_center_first_x_card_status_dashboard" doesn't exist

#JENI-237
@endtoend @android
Scenario:JENI237-C19715 Activate x-card: wrong CVV
  Given User is logged in with cif "card_center_inactive_to_active_x_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  
  And User scroll to "card_center_activate"

  And User expect "card_center_x_card_activate_dashboard" equal with "card_center_activate"
  And User click "card_center_x_card_activate_dashboard"
  When User fill "card_center_card_cvv_field" with 123

  And User expect "top_notification_snackbar" equal with "card_center_invalid_cvv"

#JENI237-C19716-Activate x-card: setting PIN is < 6 digits
#JENI237-C19717-Activate x-card: doesn't match PIN
#JENI237-C19718-Activate x-card: input PIN, but don't input confirm PIN
#JENI237-C19719-Activate x-card: don't input PIN, input confirm PIN
#JENI237-C19720-Activate x-card: submit an empty form
#JENI237-C19722-Activate x-card: PIN is predictable
@uidatabound @android
Scenario: JENI237-C19716#C19717#C19718#C19719#C19720#C19722-Activate x-Card negative case
  
  Given User is logged in with cif "card_center_inactive_to_active_x_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  
  And User go to card center landing page from side menu

  And User expect "card_center_x_card_activate_dashboard" equal with "card_center_activate"
  And User click "card_center_x_card_activate_dashboard"

  When User fill "card_center_card_cvv_field" with "card_center_activate_x_card_correct_cvv"
  When User fill "card_center_card_pin_field" with 1
  When User fill "card_center_card_pin_confirm_field" with 1
  And User click "card_center_x_activate_form_activate_button"

  And User expect "card_center_card_pin_hint" equal with "card_center_card_pin_few"
  And User expect "card_center_card_pin_confirm_hint" equal with "card_center_card_pin_few"

  When User fill "card_center_card_pin_field" with 123
  When User fill "card_center_card_pin_confirm_field" with 123
  And User click "card_center_x_activate_form_activate_button"

  And User expect "card_center_card_pin_hint" equal with "card_center_card_pin_few"
  And User expect "card_center_card_pin_confirm_hint" equal with "card_center_card_pin_few"

  And User click "card_center_card_pin_field_eye"
  When User fill "card_center_card_pin_field" with 12345
  And User click "card_center_card_pin_confirm_field_eye"
  When User fill "card_center_card_pin_confirm_field" with 12345
  And User click "card_center_x_activate_form_activate_button"

  And User expect "card_center_card_pin_hint" equal with "card_center_card_pin_few"
  And User expect "card_center_card_pin_confirm_hint" equal with "card_center_card_pin_few"

  And User click "back_button"

  And User click "card_center_x_card_activate_dashboard"
  When User fill "card_center_card_cvv_field" with "card_center_activate_x_card_correct_cvv"
  When User fill "card_center_card_pin_field" with "card_center_correct_activate_x_card_pin"
  When User fill "card_center_card_pin_confirm_field" with 123456
  And User click "card_center_x_activate_form_activate_button"

  And User expect "card_center_card_pin_confirm_hint" equal with "card_center_card_pin_not_match"

  And User click "back_button"

  And User click "card_center_x_card_activate_dashboard"
  When User fill "card_center_card_cvv_field" with "card_center_activate_x_card_correct_cvv"
  When User fill "card_center_card_pin_field" with "card_center_correct_activate_x_card_pin"
  And User click "card_center_x_activate_form_activate_button"
  And User click "card_center_x_activate_form_activate_button"

  And User expect "card_center_card_pin_confirm_hint" equal with "card_center_card_pin_empty"

  And User click "back_button"

  And User click "card_center_x_card_activate_dashboard"
  When User fill "card_center_card_cvv_field" with "card_center_activate_x_card_correct_cvv"
  When User fill "card_center_card_pin_confirm_field" with "card_center_correct_activate_x_card_pin"
  And User click "card_center_x_activate_form_activate_button"

  And User expect "card_center_card_pin_hint" equal with "card_center_card_pin_empty"

  And User click "back_button"

  And User click "card_center_x_card_activate_dashboard"
  And User click "card_center_x_activate_form_activate_button"

  And User expect "card_center_card_pin_hint" equal with "card_center_card_pin_empty"
  And User expect "card_center_card_pin_confirm_hint" equal with "card_center_card_pin_empty"
  And User expect "card_center_card_cvv_hint" equal with "card_center_card_cvv_empty"

  And User click "back_button"

  And User click "card_center_x_card_activate_dashboard"
  When User fill "card_center_card_cvv_field" with "card_center_activate_x_card_correct_cvv"
  When User fill "card_center_card_pin_field" with 123456
  When User fill "card_center_card_pin_confirm_field" with 123456
  And User click "card_center_x_activate_form_activate_button"

  And User expect "card_center_card_pin_hint" equal with "card_center_card_pin_easy"

  And User click "card_center_card_pin_field_eye"
  When User fill "card_center_card_pin_field" with 111111
  And User click "card_center_card_pin_confirm_field_eye"
  When User fill "card_center_card_pin_confirm_field" with 111111
  And User click "card_center_x_activate_form_activate_button"

  And User expect "card_center_card_pin_hint" equal with "card_center_card_pin_easy"

  When User fill "card_center_card_pin_field" with 121212
  When User fill "card_center_card_pin_confirm_field" with 121212
  And User click "card_center_x_activate_form_activate_button"

  And User expect "card_center_card_pin_hint" equal with "card_center_card_pin_easy"

@uidatabound @android
Scenario:JENI237-C23530-Verify The Card PIN/Re-enter Card PIN Field Behavior
  
  Given User is logged in with cif "card_center_inactive_to_active_x_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed

  Then "card_center_card_activation_form" will be displayed

  And User scroll to "card_center_activate"

  And User expect "card_center_x_card_activate_dashboard" equal with "card_center_activate"
  And User click "card_center_x_card_activate_dashboard"

  When User fill "card_center_card_cvv_field" with "card_center_activate_x_card_correct_cvv"
  And User check if "card_center_card_cvv_field" field masked

  When User fill "card_center_card_pin_field" with "card_center_correct_activate_x_card_pin"
  And User check if "card_center_card_pin_field" field masked

  When User fill "card_center_card_pin_confirm_field" with "card_center_correct_activate_x_card_pin"
  And User check if "card_center_card_pin_confirm_field" field masked

@uidatabound @android
Scenario:JENI237-C19714-Activate x-card sucessfully
  
  Given User is logged in with cif "card_center_inactive_to_active_x_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  
  And User scroll to "card_center_activate"

  And User expect "card_center_x_card_activate_dashboard" equal with "card_center_activate"
  And User click "card_center_x_card_activate_dashboard"
  When User fill "card_center_card_cvv_field" with "card_center_activate_x_card_correct_cvv"
  When User fill "card_center_card_pin_field" with "card_center_correct_activate_x_card_pin"
  When User fill "card_center_card_pin_confirm_field" with "card_center_correct_activate_x_card_pin"
  Then "card_center_x_activate_form_activate_button" will be displayed

@endtoend @android
Scenario:JENI237-C19714-Activate x-card sucessfully
  
  Given User is logged in with cif "card_center_inactive_to_active_x_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  
  And User scroll to "card_center_activate"

  And User expect "card_center_x_card_activate_dashboard" equal with "card_center_activate"
  And User click "card_center_x_card_activate_dashboard"
  When User fill "card_center_card_cvv_field" with "card_center_activate_x_card_correct_cvv"
  When User fill "card_center_card_pin_field" with "card_center_correct_activate_x_card_pin"
  When User fill "card_center_card_pin_confirm_field" with "card_center_correct_activate_x_card_pin"
  And User click "card_center_x_activate_form_activate_button"

  And User expect "card_center_msg_header" equal with "card_center_x_success_activate"

  And User expect "card_center_first_x_card_balance_dashboard" equal with "card_center_active"

#JENI-152
@uidatabound @android @ios 
Scenario:JENI152-C40878-Verify x-card details

  Given User is logged in with cif "card_center_active_x_card_cif_ui"
  Then "dashboard" will be displayed
  And User go to card center landing page from side menu

  And User swipe up "card_center_landing_page_container" until found "card_center_third_x_card_dashboard"

  And User click "card_center_third_x_card_dashboard" until "card_center_detail" displayed

  #Several steps are commented because we are still dont have the real data, now the data still using mock and random

  Then "card_center_x_card_image_active_purple" will be displayed
  #Then element with "card_center_active_x_card_name" text will be displayed
  #And User expect "card_center_x_card_number" equal with "card_center_x_card_masked_number"
  And User expect "card_center_x_card_number" is exist
  #And User expect "card_center_x_card_exp" equal with "card_center_x_card_exp"
  And User expect "card_center_x_card_exp" is exist
  #And User expect "card_center_x_card_cvv_link" equal with "card_center_x_card_cvv_link"
  And User expect "card_center_x_card_cvv_link" is exist

  And User swipe up "card_center_detail" until found "card_center_x_card_trx_limit_label"

  And User expect "card_center_x_card_trx_limit_label" equal with "card_center_x_card_trx_limit_label"
  #And User expect "card_center_x_card_trx_limit_amt" equal with "card_center_x_card_trx_limit_amt"
  #And User expect "card_center_x_card_atm_limit_label" equal with "card_center_x_card_atm_limit_label"
  #And User expect "card_center_x_card_atm_limit_amt" equal with "card_center_x_card_atm_limit_amt"

  Then "card_center_block_card" will be displayed

@uidatabound @android 
Scenario:JENI152-C40879-Verify showing CVV and card number is correct

  Given User is logged in with cif "card_center_active_x_card_cif_ui"
  Then "dashboard" will be displayed
  And User go to card center landing page from side menu

  And User swipe up "card_center_landing_page_container" until found "card_center_third_x_card_dashboard"

  And User click "card_center_third_x_card_dashboard" until "card_center_detail" displayed
  And User click "card_center_x_card_cvv_link"

  Then "card_center_password_verification_form" will be displayed
  And User fill "card_center_password_field" with "card_center_active_x_card_correct_password_ui"
  Then "card_center_password_submit_button" will be displayed

@endtoend @android 
Scenario:JENI152-C40879-Verify showing CVV and card number is correct

  Given User is logged in with cif "card_center_active_x_card_cif_ui"
  Then "dashboard" will be displayed
  And User go to card center landing page from side menu

  And User click "card_center_first_x_card_dashboard" until "card_center_detail" displayed
  And User click "card_center_x_card_cvv_link"

  Then "card_center_password_verification_form" will be displayed
  And User fill "card_center_password_field" with "card_center_active_x_card_correct_password_ui"
  And User click "card_center_password_submit_button"

  And User wait "card_center_loading_screen" will be gone

  Then "card_center_detail" will be displayed
  And User expect "card_center_x_card_number" equal with "card_center_x_card_number"
  And User expect "card_center_x_card_cvv" equal with "card_center_x_card_cvv"

@endtoend @android 
Scenario:JENI152-C40880-Verify that the CVV and card number show in 45s

  Given User is logged in with cif "card_center_active_x_card_cif_ui"
  Then "dashboard" will be displayed
  And User go to card center landing page from side menu

  And User click "card_center_first_x_card_dashboard" until "card_center_detail" displayed
  And User click "card_center_x_card_cvv_link"

  Then "card_center_password_verification_form" will be displayed
  And User fill "card_center_password_field" with "card_center_active_x_card_correct_password_ui"
  And User click "card_center_password_submit_button"

  And User wait "card_center_loading_screen" will be gone

  Then "card_center_detail" will be displayed
  And User expect "card_center_x_card_number" equal with "card_center_x_card_number"
  And User expect "card_center_x_card_cvv" equal with "card_center_x_card_cvv"

  And User wait 45 seconds

  Then "card_center_x_card_cvv_link" will be displayed
  And User expect "card_center_x_card_number" equal with "card_center_x_card_masked_number"

@endtoend @android 
Scenario:JENI152-C40881-Verify "visual timer" of the remaining time of CVV shown

  Given User is logged in with cif "card_center_active_x_card_cif_ui"
  Then "dashboard" will be displayed
  And User go to card center landing page from side menu

  And User click "card_center_first_x_card_dashboard" until "card_center_detail" displayed
  And User click "card_center_x_card_cvv_link"

  Then "card_center_password_verification_form" will be displayed
  And User fill "card_center_password_field" with "card_center_active_x_card_correct_password_ui"
  And User click "card_center_password_submit_button"

  And User wait "card_center_loading_screen" will be gone

  Then "card_center_detail" will be displayed
  Then "card_center_x_card_cvv_timer" will be displayed

@endtoend @android 
Scenario:JENI152-C40883-Verify error message when enter incorrect password

  Given User is logged in with cif "card_center_active_x_card_cif_ui"
  Then "dashboard" will be displayed
  And User go to card center landing page from side menu

  And User click "card_center_first_x_card_dashboard" until "card_center_detail" displayed
  And User click "card_center_x_card_cvv_link"

  Then "card_center_password_verification_form" will be displayed
  And User fill "card_center_password_field" with 123
  And User click "card_center_password_submit_button"

  And User expect "card_center_password_hint" equal with "card_center_password_wrong"

@uidatabound @android 
Scenario:JENI152-C40884-Verify the case cancel after entering password

  Given User is logged in with cif "card_center_active_x_card_cif_ui"
  Then "dashboard" will be displayed
  And User go to card center landing page from side menu

  And User click "card_center_first_x_card_dashboard" until "card_center_detail" displayed

  And User click "card_center_first_x_card_dashboard" until "card_center_detail" displayed
  And User click "card_center_x_card_cvv_link"

  Then "card_center_password_verification_form" will be displayed
  And User fill "card_center_password_field" with "card_center_active_x_card_correct_password_ui"
  And User click "back_button"

  Then "card_center_x_card_image" will be displayed
  Then element with "card_center_active_x_card_name" text will be displayed
  And User expect "card_center_x_card_number" equal with "card_center_x_card_masked_number"
  And User expect "card_center_x_card_exp" equal with "card_center_x_card_exp"
  And User expect "card_center_x_card_cvv_link" equal with "card_center_x_card_cvv_link"

  And User swipe up "card_center_detail" until found "card_center_x_card_trx_limit_label"

  And User expect "card_center_x_card_trx_limit_label" equal with "card_center_x_card_trx_limit_label"
  And User expect "card_center_x_card_trx_limit_amt" equal with "card_center_x_card_trx_limit_amt"
  And User expect "card_center_x_card_atm_limit_label" equal with "card_center_x_card_atm_limit_label"
  And User expect "card_center_x_card_atm_limit_amt" equal with "card_center_x_card_atm_limit_amt"

  Then "card_center_block_card" will be displayed

@uidatabound @android 
Scenario:JENI152-C40885-Verify show password when typing (mobile)

  Given User is logged in with cif "card_center_active_x_card_cif"
  Then "dashboard" will be displayed
  And User go to card center landing page from side menu

  And User click "card_center_first_x_card_dashboard" until "card_center_detail" displayed
  And User click "card_center_x_card_cvv_link"

  Then "card_center_password_verification_form" will be displayed
  And User click "card_center_password_field_eye"
  And User fill "card_center_password_field" with "card_center_active_x_card_correct_password_ui"
  And User expect "card_center_password_field" equal with "card_center_active_x_card_correct_password_ui"

  And User click "card_center_password_field_eye_cross"
  And User check if "card_center_password_field" field masked

# JENI-302
@android @ios @uidatabound
Scenario:JENI302-C23310-Temporarily Blocked of x-card in quick action (3 dots) in Dashboard
  Given User is logged in with cif "card_center_active_to_tblock_x_card_cif"
  And User check app language is "language"
  And User swipe up until found "send_it_widget_title"
  And User click "card_center_active_x_card_three_dots"
  And User click "card_center_block_card_pop_up_menu_item"
  Then "card_center_temporary_block_cta_button" will be displayed
  Then "card_center_permanent_block_cta_button" will be displayed
  Then User expect "card_center_temporary_block_cta_button" is exist
  # the action will be refer to scenario JENI302-T1134661

@android @ios @uidatabound
Scenario:JENI302-C23315-Temporarily of x-card in quick action (3 dots) in Card Center landing
  Given User is logged in with cif "card_center_active_to_tblock_x_card_cif"
  And User check app language is "language"
  And User swipe up until found "card_center_widget"
  And User click "card_center_widget"
  Then "card_center_tutorial_frame" will be displayed
  And User click "card_center_close_tutorial"
  And User wait "card_center_loading_screen" will be gone
  Then "card_center_landing_page" will be displayed
  And User click "card_center_active_x_card_three_dots"
  And User click "card_center_block_card_pop_up_menu_item"
  Then "card_center_temporary_block_cta_button" will be displayed
  Then "card_center_permanent_block_cta_button" will be displayed
  Then User expect "card_center_temporary_block_cta_button" is exist
  # the action will be refer to scenario JENI302-T1134661

@android @ios @uidatabound
Scenario:JENI302-C23311-Temporarily Blocked of x-card with CTA in Card details
  Given User is logged in with cif "card_center_active_to_tblock_x_card_cif"
  And User check app language is "language"
  And User swipe up until found "card_center_widget"
  And User click "card_center_widget"
  Then "card_center_tutorial_frame" will be displayed
  And User click "card_center_close_tutorial"
  And User wait "card_center_loading_screen" will be gone
  Then "card_center_landing_page" will be displayed
  And User click "card_center_x_card_status"
  And User click "card_center_block_card_cta_button"
  Then "card_center_temporary_block_cta_button" will be displayed
  Then "card_center_permanent_block_cta_button" will be displayed
  And User click "card_center_temporary_block_cta_button"
  # Wait for x-card status change
  And User wait "card_center_loading_screen" will be gone
  Then User expect "card_center_x_card_status_detail" equal with "card_center_temporarily_block_card_detail_status"
  Then "card_center_unblock_cta_button" will be displayed
  # Then "card_center_permanent_block_cta_button" will be displayed
  # Open the blocked x-card steps
  And User click "card_center_unblock_cta_button"

@android @ios @uidatabound
Scenario:JENI302-C23316-Temporarily Blocked of x-card with CTA in Card details: Cancel
  Given User is logged in with cif "card_center_active_to_tblock_x_card_cif"
  And User check app language is "language"
  And User swipe up until found "card_center_widget"
  And User click "card_center_widget"
  Then "card_center_tutorial_frame" will be displayed
  And User click "card_center_close_tutorial"
  And User wait "card_center_loading_screen" will be gone
  Then "card_center_landing_page" will be displayed
  And User click "card_center_x_card_status"
  And User click "card_center_block_card_cta_button"
  Then "card_center_temporary_block_cta_button" will be displayed
  Then "card_center_permanent_block_cta_button" will be displayed
  And User click "card_center_cancel_button"
  And User click "back_button"
  Then User expect "card_center_x_card_status" contains "card_center_active"

@android @ios @uidatabound
Scenario:JENI302-C23312-Temporarily Blocked of x-card in quick action (3 dots) in Dashboard: Cancel
  Given User is logged in with cif "card_center_active_to_tblock_x_card_cif"
  And User check app language is "language"
  And User swipe up until found "send_it_widget_title"
  And User click "card_center_active_x_card_three_dots"
  And User click "card_center_block_card_menu_item"
  Then "card_center_temporary_block_cta_button" will be displayed
  Then "card_center_permanent_block_cta_button" will be displayed
  And User click "card_center_cancel_button"
  Then User expect "card_center_x_card_status" contains "card_center_active"

@android @ios @uidatabound
Scenario:JENI302-C23317-Temporarily of x-card in quick action (3 dots) in Card Center landing: Cancel
  Given User is logged in with cif "card_center_active_to_tblock_x_card_cif"
  And User check app language is "language"
  And User swipe up until found "card_center_widget"
  And User click "card_center_widget"
  Then "card_center_tutorial_frame" will be displayed
  And User click "card_center_close_tutorial"
  And User wait "card_center_loading_screen" will be gone
  Then "card_center_landing_page" will be displayed
  And User click "card_center_active_x_card_three_dots"
  And User click "card_center_block_card_pop_up_menu_item"
  Then "card_center_temporary_block_cta_button" will be displayed
  Then "card_center_permanent_block_cta_button" will be displayed
  And User click "card_center_cancel_button"
  Then User expect "card_center_x_card_status" contains "card_center_active"

# JENI-228/ JENI1669, need confirm and discussion with gilang
@android @ios @uidatabound
Scenario: JENI228-C63960-Card details (free): an active m-card > Cancel
  Given User is logged in with cif "card_center_active_to_pblock_m_card_cif_free"
  And User check app language is "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_m_card_clickable"
  Then "card_center_change_pin_cta_button" will be displayed
  Then "card_center_block_card_cta_button" will be displayed
  Then "card_center_change_limit_cta_button" will be displayed
  And User click "card_center_block_card_cta_button"
  Then "card_center_permanent_block_cta_button" will be displayed
  Then "card_center_temporary_block_cta_button" will be displayed
  Then "card_center_cancel_button" will be displayed
  And User click "card_center_permanent_block_cta_button"
  Then "card_center_permanent_block_title" will be displayed
  Then "card_center_permanent_block_sub_title" will be displayed
  Then "card_center_select_block_card" will be displayed
  And User click "card_center_select_block_reason"
  And User click "card_center_block_reason_stolen"
  And User click "card_center_permanent_block_button"
  And User click "card_center_block_card_confirmation_cancel_button"
  Then "card_center_change_pin_cta_button" will be displayed
  Then "card_center_block_card_cta_button" will be displayed
  Then "card_center_change_limit_cta_button" will be displayed

@android @ios @uidatabound
Scenario: JENI228-C48109-Card details (free): an active m-card > Cancel
  Given User is logged in with cif "card_center_active_to_pblock_m_card_cif_free"
  And User check app language is "language"
  And User swipe up until found "send_it_widget_title"
  And User click "card_center_active_m_card_three_dots"
  Then "card_center_change_pin_m_card_menu_item" will be displayed
  Then "card_center_block_card_m_card_menu_item" will be displayed
  Then "card_center_change_limit_m_card_menu_item" will be displayed
  And User click "card_center_block_card_m_card_menu_item"
  Then "card_center_permanent_block_cta_button" will be displayed
  Then "card_center_temporary_block_cta_button" will be displayed
  Then "card_center_cancel_button" will be displayed
  And User click "card_center_permanent_block_cta_button"
  Then "card_center_permanent_block_title" will be displayed
  Then "card_center_permanent_block_sub_title" will be displayed
  Then "card_center_select_block_card" will be displayed
  And User click "card_center_select_block_reason"
  And User click "card_center_block_reason_stolen"
  And User click "card_center_permanent_block_button"
  Then User expect "card_center_block_card_confirmation_address" equal with "card_center_permanent_block_confirm_mail_address"

@android @ios @uidatabound
Scenario: JENI228-C48116-Card details (free): a temporarily blocked m-card > Cancel
  Given User is logged in with cif "card_center_tblock_to_pblock_m_card_cif"
  And User check app language is "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_m_card_clickable"
  Then "card_center_unblock_cta_button" will be displayed
  Then "card_center_card_detail_permanent_block_cta_button" will be displayed
  And User click "card_center_card_detail_permanent_block_cta_button"
  Then "card_center_permanent_block_title" will be displayed
  Then "card_center_permanent_block_sub_title" will be displayed
  Then "card_center_select_block_card" will be displayed
  And User click "card_center_select_block_reason"
  And User click "card_center_block_reason_stolen"
  And User click "card_center_permanent_block_button"
  And User click "card_center_block_card_confirmation_cancel_button"
  Then "card_center_unblock_cta_button" will be displayed
  Then "card_center_card_detail_permanent_block_cta_button" will be displayed
  Then User expect "card_center_card_detail_status" equal with "card_center_temporarily_block_card_detail_status"

@android @uidatabound
Scenario: JENI228-C45980-Permanent Block: Active m-card: balance is less than issue card fee from m-card details
  Given User is logged in with cif "card_center_active_m_card_zero_e_card"
  And User check app language is "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_m_card_clickable"
  Then "card_center_change_pin_cta_button" will be displayed
  Then "card_center_block_card_cta_button" will be displayed
  Then "card_center_change_limit_cta_button" will be displayed
  And User click "card_center_block_card_cta_button"
  Then "card_center_permanent_block_cta_button" will be displayed
  Then "card_center_temporary_block_cta_button" will be displayed
  Then "card_center_cancel_button" will be displayed
  And User click "card_center_permanent_block_cta_button"
  Then "card_center_permanent_block_title" will be displayed
  Then "card_center_permanent_block_sub_title" will be displayed
  Then "card_center_select_block_card" will be displayed
  And User click "card_center_select_block_reason"
  And User click "card_center_block_reason_stolen"
  And User click "card_center_permanent_block_button"
  Then "card_center_block_card_top_up_balance_button" will be displayed
  Then "card_center_block_card_confirmation_cancel_button" will be displayed
  And User click "card_center_block_card_confirmation_cancel_button"
  Then "card_center_change_pin_cta_button" will be displayed
  Then "card_center_block_card_cta_button" will be displayed
  Then "card_center_change_limit_cta_button" will be displayed

@android @endtoend
Scenario: JENI228-C45975-Card details (free): an active m-card > Block Card
  Given User is logged in with cif "card_center_active_to_pblock_m_card_cif"
  And User check app language is "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_m_card_clickable"
  Then "card_center_change_pin_cta_button" will be displayed
  Then "card_center_block_card_cta_button" will be displayed
  Then "card_center_change_limit_cta_button" will be displayed
  And User click "card_center_block_card_cta_button"
  Then "card_center_permanent_block_cta_button" will be displayed
  Then "card_center_temporary_block_cta_button" will be displayed
  Then "card_center_cancel_button" will be displayed
  And User click "card_center_permanent_block_cta_button"
  Then "card_center_permanent_block_title" will be displayed
  Then "card_center_permanent_block_sub_title" will be displayed
  Then "card_center_select_block_card" will be displayed
  And User click "card_center_select_block_reason"
  And User click "card_center_block_reason_stolen"
  And User click "card_center_permanent_block_button"
  And User click "card_center_block_card_confirmation_submit_button"
  Then User expect "card_center_card_detail_status" equal with "card_center_permanently_block_card_detail_status"
  Then User expect "card_center_change_pin_cta_button" doesn't exist
  Then User expect "card_center_block_card_cta_button" doesn't exist
  Then User expect "card_center_change_limit_cta_button" doesn't exist

@android @endtoend
Scenario: JENI228-C45978-Permanent Block: a temporarily block m-card in Card detail
  Given User is logged in with cif "card_center_tblock_to_pblock_m_card_cif"
  And User check app language is "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_m_card_clickable"
  Then "card_center_unblock_cta_button" will be displayed
  Then "card_center_permanent_block_cta_button" will be displayed
  And User click "card_center_permanent_block_cta_button"
  Then "card_center_permanent_block_title" will be displayed
  Then "card_center_permanent_block_sub_title" will be displayed
  Then "card_center_select_block_card" will be displayed
  And User click "card_center_select_block_reason"
  And User click "card_center_block_reason_stolen"
  And User click "card_center_permanent_block_button"
  And User click "card_center_block_card_confirmation_submit_button"
  Then User expect "card_center_card_detail_status" equal with "card_center_permanently_block_card_detail_status"
  Then User expect "card_center_change_pin_cta_button" doesn't exist
  Then User expect "card_center_block_card_cta_button" doesn't exist
  Then User expect "card_center_change_limit_cta_button" doesn't exist
  # assert for fee

@android @endtoend
Scenario: JENI228-C48115-Card details (free): a temporarily blocked m-card > Block Card
  Given User is logged in with cif "card_center_tblock_to_pblock_m_card_cif_no_fee"
  And User check app language is "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_m_card_clickable"
  Then "card_center_unblock_cta_button" will be displayed
  Then "card_center_permanent_block_cta_button" will be displayed
  And User click "card_center_permanent_block_cta_button"
  Then "card_center_permanent_block_title" will be displayed
  Then "card_center_permanent_block_sub_title" will be displayed
  Then "card_center_select_block_card" will be displayed
  And User click "card_center_select_block_reason"
  And User click "card_center_block_reason_stolen"
  And User click "card_center_permanent_block_button"
  And User click "card_center_block_card_confirmation_submit_button"
  Then User expect "card_center_card_detail_status" equal with "card_center_permanently_block_card_detail_status"
  Then User expect "card_center_change_pin_cta_button" doesn't exist
  Then User expect "card_center_block_card_cta_button" doesn't exist
  Then User expect "card_center_change_limit_cta_button" doesn't exist

# JENI-40
@uidatabound @android
Scenario:JENI40-C17892-[Layout]The account is active: m-card is Activate
  Given User is logged in with cif "card_center_inactive_m_card_cif_ui"
  And User change language to "language"
  Then "dashboard" will be displayed
  
  And User swipe up until found "card_center_m_card_activate_dashboard"

  And User expect "card_center_m_card_activate_dashboard" equal with "card_center_activate"

@uidatabound @android
Scenario:JENI40-C17893-[Layout]Activate m-card from card center (widget)
  Given User is logged in with cif "card_center_inactive_m_card_cif_ui"
  And User change language to "language"
  Then "dashboard" will be displayed
  
  And User swipe up until found "card_center_m_card_activate_dashboard"

  And User expect "card_center_m_card_activate_dashboard" equal with "card_center_activate"
  And User click "card_center_m_card_activate_dashboard"
  Then "card_center_card_activation_form" will be displayed

@uidatabound @android
Scenario:JENI40-C17894-[Layout]Activate m-card from card center (landing)
  Given User is logged in with cif "card_center_inactive_to_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed

  And User go to card center landing page from side menu

  And User expect "card_center_m_card_activate_dashboard" equal with "card_center_activate"
  And User click "card_center_m_card_activate_dashboard"
  Then "card_center_card_activation_form" will be displayed

@endtoend @android
Scenario:JENI40-C17896-Activate m-card: wrong CVV
  Given User is logged in with cif "card_center_inactive_to_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed

  And User go to card center landing page from side menu

  And User expect "card_center_m_card_activate_dashboard" equal with "card_center_activate"
  And User click "card_center_m_card_activate_dashboard"
  Then "card_center_card_activation_form" will be displayed

  When User fill "card_center_card_cvv_field" with 123
  When User fill "card_center_card_pin_field" with "card_center_correct_activate_m_card_pin"
  When User fill "card_center_card_pin_confirm_field" with "card_center_correct_activate_m_card_pin"
  And User click "card_center_x_activate_form_activate_button"

  And User expect "top_notification_snackbar" equal with "card_center_invalid_cvv"

@uidatabound @android 
Scenario:JENI40-C17897-Activate m-card: setting PIN is < 6 digits
  Given User is logged in with cif "card_center_inactive_to_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed

  And User go to card center landing page from side menu

  And User expect "card_center_m_card_activate_dashboard" equal with "card_center_activate"
  And User click "card_center_m_card_activate_dashboard"
  Then "card_center_card_activation_form" will be displayed

  When User fill "card_center_card_cvv_field" with "card_center_activate_m_card_correct_cvv"
  When User fill "card_center_card_pin_field" with 1
  When User fill "card_center_card_pin_confirm_field" with 1
  And User click "card_center_x_activate_form_activate_button"

  And User expect "card_center_card_pin_hint" equal with "card_center_card_pin_few"
  And User expect "card_center_card_pin_confirm_hint" equal with "card_center_card_pin_few"

  When User fill "card_center_card_pin_field" with 123
  When User fill "card_center_card_pin_confirm_field" with 123
  And User click "card_center_x_activate_form_activate_button"

  And User expect "card_center_card_pin_hint" equal with "card_center_card_pin_few"
  And User expect "card_center_card_pin_confirm_hint" equal with "card_center_card_pin_few"

  And User click "card_center_card_pin_field_eye"
  When User fill "card_center_card_pin_field" with 12345
  And User click "card_center_card_pin_confirm_field_eye"
  When User fill "card_center_card_pin_confirm_field" with 12345
  And User click "card_center_x_activate_form_activate_button"

  And User expect "card_center_card_pin_hint" equal with "card_center_card_pin_few"
  And User expect "card_center_card_pin_confirm_hint" equal with "card_center_card_pin_few"

@uidatabound @android 
Scenario:JENI40-C17899-Activate m-card: doesn't match PIN
  
  Given User is logged in with cif "card_center_inactive_to_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  
  And User swipe up until found "card_center_m_card_activate_dashboard"

  And User expect "card_center_m_card_activate_dashboard" equal with "card_center_activate"
  And User click "card_center_m_card_activate_dashboard"
  When User fill "card_center_card_cvv_field" with "card_center_activate_m_card_correct_cvv"
  When User fill "card_center_card_pin_field" with "card_center_correct_activate_m_card_pin"
  When User fill "card_center_card_pin_confirm_field" with 123456
  And User click "card_center_x_activate_form_activate_button"

  And User expect "card_center_card_pin_confirm_hint" equal with "card_center_card_pin_not_match"

@uidatabound @android 
Scenario:JENI40-C17900-Activate m-card: input PIN, but don't input confirm PIN
  
  Given User is logged in with cif "card_center_inactive_to_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  
  And User swipe up until found "card_center_m_card_activate_dashboard"

  And User expect "card_center_m_card_activate_dashboard" equal with "card_center_activate"
  And User click "card_center_m_card_activate_dashboard"
  When User fill "card_center_card_cvv_field" with "card_center_activate_m_card_correct_cvv"
  When User fill "card_center_card_pin_field" with "card_center_correct_activate_m_card_pin"
  And User click "card_center_x_activate_form_activate_button"
  And User click "card_center_x_activate_form_activate_button"

  And User expect "card_center_card_pin_confirm_hint" equal with "card_center_card_pin_empty"

@uidatabound @android 
Scenario:JENI40-C17901-Activate m-card: don't input PIN, input confirm PIN
  
  Given User is logged in with cif "card_center_inactive_to_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  
  And User swipe up until found "card_center_m_card_activate_dashboard"

  And User expect "card_center_m_card_activate_dashboard" equal with "card_center_activate"
  And User click "card_center_m_card_activate_dashboard"
  When User fill "card_center_card_cvv_field" with "card_center_activate_m_card_correct_cvv"
  When User fill "card_center_card_pin_confirm_field" with "card_center_correct_activate_m_card_pin"
  And User click "card_center_x_activate_form_activate_button"

  And User expect "card_center_card_pin_hint" equal with "card_center_card_pin_empty"

@uidatabound @android 
Scenario:JENI40-C17912-Activate m-card: submit an empty form
  
  Given User is logged in with cif "card_center_inactive_to_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  
  And User swipe up until found "card_center_m_card_activate_dashboard"

  And User expect "card_center_m_card_activate_dashboard" equal with "card_center_activate"
  And User click "card_center_m_card_activate_dashboard"
  And User click "card_center_x_activate_form_activate_button"

  And User expect "card_center_card_pin_hint" equal with "card_center_card_pin_empty"
  And User expect "card_center_card_pin_confirm_hint" equal with "card_center_card_pin_empty"
  And User expect "card_center_card_cvv_hint" equal with "card_center_card_cvv_empty"

@uidatabound @android 
Scenario:JENI40-C17937-Activate m-card: PIN is predictable
  
  Given User is logged in with cif "card_center_inactive_to_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  
  And User swipe up until found "card_center_m_card_activate_dashboard"

  And User expect "card_center_m_card_activate_dashboard" equal with "card_center_activate"
  And User click "card_center_m_card_activate_dashboard"
  When User fill "card_center_card_cvv_field" with "card_center_activate_m_card_correct_cvv"
  When User fill "card_center_card_pin_field" with 123456
  When User fill "card_center_card_pin_confirm_field" with 123456
  And User click "card_center_x_activate_form_activate_button"

  And User expect "card_center_card_pin_hint" equal with "card_center_card_pin_easy"

  And User click "card_center_card_pin_field_eye"
  When User fill "card_center_card_pin_field" with 111111
  And User click "card_center_card_pin_confirm_field_eye"
  When User fill "card_center_card_pin_confirm_field" with 111111
  And User click "card_center_x_activate_form_activate_button"

  And User expect "card_center_card_pin_hint" equal with "card_center_card_pin_easy"

  When User fill "card_center_card_pin_field" with 121212
  When User fill "card_center_card_pin_confirm_field" with 121212
  And User click "card_center_x_activate_form_activate_button"

  And User expect "card_center_card_pin_hint" equal with "card_center_card_pin_easy"

  When User fill "card_center_card_pin_field" with 112233
  When User fill "card_center_card_pin_confirm_field" with 112233
  And User click "card_center_x_activate_form_activate_button"

  And User expect "card_center_card_pin_hint" equal with "card_center_card_pin_easy"

@uidatabound @android
Scenario:JENI40-C41128-Activate m-card sucessfully - Card Center landing
  Given User is logged in with cif "card_center_inactive_to_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed

  And User go to card center landing page from side menu

  And User expect "card_center_m_card_activate_dashboard" equal with "card_center_activate"
  And User click "card_center_m_card_activate_dashboard"
  Then "card_center_card_activation_form" will be displayed

@uidatabound @android
Scenario:JENI40-C17902-[Layout]Verify the activated m-card layout
  
  Given User is logged in with cif "card_center_inactive_x_card_cif_ui"
  And User change language to "language"
  Then "dashboard" will be displayed
  
  And User swipe up until found "card_center_m_card_activate_dashboard"

  And User expect "card_center_m_card_activate_dashboard" equal with "card_center_activate"
  And User click "card_center_m_card_activate_dashboard"

  Then "card_center_card_activation_form" will be displayed
  And User expect "card_center_card_activation_page_title" equal with "card_center_title_activate_card"
  Then "card_center_card_activation_page_card_picture" will be displayed
  And User expect "card_center_card_activation_page_card_type" equal with "card_center_m_card"
  And User expect "card_center_card_activation_page_card_number" equal with "card_center_activate_m_card_masked_number"
  Then "card_center_card_cvv_field" will be displayed
  Then "card_center_card_pin_field" will be displayed
  Then "card_center_card_pin_confirm_field" will be displayed
  Then "card_center_x_activate_form_activate_button" will be displayed

@uidatabound @android 
Scenario:JENI40-C17895-Activate m-card successfully - Card Center widget
  
  Given User is logged in with cif "card_center_inactive_to_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  
  And User swipe up until found "card_center_m_card_activate_dashboard"

  And User expect "card_center_m_card_activate_dashboard" equal with "card_center_activate"
  And User click "card_center_m_card_activate_dashboard"
  When User fill "card_center_card_cvv_field" with "card_center_activate_m_card_correct_cvv"
  When User fill "card_center_card_pin_field" with "card_center_correct_activate_m_card_pin"
  When User fill "card_center_card_pin_confirm_field" with "card_center_correct_activate_m_card_pin"
  Then "card_center_x_activate_form_activate_button" will be displayed

@endtoend @android
Scenario:JENI40-C17895-Activate m-card successfully - Card Center widget
  
  Given User is logged in with cif "card_center_inactive_to_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  
  And User swipe up until found "card_center_m_card_activate_dashboard"

  And User expect "card_center_m_card_activate_dashboard" equal with "card_center_activate"
  And User click "card_center_m_card_activate_dashboard"
  When User fill "card_center_card_cvv_field" with "card_center_activate_m_card_correct_cvv"
  When User fill "card_center_card_pin_field" with "card_center_correct_activate_m_card_pin"
  When User fill "card_center_card_pin_confirm_field" with "card_center_correct_activate_m_card_pin"
  And User click "card_center_x_activate_form_activate_button"

  And User expect "card_center_m_card_status_dashboard" equal with "card_center_active"

#JENI-41
@uidatabound @android
Scenario: JENI41-C18245-Quick card action from 3 dot - m-card is Activate (widget)

  Given User is logged in with cif "card_center_inactive_m_card_cif_ui"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_m_card_dashboard"
  And User expect "card_center_m_card_activate_dashboard" equal with "card_center_activate"
  Then User expect "card_center_m_card_tb_dashboard" doesn't exist

@uidatabound @android
Scenario: JENI41-C17848-Quick card action from 3 dot - m-card is active (widget)

  Given User is logged in with cif "card_center_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_m_card_tb_dashboard"
  Then "card_center_m_card_tb_dashboard" will be displayed
  And User click "card_center_m_card_tb_dashboard" until "card_center_satay_dashboard" displayed
  Then "card_center_satay_change_pin" will be displayed
  Then "card_center_satay_block_card" will be displayed
  Then "card_center_satay_change_limit" will be displayed

@uidatabound @android
Scenario: JENI41-C17849-Quick card action from 3 dot - m-card is temporarily blocked (widget)

  Given User is logged in with cif "card_center_tblock_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_m_card_tb_dashboard"
  Then "card_center_m_card_tb_dashboard" will be displayed
  And User click "card_center_m_card_tb_dashboard" until "card_center_satay_dashboard" displayed
  Then "card_center_satay_unblock_card" will be displayed
  Then "card_center_satay_permanent_block_card" will be displayed

@uidatabound @android
Scenario: JENI41-C17857-Quick card action from 3 dot - m-card is permanently blocked (widget)

  Given User is logged in with cif "card_center_pblock_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_e_card_status_dashboard"
  And User expect "card_center_e_card_status_dashboard" equal with "card_center_permanently_blocked"
  Then User expect "card_center_e_card_tb_dashboard" doesn't exist

@uidatabound @android
Scenario: JENI41-C18246-Quick card action from 3 dot - m-card is Activate (Card Center Landing)

  Given User is logged in with cif "card_center_inactive_m_card_cif_ui"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User go to card center landing page from side menu
  And User expect "card_center_m_card_activate_dashboard" equal with "card_center_activate"
  Then User expect "card_center_m_card_tb_dashboard" doesn't exist

@uidatabound @android
Scenario: JENI41-C17850-Quick card action from 3 dot - m-card is active (card center landing)

  Given User is logged in with cif "card_center_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User go to card center landing page from side menu
  Then "card_center_m_card_tb_dashboard" will be displayed
  And User click "card_center_m_card_tb_dashboard" until "card_center_satay_dashboard" displayed
  Then "card_center_satay_change_pin" will be displayed
  Then "card_center_satay_block_card" will be displayed
  Then "card_center_satay_change_limit" will be displayed

@uidatabound @android
Scenario: JENI41-C17851-Quick card action from 3 dot - m-card is temporarily blocked (card center landing)

  Given User is logged in with cif "card_center_tblock_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User go to card center landing page from side menu
  Then "card_center_m_card_tb_dashboard" will be displayed
  And User click "card_center_m_card_tb_dashboard" until "card_center_satay_dashboard" displayed
  Then "card_center_satay_unblock_card" will be displayed
  Then "card_center_satay_permanent_block_card" will be displayed

@uidatabound @android
Scenario: JENI41-C17856-Quick card action from 3 dot - m-card is permanently blocked (card center landing)

  Given User is logged in with cif "card_center_pblock_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User go to card center landing page from side menu
  And User expect "card_center_e_card_status_dashboard" equal with "card_center_permanently_blocked"
  Then User expect "card_center_e_card_tb_dashboard" doesn't exist

@uidatabound @android
Scenario: JENI41-C17852-Quick card action from 3 dot - e-card is active (widget)

  Given User is logged in with cif "card_center_active_e_card_ui"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_e_card_tb_dashboard"
  Then "card_center_e_card_tb_dashboard" will be displayed
  And User click "card_center_e_card_tb_dashboard" until "card_center_e_card_satay_dashboard" displayed
  Then "card_center_e_card_satay_top_up" will be displayed
  Then "card_center_e_card_satay_block_card" will be displayed
  Then "card_center_e_card_satay_refund" will be displayed
  Then "card_center_e_card_satay_change_limit" will be displayed

#JENI-241
@uidatabound @android
Scenario:JENI241-C47388-See x-Card Details (active, widget)

  Given User is logged in with cif "card_center_active_x_card_cif_ui"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_first_x_card_dashboard"
  And User click "card_center_first_x_card_dashboard"

  Then "card_center_x_card_image" will be displayed
  Then element with "card_center_active_x_card_name" text will be displayed
  And User expect "card_center_x_card_number" equal with "card_center_x_card_masked_number"
  And User expect "card_center_x_card_exp" equal with "card_center_x_card_exp"
  And User expect "card_center_x_card_cvv_link" equal with "card_center_x_card_cvv_link"

  And User expect "card_center_x_card_balance_label" equal with "card_center_x_card_balance_label"
  And User expect "card_center_x_card_balance_amt" equal with "card_center_x_card_balance_amt"

  And User swipe up "card_center_detail" until found "card_center_x_card_atm_limit_label"

  And User expect "card_center_x_card_trx_limit_label" equal with "card_center_x_card_trx_limit_label"
  And User expect "card_center_x_card_trx_limit_amt" equal with "card_center_x_card_trx_limit_amt"
  And User expect "card_center_x_card_atm_limit_label" equal with "card_center_x_card_atm_limit_label"
  And User expect "card_center_x_card_atm_limit_amt" equal with "card_center_x_card_atm_limit_amt"

  Then "card_center_block_card_cta_button" will be displayed
  Then "card_center_top_up_cta_button" will be displayed
  Then "card_center_more_cta_button" will be displayed

@uidatabound @android
Scenario:JENI241-C47389-See x-Card Details (active, landing)

  Given User is logged in with cif "card_center_active_x_card_cif_ui"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User go to card center landing page from side menu
  And User click "card_center_first_x_card_dashboard"

  Then "card_center_x_card_image" will be displayed
  Then element with "card_center_active_x_card_name" text will be displayed
  And User expect "card_center_x_card_number" equal with "card_center_x_card_masked_number"
  And User expect "card_center_x_card_exp" equal with "card_center_x_card_exp"

  And User swipe up "card_center_detail" until found "card_center_x_card_atm_limit_label"

  And User expect "card_center_x_card_trx_limit_label" equal with "card_center_x_card_balance_label"
  And User expect "card_center_x_card_trx_limit_amt" equal with "card_center_x_card_balance_amt"

  And User swipe up "card_center_detail" until found "card_center_x_card_trx_limit_label"

  And User expect "card_center_x_card_trx_limit_label" equal with "card_center_x_card_trx_limit_label"
  And User expect "card_center_x_card_trx_limit_amt" equal with "card_center_x_card_trx_limit_amt"
  And User expect "card_center_x_card_atm_limit_label" equal with "card_center_x_card_atm_limit_label"
  And User expect "card_center_x_card_atm_limit_amt" equal with "card_center_x_card_atm_limit_amt"

  Then "card_center_block_card_cta_button" will be displayed
  Then "card_center_top_up_cta_button" will be displayed
  Then "card_center_more_cta_button" will be displayed

@uidatabound @android
Scenario:JENI241-C47391-See x-Card Details (temporarily blocked, landing)

  Given User is logged in with cif "card_center_tblock_x_card_cif_ui"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User go to card center landing page from side menu
  And User swipe up until found "card_center_first_x_card_dashboard"
  And User click "card_center_first_x_card_dashboard" until "card_center_detail" displayed

  Then "card_center_x_card_image" will be displayed
  Then "card_center_x_card_image_tblocked" will be displayed
  Then element with "card_center_tblock_x_card_name_ui" text will be displayed
  And User expect "card_center_x_card_number" equal with "card_center_tblock_x_card_masked_number_ui"
  And User expect "card_center_x_card_exp" equal with "card_center_tblock_x_card_exp_ui"
  And User expect "card_center_x_card_detail_tblocked" equal with "card_center_temporarily_block_card_detail_status"

  And User expect "card_center_x_card_balance_label" equal with "card_center_x_card_balance_label"
  And User expect "card_center_x_card_balance_amt" equal with "card_center_tblock_x_card_balance_amt_ui"

  And User swipe up "card_center_detail" until found "card_center_x_card_atm_limit_label"

  And User expect "card_center_x_card_trx_limit_label" equal with "card_center_x_card_trx_limit_label"
  And User expect "card_center_x_card_trx_limit_amt" equal with "card_center_tblock_x_card_trx_limit_amt_ui"
  And User expect "card_center_x_card_atm_limit_label" equal with "card_center_x_card_atm_limit_label"
  And User expect "card_center_x_card_atm_limit_amt" equal with "card_center_tblock_x_card_atm_limit_amt_ui"

  Then "card_center_more_cta_button" will be displayed
  Then "card_center_permanent_block_cta_button" will be displayed
  Then "card_center_unblock_cta_button" will be displayed

@uidatabound @android
Scenario:JENI241-C47390-See x-Card Details (temporarily blocked, widget)

  Given User is logged in with cif "card_center_tblock_x_card_cif_ui"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_first_x_card_dashboard"
  And User click "card_center_first_x_card_dashboard" until "card_center_detail" displayed

  Then "card_center_x_card_image" will be displayed
  Then "card_center_x_card_image_tblocked" will be displayed
  Then element with "card_center_tblock_x_card_name_ui" text will be displayed
  And User expect "card_center_x_card_number" equal with "card_center_tblock_x_card_masked_number_ui"
  And User expect "card_center_x_card_exp" equal with "card_center_tblock_x_card_exp_ui"
  And User expect "card_center_x_card_detail_tblocked" equal with "card_center_temporarily_block_card_detail_status"

  And User expect "card_center_x_card_balance_label" equal with "card_center_x_card_balance_label"
  And User expect "card_center_x_card_balance_amt" equal with "card_center_tblock_x_card_balance_amt_ui"

  And User swipe up "card_center_detail" until found "card_center_x_card_atm_limit_label"

  And User expect "card_center_x_card_trx_limit_label" equal with "card_center_x_card_trx_limit_label"
  And User expect "card_center_x_card_trx_limit_amt" equal with "card_center_tblock_x_card_trx_limit_amt_ui"
  And User expect "card_center_x_card_atm_limit_label" equal with "card_center_x_card_atm_limit_label"
  And User expect "card_center_x_card_atm_limit_amt" equal with "card_center_tblock_x_card_atm_limit_amt_ui"

  Then "card_center_more_cta_button" will be displayed
  Then "card_center_permanent_block_cta_button" will be displayed
  Then "card_center_unblock_cta_button" will be displayed

@uidatabound @android
Scenario:JENI241-C47394-See x-Card Details (permanently blocked, landing) 

  Given User is logged in with cif "card_center_pblock_x_card_cif_ui"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User go to card center landing page from side menu
  And User swipe up until found "card_center_first_x_card_dashboard"
  And User click "card_center_first_x_card_dashboard" until "card_center_detail" displayed

  Then "card_center_x_card_image" will be displayed
  Then element with "card_center_pblock_x_card_name_ui" text will be displayed
  And User expect "card_center_x_card_number" equal with "card_center_pblock_x_card_masked_number_ui"
  And User expect "card_center_x_card_exp" equal with "card_center_tblock_x_card_exp_ui"
  And User expect "card_center_x_card_detail_tblocked" equal with "card_center_permanently_block_card_detail_status"
  Then "card_center_x_card_image_tblocked" will be displayed

  And User expect "card_center_x_card_balance_label" equal with "card_center_x_card_balance_label"
  And User expect "card_center_x_card_balance_amt" equal with "card_center_tblock_x_card_balance_amt_ui"

  And User swipe up "card_center_detail" until found "card_center_x_card_atm_limit_label"

  And User expect "card_center_x_card_trx_limit_label" equal with "card_center_x_card_trx_limit_label"
  And User expect "card_center_x_card_trx_limit_amt" equal with "card_center_tblock_x_card_trx_limit_amt_ui"
  And User expect "card_center_x_card_atm_limit_label" equal with "card_center_x_card_atm_limit_label"
  And User expect "card_center_x_card_atm_limit_amt" equal with "card_center_pblock_x_card_atm_limit_amt_ui"

  Then User expect "card_center_more_cta_button" doesn't exist
  Then User expect "card_center_permanent_block_cta_button" doesn't exist
  Then User expect "card_center_unblock_cta_button" doesn't exist
  Then User expect "card_center_block_card_cta_button" doesn't exist
  Then User expect "card_center_top_up_cta_button" doesn't exist

@uidatabound @android
Scenario:JENI241-C47392-See x-Card Details (permanently blocked, widget)

  Given User is logged in with cif "card_center_pblock_x_card_cif_ui"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_first_x_card_dashboard"
  And User click "card_center_first_x_card_dashboard" until "card_center_detail" displayed

  Then "card_center_x_card_image" will be displayed
  Then element with "card_center_pblock_x_card_name_ui" text will be displayed
  And User expect "card_center_x_card_number" equal with "card_center_pblock_x_card_masked_number_ui"
  And User expect "card_center_x_card_exp" equal with "card_center_tblock_x_card_exp_ui"
  And User expect "card_center_x_card_detail_tblocked" equal with "card_center_permanently_block_card_detail_status"
  Then "card_center_x_card_image_tblocked" will be displayed

  And User expect "card_center_x_card_balance_label" equal with "card_center_x_card_balance_label"
  And User expect "card_center_x_card_balance_amt" equal with "card_center_tblock_x_card_balance_amt_ui"

  And User swipe up "card_center_detail" until found "card_center_x_card_atm_limit_label"

  And User expect "card_center_x_card_trx_limit_label" equal with "card_center_x_card_trx_limit_label"
  And User expect "card_center_x_card_trx_limit_amt" equal with "card_center_tblock_x_card_trx_limit_amt_ui"
  And User expect "card_center_x_card_atm_limit_label" equal with "card_center_x_card_atm_limit_label"
  And User expect "card_center_x_card_atm_limit_amt" equal with "card_center_tblock_x_card_atm_limit_amt_ui"

  Then User expect "card_center_more_cta_button" doesn't exist
  Then User expect "card_center_permanent_block_cta_button" doesn't exist
  Then User expect "card_center_unblock_cta_button" doesn't exist
  Then User expect "card_center_block_card_cta_button" doesn't exist
  Then User expect "card_center_top_up_cta_button" doesn't exist

#JENI-58,920,921
@endtoend @android
Scenario:JENI58-C23293-Temporarily Blocked of m-card in quick action (3 dots) in Dashboard
  Given User is logged in with cif "card_center_active_to_tblock_m_card_cif"
  And User change language to "language"
  And User swipe up until found "card_center_m_card_tb_dashboard"

  And User click "card_center_m_card_tb_dashboard"
  Then "card_center_satay_change_pin" will be displayed
  Then "card_center_satay_block_card" will be displayed
  Then "card_center_satay_change_limit" will be displayed

  And User click "card_center_satay_block_card"
  Then "card_center_block_pop_up_temporary" will be displayed
  Then "card_center_block_pop_up_permanent" will be displayed
  And User click "card_center_block_pop_up_temporary"

  Then User expect "top_notification_snackbar" equal with "card_center_tblocked_msg"

  Then User expect "card_center_m_card_status_dashboard" equal with "card_center_temporarily_blocked"
  Then "dashboard" will be displayed
  Then "card_center_m_card_blocked_image" will be displayed
  And User click "card_center_m_card_tb_dashboard"
  Then "card_center_satay_unblock_card" will be displayed
  Then "card_center_satay_permanent_block_card" will be displayed

@uidatabound @android
Scenario:JENI58-C23293-Temporarily Blocked of m-card in quick action (3 dots) in Dashboard
  Given User is logged in with cif "card_center_active_to_tblock_m_card_cif"
  And User change language to "language"
  And User swipe up until found "card_center_m_card_tb_dashboard"

  And User click "card_center_m_card_tb_dashboard"
  Then "card_center_satay_change_pin" will be displayed
  Then "card_center_satay_block_card" will be displayed
  Then "card_center_satay_change_limit" will be displayed

  And User click "card_center_satay_block_card"
  Then "card_center_block_pop_up_temporary" will be displayed

@uidatabound @android
Scenario:JENI58-C23298-Temporarily of m-card in quick action (3 dots) in Card Center landing
  Given User is logged in with cif "card_center_active_to_tblock_m_card_cif"
  And User change language to "language"
  And User go to card center landing page from side menu
  
  And User click "card_center_m_card_tb_dashboard"
  Then "card_center_satay_change_pin" will be displayed
  Then "card_center_satay_block_card" will be displayed
  Then "card_center_satay_change_limit" will be displayed

  And User click "card_center_satay_block_card"
  Then "card_center_block_pop_up_temporary" will be displayed

@endtoend @android
Scenario:JENI58-C45443-Temporary Block of m-card with CTA in Card Center landing
  Given User is logged in with cif "card_center_active_to_tblock_m_card_cif"
  And User change language to "language"
  And User go to card center landing page from side menu

  And User click "card_center_landing_page_cta_block" until "card_center_temporary_block_cta_button" displayed
  Then "card_center_temporary_block_cta_button" will be displayed
  Then "card_center_permanent_block_cta_button" will be displayed

  And User click "card_center_temporary_block_cta_button" until "card_center_card_dropdown" displayed
  Then "card_center_select_block_card" will be displayed
  And User select "card_center_select_block_card" dropdown with "card_center_m_card"
  And User click "card_center_temporary_block_page_block_button"

  Then User expect "card_center_m_card_status_dashboard" equal with "card_center_temporarily_blocked"
  Then "card_center_landing_page" will be displayed
  Then "card_center_m_card_blocked_image" will be displayed

@uidatabound @android
Scenario:JENI58-C45443-Temporary Block of m-card with CTA in Card Center landing
  Given User is logged in with cif "card_center_active_to_tblock_m_card_cif"
  And User change language to "language"
  And User go to card center landing page from side menu

  And User click "card_center_landing_page_cta_block" until "card_center_temporary_block_cta_button" displayed
  Then "card_center_temporary_block_cta_button" will be displayed
  Then "card_center_permanent_block_cta_button" will be displayed

  And User click "card_center_temporary_block_cta_button" until "card_center_card_dropdown" displayed
  Then "card_center_select_block_card" will be displayed
  And User select "card_center_select_block_card" dropdown with "card_center_m_card"
  Then "card_center_temporary_block_page_block_button" will be displayed

@endtoend @android
Scenario:JENI58-C23294-Temporarily Blocked of m-card with CTA in Card details
  Given User is logged in with cif "card_center_active_to_tblock_m_card_cif"
  And User change language to "language"
  And User go to card center landing page from side menu

  And User click "card_center_m_card_dashboard" until "card_center_detail" displayed
  And User click "card_center_landing_page_cta_block" until "card_center_temporary_block_cta_button" displayed
  Then "card_center_temporary_block_cta_button" will be displayed
  Then "card_center_permanent_block_cta_button" will be displayed

  And User click "card_center_temporary_block_cta_button"

  And User expect "card_center_x_card_detail_tblocked" equal with "card_center_temporarily_block_card_detail_status"
  Then "card_center_detail" will be displayed
  Then "card_center_x_card_image_tblocked" will be displayed

@uidatabound @android
Scenario:JENI58-C23294-Temporarily Blocked of m-card with CTA in Card details
  Given User is logged in with cif "card_center_active_to_tblock_m_card_cif"
  And User change language to "language"
  And User go to card center landing page from side menu

  And User click "card_center_m_card_dashboard" until "card_center_detail" displayed
  And User click "card_center_landing_page_cta_block" until "card_center_temporary_block_cta_button" displayed
  Then "card_center_temporary_block_cta_button" will be displayed
  Then "card_center_permanent_block_cta_button" will be displayed

@uidatabound @android
Scenario:JENI58-C23299-Temporarily Blocked of m-card with CTA in Card details (landing)
  Given User is logged in with cif "card_center_active_to_tblock_m_card_cif"
  And User change language to "language"
  And User swipe up until found "card_center_m_card_tb_dashboard"

  And User click "card_center_m_card_dashboard" until "card_center_detail" displayed
  And User click "card_center_landing_page_cta_block" until "card_center_temporary_block_cta_button" displayed
  Then "card_center_temporary_block_cta_button" will be displayed
  Then "card_center_permanent_block_cta_button" will be displayed

  And User click "card_center_temporary_block_cta_button"

  And User expect "card_center_x_card_detail_tblocked" equal with "card_center_temporarily_block_card_detail_status"
  Then "card_center_detail" will be displayed
  Then "card_center_x_card_image_tblocked" will be displayed

#JENI-153
@uidatabound @android @153
Scenario:JENI153-C40870-Verify m-card details

  Given User is logged in with cif "card_center_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_m_card_dashboard"
  And User click "card_center_m_card_clickable"

  Then "card_center_x_card_image" will be displayed
  And User expect "card_center_m_card_clickable" equal with "card_center_m_card"
  And User expect "card_center_x_card_number" equal with "card_center_m_card_masked_number_ui"
  And User expect "card_center_x_card_exp" equal with "card_center_m_card_exp_ui"
  And User expect "card_center_x_card_cvv_link" equal with "card_center_m_card_cvv_link"

  And User swipe up "card_center_detail" until found "card_center_x_card_trx_limit_label"

  And User expect "card_center_x_card_trx_limit_label" equal with "card_center_m_card_trx_limit_label"
  And User expect "card_center_x_card_trx_limit_amt" equal with "card_center_m_card_trx_limit_amt"
  And User expect "card_center_x_card_atm_limit_label" equal with "card_center_m_card_atm_limit_label"
  And User expect "card_center_x_card_atm_limit_amt" equal with "card_center_m_card_atm_limit_amt"

  Then "card_center_block_card" will be displayed
  Then "card_center_change_pin_cta_button" will be displayed
  Then "card_center_change_limit_cta_button" will be displayed

@uidatabound @android @153
Scenario:JENI153-C40871-Verify showing CVV and card number is correct

  Given User is logged in with cif "card_center_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_m_card_dashboard"
  And User click "card_center_m_card_clickable"

  Then "card_center_x_card_image" will be displayed
  And User click "card_center_x_card_cvv_link"

  Then "card_center_password_verification_form" will be displayed
  And User fill "card_center_password_field" with "card_center_active_m_card_correct_password_ui"
  Then "card_center_password_submit_button" will be displayed

@endtoend @android @153
Scenario:JENI153-C40871-Verify showing CVV and card number is correct

  Given User is logged in with cif "card_center_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_m_card_dashboard"
  And User click "card_center_m_card_clickable"

  Then "card_center_x_card_image" will be displayed
  And User click "card_center_x_card_cvv_link"

  Then "card_center_password_verification_form" will be displayed
  And User fill "card_center_password_field" with "card_center_active_m_card_correct_password_ui"
  And User click "card_center_password_submit_button"

  And User wait "card_center_loading_screen" will be gone

  Then "card_center_detail" will be displayed
  And User expect "card_center_x_card_number" equal with "card_center_m_card_number"
  And User expect "card_center_x_card_cvv" equal with "card_center_m_card_cvv_ui"

@endtoend @android
Scenario:JENI153-C40872-Verify that the CVV and card number show in 45s

  Given User is logged in with cif "card_center_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User go to card center landing page from side menu

  And User click "card_center_m_card_clickable" until "card_center_detail" displayed
  And User click "card_center_x_card_cvv_link"

  Then "card_center_password_verification_form" will be displayed
  And User fill "card_center_password_field" with "card_center_active_m_card_correct_password_ui"
  And User click "card_center_password_submit_button"

  And User wait "card_center_loading_screen" will be gone

  Then "card_center_detail" will be displayed
  And User expect "card_center_x_card_number" equal with "card_center_m_card_number"
  And User expect "card_center_x_card_cvv" equal with "card_center_m_card_cvv"

  And User wait 45 seconds

  Then "card_center_x_card_cvv_link" will be displayed
  And User expect "card_center_x_card_number" equal with "card_center_m_card_masked_number"

#JENI-54
@uidatabound @android
Scenario:JENI54-C67391-Opening Top Up Page (Active)

  Given User is logged in with cif "card_center_x_card_active_credential_top_up"
  
  And User change language to "language"
  And User go to card center landing page from side menu

  And User click "card_center_active_x_card_three_dots"
  And User click "card_center_x_card_satay_top_up"
  Then "card_center_top_up_page" will be displayed

@uidatabound @android
Scenario:JENI54-C67392-Opening Top Up Page (Temp Blocked)

  Given User is logged in with cif "card_center_x_card_tblock_credential_top_up"
  
  And User change language to "language"
  And User go to card center landing page from side menu

  And User click "card_center_active_x_card_three_dots"
  And User click "card_center_x_card_satay_top_up"
  Then "card_center_top_up_page" will be displayed

@uidatabound @android
Scenario:JENI54-C67399-Confirmation Page is shown

  Given User is logged in with cif "card_center_x_card_active_credential_top_up"
  
  And User change language to "language"
  And User go to card center landing page from side menu

  And User click "card_center_active_x_card_three_dots"
  And User click "card_center_x_card_satay_top_up"
  When User fill "card_center_top_up_amt_field" with 1
  And User click "card_center_top_up_submit"

  Then "card_center_top_up_confirm_button" will be displayed

@uidatabound @android
Scenario:JENI54-C67445-Canceling top up

  Given User is logged in with cif "card_center_x_card_active_credential_top_up"
  
  And User change language to "language"
  And User go to card center landing page from side menu

  And User click "card_center_active_x_card_three_dots"
  And User click "card_center_x_card_satay_top_up"
  And User click "back_button"
  Then "card_center_landing_page" will be displayed

@uidatabound @android
Scenario:JENI54-C67461-List of information that shown

  Given User is logged in with cif "card_center_x_card_active_credential_top_up"
  
  And User change language to "language"
  And User go to card center landing page from side menu

  And User click "card_center_active_x_card_three_dots"
  And User click "card_center_x_card_satay_top_up"
  Then "card_center_top_up_image" will be displayed
  And User expect "card_center_top_up_card_number" equal with "card_center_x_card_masked_number"
  And User expect "card_center_top_up_balance_amt" contains "card_center_top_up_idr"
  Then element with "card_center_top_up_x_card_name" text will be displayed

@uidatabound @android
Scenario:JENI54-C67465-Unable to top up card which is more than active balance

  Given User is logged in with cif "card_center_x_card_active_credential_top_up"
  
  And User change language to "language"
  And User go to card center landing page from side menu

  And User click "card_center_active_x_card_three_dots"
  And User click "card_center_x_card_satay_top_up"
  When User fill "card_center_top_up_amt_field" with 999999
  And User click "card_center_top_up_submit"
  And User expect "card_center_top_up_amt_hint" equal with "card_center_top_up_hint_exceed"

@uidatabound @android
Scenario:JENI54-C68142-Opening Top Up Card Selection Page (Temp Blocked)

  Given User is logged in with cif "card_center_x_card_tblock_credential_top_up"
  
  And User change language to "language"
  And User go to card center landing page from side menu

  And User click "card_center_landing_page_cta_top_up"
  Then "card_center_select_block_card" will be displayed

@android @ios @uispecific
  Scenario:JENI42-C109289-Card Center landing (CTA button): an active e-card > Block Card
    Given User access card center from left side menu with cif "pay_me_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_temporary_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_e_card"
    And User click "card_center_temporary_block_button"
    Then User expect "top_notification_snackbar" equal with "card_center_permanent_block_e_card_detail_status"

  @android @ios @uispecific
  Scenario:JENI42-C109296-Card Center landing (CTA button): a temporarily blocked e-card > Block Card
    Given User is on dashboard page in English language with "pay_me_cif"
    And User swipe up until found "dashboard_card_center_ecard_widget"
    When User click "dashboard_card_center_ecard_widget"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_temporary_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_e_card"
    And User click "card_center_temporary_block_button"
    Then User expect "top_notification_snackbar" equal with "card_center_permanent_block_e_card_detail_status"

  @android @ios @uispecific
  Scenario:JENI1597-C45981-Card Center landing (CTA button, no fee): an active m-card > Block Card
    Given User access card center from left side menu with cif "pay_me_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_m_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_block_card"
    Then User expect "top_notification_snackbar" equal with "card_center_permanent_block_e_card_detail_status"

  @android @ios @uispecific
  Scenario:JENI1597-C48096-Card Center landing (CTA button, no fee): an active m-card > Block Card
    Given User access card center from left side menu with cif "pay_me_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_temporary_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_e_card"
    And User click "card_center_temporary_block_button"
    Then User expect "top_notification_snackbar" equal with "card_center_permanent_block_e_card_detail_status"
    And "card_center_landing_page" will be displayed

  @android @ios @uispecific
  Scenario:JENI1597-C45979-Permanent Block (CTA button): a temporarily block m-card in Card Center landing
    Given User access card center from left side menu with cif "card_center_tblock_e_card_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_m_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_block_card"
    Then User expect "top_notification_snackbar" equal with "card_center_permanent_block_e_card_detail_status"
    Then "card_center_landing_page" will be displayed

  @android @ios @uispecific
  Scenario:JENI1597-C45987-Permanent Block (CTA): change the selected card but Cancel the selecting
    Given User access card center from left side menu with cif "pay_me_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_m_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_cancel_button"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_m_card_status_dashboard" equal with "card_center_temporarily_blocked"

  @android @ios @uispecific
  Scenario:JENI1597-C45977-Permanent Block (3 dots): a temporarily block m-card in Card Center landing
    Given User access card center from left side menu with cif "card_center_tblock_m_card_cif"
    And User click "card_center_active_m_card_three_dots"
    And User click "card_center_satay_block_card"
    And User click "card_center_satay_permanent_block_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_block_card"
    Then User expect "top_notification_snackbar" equal with "card_center_permanent_block_e_card_detail_status"

  @android @ios @uispecific
  Scenario:JENI42-C109291-Card Center landing (CTA button): an active e-card > Block Card
    Given User access card center from left side menu with cif "pay_me_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_e_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
     And User click "card_center_block_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_e_card_status_dashboard" equal with "card_center_active"
    And User expect "top_notification_snackbar" equal with "card_center_permanent_block_e_card_detail_status"

  @android @ios @uispecific
  Scenario:JENI42-C109292-Card Center landing (CTA button): an active e-card > Cancel
    Given User access card center from left side menu with cif "card_center_tblock_e_card_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_e_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_cancel_button"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_e_card_status_dashboard" equal with "card_center_active"
    And User expect "top_notification_snackbar" doesn't exist
    And User expect "top_notification_snackbar" equal with "card_center_permanent_block_e_card_detail_status" doesn't exist

  @android @ios @uispecific
  Scenario:JENI1597-C45487-Permanent Block (3 dots): a temporarily block m-card in Card Center landing
    Given User access card center from left side menu with cif "card_center_tblock_m_card_cif"
    And User click "card_center_active_m_card_three_dots"
    And User click "card_center_three_dots_block_card_button"
    And User click "card_center_cta_temporary_block_card_button"
    And User click "card_center_temporary_block_button"
    Then User expect "top_notification_snackbar" equal with "card_center_permanent_block_e_card_detail_status"

# JENI-44
@uidatabound @android
Scenario:JENI44-C67373-Unblock X-Card by Three Dots on Card Widget
  Given User is logged in with cif "card_center_e_card_active_credential_top_up"
  And User change language to "language"
  And User swipe up until found "card_center_first_x_card_three_dots"
  And User click "card_center_first_x_card_three_dots"
  And User click "card_center_x_card_satay_unblock_card"
  Then User expect "top_notification_snackbar" equal with "card_center_unblock_x_card"
  Then "dashboard" will be displayed

@uidatabound @android
Scenario:JENI44-C67375-Unblock X-Card by Three Dots on Card Center Landing Page
  Given User is logged in with cif "card_center_e_card_active_credential_top_up"
  And User change language to "language"
  And User go to card center landing page from side menu
  And User swipe up until found "card_center_first_x_card_three_dots"
  And User click "card_center_first_x_card_three_dots"
  And User click "card_center_x_card_satay_unblock_card"
  Then User expect "top_notification_snackbar" equal with "card_center_unblock_x_card"
  Then "card_center_landing_page" will be displayed

@uidatabound @android
Scenario:JENI44-C67376-Unblock X-Card by Card Detail from Card Widget
  Given User is logged in with cif "card_center_e_card_active_credential_top_up"
  And User change language to "language"
  And User swipe up until found "card_center_first_x_card_dashboard"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_unblock_cta_button"
  Then User expect "top_notification_snackbar" equal with "card_center_unblock_x_card"
  Then "card_center_detail" will be displayed

@uidatabound @android
Scenario:JENI44-C67377-Unblock X-Card by Card Detail from Card Center Landing Page
  Given User is logged in with cif "card_center_e_card_active_credential_top_up"
  And User change language to "language"
  And User go to card center landing page from side menu
  And User swipe up until found "card_center_first_x_card_dashboard"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_unblock_cta_button"
  Then User expect "top_notification_snackbar" equal with "card_center_unblock_x_card"
  Then "card_center_detail" will be displayed

# JENI-162
@uidatabound @android @R3_1 @ios
# JENI162-C67345-Delete x-card in Card details (x-card is Active)- More action - Delete
Scenario:JENI162-C67347#C67345-[Layout]Delete x-card in Card details (x-card is Active)- More action
  Given User is logged in with cif "card_center_x_card_active_credential_top_up"
  And User change language to "language"
  And User go to card center landing page from side menu
  And User swipe up until found "card_center_first_x_card_balance_dashboard"
  And System save "card_center_first_x_card_balance_dashboard" value
  And User click "card_center_first_x_card_dashboard"

  Then "card_center_top_up_cta_button" will be displayed
  Then "card_center_block_card_cta_button" will be displayed
  Then "card_center_more_cta_button" will be displayed
  And User click "card_center_more_cta_button"

  Then "card_center_change_card_name_popup_menu" will be displayed
  Then "card_center_change_card_pin_popup_menu" will be displayed
  Then "card_center_change_card_limit_popup_menu" will be displayed
  Then "card_center_refund_card_popup_menu" will be displayed
  Then "card_center_delete_card_popup_menu" will be displayed
  Then "card_center_cancel_popup_menu" will be displayed
  And User click "card_center_delete_card_popup_menu"

  Then element with "card_center_delete_card_page_title" text will be displayed
  Then element with "card_center_delete_card_page_refund" text will be displayed
  Then element with "card_center_delete_card_page_immediately" text will be displayed
  Then User expect "card_center_delete_page_refund_amount" similar with saved data number 1
  Then "card_center_delete_page_submit" will be displayed

@uidatabound @android @R3_1 @ios
Scenario:JENI162-C63985-Delete x-card in Card details (x-card is Active)- More action - Cancel
  Given User is logged in with cif "card_center_x_card_active_credential_top_up"
  And User change language to "language"
  And User go to card center landing page from side menu
  # And User swipe up until found "card_center_first_x_card_balance_dashboard"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_more_cta_button"
  And User click "card_center_delete_card_popup_menu"
  And User click "card_center_delete_page_submit"
  And User click element with text "send_it_frequency_confirmation_cancel"
  Then "card_center_delete_page_submit" will be displayed

@uidatabound @android @R3_1 @ios
Scenario:JENI162-C67368-Delete x-card in Card details (x-card is Temporarily Blocked)- More action - Delete
  Given User is logged in with cif "card_center_x_card_tblock_credential_top_up"
  And User change language to "language"
  And User go to card center landing page from side menu
  And User swipe up until found "card_center_first_x_card_balance_dashboard"
  And System save "card_center_first_x_card_balance_dashboard" value
  And User click "card_center_first_x_card_dashboard"

  Then "card_center_more_cta_button" will be displayed
  And User click "card_center_more_cta_button"

  Then "card_center_top_up_popup_menu" will be displayed
  Then "card_center_refund_card_popup_menu" will be displayed
  Then "card_center_delete_card_popup_menu" will be displayed
  Then "card_center_cancel_popup_menu" will be displayed
  And User click "card_center_delete_card_popup_menu"

  Then element with "card_center_delete_card_page_title" text will be displayed
  Then element with "card_center_delete_card_page_refund" text will be displayed
  Then element with "card_center_delete_card_page_immediately" text will be displayed
  Then User expect "card_center_delete_page_refund_amount" similar with saved data number 1
  Then "card_center_delete_page_submit" will be displayed

@uidatabound @android @R3_1 @ios
Scenario:JENI162-C67367-Delete x-card in Card details (x-card is Temporarily Blocked)- More action - Cancel
  Given User is logged in with cif "card_center_x_card_tblock_credential_top_up"
  And User change language to "language"
  And User go to card center landing page from side menu
  And User swipe up until found "card_center_first_x_card_balance_dashboard"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_more_cta_button"
  And User click "card_center_delete_card_popup_menu"
  And User click "card_center_delete_page_submit"
  And User click element with text "send_it_frequency_confirmation_cancel"
  Then "card_center_delete_page_submit" will be displayed
  And User click "back_button"
  Then "card_center_more_cta_button" will be displayed
  Then "card_center_x_card_image_tblocked" will be displayed

@uidatabound @android @R3_1 @ios
Scenario:JENI162-C67371-Delete x-card in Card Center widget (x-card is Temporarily Blocked)- 3 dots action - Cancel
  Given User is logged in with cif "card_center_e_card_active_credential_top_up"
  And User change language to "language"
  And User go to card center landing page from side menu
  And User swipe up until found "card_center_first_x_card_three_dots"
  And User click "card_center_first_x_card_three_dots"
  And User click "card_center_x_card_satay_delete_card"
  And User click "card_center_delete_page_submit"
  And User click element with text "send_it_frequency_confirmation_cancel"
  Then "card_center_delete_page_submit" will be displayed

@uidatabound @android @R3_1 @ios
# JENI162-C67370-Delete x-card in Card Center widget (x-card is Active, check order)- 3 dots action - Delete card
Scenario:JENI162-C67369#C67370-Delete x-card in Card Center widget (x-card is Active)- 3 dots action - Delete card
  Given User is logged in with cif "card_center_e_card_active_credential_top_up"
  And User change language to "language"
  And User swipe up until found "card_center_first_x_card_three_dots"
  And User click "card_center_first_x_card_three_dots"
  And User click "card_center_x_card_satay_delete_card"
  And User click "card_center_delete_page_submit"
  Then element with "card_center_confirm_delete_button" text will be displayed

@uidatabound @android @R3_1 @ios
Scenario:JENI162-C67349-Delete x-card in Card Center landing (x-card is Active)- 3 dots action - Cancel
  Given User is logged in with cif "card_center_x_card_active_credential_top_up"
  And User change language to "language"
  And User go to card center landing page from side menu
  And User swipe up until found "card_center_first_x_card_three_dots"
  And User click "card_center_first_x_card_three_dots"
  And User click "card_center_x_card_satay_delete_card"
  And User click "card_center_delete_page_submit"
  And User click element with text "send_it_frequency_confirmation_cancel"
  
  Then "card_center_delete_page_submit" will be displayed

@uidatabound @android @R3_1 @ios
Scenario:JENI162-C67389-Delete x-card in Card Center landing (x-card is Active)- 3 dots action - Delete Card
  Given User is logged in with cif "card_center_x_card_active_credential_top_up"
  And User change language to "language"
  And User go to card center landing page from side menu
  And User swipe up until found "card_center_first_x_card_three_dots"
  And User click "card_center_first_x_card_three_dots"
  And User click "card_center_x_card_satay_delete_card"
  Then element with "card_center_delete_card_page_title" text will be displayed

@uidatabound @android @R3_1 @ios
Scenario:JENI162-C67372-Delete x-card in Card Center widget (x-card is Temporarily Blocked)- 3 dots action - Delete card
  Given User is logged in with cif "card_center_e_card_active_credential_top_up"
  And User change language to "language"
  And User swipe up until found "card_center_first_x_card_three_dots"
  And User click "card_center_first_x_card_three_dots"
  And User click "card_center_x_card_satay_delete_card"
  And User click "card_center_delete_page_submit"
  Then element with "card_center_confirm_delete_button" text will be displayed

@uidatabound @android @R3_1 @ios
Scenario:JENI162-C67400-Delete x-card in Card Center landing (x-card is Temporarily Blocked)- 3 dots action - Cancel
  Given User is logged in with cif "card_center_x_card_tblock_credential_top_up"
  And User change language to "language"
  And User go to card center landing page from side menu
  And User swipe up until found "card_center_first_x_card_three_dots"
  And User click "card_center_first_x_card_three_dots"
  And User click "card_center_x_card_satay_delete_card"
  And User click "back_button"
  
  Then "card_center_landing_page" will be displayed

@endtoend @android @R3_1 @ios
Scenario:JENI162-C67401-Delete x-card in Card Center landing (x-card is Temporarily Blocked)- 3 dots action - Delete Card
  Given User is logged in with cif "card_center_x_card_tblock_credential_top_up"
  And User change language to "language"
  And User go to card center landing page from side menu
  And User swipe up until found "card_center_first_x_card_three_dots"
  And User click "card_center_first_x_card_three_dots"
  And User click "card_center_x_card_satay_delete_card"
  And User click "card_center_delete_page_submit"
  And User click "card_center_confirm_delete_button"

# JENI-54
@uidatabound @android
Scenario:JENI54-C70145-Scenario : Select Card To Top Up
  Given User is logged in with cif "card_center_x_card_active_credential_top_up"
  And User change language to "language"
  And User go to card center landing page from side menu
  And User click "card_center_landing_page_cta_top_up"
  Then element with "card_center_top_up_header" text will be displayed
  And User select "card_center_card_dropdown" dropdown with "card_center_first_x_card_top_up"
  And System save "card_center_top_up_card_number" value
  And User click "card_center_top_up_selection_button"
  Then User expect "card_center_top_up_card_number" equal with saved data number 1
  Then element with "card_center_first_x_card_top_up" text will be displayed

@uidatabound @android
# JENI54-C70148-Scenario : Minimum Top Up Amount
Scenario:JENI54-C70146#C70148-Scenario : Enter Top Up Amount
  Given User is logged in with cif "card_center_x_card_active_credential_top_up"
  And User change language to "language"
  And User go to card center landing page from side menu
  And User click "card_center_landing_page_cta_top_up"
  And User select "card_center_card_dropdown" dropdown with "card_center_first_x_card_top_up"
  And User click "card_center_top_up_selection_button"
  When User fill "card_center_top_up_amt" with "card_center_first_x_card_top_up_amt"
  And User click "card_center_top_up_submit"
  Then element with "card_center_first_x_card_top_up_amt" text will be displayed

@uidatabound @android
Scenario:JENI54-C70149-Scenario : Active Balance
  Given User is logged in with cif "card_center_x_card_active_credential_top_up"
  And User change language to "language"
  And System save "dashboard_wealth_widget_total_active_balance" value
  And User go to card center landing page from side menu
  And User click "card_center_landing_page_cta_top_up"
  And User select "card_center_card_dropdown" dropdown with "card_center_first_x_card_top_up"
  And User click "card_center_top_up_selection_button"
  Then User expect "card_center_top_up_active_balance" similar with saved data number 1

@uidatabound @android
Scenario:JENI54-C70150-Scenario : Confirm Top Up
  Given User is logged in with cif "card_center_x_card_active_credential_top_up"
  And User change language to "language"
  And User go to card center landing page from side menu
  And User click "card_center_landing_page_cta_top_up"
  And User select "card_center_card_dropdown" dropdown with "card_center_first_x_card_top_up"
  And User click "card_center_top_up_selection_button"
  When User fill "card_center_top_up_amt" with "card_center_first_x_card_top_up_amt"
  And User click "card_center_top_up_submit"
  Then element with "card_center_first_x_card_top_up_amt" text will be displayed
  And User click "card_center_top_up_confirm_button"
  Then User expect "snackbar" equal with "card_center_x_card_top_up_notif"

@uidatabound @android
Scenario:JENI54-C70153-Scenario - Back Button for Confirmation page
  Given User is logged in with cif "card_center_x_card_active_credential_top_up"
  And User change language to "language"
  And User go to card center landing page from side menu
  And User click "card_center_landing_page_cta_top_up"
  And User select "card_center_card_dropdown" dropdown with "card_center_first_x_card_top_up"
  And User click "card_center_top_up_selection_button"
  When User fill "card_center_top_up_amt" with "card_center_first_x_card_top_up_amt"
  And User click "card_center_top_up_submit"
  Then element with "card_center_first_x_card_top_up_amt" text will be displayed
  And User click "back_button"
  And User click "back_button"

@uidatabound @android
Scenario:JENI54-C70151-Scenario : Active Balance Deduction As a result of topping up
  Given User is logged in with cif "card_center_x_card_active_credential_top_up"
  And User change language to "language"
  And System save "dashboard_wealth_widget_total_active_balance" value
  And User go to card center landing page from side menu
  And System save "card_center_first_x_card_balance_dashboard" value
  And User click "card_center_landing_page_cta_top_up"
  And User select "card_center_card_dropdown" dropdown with "card_center_first_x_card_top_up"
  And User click "card_center_top_up_selection_button"
  When User fill "card_center_top_up_amt" with "card_center_first_x_card_top_up_amt"
  And User click "card_center_top_up_submit"
  And User click "card_center_top_up_confirm_button"
  Then User expect "card_center_first_x_card_balance_dashboard" equal with saved data number 2 plus "card_center_first_x_card_top_up_amt"
  And User go to dashboard from card center list
  Then User expect "dashboard_wealth_widget_total_active_balance" equal with saved data number 1 minus "card_center_first_x_card_top_up_amt"

@uidatabound @android
Scenario:JENI54-C70152-Scenario : Transaction History as a result of topping up
  Given User is logged in with cif "card_center_x_card_active_credential_top_up"
  And User change language to "language"
  And System save "dashboard_wealth_widget_total_active_balance" value
  And User go to card center landing page from side menu
  And System save "card_center_first_x_card_balance_dashboard" value
  And User click "card_center_landing_page_cta_top_up"
  And User select "card_center_card_dropdown" dropdown with "card_center_first_x_card_top_up"
  And User click "card_center_top_up_selection_button"
  When User fill "card_center_top_up_amt" with "card_center_first_x_card_top_up_amt"
  And User click "card_center_top_up_submit"
  And User click "card_center_top_up_confirm_button"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_transactions_tab"
  Then User expect "card_center_transcation_first_item_narrative" equal with "card_center_top_up_history_title"
  Then User expect "card_center_transcation_first_item_amount" equal with "card_center_top_up_history_amt"

  @android @ios @uispecific
  Scenario:JENI228-C93243-Initiation of Permanent Block
    Given User access card center from left side menu with cif "pay_me_cif"
    And User click "card_center_m_card_dashboard"
    And User click "card_center_m_card_blocked_image"
    When User click "card_center_permanent_block_button"
    Then "card_center_permanent_block_cta_button" will be displayed
    And "card_center_temporary_block_cta_button" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI228-C93244-User decided to permanent block card option in the modal
    When User click "card_center_permanent_block_cta_button"
    Then "card_center_permanent_block_page" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI228-C93245-User initiates Permanent Blocking 
    And User select "card_center_card_dropdown" dropdown with "card_center_e_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_m_card_status_dashboard" equal with "card_center_permanently_blocked"
    And User expect "top_notification_snackbar" equal with "card_center_permanent_block_m_card_detail_status"

  @android @ios @uispecific
  Scenario:JENI228-C93246-Changes as a Result of Permanent Blocking
    Given User access card center from left side menu with cif "pay_me_cif"
    Then User expect "card_center_m_card_status_dashboard" equal with "card_center_permanently_blocked"
    And "dashboard_account_m_card_active_button" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI228-C93247-Activating new m- card
    When User click "dashboard_account_m_card_active_button"    
    And User fill "card_center_card_cvv_field" with "card_center_m_card_cvv"
    And User fill "card_center_card_pin_field" with "correct_pin"
    And User fill "card_center_card_pin_confirm_field" with "correct_pin"
    And User click "card_center_pin_submit_button"
    Then User expect "card_center_m_card_status_dashboard" equal with "card_center_active"
    And User expect "card_center_m_card_blocked_status_dashboard" equal with "card_center_permanently_blocked" doesn't exist

  @android @ios @uispecific
  Scenario:JENI302-C59708-Temporarily Blocked of x-card with CTA in Card Center Landing
    Given User access card center from left side menu with cif "pay_me_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_temporary_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_x_card"
    And User click "card_center_temporary_block_button"
    Then User expect "top_notification_snackbar" equal with "card_center_permanent_block_x_card_detail_status"
    And "card_center_landing_page" will be displayed
    And User expect "card_center_x_card_status_dashboard" equal with "card_center_temporarily_blocked"
    And "card_center_first_x_card_tblocked_image" will be displayed
    When User click "card_center_third_x_card_three_dots"
    Then "card_center_top_up_menu_item" will be displayed
    And "card_center_refund_menu_item" will be displayed
    And "card_center_unblock_menu_item" will be displayed
    And "card_center_permanent_block_menu_item" will be displayed

  @android @ios @uispecific
  Scenario:JENI305-C63972-Permanent Block: a temporarily block x-card in Card detail
    And User click "card_center_permanent_block_menu_item"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_x_card_status_dashboard" equal with "card_center_permanently_blocked"
    And User expect "top_notification_snackbar" equal with "card_center_permanent_block_x_card_detail_status"
    And "dashboard_account_first_x_card_active_button" will be displayed

  @android @ios @uispecific
  Scenario:JENI305-C63910-Card Center landing (CTA button, no fee): a temporarily blocked x-card > Block Card
    Given User access card center from left side menu with cif "pay_me_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    When User select "card_center_card_dropdown" dropdown with "card_center_x_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_block_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_x_card_status_dashboard" equal with "card_center_permanently_blocked"
    And User expect "top_notification_snackbar" equal with "card_center_permanent_block_x_card_detail_status"
    And "dashboard_account_first_x_card_active_button" will be displayed 

  @android @ios @uispecific
  Scenario:JENI305-C63911-Card Center landing (CTA button, no fee): a temporarily blocked x-card > Cancel
    Given User access card center from left side menu with cif "pay_me_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_temporary_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_x_card"
    And User click "card_center_cancel_popup_menu"
    Then User expect "top_notification_snackbar" equal with "card_center_permanent_block_x_card_detail_status"
    And "card_center_landing_page" will be displayed
    And User expect "card_center_x_card_status_dashboard" equal with "card_center_temporarily_blocked"
    And "card_center_first_x_card_tblocked_image" will be displayed

  @android @ios @uispecific
  Scenario:JENI305-C63903-Card Center landing (CTA button, no fee): an active x-card > Block Card
    Given User access card center from left side menu with cif "pay_me_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_x_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_block_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_x_card_status_dashboard" equal with "card_center_permanently_blocked"
    And User expect "top_notification_snackbar" equal with "card_center_permanent_block_x_card_detail_status"
    And "dashboard_account_first_x_card_active_button" will be displayed

  @android @ios @uispecific
  Scenario:JENI305-C63975-Card Center landing (CTA button, no fee): an active x-card > Cancel
    Given User access card center from left side menu with cif "pay_me_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_x_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_cancel_button"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_second_x_card_status_dashboard" equal with "card_center_active"
    And User expect "top_notification_snackbar" equal with "card_center_permanent_block_x_card_detail_status"
    And "dashboard_account_second_x_card_active_button" will be displayed

  @android @ios @uispecific
  Scenario:JENI305-C67693-Check the third x-card: permanent block is free (first time)
    Given User access card center from left side menu with cif "pay_me_cif"
    And User click "card_center_third_x_card_three_dots"
    And User click "card_center_three_dots_block_card_button"
    And User click "card_center_permanent_block_cta_button"

  Scenario:JENI1597-C45977-Permanent Block (3 dots): a temporarily block m-card in Card Center landing
    Given User access card center from left side menu with cif "card_center_tblock_m_card_cif"
    And User click "card_center_active_m_card_three_dots"
    And User click "card_center_satay_block_card"
    And User click "card_center_satay_permanent_block_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    Then User expect "card_center_new_card_fee" doesn't exist

  @android @ios @uispecific @continuous
  Scenario:JENI305-C63974-Card Center Widget (active, no fee): Check mailing address
    And User expect "card_center_block_card_confirmation_address" equal with "card_center_permanent_block_confirm_mail_address"

  @android @ios @uispecific
  Scenario:JENI305-C67692-Check the second x-card permanent block is free (first time)
    Given User access card center from left side menu with cif "pay_me_cif"
    And User click "card_center_second_x_card_three_dots"
    And User click "card_center_three_dots_block_card_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User expect "card_center_new_card_fee" doesn't exist

  @android @ios @uispecific
  Scenario:JENI305-C67691-Check the first x-card permanently block is free (first time)
    Given User access card center from left side menu with cif "pay_me_cif"
    And User click "card_center_first_x_card_three_dots"
    And User click "card_center_three_dots_block_card_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User expect "card_center_new_card_fee" doesn't exist

@uidatabound @android
Scenario:JENI305-C63965-Card details (fee, insufficient active balance): an active x-card > Cancel

  Given User is logged in with cif "card_center_pblock_fee_active_x_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And System save "dashboard_wealth_widget_total_active_balance" value
  And User go to card center landing page from side menu
  And User swipe up until found "card_center_first_x_card_dashboard"
  And User expect "card_center_x_card_status_dashboard" equal with "card_center_active"
  And User click "card_center_first_x_card_dashboard"

  And User click "card_center_block_card_cta_button"

  And User click "card_center_block_card_cta_pblock"

  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"

  Then "card_center_permanent_block_confirm_cancel_button" will be displayed
  Then "card_center_pblock_insufficient_fee_tblock" will be displayed
  Then "card_center_pblock_insufficient_fee_add_money" will be displayed
  And User click "card_center_permanent_block_confirm_cancel_button"
  
  Then "card_center_detail" will be displayed
  Then element with "card_center_temporarily_block_card_detail_status" text will not displayed

@uidatabound @android
Scenario:JENI305-C63964-Card details (fee, insufficient active balance): an active x-card > Add money

  Given User is logged in with cif "card_center_pblock_fee_active_x_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And System save "dashboard_wealth_widget_total_active_balance" value
  And User go to card center landing page from side menu
  And User swipe up until found "card_center_first_x_card_dashboard"
  And User expect "card_center_x_card_status_dashboard" equal with "card_center_active"
  And User click "card_center_first_x_card_dashboard"

  And User click "card_center_block_card_cta_button"

  And User click "card_center_block_card_cta_pblock"

  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"

  Then "card_center_permanent_block_confirm_cancel_button" will be displayed
  Then "card_center_pblock_insufficient_fee_tblock" will be displayed
  Then "card_center_pblock_insufficient_fee_add_money" will be displayed
  And User click "card_center_pblock_insufficient_fee_add_money"

  Then "card_center_pblock_insufficient_fee_add_money_page" will be displayed

@endtoend @android
Scenario:JENI305-C63963-Card details (fee, insufficient active balance): an active x-card > Temporary Block

  Given User is logged in with cif "card_center_pblock_fee_active_x_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And System save "dashboard_wealth_widget_total_active_balance" value
  And User go to card center landing page from side menu
  And User swipe up until found "card_center_first_x_card_dashboard"
  And User expect "card_center_x_card_status_dashboard" equal with "card_center_active"
  And User click "card_center_first_x_card_dashboard"

  And User click "card_center_block_card_cta_button"

  And User click "card_center_block_card_cta_pblock"

  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"

  Then "card_center_permanent_block_confirm_cancel_button" will be displayed
  Then "card_center_pblock_insufficient_fee_tblock" will be displayed
  Then "card_center_pblock_insufficient_fee_add_money" will be displayed
  And User click "card_center_pblock_insufficient_fee_tblock"

  Then "card_center_detail" will be displayed
  Then element with "card_center_temporarily_block_card_detail_status" text will be displayed

@uidatabound @android 
Scenario:JENI305-C63970-Card details (fee, insufficient active balance): a temporarily blocked x-card > Add money

  Given User is logged in with cif "card_center_pblock_fee_tblock_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And System save "dashboard_wealth_widget_total_active_balance" value
  And User go to card center landing page from side menu
  And User swipe up until found "card_center_first_x_card_dashboard"
  And User expect "card_center_x_card_status_dashboard" equal with "card_center_temporarily_blocked"
  And User click "card_center_first_x_card_dashboard"

  And User click "card_center_tblocked_card_pblock_icon_cta_button"

  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"

  Then "card_center_permanent_block_confirm_cancel_button" will be displayed
  Then "card_center_pblock_insufficient_fee_add_money" will be displayed
  And User click "card_center_pblock_insufficient_fee_add_money"

  Then "card_center_pblock_insufficient_fee_add_money_page" will be displayed

@uidatabound @android 
Scenario:JENI305-C63971-Card details (fee, insufficient active balance): a temporarily blocked x-card > Cancel

  Given User is logged in with cif "card_center_pblock_fee_tblock_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And System save "dashboard_wealth_widget_total_active_balance" value
  And User go to card center landing page from side menu
  And User swipe up until found "card_center_first_x_card_dashboard"
  And User expect "card_center_x_card_status_dashboard" equal with "card_center_temporarily_blocked"
  And User click "card_center_first_x_card_dashboard"

  And User click "card_center_tblocked_card_pblock_icon_cta_button"

  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"

  Then "card_center_permanent_block_confirm_cancel_button" will be displayed
  Then "card_center_pblock_insufficient_fee_add_money" will be displayed
  And User click "card_center_permanent_block_confirm_cancel_button"
  
  Then "card_center_detail" will be displayed
  Then element with "card_center_temporarily_block_card_detail_status" text will be displayed

@uidatabound @android
Scenario:JENI305-C45995#C63933-Card Center Landing (active, no fee, insufficient active balance): Satay menu - Confirm

  Given User is logged in with cif "card_center_pblock_fee_active_x_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And System save "dashboard_wealth_widget_total_active_balance" value

  And User go to card center landing page from side menu
  Then "card_center_m_card_tb_dashboard" will be displayed
  And User click "card_center_active_x_card_three_dots"

  And User click "card_center_satay_block_card"

  And User click "card_center_block_pop_up_permanent"

  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"

  And User click "card_center_permanent_block_confirm_block_button"
  
  And User expect "card_center_m_card_blocked_status_dashboard" equal with "card_center_permanently_blocked"
  Then "card_center_x_card_activate_dashboard" will be displayed
  And User swipe down until found "dashboard_wealth_widget_total_active_balance"
  Then User expect "dashboard_wealth_widget_total_active_balance" equal with saved data number 1 minus "card_center_pblock_fee"

@uidatabound @android
Scenario:JENI303-C45995#C63933-Card Center Landing (active, no fee, insufficient active balance): Satay menu - Confirm

  Given User is logged in with cif "card_center_pblock_fee_active_x_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And System save "dashboard_wealth_widget_total_active_balance" value

  And User go to card center landing page from side menu
  Then "card_center_m_card_tb_dashboard" will be displayed
  And User click "card_center_active_x_card_three_dots"

  And User click "card_center_x_card_satay_block_card"

  And User click "card_center_x_card_block_pop_up_permanent"

  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"

  And User click "card_center_permanent_block_confirm_block_button"
  
  And User expect "card_center_m_card_blocked_status_dashboard" equal with "card_center_permanently_blocked"
  Then "card_center_x_card_activate_dashboard" will be displayed
  And User swipe down until found "dashboard_wealth_widget_total_active_balance"
  Then User expect "dashboard_wealth_widget_total_active_balance" equal with saved data number 1 minus "card_center_pblock_fee"

@uidatabound @android
Scenario:JENI303-C63952-Permanent Block: check all reason in dropdown list: Stolen, Lost, Damage 

  Given User is logged in with cif "card_center_pblock_fee_tblock_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_active_x_card_three_dots"
  And User click "card_center_active_x_card_three_dots" until "card_center_x_card_satay_block_card" displayed

  And User click "card_center_x_card_satay_block_card"

  And User click "card_center_x_card_block_pop_up_permanent"

  Then "card_center_permanent_block_page" will be displayed

  Then "card_center_reason_dropdown" will be displayed
  And User click "card_center_reason_dropdown"
  Then element with "card_center_block_card_reason_1" text will be displayed
  Then element with "card_center_block_card_reason_2" text will be displayed
  Then element with "card_center_block_card_reason_3" text will be displayed

@uidatabound @android
Scenario:JENI305-C63926-Card Center widget (active, fee, insufficient balance): satay menu - Cancel - x-card

  Given User is logged in with cif "card_center_pblock_fee_active_x_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And System save "dashboard_wealth_widget_total_active_balance" value
  And User swipe up until found "card_center_active_x_card_three_dots"
  And User expect "card_center_x_card_status_dashboard" equal with "card_center_active"
  And User click "card_center_active_x_card_three_dots" until "card_center_x_card_satay_block_card" displayed

  And User click "card_center_x_card_satay_block_card"

  And User click "card_center_x_card_block_pop_up_permanent"

  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"

  Then "card_center_permanent_block_confirm_cancel_button" will be displayed
  Then "card_center_pblock_insufficient_fee_tblock" will be displayed
  Then "card_center_pblock_insufficient_fee_add_money" will be displayed
  And User click "card_center_permanent_block_confirm_cancel_button"
  
  Then "card_center_dashboard_widget" will be displayed
  And User expect "card_center_x_card_status_dashboard" equal with "card_center_active"

@uidatabound @android
Scenario:JENI305-C63924-Card Center widget (active, fee, insufficient balance): satay menu - Add Money

  Given User is logged in with cif "card_center_pblock_fee_active_x_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And System save "dashboard_wealth_widget_total_active_balance" value
  And User swipe up until found "card_center_active_x_card_three_dots"
  And User expect "card_center_x_card_status_dashboard" equal with "card_center_active"
  And User click "card_center_active_x_card_three_dots" until "card_center_x_card_satay_block_card" displayed

  And User click "card_center_x_card_satay_block_card"

  And User click "card_center_x_card_block_pop_up_permanent"

  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"

  Then "card_center_permanent_block_confirm_cancel_button" will be displayed
  Then "card_center_pblock_insufficient_fee_tblock" will be displayed
  Then "card_center_pblock_insufficient_fee_add_money" will be displayed
  And User click "card_center_pblock_insufficient_fee_add_money"

  Then "card_center_pblock_insufficient_fee_add_money_page" will be displayed

@endtoend @android
Scenario:JENI305-C63925-Card Center widget (active, fee, insufficient balance): satay menu - Temporary Block

  Given User is logged in with cif "card_center_pblock_fee_active_x_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And System save "dashboard_wealth_widget_total_active_balance" value
  And User swipe up until found "card_center_active_x_card_three_dots"
  And User expect "card_center_x_card_status_dashboard" equal with "card_center_active"
  And User click "card_center_active_x_card_three_dots" until "card_center_x_card_satay_block_card" displayed

  And User click "card_center_x_card_satay_block_card"

  And User click "card_center_x_card_block_pop_up_permanent"

  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"

  Then "card_center_permanent_block_confirm_cancel_button" will be displayed
  Then "card_center_pblock_insufficient_fee_tblock" will be displayed
  Then "card_center_pblock_insufficient_fee_add_money" will be displayed
  And User click "card_center_pblock_insufficient_fee_tblock"

  Then "card_center_dashboard_widget" will be displayed
  And User expect "card_center_x_card_status_dashboard" equal with "card_center_temporarily_blocked" 

@uidatabound @android
Scenario:JENI305-C63931-Card Center widget (x-card temporary block, fee, insufficient balance): satay menu - Add Money

  Given User is logged in with cif "card_center_pblock_fee_tblock_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And System save "dashboard_wealth_widget_total_active_balance" value
  And User swipe up until found "card_center_active_x_card_three_dots"
  And User expect "card_center_x_card_status_dashboard" equal with "card_center_temporarily_blocked"
  And User click "card_center_active_x_card_three_dots"

  And User click "card_center_x_card_quick_pop_up_permanent"

  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"

  Then "card_center_permanent_block_confirm_cancel_button" will be displayed
  Then "card_center_pblock_insufficient_fee_add_money" will be displayed
  And User click "card_center_pblock_insufficient_fee_add_money"

  Then "card_center_pblock_insufficient_fee_add_money_page" will be displayed

@uidatabound @android
Scenario:JENI305-C63932-Card Center widget (x-card: temporary block, fee, insufficient balance): satay menu - Cancel

  Given User is logged in with cif "card_center_pblock_fee_tblock_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And System save "dashboard_wealth_widget_total_active_balance" value
  And User swipe up until found "card_center_active_x_card_three_dots"
  And User expect "card_center_x_card_status_dashboard" equal with "card_center_temporarily_blocked"
  And User click "card_center_active_x_card_three_dots"

  And User click "card_center_x_card_quick_pop_up_permanent"

  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"

  Then "card_center_permanent_block_confirm_cancel_button" will be displayed
  Then "card_center_pblock_insufficient_fee_add_money" will be displayed
  And User click "card_center_permanent_block_confirm_cancel_button"
  
  Then "card_center_dashboard_widget" will be displayed
  And User expect "card_center_x_card_status_dashboard" equal with "card_center_temporarily_blocked"

@uidatabound @android
Scenario:JENI305-C63947-Card Center landing (Temporary Block, fee, insufficient balance): satay menu - Add Money

  Given User is logged in with cif "card_center_pblock_fee_tblock_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User go to card center landing page from side menu
  And User expect "card_center_x_card_status_dashboard" equal with "card_center_temporarily_blocked"
  And User click "card_center_active_x_card_three_dots"

  And User click "card_center_x_card_quick_pop_up_permanent"

  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"

  Then "card_center_permanent_block_confirm_cancel_button" will be displayed
  Then "card_center_pblock_insufficient_fee_add_money" will be displayed
  And User click "card_center_pblock_insufficient_fee_add_money"

  Then "card_center_pblock_insufficient_fee_add_money_page" will be displayed

@uidatabound @android
Scenario:JENI305-C63948-Card Center landing (Temporary Block x-card, fee, insufficient balance): satay menu - Cancel

  Given User is logged in with cif "card_center_pblock_fee_tblock_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User go to card center landing page from side menu
  And User expect "card_center_x_card_status_dashboard" equal with "card_center_temporarily_blocked"
  And User click "card_center_active_x_card_three_dots"

  And User click "card_center_x_card_quick_pop_up_permanent"

  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"

  Then "card_center_permanent_block_confirm_cancel_button" will be displayed
  Then "card_center_pblock_insufficient_fee_add_money" will be displayed
  And User click "card_center_permanent_block_confirm_cancel_button"
  
  Then "card_center_landing_page" will be displayed

@uidatabound @android
Scenario:JENI305-C63953-Permanent Block: don't choose any reason

  Given User is logged in with cif "card_center_pblock_fee_tblock_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User go to card center landing page from side menu
  And User click "card_center_active_x_card_three_dots"

  @android @ios @uispecific
  Scenario:JENI302-C59708-Temporarily Blocked of x-card with CTA in Card Center Landing
    Given User access card center from left side menu with cif "pay_me_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_temporary_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_x_card_one"
    And User click "card_center_temporary_block_button"
    Then User expect "top_notification_snackbar" equal with "card_center_permanent_block_x_card_detail_status"
    And "card_center_landing_page" will be displayed
    And User expect "card_center_first_x_card_status_dashboard" equal with "card_center_temporarily_blocked"
    And "card_center_first_x_card_tblocked_image" will be displayed
    When User click "card_center_third_x_card_three_dots"
    Then "card_center_top_up_menu_item" will be displayed
    And "card_center_refund_menu_item" will be displayed
    And "card_center_unblock_menu_item" will be displayed
    And "card_center_permanent_block_menu_item" will be displayed

  @android @ios @uispecific
  Scenario:JENI305-C63972-Permanent Block: a temporarily block x-card in Card detail
    And User click "card_center_permanent_block_menu_item"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_first_x_card_status_dashboard" equal with "card_center_permanently_blocked"
    And User expect "top_notification_snackbar" equal with "card_center_permanent_block_x_card_detail_status"
    And "dashboard_account_first_x_card_active_button" will be displayed

  @android @ios @uispecific
  Scenario:JENI305-C63910-Card Center landing (CTA button, no fee): a temporarily blocked x-card > Block Card
    Given User access card center from left side menu with cif "pay_me_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    When User select "card_center_card_dropdown" dropdown with "card_center_x_card_one"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_block_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_first_x_card_status_dashboard" equal with "card_center_permanently_blocked"
    And User expect "top_notification_snackbar" equal with "card_center_permanent_block_x_card_detail_status"
    And "dashboard_account_first_x_card_active_button" will be displayed 

  @android @ios @uispecific
  Scenario:JENI305-C63911-Card Center landing (CTA button, no fee): a temporarily blocked x-card > Cancel
    Given User access card center from left side menu with cif "pay_me_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_temporary_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_x_card_one"
    And User click "card_center_cancel_popup_menu"
    Then User expect "top_notification_snackbar" equal with "card_center_permanent_block_x_card_detail_status"
    And "card_center_landing_page" will be displayed
    And User expect "card_center_first_x_card_status_dashboard" equal with "card_center_temporarily_blocked"
    And "card_center_first_x_card_tblocked_image" will be displayed

  @android @ios @uispecific
  Scenario:JENI305-C63903-Card Center landing (CTA button, no fee): an active x-card > Block Card
    Given User access card center from left side menu with cif "pay_me_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_x_card_one"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_block_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_first_x_card_status_dashboard" equal with "card_center_permanently_blocked"
    And User expect "top_notification_snackbar" equal with "card_center_permanent_block_x_card_detail_status"
    And "dashboard_account_first_x_card_active_button" will be displayed

  @android @ios @uispecific
  Scenario:JENI305-C63975-Card Center landing (CTA button, no fee): an active x-card > Cancel
    Given User access card center from left side menu with cif "pay_me_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_x_card_one"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_cancel_button"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_second_x_card_status_dashboard" equal with "card_center_active"
    And User expect "top_notification_snackbar" equal with "card_center_permanent_block_x_card_detail_status"
    And "dashboard_account_second_x_card_active_button" will be displayed

  @android @ios @uispecific
  Scenario:JENI305-C67693-Check the third x-card: permanent block is free (first time)
    Given User access card center from left side menu with cif "pay_me_cif"
    And User click "card_center_third_x_card_three_dots"
    And User click "card_center_three_dots_block_card_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    Then User expect "card_center_new_card_fee" doesn't exist

  @android @ios @uispecific @continuous
  Scenario:JENI305-C63974-Card Center Widget (active, no fee): Check mailing address
    And User expect "card_center_block_card_confirmation_address" equal with "card_center_permanent_block_confirm_mail_address"

  @android @ios @uispecific
  Scenario:JENI305-C63903-Card Center landing (CTA button, no fee): an active x-card > Block Card
    Given User access card center from left side menu with cif "pay_me_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_x_card_one"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_block_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_first_x_card_status_dashboard" equal with "card_center_permanently_blocked"
    And User expect "top_notification_snackbar" equal with "card_center_permanent_block_x_card_detail_status"
    And "dashboard_account_first_x_card_active_button" will be displayed

  @android @ios @uispecific
  Scenario:JENI305-C63975-Card Center landing (CTA button, no fee): an active x-card > Cancel
    Given User access card center from left side menu with cif "pay_me_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_x_card_one"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_cancel_button"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_second_x_card_status_dashboard" equal with "card_center_active"
    And User expect "top_notification_snackbar" equal with "card_center_permanent_block_x_card_detail_status"
    And "dashboard_account_second_x_card_active_button" will be displayed

  And User click "card_center_x_card_quick_pop_up_permanent"

  And User click "card_center_permanent_block_page_block_button"
  And User expect "card_center_reason_dropdown_hint" equal with "card_center_reason_no_reasong_error"

@uidatabound @android
Scenario:JENI305-C45988-Permanent Block (3 dots): Cancel at the first step   

  Given User is logged in with cif "card_center_pblock_fee_tblock_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User go to card center landing page from side menu
  And User click "card_center_active_x_card_three_dots"
  And User click "card_center_x_card_satay_block_card"
  And User click "card_center_satay_cancel"
  
  Then "card_center_landing_page" will be displayed

  #JENI61
  @android @ios @uispecific
  Scenario:JENI61-C45179-Verify e-card details
    Given User access card center from dashboard widget with cif "pay_me_cif"
    When User click "card_center_e_card_dashboard"
    Then "card_center_e_card_image" will be displayed
    And "card_center_e_card_cust_name" will be displayed
    And "card_center_e_card_cvv_link" will be displayed
    And "card_center_e_card_limit_amount" will be displayed
    And "card_center_landing_page_cta_top_up" will be displayed
    And "card_center_landing_page_cta_block" will be displayed

  @android @ios @uispecific
  Scenario:JENI61-C45183-Verify the "Submit" button in the Password popup (disable when nothing is entered)
    Given User access card center from dashboard widget with cif "pay_me_cif"
    When User click "card_center_e_card_dashboard"
    And User click "card_center_e_card_cvv_link"
    And User click "card_center_password_submit_button"
    Then "card_center_password_field" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI61-C45184-Verify error message when enter incorrect password
    And User fill "card_center_password_field" with "incorrect_password_1"  
    Then User expect "top_notification_snackbar" equal with "****_contacts_check_popup_text_wording_error"

  @android @uispecific @continuous
  Scenario:JENI61-C45184-Verify error message when enter incorrect password
    When User click "authentication_view_password"
    Then User expect "card_center_password_field" equal with "incorrect_password_1"
    When User click "authentication_view_password"
    Then User expect "card_center_password_field" equal with "password_nil"

  @ios @uispecific @continuous
  Scenario:JENI61-C45184-Verify error message when enter incorrect password
    When User click "authentication_view_password"
    Then User expect "card_center_password_field" equal with "incorrect_password_1"
    When User click "authentication_view_password"
    Then User expect "card_center_password_field" equal with "password_masked"

  @android @ios @uispecific @continuous
  Scenario:JENI61-C45180-Verify showing CVV and card number is correct
    And User fill "card_center_password_field" with "password_confirm"
    And User click "card_center_password_submit_button"
    Then "card_center_e_card_cvv" will be displayed
    And User expect "card_center_e_card_number" equal with "card_center_e_card_number"
    And "card_center_e_card_landing_title" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI61-C45181-Verify that the CVV and card number show in 45s
    When User wait 45 seconds
    Then "card_center_e_card_cvv_link" will be displayed
    And User expect "card_center_e_card_number" equal with "card_center_e_card_number_masked"

  @android @ios @uispecific
  Scenario:JENI61-C45185-Verify the case cancel after entering password
    Given User access card center from dashboard widget with cif "pay_me_cif"
    When User click "card_center_e_card_dashboard"
    And User click "card_center_e_card_cvv_link"
    And User click "back_button"
    Then "card_center_e_card_image" will be displayed
    And "card_center_e_card_cust_name" will be displayed
    And "card_center_e_card_cvv_link" will be displayed
    And "card_center_e_card_limit_amount" will be displayed
    And "card_center_landing_page_cta_top_up" will be displayed
    And "card_center_landing_page_cta_block" will be displayed
    And User expect "card_center_e_card_number" equal with "card_center_e_card_number_masked"

  @android @ios @uispecific
  Scenario:JENI153-C40874-Verify the "Submit" button in the Password popup (disable when nothing is entered)
    Given User access card center from dashboard widget with cif "pay_me_cif"
    When User click "card_center_m_card_dashboard"
    And User click "card_center_e_card_cvv_link"
    And User click "card_center_password_submit_button"
    Then "card_center_password_field" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI153-C40875-Verify error message when enter incorrect password
    And User fill "card_center_password_field" with "incorrect_password_1"  
    Then User expect "top_notification_snackbar" equal with "****_contacts_check_popup_text_wording_error"

  @android @uispecific @continuous
  Scenario:JENI153-C40877-Verify show password when typing (mobile)
    When User click "authentication_view_password"
    Then User expect "card_center_password_field" equal with "incorrect_password_1"
    When User click "authentication_view_password"
    Then User expect "card_center_password_field" equal with "password_nil"

  @ios @uispecific @continuous
  Scenario:JENI153-C40877-Verify show password when typing (mobile)
    When User click "authentication_view_password"
    Then User expect "card_center_password_field" equal with "incorrect_password_1"
    When User click "authentication_view_password"
    Then User expect "card_center_password_field" equal with "password_masked"

  @android @ios @uispecific
  Scenario:JENI153-C40876-Verify the case cancel after entering password
    Given User access card center from dashboard widget with cif "pay_me_cif"
    When User click "card_center_e_card_dashboard"
    And User click "card_center_e_card_cvv_link"
    And User click "back_button"
    Then "card_center_m_card_image" will be displayed
    And "card_center_m_card_cust_name" will be displayed
    And "card_center_m_card_cvv_link" will be displayed
    And "card_center_m_card_limit_amount" will be displayed
    And "card_center_landing_page_cta_top_up" will be displayed
    And "card_center_landing_page_cta_block" will be displayed
    And User expect "card_center_m_card_number" equal with "card_center_m_card_number_masked"

  @android @ios @uispecific
  Scenario:JENI1669-C48111-Card details: an active e-card > Cancel
    Given User access card center from left side menu with cif "pay_me_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_temporary_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_x_card_one"
    When User click "back_button"
    Then "card_center_landing_page" will be displayed  
    And User expect "card_center_second_e_card_status_dashboard" equal with "card_center_active"

  @android @ios @uispecific
  Scenario:JENI1597-C48091-Card Center landing (CTA button, with fee): an active m-card > Block Card
    Given User access card center from left side menu with cif "pay_me_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_m_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_block_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_second_m_card_status_dashboard" equal with "card_center_permanently_blocked"
    And User expect "top_notification_snackbar" equal with "card_center_permanent_block_m_card_detail_status"
    And "dashboard_account_m_card_active_button" will be displayed

  @android @ios @uispecific
  Scenario:JENI1597-C48092-Card Center landing (CTA button, with fee): an active m-card > Cancel
    Given User access card center from left side menu with cif "pay_me_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_m_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_cancel_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_m_card_status_dashboard" equal with "card_center_active"

  @android @ios @uispecific
  Scenario:JENI1597-C48094-Card Center landing (CTA button, with fee, insufficient balance): an active m-card > Temporary Block
    Given User access card center from left side menu with cif "pay_me_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_m_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_temporary_block_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_m_card_status_dashboard" equal with "card_center_temporarily_blocked"

  @android @ios @uispecific
  Scenario:JENI1597-C48095-Card Center landing (CTA button, with fee, insufficient balance): an active m-card > Cancel
    Given User access card center from left side menu with cif "pay_me_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_m_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_cancel_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_m_card_status_dashboard" equal with "card_center_active"

  @android @ios @uispecific
  Scenario:JENI1597-C48098-Card Center landing (CTA button, with fee): a temporarily blocked m-card > Block Card
    Given User access card center from left side menu with cif "pay_me_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_m_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_block_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_second_m_card_status_dashboard" equal with "card_center_permanently_blocked"
    And User expect "top_notification_snackbar" equal with "card_center_permanent_block_m_card_detail_status"
    And "dashboard_account_m_card_active_button" will be displayed

  @android @ios @uispecific
  Scenario:JENI1597-C48099-Card Center landing (CTA button, with fee): a temporarily blocked m-card > Cancel
    Given User access card center from left side menu with cif "pay_me_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_m_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_cancel_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_m_card_status_dashboard" equal with "card_center_active"

  @android @ios @uispecific
  Scenario:JENI1597-C48101-Card Center landing (CTA button, with fee, insufficient balance): a temporarily blocked m-card > Cancel
    Given User access card center from left side menu with cif "pay_me_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_m_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_cancel_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_m_card_status_dashboard" equal with "card_center_temporarily_blocked"

  @android @ios @uispecific
  Scenario:JENI1597-C48094-Card Center landing (CTA button, with fee, insufficient balance): an active m-card > Temporary Block
    Given User access card center from left side menu with cif "pay_me_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_m_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_add_money_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_m_card_status_dashboard" equal with "card_center_temporarily_blocked"

  @android @ios @uispecific
  Scenario:JENI1969-C67442-Check x-card balance in Card Center landing (x-card is active)
    Given User access card center from left side menu with cif "pay_me_cif"
    Then "card_center_first_x_card_dashboard_currency" will be displayed

  @android @ios @uispecific
  Scenario:JENI1969-C67441-Check x-card balance in Card Center landing (x-card is temporarily blocked)
    Given User access card center from left side menu with cif "pay_me_cif"
    Then "card_center_first_x_card_dashboard_currency" will be displayed

  @android @ios @uispecific
  Scenario:JENI1969-C67463-Check x-card balance in Card details (x-card is active)
    Given User access card center from left side menu with cif "pay_me_cif"
    When User click "card_center_first_x_card_dashboard_currency"
    Then "card_center_first_x_card_detail_currency" will be displayed

  @android @ios @uispecific
  Scenario:JENI1969-C67460-Check x-card balance in Card details (x-card is temporarily blocked)
    Given User access card center from left side menu with cif "pay_me_cif"
    When User click "card_center_first_x_card_dashboard_currency"
    Then "card_center_first_x_card_detail_currency" will be displayed

  @android @ios @uispecific
  Scenario:JENI1969-C67418-Check x-card balance in Card Center widget (x-card is temporarily blocked)
    Given User access card center from dashboard widget with cif "pay_me_cif"
    Then "card_center_first_x_card_detail_currency" will be displayed

  @android @ios @uispecific
  Scenario:JENI1969-C67405-Check x-card balance in Card Center widget (x-card is active)
    Given User access card center from dashboard widget with cif "pay_me_cif"
    Then "card_center_first_x_card_detail_currency" will be displayed

  @android @ios @uispecific
  Scenario:JENI1969-C67447-Check x-card balance in Card Center widget (x-card is permanently blocked)
    Given User access card center from dashboard widget with cif "pay_me_cif"
    Then User expect "card_center_first_x_card_detail_currency" doesn't exist

  @android @ios @uispecific
  Scenario:JENI1969-C67444-Check x-card balance in Card Center landing (x-card is permanently blocked)
    Given User access card center from left side menu with cif "pay_me_cif"
    Then User expect "card_center_first_x_card_detail_currency" doesn't exist

  @android @ios @uispecific
  Scenario:JENI1969-C67464-Check x-card balance in Card details (x-card is permanently blocked)
    Given User access card center from left side menu with cif "pay_me_cif"
    Then "card_center_first_x_card_detail_currency" will be displayed

  @android @ios @uidatabound
  Scenario:JENI1981-C63611-Card Center landing (CTA button, no fee): an active m-card > Cancel
    Given User access card center from dashboard widget with cif "card_center_active_m_card_zero_balance_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_m_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_cancel_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_m_card_status_dashboard" equal with "card_center_active"

  @android @ios @uidatabound
  Scenario:JENI1981-C63609-Card Center landing (CTA button, no fee): an active m-card > Block Card
    Given User access card center from dashboard widget with cif "card_center_active_m_card_zero_balance_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_m_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_block_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_second_m_card_status_dashboard" equal with "card_center_permanently_blocked"
    And User expect "top_notification_snackbar" equal with "card_center_permanent_block_m_card_detail_status"
    And "dashboard_account_m_card_active_button" will be displayed

  @android @ios @uidatabound
  Scenario:JENI1981-C63613-Card Center landing (CTA button, with fee): an active m-card > Cancel
    Given User access card center from dashboard widget with cif "card_center_active_m_card_zero_balance_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_m_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_cancel_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_second_m_card_status_dashboard" equal with "card_center_active"

  @android @ios @uidatabound
  Scenario:JENI1981-C63612-Card Center landing (CTA button, with fee): an active m-card > Block Card
    Given User access card center from dashboard widget with cif "card_center_active_m_card_zero_balance_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_m_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_block_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_second_m_card_status_dashboard" equal with "card_center_permanently_blocked"
    And User expect "top_notification_snackbar" equal with "card_center_permanent_block_m_card_detail_status"
    And "dashboard_account_m_card_active_button" will be displayed

  @android @ios @uidatabound
  Scenario:JENI305-C63906-Card Center landing (CTA button, with fee): an active x-card > Cancel
    Given User access card center from dashboard widget with cif "card_center_active_m_card_zero_balance_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_x_card_one"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_cancel_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_second_x_card_status_dashboard" equal with "card_center_active"

  @android @ios @uidatabound
  Scenario:JENI305-C63905-Card Center landing (CTA button, with fee): an active x-card > Block Card
    Given User access card center from dashboard widget with cif "card_center_active_m_card_zero_balance_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_x_card_one"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_block_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_second_x_card_status_dashboard" equal with "card_center_permanently_blocked"
    And User expect "top_notification_snackbar" equal with "card_center_permanent_block_x_card_detail_status"
    And "dashboard_account_first_x_card_active_button" will be displayed

  @android @ios @uidatabound
  Scenario:JENI1981-C63616-Card Center landing (CTA button, with fee, insufficient balance): an active m-card > Cancel
    Given User access card center from dashboard widget with cif "card_center_active_m_card_zero_balance_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_m_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_cancel_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_second_m_card_status_dashboard" equal with "card_center_active"

  @android @ios @uidatabound
  Scenario:JENI1981-C63614-Card Center landing (CTA button, with fee, insufficient balance): an active m-card > Add money
    Given User access card center from dashboard widget with cif "card_center_active_m_card_zero_balance_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_m_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_add_money_card"
    Then "dashboard_wealth_widget_top_up_tutorial_page_title" will be displayed
    When User click "back_button"
    And User expect "card_center_second_m_card_status_dashboard" equal with "card_center_active"

  @android @ios @uidatabound
  Scenario:JENI1597-C48093-Card Center landing (CTA button, with fee, insufficient balance): an active m-card > Add money
    And User expect "card_center_second_m_card_status_dashboard" equal with "card_center_active"

  @android @ios @uidatabound
  Scenario:JENI305-C63907-Card Center landing (CTA button, with fee, insufficient balance): an active x-card > Add money
    Given User access card center from dashboard widget with cif "card_center_active_m_card_zero_balance_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_x_card_one"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_add_money_card"
    Then "dashboard_wealth_widget_top_up_tutorial_page_title" will be displayed
    When User click "back_button"
    And User expect "card_center_second_x_card_status_dashboard" equal with "card_center_active"

  @android @ios @uidatabound
  Scenario:JENI305-C63909-Card Center landing (CTA button, with fee, insufficient balance): an active x-card > Cancel
    Given User access card center from dashboard widget with cif "card_center_active_m_card_zero_balance_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_x_card_one"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_add_money_card"
    Then "dashboard_wealth_widget_top_up_tutorial_page_title" will be displayed
    When User click "back_button"
    And User expect "card_center_first_x_card_status_dashboard" equal with "card_center_active"

  @android @ios @uidatabound
  Scenario:JENI305-C63908-Card Center landing (CTA button, with fee, insufficient balance): an active x-card > Temporary Block
    Given User access card center from dashboard widget with cif "card_center_active_m_card_zero_balance_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_x_card_one"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_temporary_block_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_first_x_card_status_dashboard" equal with "card_center_temporarily_blocked"
    And User expect "top_notification_snackbar" equal with "card_center_permanent_block_x_card_detail_status"

  @android @ios @uidatabound
  Scenario:JENI1981-C63615-Card Center landing (CTA button, with fee, insufficient balance): an active m-card > Temporary Block
    Given User access card center from dashboard widget with cif "card_center_active_m_card_zero_balance_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_m_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_temporary_block_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_second_m_card_status_dashboard" equal with "card_center_temporarily_blocked"
    And User expect "top_notification_snackbar" equal with "card_center_permanent_block_m_card_detail_status"

  @android @ios @uidatabound
  Scenario:JENI1981-C63622-Card Center landing (CTA button, with fee, insufficient balance): a temporarily blocked m-card > Cancel
    Given User access card center from dashboard widget with cif "card_center_active_m_card_zero_balance_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_m_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_cancel_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_second_m_card_status_dashboard" equal with "card_center_temporarily_blocked"
    And User expect "top_notification_snackbar" equal with "card_center_permanent_block_m_card_detail_status"
    And "dashboard_account_m_card_active_button" will be displayed

  @android @ios @uidatabound
  Scenario:JENI1981-C63622-Card Center landing (CTA button, with fee, insufficient balance): a temporarily blocked m-card > Cancel
    Given User access card center from dashboard widget with cif "card_center_active_m_card_zero_balance_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_m_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_add_money_card"
    Then "dashboard_wealth_widget_top_up_tutorial_page_title" will be displayed
    When User click "back_button"
    And User expect "card_center_second_m_card_status_dashboard" equal with "card_center_temporarily_blocked"

  @android @ios @uidatabound
  Scenario:JENI1597-C48100-Card Center landing (CTA button, with fee, insufficient balance): a temporarily blocked m-card > Add money
    And User expect "card_center_second_m_card_status_dashboard" equal with "card_center_temporarily_blocked"

  @android @ios @uidatabound
  Scenario:JENI1981-C63618-Card Center landing (CTA button, no fee): a temporarily blocked m-card > Cancel
    Given User access card center from dashboard widget with cif "card_center_active_m_card_zero_balance_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_m_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_cancel_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_second_m_card_status_dashboard" equal with "card_center_temporarily_blocked"

  @android @ios @uidatabound
  Scenario:JENI1981-C63617-Card Center landing (CTA button, no fee): a temporarily blocked m-card > Block Card
    Given User access card center from dashboard widget with cif "card_center_active_m_card_zero_balance_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_m_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_block_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_second_m_card_status_dashboard" equal with "card_center_permanently_blocked"
    And User expect "top_notification_snackbar" equal with "card_center_permanent_block_m_card_detail_status"
    And "dashboard_account_m_card_active_button" will be displayed

  @android @ios @uidatabound
  Scenario:JENI1981-C63608-Permanent Block (CTA button): a temporarily block m-card in Card Center landing
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_second_m_card_status_dashboard" equal with "card_center_permanently_blocked"
    And "dashboard_account_m_card_active_button" will be displayed

  @android @ios @uidatabound
  Scenario:JENI305-C63916-Permanent Block (CTA button): a temporarily block x-card in Card Center landing
    Given User access card center from dashboard widget with cif "card_center_active_m_card_zero_balance_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_x_card_one"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_block_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_first_x_card_status_dashboard" equal with "card_center_permanently_blocked"
    And User expect "top_notification_snackbar" equal with "card_center_permanent_block_x_card_detail_status"
    And "dashboard_account_first_x_card_active_button" will be displayed

  @android @ios @uidatabound
  Scenario:JENI1981-C63620-Card Center landing (CTA button, with fee): a temporarily blocked m-card > Cancel
    Given User access card center from dashboard widget with cif "card_center_active_m_card_zero_balance_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_m_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_cancel_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_second_m_card_status_dashboard" equal with "card_center_active"

  @android @ios @uidatabound
  Scenario:JENI1981-C63619-Card Center landing (CTA button, with fee): a temporarily blocked m-card > Block Card
    Given User access card center from dashboard widget with cif "card_center_active_m_card_zero_balance_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_m_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_block_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_second_m_card_status_dashboard" equal with "card_center_permanently_blocked"
    And User expect "top_notification_snackbar" equal with "card_center_permanent_block_m_card_detail_status"
    And "dashboard_account_m_card_active_button" will be displayed

  @android @ios @uidatabound
  Scenario:JENI305-C63913-Card Center landing (CTA button, with fee): a temporarily blocked x-card > Cancel
    Given User access card center from dashboard widget with cif "card_center_active_m_card_zero_balance_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_x_card_one"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_cancel_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_first_x_card_status_dashboard" equal with "card_center_active"

  @android @ios @uidatabound
  Scenario:JENI305-C63914-Card Center landing (CTA button, with fee, insufficient balance): a temporarily blocked x-card > Add money
    Given User access card center from dashboard widget with cif "card_center_active_m_card_zero_balance_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_x_card_one"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_add_money_card"
    Then "dashboard_wealth_widget_top_up_tutorial_page_title" will be displayed
    When User click "back_button"
    And User expect "card_center_first_x_card_status_dashboard" equal with "card_center_active"

  @android @ios @uidatabound
  Scenario:JENI305-C63915-Card Center landing (CTA button, with fee, insufficient balance): a temporarily blocked x-card > Cancel
    Given User access card center from dashboard widget with cif "card_center_active_m_card_zero_balance_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_x_card_one"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_cancel_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_first_x_card_status_dashboard" equal with "card_center_active"

  @android @ios @uidatabound
  Scenario:JENI1981-C63609-Card Center landing (CTA button, no fee): an active m-card > Block Card
    Given User access card center from dashboard widget with cif "card_center_active_m_card_zero_balance_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_x_card_one"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_block_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_first_x_card_status_dashboard" equal with "card_center_permanently_blocked"
    And User expect "top_notification_snackbar" equal with "card_center_permanent_block_x_card_detail_status"
    And "dashboard_account_first_x_card_active_button" will be displayed

  @android @ios @uidatabound
  Scenario:JENI1597-C63623-Card Center Widget (active, no fee): Check mailing address
    Given User access card center from dashboard widget with cif "card_center_active_m_card_zero_balance_cif"
    And User click "card_center_active_m_card_three_dots"
    And User click "card_center_satay_block_card"
    And User click "card_center_satay_permanent_block_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    Then "card_center_permanent_block_confirm_mail_address" will be displayed

  @android @ios @uidatabound
  Scenario:JENI305-C63934-Card Center Widget (active, no fee): Check mailing address
    Then "card_center_permanent_block_confirm_mail_address" will be displayed

  @android @ios @uidatabound
  Scenario:JENI305-C63919-Card Center Widget (active, no fee): Check mailing address - x-card
    Given User access card center from dashboard widget with cif "card_center_active_m_card_zero_balance_cif"
    And User click "card_center_active_x_card_three_dots"
    And User click "card_center_satay_block_card"
    And User click "card_center_satay_permanent_block_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    Then "card_center_permanent_block_confirm_mail_address" will be displayed

  @android @ios @uidatabound
  Scenario:JENI1597-C63607-Permanent Block (3 dots): a temporarily block m-card in Card Center landing
    Given User access card center from dashboard widget with cif "card_center_active_m_card_zero_balance_cif"
    And User click "card_center_active_m_card_three_dots"
    And User click "card_center_satay_block_card"
    And User click "card_center_satay_permanent_block_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_block_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_second_m_card_status_dashboard" equal with "card_center_permanently_blocked"
    And User expect "top_notification_snackbar" equal with "card_center_permanent_block_m_card_detail_status"
    And "dashboard_account_m_card_active_button" will be displayed

  @android @ios @uidatabound
  Scenario:JENI1981-C63613-Card Center landing (CTA button, with fee): an active m-card > Cancel
    Given User access card center from dashboard widget with cif "card_center_active_m_card_zero_balance_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_m_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_cancel_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_first_x_card_status_dashboard" equal with "card_center_active"

  @android @ios @uidatabound
  Scenario:JENI305-C63918-Permanent Block (3 dots): a temporarily block x-card in Card Center landing
    Given User access card center from dashboard widget with cif "card_center_active_m_card_zero_balance_cif"
    And User click "card_center_first_x_card_three_dots"
    And User click "card_center_satay_block_card"
    And User click "card_center_satay_permanent_block_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_block_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_first_x_card_status_dashboard" equal with "card_center_permanently_blocked"
    And User expect "top_notification_snackbar" equal with "card_center_permanent_block_x_card_detail_status"
    And "dashboard_account_first_x_card_active_button" will be displayed

  @android @ios @uidatabound
  Scenario:JENI305-C63920-Card Center Widget (active, no fee): Satay menu - Confirm
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_first_x_card_status_dashboard" equal with "card_center_permanently_blocked"
    And "dashboard_account_first_x_card_active_button" will be displayed

  @android @uidatabound
  Scenario:JENI1981-C63610-Permanent Block (CTA): change the selected card but Cancel the selecting
    Given User access card center from dashboard widget with cif "card_center_active_m_card_zero_balance_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_m_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User press back button on device
    And User click "card_center_permanent_block_button"
    And User click "card_center_block_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_second_m_card_status_dashboard" equal with "card_center_permanently_blocked"
    And User expect "top_notification_snackbar" equal with "card_center_permanent_block_m_card_detail_status"
    And "dashboard_account_m_card_active_button" will be displayed

  @android @uidatabound
  Scenario:JENI305-C63917-Permanent Block (CTA): change the selected card but Cancel the selecting
    Given User access card center from dashboard widget with cif "card_center_active_m_card_zero_balance_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_x_card_one"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User press back button on device
    And User click "card_center_permanent_block_button"
    And User click "card_center_block_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_first_x_card_status_dashboard" equal with "card_center_permanently_blocked"
    And User expect "top_notification_snackbar" equal with "card_center_permanent_block_x_card_detail_status"
    And "dashboard_account_first_x_card_active_button" will be displayed
  
  @android @ios @uidatabound
  Scenario:JENI305-C63923-Card Center widget (active, fee): satay menu - Cancel
    Given User is logged in with cif "card_center_active_m_card_zero_balance_cif"
    And User change language to "language"
    And System save "dashboard_wealth_widget_total_active_balance" value
    And User swipe up until found "card_center_widget"
    And User click "card_center_widget" until "card_center_close_tutorial" displayed
    And User check and click "card_center_close_tutorial" if exist
    And User click "card_center_first_x_card_three_dots"
    And User click "card_center_satay_block_card"
    And User click "card_center_satay_permanent_block_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_cancel_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_first_x_card_status_dashboard" equal with "card_center_active"
    And User click "dashboard_hamburger_icon"
    And User click "dashboard_menu"
    Then User expect "dashboard_wealth_widget_total_active_balance" equal with saved data number 1 minus "pay_me_zero_note_number"

  @android @ios @uidatabound
  Scenario:JENI305-C63939-Card Center landing (active, fee): satay menu - Cancel
    Given User is logged in with cif "card_center_active_m_card_zero_balance_cif"
    And User change language to "language"
    And System save "dashboard_wealth_widget_total_active_balance" value
    And User swipe up until found "card_center_widget"
    And User click "card_center_widget" until "card_center_close_tutorial" displayed
    And User check and click "card_center_close_tutorial" if exist
    And User click "card_center_first_x_card_three_dots"
    And User click "card_center_satay_block_card"
    And User click "card_center_satay_permanent_block_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_cancel_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_first_x_card_status_dashboard" equal with "card_center_active"

  @android @ios @uidatabound
  Scenario:JENI305-C63938-Card Center landing (active, fee): satay menu - Confirm
    Given User is logged in with cif "card_center_active_m_card_zero_balance_cif"
    And User change language to "language"
    And System save "dashboard_wealth_widget_total_active_balance" value
    And User swipe up until found "card_center_widget"
    And User click "card_center_widget" until "card_center_close_tutorial" displayed
    And User check and click "card_center_close_tutorial" if exist
    And User click "card_center_first_x_card_three_dots"
    And User click "card_center_satay_block_card"
    And User click "card_center_satay_permanent_block_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_block_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_second_x_card_status_dashboard" equal with "card_center_permanently_blocked"
    And "dashboard_account_first_x_card_active_button" will be displayed

  @android @ios @uidatabound @continuous
  Scenario:JENI305-C63922-Card Center widget (active, fee): satay menu - Confirm
    And User click "dashboard_hamburger_icon"
    And User click "dashboard_menu"
    Then User expect "dashboard_wealth_widget_total_active_balance" equal with saved data number 1 minus "card_center_pblock_fee"

  @android @ios @uidatabound @continuous
  Scenario:JENI305-C63938-Card Center landing (active, fee): satay menu - Confirm
    Then User expect "dashboard_wealth_widget_total_active_balance" equal with saved data number 1 minus "card_center_pblock_fee"

  @android @ios @uidatabound
  Scenario:JENI305-C63944-Card Center Landing (Temporary Block, no fee): Satay menu - Cancel
    Given User is logged in with cif "card_center_active_m_card_zero_balance_cif"
    And User change language to "language"
    And System save "dashboard_wealth_widget_total_active_balance" value
    And User swipe up until found "card_center_widget"
    And User click "card_center_widget" until "card_center_close_tutorial" displayed
    And User check and click "card_center_close_tutorial" if exist
    And User click "card_center_first_x_card_three_dots"
    And User click "card_center_satay_cancel_block_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_first_x_card_status_dashboard" equal with "card_center_temporarily_blocked" 

  @android @ios @uidatabound
  Scenario:JENI305-C63928-Card Center Widget (x-card: Temporary Block, no fee): Satay menu - Cancel
    Given User is logged in with cif "card_center_active_m_card_zero_balance_cif"
    And User change language to "language"
    And System save "dashboard_wealth_widget_total_active_balance" value
    And User swipe up until found "card_center_widget"
    And User click "card_center_widget" until "card_center_close_tutorial" displayed
    And User check and click "card_center_close_tutorial" if exist
    And User click "card_center_first_x_card_three_dots"
    And User click "card_center_satay_block_card"
    And User click "card_center_satay_permanent_block_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_cancel_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_first_x_card_status_dashboard" equal with "card_center_temporarily_blocked"
    And User click "dashboard_hamburger_icon"
    And User click "dashboard_menu"
    Then User expect "dashboard_wealth_widget_total_active_balance" equal with saved data number 1 minus "pay_me_zero_note_number"

  @android @ios @uidatabound
  Scenario:JENI305-C63927-Card Center Widget (x-card: Temporarily Block, no fee): Satay menu - Confirm
    Given User is logged in with cif "card_center_active_m_card_zero_balance_cif"
    And User change language to "language"
    And System save "dashboard_wealth_widget_total_active_balance" value
    And User swipe up until found "card_center_widget"
    And User click "card_center_widget" until "card_center_close_tutorial" displayed
    And User check and click "card_center_close_tutorial" if exist
    And User click "card_center_first_x_card_three_dots"
    And User click "card_center_satay_block_card"
    And User click "card_center_satay_permanent_block_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_block_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_first_x_card_status_dashboard" equal with "card_center_temporarily_blocked"
    And "dashboard_account_first_x_card_active_button" will be displayed

  @android @ios @uidatabound
  Scenario:JENI305-C63949-Permanent Block: a temporarily block x-card in Card Center widget: Cancel at Permanent Block screen
    Given User is logged in with cif "card_center_active_m_card_zero_balance_cif"
    And User change language to "language"
    And User swipe up until found "card_center_widget"
    And User click "card_center_widget" until "card_center_close_tutorial" displayed
    And User check and click "card_center_close_tutorial" if exist
    And User click "card_center_first_x_card_three_dots"
    And User click "card_center_satay_block_card"
    And User click "card_center_satay_permanent_block_card"
    And User click "back_button"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_first_x_card_status_dashboard" equal with "card_center_temporarily_blocked"

  @android @ios @uidatabound
  Scenario:JENI305-C63943-Card Center Landing (Temporary Block, no fee): Satay menu - Confirm
    Given User is logged in with cif "card_center_active_m_card_zero_balance_cif"
    And User change language to "language"
    And User swipe up until found "card_center_widget"
    And User click "card_center_widget" until "card_center_close_tutorial" displayed
    And User check and click "card_center_close_tutorial" if exist
    And User click "card_center_first_x_card_three_dots"
    And User click "card_center_satay_block_card"
    And User click "card_center_satay_permanent_block_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_block_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_first_x_card_status_dashboard" equal with "card_center_permanently_blocked"
    And "dashboard_account_first_x_card_active_button" will be displayed

  @android @ios @uidatabound
  Scenario:JENI305-C63950-Permanent Block: a temporarily block x-card in Card Center widget
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_first_x_card_status_dashboard" equal with "card_center_temporarily_blocked"
    And "dashboard_account_first_x_card_active_button" will be displayed

  @android @ios @uidatabound
  Scenario:JENI305-C63929-Card Center widget (x-card: Temporary Block, fee): satay menu - Confirm
    Given User is logged in with cif "card_center_active_m_card_zero_balance_cif"
    And User change language to "language"
    And System save "dashboard_wealth_widget_total_active_balance" value
    And User swipe up until found "card_center_widget"
    And User click "card_center_widget" until "card_center_close_tutorial" displayed
    And User check and click "card_center_close_tutorial" if exist
    And User click "card_center_first_x_card_three_dots"
    And User click "card_center_satay_block_card"
    And User click "card_center_satay_permanent_block_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_block_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_second_x_card_status_dashboard" equal with "card_center_permanently_blocked"
    And "dashboard_account_first_x_card_active_button" will be displayed
    And User click "dashboard_hamburger_icon"
    And User click "dashboard_menu"
    Then User expect "dashboard_wealth_widget_total_active_balance" equal with saved data number 1 minus "card_center_pblock_fee"

  @android @ios @uidatabound @continuous
  Scenario:JENI305-C63929-Card Center widget (x-card: Temporary Block, fee): satay menu - Confirm
    Then User expect "dashboard_wealth_widget_total_active_balance" equal with saved data number 1 minus "card_center_pblock_fee"

  @android @ios @uidatabound
  Scenario:JENI305-C63930-Card Center widget (x-card: Temporary Block, fee): satay menu - Cancel
    Given User is logged in with cif "card_center_active_m_card_zero_balance_cif"
    And User change language to "language"
    And System save "dashboard_wealth_widget_total_active_balance" value
    And User swipe up until found "card_center_widget"
    And User click "card_center_widget" until "card_center_close_tutorial" displayed
    And User check and click "card_center_close_tutorial" if exist
    And User click "card_center_first_x_card_three_dots"
    And User click "card_center_satay_block_card"
    And User click "card_center_satay_permanent_block_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_cancel_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_first_x_card_status_dashboard" equal with "card_center_active"
    And User click "dashboard_hamburger_icon"
    And User click "dashboard_menu"
    Then User expect "dashboard_wealth_widget_total_active_balance" equal with saved data number 1 minus "pay_me_zero_note_number"

  @android @ios @uidatabound @continuous
  Scenario:JENI305-C63946-Card Center landing (Temporary Block, fee): satay menu - Cancel
    Then User expect "dashboard_wealth_widget_total_active_balance" equal with saved data number 1 minus "pay_me_zero_note_number"

  @android @ios @uidatabound
  Scenario:JENI305-C63937-Card Center Landing (active, no fee): Satay menu - Cancel
    Given User is logged in with cif "card_center_active_m_card_zero_balance_cif"
    And User change language to "language"
    And System save "dashboard_wealth_widget_total_active_balance" value
    And User swipe up until found "card_center_widget"
    And User click "card_center_widget" until "card_center_close_tutorial" displayed
    And User check and click "card_center_close_tutorial" if exist
    And User click "card_center_first_x_card_three_dots"
    And User click "card_center_satay_block_card"
    And User click "card_center_satay_permanent_block_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_cancel_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_first_x_card_status_dashboard" equal with "card_center_active"
    And User click "dashboard_hamburger_icon"
    And User click "dashboard_menu"
    Then User expect "dashboard_wealth_widget_total_active_balance" equal with saved data number 1 minus "pay_me_zero_note_number"

  @android @ios @uidatabound
  Scenario:JENI305-C63937-Card Center Landing (active, fee): Satay menu - Cancel
    Given User is logged in with cif "card_center_active_m_card_zero_balance_cif"
    And User change language to "language"
    And System save "dashboard_wealth_widget_total_active_balance" value
    And User swipe up until found "card_center_widget"
    And User click "card_center_widget" until "card_center_close_tutorial" displayed
    And User check and click "card_center_close_tutorial" if exist
    And User click "card_center_first_x_card_three_dots"
    And User click "card_center_satay_block_card"
    And User click "card_center_satay_permanent_block_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_block_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_second_x_card_status_dashboard" equal with "card_center_permanently_blocked"
    And "dashboard_account_first_x_card_active_button" will be displayed
    And User click "dashboard_hamburger_icon"
    And User click "dashboard_menu"
    Then User expect "dashboard_wealth_widget_total_active_balance" equal with saved data number 1 minus "card_center_pblock_fee"

  @android @ios @uidatabound
  Scenario:JENI305-C63940-Card Center landing (active, fee, insufficient balance): satay menu - Add Money
    Given User access card center from dashboard widget with cif "card_center_active_m_card_zero_balance_cif"
    And User click "card_center_first_x_card_three_dots"
    And User click "card_center_satay_block_card"
    And User click "card_center_satay_permanent_block_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_add_money_card"
    Then "dashboard_wealth_widget_top_up_tutorial_page_title" will be displayed

  @android @ios @uidatabound
  Scenario:JENI305-C63942-Card Center landing (active, fee, insufficient balance): satay menu - Cancel
    Given User access card center from dashboard widget with cif "card_center_active_m_card_zero_balance_cif"
    And User click "card_center_first_x_card_three_dots"
    And User click "card_center_satay_block_card"
    And User click "card_center_satay_permanent_block_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_cancel_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_second_m_card_status_dashboard" equal with "card_center_active"



  @android @ios @uidatabound
  Scenario:JENI1981-C63615-Card Center landing (CTA button, with fee, insufficient balance): an active m-card > Temporary Block
    Given User access card center from dashboard widget with cif "card_center_active_m_card_zero_balance_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_m_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_temporary_block_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_first_x_card_status_dashboard" equal with "card_center_temporarily_blocked"
    And User expect "top_notification_snackbar" equal with "card_center_permanent_block_x_card_detail_status"

  @android @ios @uidatabound
  Scenario:JENI1981-C63622-Card Center landing (CTA button, with fee, insufficient balance): a temporarily blocked m-card > Cancel
    Given User access card center from dashboard widget with cif "card_center_active_m_card_zero_balance_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_x_card_one"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_cancel_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_second_m_card_status_dashboard" equal with "card_center_active"

  @android @ios @uidatabound
  Scenario:JENI1981-C63622-Card Center landing (CTA button, with fee, insufficient balance): a temporarily blocked m-card > Cancel
    Given User access card center from dashboard widget with cif "card_center_active_m_card_zero_balance_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_x_card_one"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_block_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_first_x_card_status_dashboard" equal with "card_center_permanently_blocked"
    And User expect "top_notification_snackbar" equal with "card_center_permanent_block_x_card_detail_status"
    And "dashboard_account_first_x_card_active_button" will be displayed

  @android @ios @uidatabound
  Scenario:JENI305-C63962-Card details (fee): an active x-card > Cancel
    Given User access card center from dashboard widget with cif "card_center_active_m_card_zero_balance_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_x_card_one"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_cancel_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_second_m_card_status_dashboard" equal with "card_center_active"

  @android @ios @uidatabound
  Scenario:JENI305-C63961-Card details (fee): an active x-card > Block Card
    Given User is logged in with cif "card_center_active_m_card_zero_balance_cif"
    And User change language to "language"
    And System save "dashboard_wealth_widget_total_active_balance" value
    And User swipe up until found "card_center_widget"
    And User click "card_center_widget" until "card_center_close_tutorial" displayed
    And User check and click "card_center_close_tutorial" if exist
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_x_card_one"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_block_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_first_x_card_status_dashboard" equal with "card_center_permanently_blocked"
    And User expect "top_notification_snackbar" equal with "card_center_permanent_block_x_card_detail_status"
    And "dashboard_account_first_x_card_active_button" will be displayed
    And User click "dashboard_hamburger_icon"
    And User click "dashboard_menu"
    Then User expect "dashboard_wealth_widget_total_active_balance" equal with saved data number 1 minus "card_center_pblock_fee"

  @android @ios @uidatabound
  Scenario:JENI305-C63967-Card details (free): a temporarily blocked x-card > Cancel
    Given User access card center from dashboard widget with cif "card_center_active_m_card_zero_balance_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_x_card_one"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_cancel_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_second_m_card_status_dashboard" equal with "card_center_active"

  @android @ios @uidatabound
  Scenario:JENI305-C63966-Card details (free): a temporarily blocked x-card > Block Card
    Given User is logged in with cif "card_center_active_m_card_zero_balance_cif"
    And User change language to "language"
    And System save "dashboard_wealth_widget_total_active_balance" value
    And User swipe up until found "card_center_widget"
    And User click "card_center_widget" until "card_center_close_tutorial" displayed
    And User check and click "card_center_close_tutorial" if exist
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_x_card_one"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_block_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_first_x_card_status_dashboard" equal with "card_center_permanently_blocked"
    And User expect "top_notification_snackbar" equal with "card_center_permanent_block_x_card_detail_status"
    And "dashboard_account_first_x_card_active_button" will be displayed
    And User click "dashboard_hamburger_icon"
    And User click "dashboard_menu"
    Then User expect "dashboard_wealth_widget_total_active_balance" equal with saved data number 1 minus "pay_me_zero_note_number"

  @android @ios @uidatabound
  Scenario:JENI305-C63969-Card details (fee): a temporarily blocked x-card > Cancel at the last step
    Given User access card center from dashboard widget with cif "card_center_active_m_card_zero_balance_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_x_card_one"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_cancel_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_second_m_card_status_dashboard" equal with "card_center_active"

  @android @ios @uidatabound
  Scenario:JENI305-C63921-Card Center Widget (active, no fee): Satay menu - Cancel
    Given User access card center from dashboard widget with cif "card_center_active_m_card_zero_balance_cif"
    And User click "card_center_first_x_card_three_dots"
    And User click "card_center_satay_block_card"
    And User click "card_center_satay_permanent_block_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_cancel_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_first_x_card_status_dashboard" equal with "card_center_active"

  @android @ios @uidatabound
  Scenario:JENI305-C63918-Permanent Block (3 dots): a temporarily block x-card in Card Center landing
    Given User access card center from dashboard widget with cif "card_center_active_m_card_zero_balance_cif"
    And User click "card_center_first_x_card_three_dots"
    And User click "card_center_satay_block_card"
    And User click "card_center_satay_permanent_block_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_block_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_first_x_card_status_dashboard" equal with "card_center_permanently_blocked"
    And User expect "top_notification_snackbar" equal with "card_center_permanent_block_x_card_detail_status"
    And "dashboard_account_first_x_card_active_button" will be displayed

  @android @ios @uidatabound
  Scenario:JENI305-C63920-Card Center Widget (active, no fee): Satay menu - Confirm
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_first_x_card_status_dashboard" equal with "card_center_permanently_blocked"
    And "dashboard_account_first_x_card_active_button" will be displayed

  @android @uidatabound
  Scenario:JENI1981-C63610-Permanent Block (CTA): change the selected card but Cancel the selecting
    Given User access card center from dashboard widget with cif "card_center_active_m_card_zero_balance_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_x_card_one"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_block_card"
    Then "card_center_landing_page" will be displayed

    And User expect "card_center_first_x_card_status_dashboard" equal with "card_center_permanently_blocked"
    And User expect "top_notification_snackbar" equal with "card_center_permanent_block_x_card_detail_status"
    And "dashboard_account_first_x_card_active_button" will be displayed
    And User click "dashboard_hamburger_icon"
    And User click "dashboard_menu"
    Then User expect "dashboard_wealth_widget_total_active_balance" equal with saved data number 1 minus "pay_me_zero_note_number"

# JENI-8075
  @android @ios @uidatabound @R3_1 @R3_2 @R3_3
  Scenario:JENI8075-C117782-[Scenario] Initiate Refund from Card Details Page
    Given User access card center from left side menu with cif "card_center_special_card_refund"
    And User click "card_center_first_x_card_dashboard"
    And User click "card_center_more_cta_button"
    And User click "card_center_refund_card_popup_menu"
    Then "card_center_refund_header" will be displayed

  @android @ios @uidatabound @R3_1 @R3_2 @R3_3
  Scenario:JENI8075-C117783-[Scenario] Enter Refund Amount
    Given User access card center from left side menu with cif "card_center_special_card_refund"
    And User click "card_center_first_x_card_dashboard"
    And User click "card_center_more_cta_button"
    And User click "card_center_refund_card_popup_menu"
    When User fill "card_center_refund_field" with "card_center_refund_amt"
    And User click "card_center_refund_next"
    Then "card_center_refund_confirm_header" will be displayed
    Then element with "card_center_refund_amt" text will be displayed

  @android @ios @uidatabound @R3_1 @R3_2 @R3_3
  Scenario:JENI8075-C117784-[Scenario] Balance on Card
    Given User is on dashboard page in English language with "card_center_special_card_refund"
    And System save "dashboard_wealth_widget_total_card_balance" value
    And User swipe up until found "dashboard_awards_title"
    And System save balance "card_center_first_x_card_balance_dashboard" value
    And User click "card_center_first_x_card_dashboard"
    And User click "card_center_more_cta_button"
    And User click "card_center_refund_card_popup_menu"
    And System save balance "card_center_refund_active_balance" value
    Then User expect saved value number 1 and 2 are equal

  @android @ios @endtoend @R3_1 @R3_2 @R3_3 
  Scenario:JENI8075-C117785-[Scenario] Confirm Refund
    Given User access card center from left side menu with cif "card_center_special_card_refund"
    And User click "card_center_first_x_card_dashboard"
    And User click "card_center_more_cta_button"
    And User click "card_center_refund_card_popup_menu"
    When User fill "card_center_refund_field" with "card_center_refund_amt"
    And User click "card_center_refund_next"
    Then element with "card_center_refund_amt" text will be displayed
    And User click "card_center_refund_confirm"
    And User check snackbar with dynamic text "card_center_snackbar_refund"
    Then "card_center_detail" will be displayed

  @android @ios @uidatabound @R3_1 @R3_2 @R3_3
  Scenario:JENI8075-C117786-[Scenario] Balance on Card is lesser than Refund Amount
    Given User access card center from left side menu with cif "card_center_special_card_refund"
    And User click "card_center_first_x_card_dashboard"
    And User click "card_center_more_cta_button"
    And User click "card_center_refund_card_popup_menu"
    When User fill "card_center_refund_field" with "card_center_refund_amt_more"
    And User click "card_center_refund_next"
    And User expect "card_center_refund_hint" equal with "card_center_refund_exceed_hint"

  @android @ios @endtoend @R3_1 @R3_2 @R3_3
  Scenario:JENI8075-C117787-[Scenario] Active Balance Increase a result of refund
    Given User is on dashboard page in English language with "card_center_special_card_refund"
    And System save balance "dashboard_wealth_widget_total_active_balance" value
    And User swipe up until found "dashboard_awards_title"
    And User click "card_center_first_x_card_dashboard"
    And User click "card_center_more_cta_button"
    And User click "card_center_refund_card_popup_menu"
    When User fill "card_center_refund_field" with "card_center_refund_amt"
    And User click "card_center_refund_next"
    And User click "card_center_refund_confirm"
    And User expect "snackbar" contains "card_center_snackbar_refund"
    Then "card_center_detail" will be displayed
    And User expect "snackbar" contains "card_center_snackbar_refund"
    And User click "back_button"
    And User wait 5 seconds
    And User click "dashboard_hamburger_icon"
    And User click "dashboard_menu"
    And User swipe down until found "dashboard_wealth_widget_total_active_balance"
    And User expect "dashboard_wealth_widget_total_active_balance" will be added with "card_center_refund_amt"

# JENI-8066

  @android @ios @uidatabound @R3_1 @R3_2 @R3_3
  Scenario:JENI8066-C117789-[Scenario] 3 dots menu on Special Edition X-card
    Given User is logged in with cif "card_center_special_card_detail"
    And User change language to "language"
    And User swipe up until found "card_center_first_x_card_dashboard"
    And User click "card_center_first_x_card_dashboard"

    Then "card_center_x_card_image" will be displayed
    Then "card_center_x_card_number" will be displayed
    Then "card_center_x_card_cvv_link" will be displayed
    And User swipe up until found "card_center_x_card_atm_limit_label"
    Then "card_center_x_card_trx_limit_label" will be displayed
    Then "card_center_x_card_trx_limit_amt" will be displayed
    Then "card_center_x_card_atm_limit_label" will be displayed
    Then "card_center_x_card_atm_limit_amt" will be displayed
    Then "card_center_top_up_menu_item" will be displayed
    Then "card_center_block_detail_temporary_block" will be displayed

  @android @ios @uidatabound @R3_1 @R3_2 @R3_3 @continuous
  Scenario:JENI8066-C117788-[Scenario] Details tab of Special Edition X-card
    When User click "card_center_more_cta_button"
    Then "card_center_change_card_name_popup_menu" will be displayed
    Then "card_center_change_pin_cta_button" will be displayed
    Then "card_center_refund_card_popup_menu" will be displayed
    Then "card_center_delete_menu_item" will be displayed
    Then "card_center_satay_detail_change_limit" will be displayed

# JENI-303
# JENI-303: Active State
@uidatabound @android
Scenario:JENI303-C45974-Card Center Widget (active, no fee): Satay menu - Cancel 

  Given User is logged in with cif "card_center_pblock_nofee_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_m_card_dashboard"
  Then "card_center_m_card_tb_dashboard" will be displayed
  And User click "card_center_m_card_tb_dashboard"

  Then "card_center_satay_dashboard" will be displayed
  Then "card_center_satay_change_pin" will be displayed
  Then "card_center_satay_block_card" will be displayed
  Then "card_center_satay_change_limit" will be displayed
  And User click "card_center_satay_block_card"

  Then "card_center_block_pop_up" will be displayed
  Then "card_center_block_pop_up_temporary" will be displayed
  Then "card_center_block_pop_up_permanent" will be displayed
  Then "card_center_block_pop_up_cancel" will be displayed
  And User click "card_center_block_pop_up_permanent"

  Then "card_center_permanent_block_page" will be displayed
  And User expect "card_center_permanent_block_page_title" equal with "card_center_permanent_block_page_title"
  And User expect "card_center_permanent_block_page_subtitle" equal with "card_center_permanent_block_page_subtitle"
  Then "card_center_card_dropdown" will be displayed
  And User expect "card_center_card_dropdown_card_type" equal with "card_center_m_card"
  And User expect "card_center_card_dropdown_card_number" equal with "card_center_pblock_nofee_m_card_masked_number"

  Then "card_center_reason_dropdown" will be displayed
  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"

  Then "card_center_permanent_block_confirm_cancel_button" will be displayed
  Then "card_center_permanent_block_confirm_block_button" will be displayed
  And User click "card_center_permanent_block_confirm_cancel_button"
  
  Then "card_center_widget" will be displayed
  And User expect "card_center_m_card_status_dashboard" equal with "card_center_active"

@uidatabound @android
Scenario:JENI303-C48055-Card Center Widget (active, fee): Satay menu - Cancel 

  Given User is logged in with cif "card_center_pblock_fee_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_m_card_dashboard"
  Then "card_center_m_card_tb_dashboard" will be displayed
  And User click "card_center_m_card_tb_dashboard"

  Then "card_center_satay_dashboard" will be displayed
  Then "card_center_satay_change_pin" will be displayed
  Then "card_center_satay_block_card" will be displayed
  Then "card_center_satay_change_limit" will be displayed
  And User click "card_center_satay_block_card"

  Then "card_center_block_pop_up" will be displayed
  Then "card_center_block_pop_up_temporary" will be displayed
  Then "card_center_block_pop_up_permanent" will be displayed
  Then "card_center_block_pop_up_cancel" will be displayed
  And User click "card_center_block_pop_up_permanent"

  Then "card_center_permanent_block_page" will be displayed
  And User expect "card_center_permanent_block_page_title" equal with "card_center_permanent_block_page_title"
  And User expect "card_center_permanent_block_page_subtitle" equal with "card_center_permanent_block_page_subtitle"
  Then "card_center_card_dropdown" will be displayed
  And User expect "card_center_card_dropdown_card_type" equal with "card_center_m_card"
  And User expect "card_center_card_dropdown_card_number" equal with "card_center_pblock_nofee_m_card_masked_number"

  Then "card_center_reason_dropdown" will be displayed
  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"

  Then "card_center_permanent_block_confirm_cancel_button" will be displayed
  Then "card_center_permanent_block_confirm_block_button" will be displayed
  And User click "card_center_permanent_block_confirm_cancel_button"
  
  Then "card_center_widget" will be displayed
  And User expect "card_center_m_card_status_dashboard" equal with "card_center_active"

@uidatabound @android
Scenario:JENI303-C48055-Card Center Widget (active, fee): Satay menu - Cancel 

  Given User is logged in with cif "card_center_pblock_fee_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_m_card_dashboard"
  Then "card_center_m_card_tb_dashboard" will be displayed
  And User click "card_center_m_card_tb_dashboard"

  Then "card_center_satay_dashboard" will be displayed
  Then "card_center_satay_change_pin" will be displayed
  Then "card_center_satay_block_card" will be displayed
  Then "card_center_satay_change_limit" will be displayed
  And User click "card_center_satay_block_card"

  Then "card_center_block_pop_up" will be displayed
  Then "card_center_block_pop_up_temporary" will be displayed
  Then "card_center_block_pop_up_permanent" will be displayed
  Then "card_center_block_pop_up_cancel" will be displayed
  And User click "card_center_block_pop_up_permanent"

  Then "card_center_permanent_block_page" will be displayed
  And User expect "card_center_permanent_block_page_title" equal with "card_center_permanent_block_page_title"
  And User expect "card_center_permanent_block_page_subtitle" equal with "card_center_permanent_block_page_subtitle"
  Then "card_center_card_dropdown" will be displayed
  And User expect "card_center_card_dropdown_card_type" equal with "card_center_m_card"
  And User expect "card_center_card_dropdown_card_number" equal with "card_center_pblock_nofee_m_card_masked_number"

  Then "card_center_reason_dropdown" will be displayed
  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"

  Then "card_center_permanent_block_confirm_cancel_button" will be displayed
  Then "card_center_permanent_block_confirm_block_button" will be displayed
  And User click "card_center_permanent_block_confirm_cancel_button"
  
  Then "card_center_widget" will be displayed
  And User expect "card_center_m_card_status_dashboard" equal with "card_center_active"

@uidatabound @android
Scenario:JENI303-C48059-Card Center Landing (active, no fee): Satay menu - Cancel 

  Given User is logged in with cif "card_center_pblock_nofee_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed

  And User go to card center landing page from side menu
  Then "card_center_m_card_tb_dashboard" will be displayed
  And User click "card_center_m_card_tb_dashboard"

  Then "card_center_satay_dashboard" will be displayed
  Then "card_center_satay_change_pin" will be displayed
  Then "card_center_satay_block_card" will be displayed
  Then "card_center_satay_change_limit" will be displayed
  And User click "card_center_satay_block_card"

  Then "card_center_block_pop_up" will be displayed
  Then "card_center_block_pop_up_temporary" will be displayed
  Then "card_center_block_pop_up_permanent" will be displayed
  Then "card_center_block_pop_up_cancel" will be displayed
  And User click "card_center_block_pop_up_permanent"

  Then "card_center_permanent_block_page" will be displayed
  And User expect "card_center_permanent_block_page_title" equal with "card_center_permanent_block_page_title"
  And User expect "card_center_permanent_block_page_subtitle" equal with "card_center_permanent_block_page_subtitle"
  Then "card_center_card_dropdown" will be displayed
  And User expect "card_center_card_dropdown_card_type" equal with "card_center_m_card"
  And User expect "card_center_card_dropdown_card_number" equal with "card_center_pblock_nofee_m_card_masked_number"

  Then "card_center_reason_dropdown" will be displayed
  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"

  Then "card_center_permanent_block_confirm_cancel_button" will be displayed
  Then "card_center_permanent_block_confirm_block_button" will be displayed
  And User click "card_center_permanent_block_confirm_cancel_button"
  
  Then "card_center_landing_page" will be displayed
  And User expect "card_center_m_card_status_dashboard" equal with "card_center_active"

@uidatabound @android
Scenario:JENI303-C48059-Card Center Landing (active, fee): Satay menu - Cancel 

  Given User is logged in with cif "card_center_pblock_fee_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed

  And User go to card center landing page from side menu
  Then "card_center_m_card_tb_dashboard" will be displayed
  And User click "card_center_m_card_tb_dashboard"

  Then "card_center_satay_dashboard" will be displayed
  Then "card_center_satay_change_pin" will be displayed
  Then "card_center_satay_block_card" will be displayed
  Then "card_center_satay_change_limit" will be displayed
  And User click "card_center_satay_block_card"

  Then "card_center_block_pop_up" will be displayed
  Then "card_center_block_pop_up_temporary" will be displayed
  Then "card_center_block_pop_up_permanent" will be displayed
  Then "card_center_block_pop_up_cancel" will be displayed
  And User click "card_center_block_pop_up_permanent"

  Then "card_center_permanent_block_page" will be displayed
  And User expect "card_center_permanent_block_page_title" equal with "card_center_permanent_block_page_title"
  And User expect "card_center_permanent_block_page_subtitle" equal with "card_center_permanent_block_page_subtitle"
  Then "card_center_card_dropdown" will be displayed
  And User expect "card_center_card_dropdown_card_type" equal with "card_center_m_card"
  And User expect "card_center_card_dropdown_card_number" equal with "card_center_pblock_nofee_m_card_masked_number"

  Then "card_center_reason_dropdown" will be displayed
  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"

  Then "card_center_permanent_block_confirm_cancel_button" will be displayed
  Then "card_center_permanent_block_confirm_block_button" will be displayed
  And User click "card_center_permanent_block_confirm_cancel_button"
  
  Then "card_center_landing_page" will be displayed
  And User expect "card_center_m_card_status_dashboard" equal with "card_center_active"

@uidatabound @android
Scenario:JENI303-C59702-Card Center Widget (active, no fee): Check mailing address 

  Given User is logged in with cif "card_center_pblock_nofee_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_m_card_tb_dashboard"
  And User click "card_center_m_card_tb_dashboard"

  Then "card_center_satay_dashboard" will be displayed
  Then "card_center_satay_change_pin" will be displayed
  Then "card_center_satay_block_card" will be displayed
  Then "card_center_satay_change_limit" will be displayed
  And User click "card_center_satay_block_card"

  Then "card_center_block_pop_up" will be displayed
  Then "card_center_block_pop_up_temporary" will be displayed
  Then "card_center_block_pop_up_permanent" will be displayed
  Then "card_center_block_pop_up_cancel" will be displayed
  And User click "card_center_block_pop_up_permanent"

  Then "card_center_permanent_block_page" will be displayed
  And User expect "card_center_permanent_block_page_title" equal with "card_center_permanent_block_page_title"
  And User expect "card_center_permanent_block_page_subtitle" equal with "card_center_permanent_block_page_subtitle"
  Then "card_center_card_dropdown" will be displayed
  And User expect "card_center_card_dropdown_card_type" equal with "card_center_m_card"
  And User expect "card_center_card_dropdown_card_number" equal with "card_center_pblock_nofee_m_card_masked_number"

  Then "card_center_reason_dropdown" will be displayed
  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"


  Then "card_center_permanent_block_confirm_cancel_button" will be displayed
  Then "card_center_permanent_block_confirm_block_button" will be displayed
  And User expect "card_center_permanent_block_confirm_mail_address" contains "card_center_permanent_block_confirm_mail_address"

@uidatabound @android
Scenario:JENI303-C45983-Permanent Block: don't choose any reason 

  Given User is logged in with cif "card_center_active_to_pblock_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_m_card_dashboard"
  Then "card_center_m_card_tb_dashboard" will be displayed
  And User click "card_center_m_card_tb_dashboard"

  Then "card_center_satay_dashboard" will be displayed
  Then "card_center_satay_change_pin" will be displayed
  Then "card_center_satay_block_card" will be displayed
  Then "card_center_satay_change_limit" will be displayed
  And User click "card_center_satay_block_card"

  Then "card_center_block_pop_up" will be displayed
  Then "card_center_block_pop_up_temporary" will be displayed
  Then "card_center_block_pop_up_permanent" will be displayed
  Then "card_center_block_pop_up_cancel" will be displayed
  And User click "card_center_block_pop_up_permanent"

  Then "card_center_permanent_block_page" will be displayed
  And User expect "card_center_permanent_block_page_title" equal with "card_center_permanent_block_page_title"
  And User expect "card_center_permanent_block_page_subtitle" equal with "card_center_permanent_block_page_subtitle"
  Then "card_center_card_dropdown" will be displayed
  And User expect "card_center_card_dropdown_card_type" equal with "card_center_m_card"
  And User expect "card_center_card_dropdown_card_number" equal with "card_center_pblock_nofee_m_card_masked_number"

  Then "card_center_reason_dropdown" will be displayed
  And User click "card_center_permanent_block_page_block_button"
  And User expect "card_center_reason_dropdown_hint" equal with "card_center_reason_no_reasong_error"

@uidatabound @android
Scenario:JENI303-C45982-Permanent Block: check all reason in dropdown list: Stolen, Lost, Damage 

  Given User is logged in with cif "card_center_active_to_pblock_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_m_card_tb_dashboard"
  And User click "card_center_m_card_tb_dashboard" until "card_center_satay_dashboard" displayed

  Then "card_center_satay_dashboard" will be displayed
  Then "card_center_satay_change_pin" will be displayed
  Then "card_center_satay_block_card" will be displayed
  Then "card_center_satay_change_limit" will be displayed
  And User click "card_center_satay_block_card"

  Then "card_center_block_pop_up" will be displayed
  Then "card_center_block_pop_up_temporary" will be displayed
  Then "card_center_block_pop_up_permanent" will be displayed
  Then "card_center_block_pop_up_cancel" will be displayed
  And User click "card_center_block_pop_up_permanent"

  Then "card_center_permanent_block_page" will be displayed
  And User expect "card_center_permanent_block_page_title" equal with "card_center_permanent_block_page_title"
  And User expect "card_center_permanent_block_page_subtitle" equal with "card_center_permanent_block_page_subtitle"
  Then "card_center_card_dropdown" will be displayed
  And User expect "card_center_card_dropdown_card_type" equal with "card_center_m_card"
  And User expect "card_center_card_dropdown_card_number" equal with "card_center_pblock_nofee_m_card_masked_number"

  Then "card_center_reason_dropdown" will be displayed
  And User click "card_center_reason_dropdown"
  Then User expect "card_center_block_card_reason_1" element displayed
  Then User expect "card_center_block_card_reason_2" element displayed
  Then User expect "card_center_block_card_reason_3" element displayed

@uidatabound @android
Scenario:JENI303-C45956-Card Center Widget (active, no fee): Satay menu - Confirm

  Given User is logged in with cif "card_center_pblock_nofee_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_m_card_dashboard"
  Then "card_center_m_card_tb_dashboard" will be displayed
  And User click "card_center_m_card_tb_dashboard"

  And User click "card_center_satay_block_card"

  And User click "card_center_block_pop_up_permanent"

  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"

  Then "card_center_permanent_block_confirm_block_button" will be displayed

@endtoend @android
Scenario:JENI303-C45956-Card Center Widget (active, no fee): Satay menu - Confirm

  Given User is logged in with cif "card_center_pblock_nofee_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_m_card_dashboard"
  Then "card_center_m_card_tb_dashboard" will be displayed
  And User click "card_center_m_card_tb_dashboard"

  And User click "card_center_satay_block_card"

  And User click "card_center_block_pop_up_permanent"

  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"

  And User click "card_center_permanent_block_confirm_block_button"
  Then User wait "card_center_permanent_block_confirm_mail_address" will be gone
  
  Then "card_center_widget" will be displayed
  And User expect "card_center_m_card_blocked_status_dashboard" equal with "card_center_permanently_blocked"
  Then "card_center_m_card_activate_dashboard" will be displayed
  And User swipe down until found "dashboard_active_balance_widget"
  And User expect "dashboard_active_balance_widget" equal with "card_center_pblock_nofee_active_balance"

@uidatabound @android
Scenario:JENI303-C45995#C63933-Card Center Landing (active, no fee, insufficient active balance): Satay menu - Confirm

  Given User is logged in with cif "card_center_pblock_nofee_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed

  And User go to card center landing page from side menu
  Then "card_center_m_card_tb_dashboard" will be displayed
  And User click "card_center_m_card_tb_dashboard"

  And User click "card_center_satay_block_card"

  And User click "card_center_block_pop_up_permanent"

  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"

  Then "card_center_permanent_block_confirm_block_button" will be displayed

@uidatabound @android
Scenario:JENI303-C48066-Card Center Widget (m-card: Temporary Block, no fee): Satay menu - Cancel 

  Given User is logged in with cif "card_center_pblock_nofee_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_m_card_dashboard"
  And User expect "card_center_m_card_status_dashboard" equal with "card_center_temporarily_blocked"
  Then "card_center_m_card_tb_dashboard" will be displayed
  And User click "card_center_m_card_tb_dashboard"

  Then "card_center_satay_dashboard" will be displayed
  Then "card_center_satay_unblock_card" will be displayed
  Then "card_center_satay_permanent_block_card" will be displayed
  And User click "card_center_satay_permanent_block_card"

  Then "card_center_permanent_block_page" will be displayed
  And User expect "card_center_permanent_block_page_title" equal with "card_center_permanent_block_page_title"
  And User expect "card_center_permanent_block_page_subtitle" equal with "card_center_permanent_block_page_subtitle"
  Then "card_center_card_dropdown" will be displayed
  And User expect "card_center_card_dropdown_card_type" equal with "card_center_m_card"
  And User expect "card_center_card_dropdown_card_number" equal with "card_center_pblock_nofee_m_card_masked_number"

  Then "card_center_reason_dropdown" will be displayed
  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"

  Then "card_center_permanent_block_confirm_cancel_button" will be displayed
  Then "card_center_permanent_block_confirm_block_button" will be displayed
  And User click "card_center_permanent_block_confirm_cancel_button"
  
  Then "card_center_widget" will be displayed
  And User expect "card_center_m_card_status_dashboard" equal with "card_center_temporarily_blocked"

@uidatabound @android
Scenario:JENI303-C48073-Card Center Landing (m-card: Temporary Block, no fee): Satay menu - Cancel 

  Given User is logged in with cif "card_center_pblock_nofee_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed

  And User go to card center landing page from side menu
  And User expect "card_center_m_card_status_dashboard" equal with "card_center_temporarily_blocked"
  Then "card_center_m_card_tb_dashboard" will be displayed
  And User click "card_center_m_card_tb_dashboard"

  Then "card_center_satay_dashboard" will be displayed
  Then "card_center_satay_unblock_card" will be displayed
  Then "card_center_satay_permanent_block_card" will be displayed
  And User click "card_center_satay_permanent_block_card"

  Then "card_center_permanent_block_page" will be displayed
  And User expect "card_center_permanent_block_page_title" equal with "card_center_permanent_block_page_title"
  And User expect "card_center_permanent_block_page_subtitle" equal with "card_center_permanent_block_page_subtitle"
  Then "card_center_card_dropdown" will be displayed
  And User expect "card_center_card_dropdown_card_type" equal with "card_center_m_card"
  And User expect "card_center_card_dropdown_card_number" equal with "card_center_pblock_nofee_m_card_masked_number"

  Then "card_center_reason_dropdown" will be displayed
  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"

  Then "card_center_permanent_block_confirm_cancel_button" will be displayed
  Then "card_center_permanent_block_confirm_block_button" will be displayed
  And User click "card_center_permanent_block_confirm_cancel_button"
  
  Then "card_center_landing_page" will be displayed
  And User expect "card_center_m_card_status_dashboard" equal with "card_center_temporarily_blocked"

@uidatabound @android
Scenario:JENI303-C48075-Card Center landing (Temporary Block, fee): satay menu - Cancel

  Given User is logged in with cif "card_center_pblock_fee_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed

  And User go to card center landing page from side menu
  And User expect "card_center_m_card_status_dashboard" equal with "card_center_temporarily_blocked"
  Then "card_center_m_card_tb_dashboard" will be displayed
  And User click "card_center_m_card_tb_dashboard"

  Then "card_center_satay_dashboard" will be displayed
  Then "card_center_satay_unblock_card" will be displayed
  Then "card_center_satay_permanent_block_card" will be displayed
  And User click "card_center_satay_permanent_block_card"

  Then "card_center_permanent_block_page" will be displayed
  And User expect "card_center_permanent_block_page_title" equal with "card_center_permanent_block_page_title"
  And User expect "card_center_permanent_block_page_subtitle" equal with "card_center_permanent_block_page_subtitle"
  Then "card_center_card_dropdown" will be displayed
  And User expect "card_center_card_dropdown_card_type" equal with "card_center_m_card"
  And User expect "card_center_card_dropdown_card_number" equal with "card_center_pblock_nofee_m_card_masked_number"

  Then "card_center_reason_dropdown" will be displayed
  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"

  Then "card_center_permanent_block_confirm_cancel_button" will be displayed
  Then "card_center_permanent_block_confirm_block_button" will be displayed
  And User click "card_center_permanent_block_confirm_cancel_button"
  
  Then "card_center_landing_page" will be displayed
  And User expect "card_center_m_card_status_dashboard" equal with "card_center_temporarily_blocked"

@uidatabound @android
Scenario:JENI303-C48077-Card Center landing (Temporary Block m-card, fee, insufficient balance): satay menu - Cancel

  Given User is logged in with cif "card_center_pblock_fee_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed

  And User go to card center landing page from side menu
  And User expect "card_center_m_card_status_dashboard" equal with "card_center_temporarily_blocked"
  Then "card_center_m_card_tb_dashboard" will be displayed
  And User click "card_center_m_card_tb_dashboard"

  Then "card_center_satay_dashboard" will be displayed
  Then "card_center_satay_unblock_card" will be displayed
  Then "card_center_satay_permanent_block_card" will be displayed
  And User click "card_center_satay_permanent_block_card"

  Then "card_center_permanent_block_page" will be displayed
  And User expect "card_center_permanent_block_page_title" equal with "card_center_permanent_block_page_title"
  And User expect "card_center_permanent_block_page_subtitle" equal with "card_center_permanent_block_page_subtitle"
  Then "card_center_card_dropdown" will be displayed
  And User expect "card_center_card_dropdown_card_type" equal with "card_center_m_card"
  And User expect "card_center_card_dropdown_card_number" equal with "card_center_pblock_nofee_m_card_masked_number"

  Then "card_center_reason_dropdown" will be displayed
  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"

  Then "card_center_permanent_block_confirm_cancel_button" will be displayed
  Then "card_center_permanent_block_confirm_block_button" will be displayed
  And User click "card_center_permanent_block_confirm_cancel_button"
  
  Then "card_center_landing_page" will be displayed
  And User expect "card_center_m_card_status_dashboard" equal with "card_center_temporarily_blocked"

@uidatabound @android
Scenario:JENI303-C48068-Card Center widget (m-card: Temporary Block, fee): satay menu - Cancel

  Given User is logged in with cif "card_center_pblock_fee_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed

  And User swipe up until found "card_center_m_card_dashboard"
  And User expect "card_center_m_card_status_dashboard" equal with "card_center_temporarily_blocked"
  Then "card_center_m_card_tb_dashboard" will be displayed
  And User click "card_center_m_card_tb_dashboard"

  Then "card_center_satay_dashboard" will be displayed
  Then "card_center_satay_unblock_card" will be displayed
  Then "card_center_satay_permanent_block_card" will be displayed
  And User click "card_center_satay_permanent_block_card"

  Then "card_center_permanent_block_page" will be displayed
  And User expect "card_center_permanent_block_page_title" equal with "card_center_permanent_block_page_title"
  And User expect "card_center_permanent_block_page_subtitle" equal with "card_center_permanent_block_page_subtitle"
  Then "card_center_card_dropdown" will be displayed
  And User expect "card_center_card_dropdown_card_type" equal with "card_center_m_card"
  And User expect "card_center_card_dropdown_card_number" equal with "card_center_pblock_nofee_m_card_masked_number"

  Then "card_center_reason_dropdown" will be displayed
  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"

  Then "card_center_permanent_block_confirm_cancel_button" will be displayed
  Then "card_center_permanent_block_confirm_block_button" will be displayed
  And User click "card_center_permanent_block_confirm_cancel_button"
  
  Then "card_center_widget" will be displayed
  And User expect "card_center_m_card_status_dashboard" equal with "card_center_temporarily_blocked"

@uidatabound @android 
Scenario:JENI303-C48070-Card Center widget (m-card: temporary block, fee, insufficient balance): satay menu - Cancel

  Given User is logged in with cif "card_center_pblock_fee_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed

  And User swipe up until found "card_center_m_card_dashboard"
  And User expect "card_center_m_card_status_dashboard" equal with "card_center_temporarily_blocked"
  Then "card_center_m_card_tb_dashboard" will be displayed
  And User click "card_center_m_card_tb_dashboard"

  Then "card_center_satay_dashboard" will be displayed
  Then "card_center_satay_unblock_card" will be displayed
  Then "card_center_satay_permanent_block_card" will be displayed
  And User click "card_center_satay_permanent_block_card"

  Then "card_center_permanent_block_page" will be displayed
  And User expect "card_center_permanent_block_page_title" equal with "card_center_permanent_block_page_title"
  And User expect "card_center_permanent_block_page_subtitle" equal with "card_center_permanent_block_page_subtitle"
  Then "card_center_card_dropdown" will be displayed
  And User expect "card_center_card_dropdown_card_type" equal with "card_center_m_card"
  And User expect "card_center_card_dropdown_card_number" equal with "card_center_pblock_nofee_m_card_masked_number"

  Then "card_center_reason_dropdown" will be displayed
  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"

  Then "card_center_permanent_block_confirm_cancel_button" will be displayed
  Then "card_center_permanent_block_confirm_block_button" will be displayed
  And User click "card_center_permanent_block_confirm_cancel_button"
  
  Then "card_center_widget" will be displayed
  And User expect "card_center_m_card_status_dashboard" equal with "card_center_temporarily_blocked"

@uidatabound @android
Scenario:JENI303-C45994-Permanent Block: a temporarily block m-card in Card Center widget: Cancel at Permanent Block screen 

  Given User is logged in with cif "card_center_tblock_to_pblock_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_m_card_dashboard"
  And User expect "card_center_m_card_status_dashboard" equal with "card_center_temporarily_blocked"
  Then "card_center_m_card_tb_dashboard" will be displayed
  And User click "card_center_m_card_tb_dashboard"

  Then "card_center_satay_dashboard" will be displayed
  Then "card_center_satay_unblock_card" will be displayed
  Then "card_center_satay_permanent_block_card" will be displayed
  And User click "card_center_satay_permanent_block_card"

  Then "card_center_permanent_block_page" will be displayed
  And User expect "card_center_permanent_block_page_title" equal with "card_center_permanent_block_page_title"
  And User expect "card_center_permanent_block_page_subtitle" equal with "card_center_permanent_block_page_subtitle"
  Then "card_center_card_dropdown" will be displayed
  And User expect "card_center_card_dropdown_card_type" equal with "card_center_m_card"
  And User expect "card_center_card_dropdown_card_number" equal with "card_center_pblock_nofee_m_card_masked_number"

  Then "card_center_reason_dropdown" will be displayed
  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "back_button"
  
  Then "card_center_widget" will be displayed
  And User expect "card_center_m_card_status_dashboard" equal with "card_center_temporarily_blocked"

@uidatabound @android
Scenario:JENI303-C45988-Permanent Block (3 dots): Cancel at the first step   

  Given User is logged in with cif "card_center_active_to_pblock_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_m_card_dashboard"
  And User expect "card_center_m_card_status_dashboard" equal with "card_center_temporarily_blocked"
  Then "card_center_m_card_tb_dashboard" will be displayed
  And User click "card_center_m_card_tb_dashboard"

  Then "card_center_satay_dashboard" will be displayed
  Then "card_center_satay_unblock_card" will be displayed
  Then "card_center_satay_permanent_block_card" will be displayed
  And User click "card_center_satay_cancel"
  
  Then "card_center_widget" will be displayed

@endtoend @android
Scenario:JENI303-C48065-Card Center Widget (m-card: Temporarily Block, no fee): Satay menu - Confirm

  Given User is logged in with cif "card_center_pblock_nofee_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_m_card_dashboard"
  And User expect "card_center_m_card_status_dashboard" equal with "card_center_temporarily_blocked"
  And User click "card_center_m_card_tb_dashboard"

  And User click "card_center_satay_permanent_block_card"

  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"

  And User click "card_center_permanent_block_confirm_block_button"
  Then User wait "card_center_permanent_block_confirm_mail_address" will be gone
  
  And User expect "card_center_m_card_blocked_status_dashboard" equal with "card_center_permanently_blocked"
  Then "card_center_m_card_activate_dashboard" will be displayed
  And User swipe down until found "dashboard_active_balance_widget"
  And User expect "dashboard_active_balance_widget" equal with "card_center_pblock_nofee_active_balance"

@uidatabound @android
Scenario:JENI303-C48065-Card Center Widget (m-card: Temporarily Block, no fee): Satay menu - Confirm

  Given User is logged in with cif "card_center_pblock_nofee_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_m_card_dashboard"
  And User expect "card_center_m_card_status_dashboard" equal with "card_center_temporarily_blocked"
  And User click "card_center_m_card_tb_dashboard"

  And User click "card_center_satay_permanent_block_card"

  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"

  Then "card_center_permanent_block_confirm_block_button" will be displayed

@uidatabound @android
Scenario:JENI303-C48072-Card Center Landing (m-card: Temporarily Block, no fee): Satay menu - Confirm

  Given User is logged in with cif "card_center_pblock_nofee_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed

  And User go to card center landing page from side menu
  And User expect "card_center_m_card_status_dashboard" equal with "card_center_temporarily_blocked"
  Then "card_center_m_card_tb_dashboard" will be displayed
  And User click "card_center_m_card_tb_dashboard"

  And User click "card_center_satay_permanent_block_card"
  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"

  Then "card_center_permanent_block_confirm_block_button" will be displayed

@endtoend @android
Scenario:JENI303-C48060-Card Center landing (active, fee): satay menu - Confirm

  Given User is logged in with cif "card_center_pblock_fee_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And System save "dashboard_wealth_widget_total_active_balance" value
  And User go to card center landing page from side menu
  And User expect "card_center_m_card_status_dashboard" equal with "card_center_active"
  And User click "card_center_m_card_tb_dashboard"

  And User click "card_center_satay_block_card"

  And User click "card_center_block_pop_up_permanent"

  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"

  And User click "card_center_permanent_block_confirm_block_button"
  
  And User expect "card_center_m_card_blocked_status_dashboard" equal with "card_center_permanently_blocked"
  Then "card_center_m_card_activate_dashboard" will be displayed
  And User swipe down until found "dashboard_wealth_widget_total_active_balance"
  Then User expect "dashboard_wealth_widget_total_active_balance" equal with saved data number 1 minus "card_center_pblock_fee"

@endtoend @android
Scenario:JENI303-C48067-Card Center widget (m-card: Temporary Block, fee): satay menu - Confirm

  Given User is logged in with cif "card_center_pblock_fee_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_m_card_dashboard"
  And User expect "card_center_m_card_status_dashboard" equal with "card_center_temporarily_blocked"
  And User click "card_center_m_card_tb_dashboard"

  And User click "card_center_satay_permanent_block_card"

  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"
  
  And User click "card_center_permanent_block_confirm_block_button"
  
  And User expect "card_center_m_card_blocked_status_dashboard" equal with "card_center_permanently_blocked"
  Then "card_center_m_card_activate_dashboard" will be displayed
  And User swipe down until found "dashboard_wealth_widget_total_active_balance"
  Then User expect "dashboard_wealth_widget_total_active_balance" equal with saved data number 1 minus "card_center_pblock_fee"

@endtoend @android
Scenario:JENI303-C48054-Card Center widget (active, fee): satay menu - Confirm

  Given User is logged in with cif "card_center_pblock_fee_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_m_card_dashboard"
  And User expect "card_center_m_card_status_dashboard" equal with "card_center_active"
  And User click "card_center_m_card_tb_dashboard"

  And User click "card_center_satay_block_card"

  And User click "card_center_block_pop_up_permanent"

  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"
  
  And User click "card_center_permanent_block_confirm_block_button"
  
  And User expect "card_center_m_card_blocked_status_dashboard" equal with "card_center_permanently_blocked"
  Then "card_center_m_card_activate_dashboard" will be displayed
  And User swipe down until found "dashboard_wealth_widget_total_active_balance"
  Then User expect "dashboard_wealth_widget_total_active_balance" equal with saved data number 1 minus "card_center_pblock_fee"

@endtoend @android
Scenario:JENI303-C48074-Card Center landing (Temporary Block, fee): satay menu - Confirm

  Given User is logged in with cif "card_center_pblock_fee_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And System save "dashboard_wealth_widget_total_active_balance" value
  And User go to card center landing page from side menu
  And User expect "card_center_m_card_status_dashboard" equal with "card_center_temporarily_blocked"
  And User click "card_center_m_card_tb_dashboard"

  And User click "card_center_satay_permanent_block_card"

  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"

  And User click "card_center_permanent_block_confirm_block_button"
  
  And User expect "card_center_m_card_blocked_status_dashboard" equal with "card_center_permanently_blocked"
  Then "card_center_m_card_activate_dashboard" will be displayed
  And User go to dashboard from card center list

  And User swipe down until found "dashboard_wealth_widget_total_active_balance"
  Then User expect "dashboard_wealth_widget_total_active_balance" equal with saved data number 1 minus "card_center_pblock_fee"

@uidatabound @android
Scenario:JENI303-C48058-Card Center widget (active, fee, insufficient balance): satay menu - Cancel

  Given User is logged in with cif "card_center_pblock_fee_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And System save "dashboard_wealth_widget_total_active_balance" value
  And User swipe up until found "card_center_m_card_dashboard"
  And User expect "card_center_m_card_status_dashboard" equal with "card_center_active"
  And User click "card_center_m_card_tb_dashboard"

  And User click "card_center_satay_block_card"

  And User click "card_center_block_pop_up_permanent"

  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"

  Then "card_center_permanent_block_confirm_cancel_button" will be displayed
  Then "card_center_pblock_insufficient_fee_tblock" will be displayed
  Then "card_center_pblock_insufficient_fee_add_money" will be displayed
  And User click "card_center_permanent_block_confirm_cancel_button"
  
  Then "card_center_dashboard_widget" will be displayed
  And User expect "card_center_m_card_status_dashboard" equal with "card_center_active" 

@uidatabound @android
Scenario:JENI303-C48056-Card Center widget (active, fee, insufficient balance): satay menu - Add Money

  Given User is logged in with cif "card_center_pblock_fee_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And System save "dashboard_wealth_widget_total_active_balance" value
  And User swipe up until found "card_center_m_card_dashboard"
  And User expect "card_center_m_card_status_dashboard" equal with "card_center_active"
  And User click "card_center_m_card_tb_dashboard"

  And User click "card_center_satay_block_card"

  And User click "card_center_block_pop_up_permanent"

  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"

  Then "card_center_permanent_block_confirm_cancel_button" will be displayed
  Then "card_center_pblock_insufficient_fee_tblock" will be displayed
  Then "card_center_pblock_insufficient_fee_add_money" will be displayed
  And User click "card_center_pblock_insufficient_fee_add_money"

  Then "card_center_pblock_insufficient_fee_add_money_page" will be displayed

@endtoend @android
Scenario:JENI303-C48057-Card Center widget (active, fee, insufficient balance): satay menu - Temporary Block

  Given User is logged in with cif "card_center_pblock_fee_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And System save "dashboard_wealth_widget_total_active_balance" value
  And User swipe up until found "card_center_m_card_dashboard"
  And User expect "card_center_m_card_status_dashboard" equal with "card_center_active"
  And User click "card_center_m_card_tb_dashboard"

  And User click "card_center_satay_block_card"

  And User click "card_center_block_pop_up_permanent"

  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"

  Then "card_center_permanent_block_confirm_cancel_button" will be displayed
  Then "card_center_pblock_insufficient_fee_tblock" will be displayed
  Then "card_center_pblock_insufficient_fee_add_money" will be displayed
  And User click "card_center_pblock_insufficient_fee_tblock"

  Then "card_center_dashboard_widget" will be displayed
  And User expect "card_center_m_card_status_dashboard" equal with "card_center_temporarily_blocked" 

@uidatabound @android
Scenario:JENI303-C48064-Card Center landing (active, fee, insufficient balance): satay menu - Cancel

  Given User is logged in with cif "card_center_pblock_fee_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And System save "dashboard_wealth_widget_total_active_balance" value
  And User go to card center landing page from side menu
  And User swipe up until found "card_center_m_card_dashboard"
  And User expect "card_center_m_card_status_dashboard" equal with "card_center_active"
  And User click "card_center_m_card_tb_dashboard"

  And User click "card_center_satay_block_card"

  And User click "card_center_block_pop_up_permanent"

  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"

  Then "card_center_permanent_block_confirm_cancel_button" will be displayed
  Then "card_center_pblock_insufficient_fee_tblock" will be displayed
  Then "card_center_pblock_insufficient_fee_add_money" will be displayed
  And User click "card_center_permanent_block_confirm_cancel_button"
  
  Then "card_center_landing_page" will be displayed
  And User expect "card_center_m_card_status_dashboard" equal with "card_center_active" 

@uidatabound @android
Scenario:JENI303-C48062-Card Center landing (active, fee, insufficient balance): satay menu - Add Money

  Given User is logged in with cif "card_center_pblock_fee_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And System save "dashboard_wealth_widget_total_active_balance" value
  And User go to card center landing page from side menu
  And User swipe up until found "card_center_m_card_dashboard"
  And User expect "card_center_m_card_status_dashboard" equal with "card_center_active"
  And User click "card_center_m_card_tb_dashboard"

  And User click "card_center_satay_block_card"

  And User click "card_center_block_pop_up_permanent"

  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"

  Then "card_center_permanent_block_confirm_cancel_button" will be displayed
  Then "card_center_pblock_insufficient_fee_tblock" will be displayed
  Then "card_center_pblock_insufficient_fee_add_money" will be displayed
  And User click "card_center_pblock_insufficient_fee_add_money"

  Then "card_center_pblock_insufficient_fee_add_money_page" will be displayed

@endtoend @android
Scenario:JENI303-C48063-Card Center landing (active, fee, insufficient balance): satay menu - Temporary Block

  Given User is logged in with cif "card_center_pblock_fee_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And System save "dashboard_wealth_widget_total_active_balance" value
  And User go to card center landing page from side menu
  And User swipe up until found "card_center_m_card_dashboard"
  And User expect "card_center_m_card_status_dashboard" equal with "card_center_active"
  And User click "card_center_m_card_tb_dashboard"

  And User click "card_center_satay_block_card"

  And User click "card_center_block_pop_up_permanent"

  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"

  Then "card_center_permanent_block_confirm_cancel_button" will be displayed
  Then "card_center_pblock_insufficient_fee_tblock" will be displayed
  Then "card_center_pblock_insufficient_fee_add_money" will be displayed
  And User click "card_center_pblock_insufficient_fee_tblock"

  Then "card_center_landing_page" will be displayed
  And User expect "card_center_m_card_status_dashboard" equal with "card_center_temporarily_blocked" 

@uidatabound @android
Scenario:JENI303-C48069-Card Center widget (m-card temporary block, fee, insufficient balance): satay menu - Add Money

  Given User is logged in with cif "card_center_pblock_fee_tblock_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And System save "dashboard_wealth_widget_total_active_balance" value
  And User swipe up until found "card_center_m_card_dashboard"
  And User expect "card_center_m_card_status_dashboard" equal with "card_center_active"
  And User click "card_center_m_card_tb_dashboard"

  And User click "card_center_satay_block_card"

  And User click "card_center_block_pop_up_permanent"

  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"

  Then "card_center_permanent_block_confirm_cancel_button" will be displayed
  Then "card_center_pblock_insufficient_fee_tblock" will be displayed
  Then "card_center_pblock_insufficient_fee_add_money" will be displayed
  And User click "card_center_pblock_insufficient_fee_add_money"

  Then "card_center_pblock_insufficient_fee_add_money_page" will be displayed

@uidatabound @android
Scenario:JENI303-C48076-Card Center landing (m-card temporary block, fee, insufficient balance): satay menu - Add Money

  Given User is logged in with cif "card_center_pblock_fee_tblock_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And System save "dashboard_wealth_widget_total_active_balance" value
  And User go to card center landing page from side menu
  And User swipe up until found "card_center_m_card_dashboard"
  And User expect "card_center_m_card_status_dashboard" equal with "card_center_active"
  And User click "card_center_m_card_tb_dashboard"

  And User click "card_center_satay_block_card"

  And User click "card_center_block_pop_up_permanent"

  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"

  Then "card_center_permanent_block_confirm_cancel_button" will be displayed
  Then "card_center_pblock_insufficient_fee_tblock" will be displayed
  Then "card_center_pblock_insufficient_fee_add_money" will be displayed
  And User click "card_center_pblock_insufficient_fee_add_money"

  Then "card_center_pblock_insufficient_fee_add_money_page" will be displayed

@endtoend @android
# NEEDS REFINEMENT
#JENI303-C59705-Card Center Widget (active, no fee): Check active balance after activating new m-card
#JENI303-C59707-Card Center Widget : Check expired date of the new m-card
Scenario: JENI303-C59705#C59707-Card Center Widget (active, no fee): Check active balance & expiry date after activating new m-card

  Given User is logged in with cif "card_center_pblock_fee_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And System save "dashboard_wealth_widget_total_active_balance" value
  And User go to card center landing page from side menu
  And User expect "card_center_m_card_status_dashboard" equal with "card_center_active"
  And User click "card_center_m_card_tb_dashboard"

  And User click "card_center_satay_block_card"

  And User click "card_center_block_pop_up_permanent"

  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"

  And User click "card_center_permanent_block_confirm_block_button"
  
  And User expect "card_center_m_card_blocked_status_dashboard" equal with "card_center_permanently_blocked"
  Then "card_center_m_card_activate_dashboard" will be displayed
  And User swipe down until found "dashboard_wealth_widget_total_active_balance"
  Then User expect "dashboard_wealth_widget_total_active_balance" equal with saved data number 1 minus "card_center_pblock_fee"

@endtoend @android
Scenario:JENI303-C48067-Card Center widget (m-card: Temporary Block, fee): satay menu - Confirm

  Given User is logged in with cif "card_center_pblock_fee_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_m_card_dashboard"
  And User expect "card_center_m_card_status_dashboard" equal with "card_center_temporarily_blocked"
  And User click "card_center_m_card_tb_dashboard"

  And User click "card_center_satay_permanent_block_card"

  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"
  
  And User click "card_center_permanent_block_confirm_block_button"
  
  And User expect "card_center_m_card_blocked_status_dashboard" equal with "card_center_permanently_blocked"
  Then "card_center_m_card_activate_dashboard" will be displayed
  And User swipe down until found "dashboard_wealth_widget_total_active_balance"
  Then User expect "dashboard_wealth_widget_total_active_balance" equal with saved data number 1 minus "card_center_pblock_fee"

@endtoend @android
Scenario:JENI303-C48054-Card Center widget (active, fee): satay menu - Confirm

  Given User is logged in with cif "card_center_pblock_fee_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_m_card_dashboard"
  And User expect "card_center_m_card_status_dashboard" equal with "card_center_active"
  And User click "card_center_m_card_tb_dashboard"

  And User click "card_center_satay_block_card"

  And User click "card_center_block_pop_up_permanent"

  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"
  
  And User click "card_center_permanent_block_confirm_block_button"
  
  And User expect "card_center_m_card_blocked_status_dashboard" equal with "card_center_permanently_blocked"
  Then "card_center_m_card_activate_dashboard" will be displayed
  And User swipe down until found "dashboard_wealth_widget_total_active_balance"
  Then User expect "dashboard_wealth_widget_total_active_balance" equal with saved data number 1 minus "card_center_pblock_fee"

@endtoend @android
Scenario:JENI303-C48074-Card Center landing (Temporary Block, fee): satay menu - Confirm

  Given User is logged in with cif "card_center_pblock_fee_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And System save "dashboard_wealth_widget_total_active_balance" value
  And User swipe up until found "card_center_m_card_dashboard"
  And User expect "card_center_m_card_status_dashboard" equal with "card_center_temporarily_blocked"
  And User click "card_center_m_card_tb_dashboard"

  And User click "card_center_satay_permanent_block_card"

  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"

  And User click "card_center_permanent_block_confirm_block_button"
  
  And User expect "card_center_m_card_blocked_status_dashboard" equal with "card_center_permanently_blocked"
  Then "card_center_m_card_activate_dashboard" will be displayed
  And User go to dashboard from card center list

  And User swipe down until found "dashboard_wealth_widget_total_active_balance"
  Then User expect "dashboard_wealth_widget_total_active_balance" equal with saved data number 1 minus "card_center_pblock_fee"

@uidatabound @android
Scenario:JENI303-C48058-Card Center widget (active, fee, insufficient balance): satay menu - Cancel

  Given User is logged in with cif "card_center_pblock_fee_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And System save "dashboard_wealth_widget_total_active_balance" value
  And User swipe up until found "card_center_m_card_dashboard"
  And User expect "card_center_m_card_status_dashboard" equal with "card_center_active"
  And User click "card_center_m_card_tb_dashboard"

  And User click "card_center_satay_block_card"

  And User click "card_center_block_pop_up_permanent"

  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"

  Then "card_center_permanent_block_confirm_cancel_button" will be displayed
  Then "card_center_pblock_insufficient_fee_tblock" will be displayed
  Then "card_center_pblock_insufficient_fee_add_money" will be displayed
  And User click "card_center_permanent_block_confirm_cancel_button"
  
  Then "card_center_dashboard_widget" will be displayed
  And User expect "card_center_m_card_blocked_status_dashboard" equal with "card_center_active" 

@uidatabound @android
Scenario:JENI303-C48056-Card Center widget (active, fee, insufficient balance): satay menu - Add Money

  Given User is logged in with cif "card_center_pblock_fee_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And System save "dashboard_wealth_widget_total_active_balance" value
  And User swipe up until found "card_center_m_card_dashboard"
  And User expect "card_center_m_card_status_dashboard" equal with "card_center_active"
  And User click "card_center_m_card_tb_dashboard"

  And User click "card_center_satay_block_card"

  And User click "card_center_block_pop_up_permanent"

  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"

  Then "card_center_permanent_block_confirm_cancel_button" will be displayed
  Then "card_center_pblock_insufficient_fee_tblock" will be displayed
  Then "card_center_pblock_insufficient_fee_add_money" will be displayed
  And User click "card_center_pblock_insufficient_fee_add_money"

  Then "card_center_pblock_insufficient_fee_add_money_page" will be displayed

@endtoend @android
Scenario:JENI303-C48057-Card Center widget (active, fee, insufficient balance): satay menu - Temporary Block

  Given User is logged in with cif "card_center_pblock_fee_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And System save "dashboard_wealth_widget_total_active_balance" value
  And User swipe up until found "card_center_m_card_dashboard"
  And User expect "card_center_m_card_status_dashboard" equal with "card_center_active"
  And User click "card_center_m_card_tb_dashboard"

  And User click "card_center_satay_block_card"

  And User click "card_center_block_pop_up_permanent"

  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"

  Then "card_center_permanent_block_confirm_cancel_button" will be displayed
  Then "card_center_pblock_insufficient_fee_tblock" will be displayed
  Then "card_center_pblock_insufficient_fee_add_money" will be displayed
  And User click "card_center_pblock_insufficient_fee_tblock"

  Then "card_center_dashboard_widget" will be displayed
  And User expect "card_center_m_card_blocked_status_dashboard" equal with "card_center_temporarily_blocked" 

@endtoend @android
# NEEDS REFINEMENT
#JENI303-C59705-Card Center Widget (active, no fee): Check active balance after activating new m-card
#JENI303-C59707-Card Center Widget : Check expired date of the new m-card
Scenario: JENI303-C59705#C59707-Card Center Widget (active, no fee): Check active balance & expiry date after activating new m-card

  Given User is logged in with cif "card_center_pblock_nofee_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_m_card_dashboard"
  Then "card_center_m_card_tb_dashboard" will be displayed
  And User click "card_center_m_card_tb_dashboard"

  And User click "card_center_satay_block_card"

  And User click "card_center_block_pop_up_permanent"

  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"

  Then "card_center_permanent_block_confirm_cancel_button" will be displayed
  Then "card_center_permanent_block_confirm_block_button" will be displayed
  And User click "card_center_permanent_block_confirm_block_button"
  Then User wait "card_center_permanent_block_confirm_mail_address" will be gone
  
  Then "card_center_widget" will be displayed
  And User expect "card_center_m_card_blocked_status_dashboard" equal with "card_center_permanently_blocked"
  Then "card_center_m_card_activate_dashboard" will be displayed
  And User swipe down until found "dashboard_active_balance_widget"
  And User expect "dashboard_active_balance_widget" equal with "card_center_pblock_nofee_active_balance"
  And User activate m-Card
  And User click "card_center_m_card_dashboard"
  And User expect "card_center_x_card_exp" equal with "card_center_m_card_exp"
  And User go to dashboard from card center detail
  And User swipe up until found "dashboard_active_balance_widget"
  And User expect "dashboard_active_balance_widget" equal with "card_center_pblock_activation_active_balance"

# JENI-304
@uidatabound @android
Scenario:JENI304-C39424-Change e-Card Status from Active to Permanently Blocked - Choose "NO" on Confirmation Screen

  Given User is logged in with cif "card_center_active_to_pblock_e_card_cif"
  And User change language to "language"
  And User go to card center landing page from side menu
  Then "card_center_e_card_tb_dashboard" will be displayed
  And User click "card_center_e_card_tb_dashboard"

  Then "card_center_e_card_satay_dashboard" will be displayed
  Then "card_center_e_card_satay_refund" will be displayed
  Then "card_center_e_card_satay_top_up" will be displayed
  Then "card_center_e_card_satay_block_card" will be displayed
  Then "card_center_e_card_satay_change_limit" will be displayed
  And User click "card_center_e_card_satay_block_card"

  Then "card_center_e_card_block_pop_up" will be displayed
  Then "card_center_e_card_block_pop_up_temporary" will be displayed
  Then "card_center_e_card_block_pop_up_permanent" will be displayed
  Then "card_center_e_card_block_pop_up_cancel" will be displayed
  And User click "card_center_e_card_block_pop_up_permanent"

  Then "card_center_permanent_block_page" will be displayed
  And User expect "card_center_permanent_block_page_title" equal with "card_center_permanent_block_page_title"
  And User expect "card_center_permanent_block_page_subtitle" equal with "card_center_permanent_block_page_subtitle"
  Then "card_center_card_dropdown" will be displayed
  And User expect "card_center_e_card_card_dropdown_card_type" equal with "card_center_e_card"
  And User click "card_center_permanent_block_page_block_button"

  Then "card_center_permanent_block_confirm_cancel_button" will be displayed
  Then "card_center_permanent_block_confirm_block_button" will be displayed
  And User click "card_center_permanent_block_confirm_cancel_button"
  Then User wait "card_center_permanent_block_confirm_cancel_button" will be gone
  
  Then "card_center_e_card_status_dashboard" will be displayed
  And User expect "card_center_e_card_status_dashboard" equal with "card_center_active"

@uidatabound @android
Scenario:JENI304-C39432-Click No on Confirmation Screen of Permanently Block E-Card

  Given User is logged in with cif "card_center_active_to_pblock_e_card_cif"
  And User change language to "language"
  And User go to card center landing page from side menu
  Then "card_center_landing_page_cta_block" will be displayed
  And User click "card_center_landing_page_cta_block"
  And User click "card_center_block_detail_permanent_block"

  Then "card_center_permanent_block_page" will be displayed
  And User expect "card_center_permanent_block_page_title" equal with "card_center_permanent_block_page_title"
  And User expect "card_center_permanent_block_page_subtitle" equal with "card_center_permanent_block_page_subtitle"
  Then "card_center_card_dropdown" will be displayed
  And User click "card_center_card_dropdown"
  And User click "card_center_dropdown_option_e_card"
  And User expect "card_center_e_card_card_dropdown_card_type" equal with "card_center_e_card"
  And User expect "card_center_reason_dropdown_text_input" equal with "card_center_dropdown_reason_compromised"
  And User click "card_center_permanent_block_page_block_button"

  Then "card_center_permanent_block_confirm_cancel_button" will be displayed
  Then "card_center_permanent_block_confirm_block_button" will be displayed
  And User click "card_center_permanent_block_confirm_cancel_button"
  Then User wait "card_center_permanent_block_confirm_cancel_button" will be gone
  
  Then "card_center_e_card_status_dashboard" will be displayed
  And User expect "card_center_e_card_status_dashboard" equal with "card_center_temporarily_blocked"

@uidatabound @android
Scenario:JENI304-C39422-Permanently block e-Card from card details

  Given User is logged in with cif "card_center_active_to_pblock_e_card_cif"
  And User change language to "language"
  And User go to card center landing page from side menu
  Then "card_center_e_card_dashboard" will be displayed
  And User click "card_center_e_card_dashboard"

  Then "card_center_detail" will be displayed
  And User click "card_center_block_card_cta_button"
  And User click "card_center_block_detail_permanent_block"

  Then "card_center_permanent_block_page" will be displayed

@uidatabound @android
#JENI304-C39428-Permanently Block E-Card from Card Detail
#JENI304-C39431-Permanently Block E-Card from Card Detail (Widget)
Scenario:JENI304-C39421#C39428#C39431-Permanently block e-Card from in card widget detail

  Given User is logged in with cif "card_center_active_to_pblock_e_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_e_card_dashboard"
  And User click "card_center_e_card_dashboard"

  Then "card_center_detail" will be displayed
  And User click "card_center_block_card_cta_button"
  And User click "card_center_block_detail_permanent_block"

  Then "card_center_permanent_block_page" will be displayed

@uidatabound @android
#JENI304-C39426-Permanently Block e-Card from 3-dots in Card Widget detail
#JENI304-C39430-Permanently Block E-Card from 3-Dots (Widget)
Scenario:JENI304-C39420#C39426#C39430-Permanently block e-Card from 3 dots button on the widget overview

  Given User is logged in with cif "card_center_active_to_pblock_e_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_e_card_dashboard"
  Then "card_center_e_card_tb_dashboard" will be displayed
  And User click "card_center_e_card_tb_dashboard"

  Then "card_center_e_card_satay_dashboard" will be displayed
  Then "card_center_e_card_satay_refund" will be displayed
  Then "card_center_e_card_satay_top_up" will be displayed
  Then "card_center_e_card_satay_block_card" will be displayed
  Then "card_center_e_card_satay_change_limit" will be displayed
  And User click "card_center_e_card_satay_block_card"

  Then "card_center_e_card_block_pop_up" will be displayed
  Then "card_center_e_card_block_pop_up_temporary" will be displayed
  Then "card_center_e_card_block_pop_up_permanent" will be displayed
  Then "card_center_e_card_block_pop_up_cancel" will be displayed
  And User click "card_center_e_card_block_pop_up_permanent"

  Then "card_center_permanent_block_page" will be displayed

@uidatabound @android
#JENI304-C39427-Permanently Block E-Card from Card Overview
Scenario:JENI304-C39419#C39427-Permanently block e-Card from card overview page 

  Given User is logged in with cif "card_center_active_to_pblock_e_card_cif"
  And User change language to "language"
  And User go to card center landing page from side menu
  Then "card_center_landing_page_cta_block" will be displayed
  And User click "card_center_landing_page_cta_block"
  And User click "card_center_block_detail_permanent_block"

  Then "card_center_permanent_block_page" will be displayed
  And User click "card_center_card_dropdown"
  And User click "card_center_dropdown_option_e_card"
  And User expect "card_center_reason_dropdown_text_input" equal with "card_center_dropdown_reason_compromised"

@endtoend @android
#JENI304-C39417-Permanently block e-Card from 3 dots button in card overview
#JENI304-C59706-Check new active e-card got the balance of the permanently blocked e-card
#JENI304-C39429-Permanently Block E-Card from 3-Dots
Scenario: JENI304-C39417#C59706#C39429-Permanently block e-Card from 3 dots button in card overview and Check new active e-card got the balance of the permanently blocked e-card

  Given User is logged in with cif "card_center_active_to_pblock_e_card_cif"
  And User change language to "language"
  And User go to card center landing page from side menu
  Then "card_center_e_card_tb_dashboard" will be displayed
  And User click "card_center_e_card_tb_dashboard"

  Then "card_center_e_card_satay_dashboard" will be displayed
  Then "card_center_e_card_satay_refund" will be displayed
  Then "card_center_e_card_satay_top_up" will be displayed
  Then "card_center_e_card_satay_block_card" will be displayed
  Then "card_center_e_card_satay_change_limit" will be displayed
  And User click "card_center_e_card_satay_block_card"

  Then "card_center_e_card_block_pop_up" will be displayed
  Then "card_center_e_card_block_pop_up_temporary" will be displayed
  Then "card_center_e_card_block_pop_up_permanent" will be displayed
  Then "card_center_e_card_block_pop_up_cancel" will be displayed
  And User click "card_center_e_card_block_pop_up_permanent"

  Then "card_center_permanent_block_page" will be displayed
  And User expect "card_center_permanent_block_page_title" equal with "card_center_permanent_block_page_title"
  And User expect "card_center_permanent_block_page_subtitle" equal with "card_center_permanent_block_page_subtitle"
  Then "card_center_card_dropdown" will be displayed
  And User expect "card_center_e_card_card_dropdown_card_type" equal with "card_center_e_card"
  And User click "card_center_permanent_block_page_block_button"

  Then "card_center_permanent_block_confirm_cancel_button" will be displayed
  Then "card_center_permanent_block_confirm_block_button" will be displayed
  And User click "card_center_permanent_block_confirm_block_button"
  Then User wait "card_center_permanent_block_confirm_block_button" will be gone
  
  Then "card_center_e_card_status_dashboard" will be displayed
  And User expect "card_center_e_card_status_dashboard" equal with "card_center_replace_e_card"
  And User expect "card_center_e_card_balance_dashboard" equal with "card_center_pblock_e_card_new_balance_dashboard"

@uidatabound @android
Scenario:JENI304-C39425-Change e-Card Status from Temporary Blocked to Permanently Blocked - Choose "NO" on Confirmation Screen

  Given User is logged in with cif "card_center_tblock_to_pblock_e_card_cif"
  And User change language to "language"
  And User go to card center landing page from side menu
  Then "card_center_landing_page_cta_block" will be displayed
  And User click "card_center_landing_page_cta_block"
  And User click "card_center_block_detail_permanent_block"

  Then "card_center_permanent_block_page" will be displayed
  And User expect "card_center_permanent_block_page_title" equal with "card_center_permanent_block_page_title"
  And User expect "card_center_permanent_block_page_subtitle" equal with "card_center_permanent_block_page_subtitle"
  Then "card_center_card_dropdown" will be displayed
  And User click "card_center_card_dropdown"
  And User click "card_center_dropdown_option_e_card"
  And User expect "card_center_e_card_card_dropdown_card_type" equal with "card_center_e_card"
  And User expect "card_center_reason_dropdown_text_input" equal with "card_center_dropdown_reason_compromised"
  And User click "card_center_permanent_block_page_block_button"

  Then "card_center_permanent_block_confirm_cancel_button" will be displayed
  Then "card_center_permanent_block_confirm_block_button" will be displayed
  And User click "card_center_permanent_block_confirm_cancel_button"
  Then User wait "card_center_permanent_block_confirm_cancel_button" will be gone
  
  Then "card_center_e_card_status_dashboard" will be displayed
  And User expect "card_center_e_card_status_dashboard" equal with "card_center_temporarily_blocked"

@uidatabound @android
Scenario:JENI304-C39433-Permanent block temporary blocked e-card from detail page

  Given User is logged in with cif "card_center_tblock_to_pblock_e_card_cif"
  And User change language to "language"
  And User go to card center landing page from side menu
  Then "card_center_e_card_dashboard" will be displayed
  And User click "card_center_e_card_dashboard"

  Then "card_center_detail" will be displayed
  And User click "card_center_more_cta_button"
  And User click "card_center_block_detail_permanent_block"

  Then "card_center_permanent_block_page" will be displayed

@uidatabound @android
Scenario:JENI304-C39434-Permanent block temporary blocked e-card from overflow menu

  Given User is logged in with cif "card_center_tblock_to_pblock_e_card_cif"
  And User change language to "language"
  And User go to card center landing page from side menu
  Then "card_center_e_card_tb_dashboard" will be displayed
  And User click "card_center_e_card_tb_dashboard" until "card_center_e_card_satay_dashboard" displayed

  Then "card_center_e_card_satay_refund" will be displayed
  Then "card_center_e_card_satay_top_up" will be displayed
  Then "card_center_e_card_satay_permanent_block_card" will be displayed
  Then "card_center_e_card_satay_unblock_card" will be displayed
  And User click "card_center_e_card_satay_permanent_block_card"

  Then "card_center_permanent_block_page" will be displayed

@endtoend @android
Scenario:JENI304-C39423-Change e-Card Status from Temporary Blocked to Permanently Blocked from "Block Card" button in Card Overview

  Given User is logged in with cif "card_center_tblock_to_pblock_e_card_cif"
  And User change language to "language"
  And User go to card center landing page from side menu
  Then "card_center_landing_page_cta_block" will be displayed
  And User click "card_center_landing_page_cta_block"
  And User click "card_center_block_detail_permanent_block"

  Then "card_center_permanent_block_page" will be displayed
  And User expect "card_center_permanent_block_page_title" equal with "card_center_permanent_block_page_title"
  And User expect "card_center_permanent_block_page_subtitle" equal with "card_center_permanent_block_page_subtitle"
  Then "card_center_card_dropdown" will be displayed
  And User click "card_center_card_dropdown"
  And User click "card_center_dropdown_option_e_card"
  And User expect "card_center_e_card_card_dropdown_card_type" equal with "card_center_e_card"
  And User expect "card_center_reason_dropdown_text_input" equal with "card_center_dropdown_reason_compromised"
  And User click "card_center_permanent_block_page_block_button"

  Then "card_center_permanent_block_confirm_cancel_button" will be displayed
  Then "card_center_permanent_block_confirm_block_button" will be displayed
  And User click "card_center_permanent_block_confirm_block_button"
  Then User wait "card_center_permanent_block_confirm_block_button" will be gone
  
  Then "card_center_e_card_status_dashboard" will be displayed
  And User expect "card_center_e_card_status_dashboard" equal with "card_center_replace_e_card"
  And User expect "card_center_e_card_balance_dashboard" equal with "card_center_tblock_e_card_new_balance_dashboard"

# JENI-302
@android @ios @uidatabound
Scenario:JENI302-C23310-Temporarily Blocked of x-card in quick action (3 dots) in Dashboard
  Given User is logged in with cif "card_center_active_to_tblock_x_card_cif"
  And User check app language is "language"
  And User swipe up until found "send_it_widget_title"
  And User click "card_center_active_x_card_three_dots"
  And User click "card_center_block_card_pop_up_menu_item"
  Then "card_center_temporary_block_cta_button" will be displayed
  Then "card_center_permanent_block_cta_button" will be displayed
  Then User expect "card_center_temporary_block_cta_button" is exist
  # the action will be refer to scenario JENI302-T1134661

@android @ios @uidatabound
Scenario:JENI302-C23315-Temporarily of x-card in quick action (3 dots) in Card Center landing
  Given User is logged in with cif "card_center_active_to_tblock_x_card_cif"
  And User check app language is "language"
  And User swipe up until found "card_center_widget"
  And User click "card_center_widget"
  Then "card_center_tutorial_frame" will be displayed
  And User click "card_center_close_tutorial"
  And User wait "card_center_loading_screen" will be gone
  Then "card_center_landing_page" will be displayed
  And User click "card_center_active_x_card_three_dots"
  And User click "card_center_block_card_pop_up_menu_item"
  Then "card_center_temporary_block_cta_button" will be displayed
  Then "card_center_permanent_block_cta_button" will be displayed
  Then User expect "card_center_temporary_block_cta_button" is exist
  # the action will be refer to scenario JENI302-T1134661

@android @ios @uidatabound
Scenario:JENI302-C23311-Temporarily Blocked of x-card with CTA in Card details
  Given User is logged in with cif "card_center_active_to_tblock_x_card_cif"
  And User check app language is "language"
  And User swipe up until found "card_center_widget"
  And User click "card_center_widget"
  Then "card_center_tutorial_frame" will be displayed
  And User click "card_center_close_tutorial"
  And User wait "card_center_loading_screen" will be gone
  Then "card_center_landing_page" will be displayed
  And User click "card_center_x_card_status"
  And User click "card_center_block_card_cta_button"
  Then "card_center_temporary_block_cta_button" will be displayed
  Then "card_center_permanent_block_cta_button" will be displayed
  And User click "card_center_temporary_block_cta_button"
  # Wait for x-card status change
  And User wait "card_center_loading_screen" will be gone
  Then User expect "card_center_x_card_status_detail" equal with "card_center_temporarily_block_card_detail_status"
  Then "card_center_unblock_cta_button" will be displayed
  # Then "card_center_permanent_block_cta_button" will be displayed
  # Open the blocked x-card steps
  And User click "card_center_unblock_cta_button"

@android @ios @uidatabound
Scenario:JENI302-C23316-Temporarily Blocked of x-card with CTA in Card details: Cancel
  Given User is logged in with cif "card_center_active_to_tblock_x_card_cif"
  And User check app language is "language"
  And User swipe up until found "card_center_widget"
  And User click "card_center_widget"
  Then "card_center_tutorial_frame" will be displayed
  And User click "card_center_close_tutorial"
  And User wait "card_center_loading_screen" will be gone
  Then "card_center_landing_page" will be displayed
  And User click "card_center_x_card_status"
  And User click "card_center_block_card_cta_button"
  Then "card_center_temporary_block_cta_button" will be displayed
  Then "card_center_permanent_block_cta_button" will be displayed
  And User click "card_center_cancel_button"
  And User click "back_button"
  Then User expect "card_center_x_card_status" contains "card_center_active"

@android @ios @uidatabound
Scenario:JENI302-C23312-Temporarily Blocked of x-card in quick action (3 dots) in Dashboard: Cancel
  Given User is logged in with cif "card_center_active_to_tblock_x_card_cif"
  And User check app language is "language"
  And User swipe up until found "send_it_widget_title"
  And User click "card_center_active_x_card_three_dots"
  And User click "card_center_block_card_menu_item"
  Then "card_center_temporary_block_cta_button" will be displayed
  Then "card_center_permanent_block_cta_button" will be displayed
  And User click "card_center_cancel_button"
  Then User expect "card_center_x_card_status" contains "card_center_active"

@android @ios @uidatabound
Scenario:JENI302-C23317-Temporarily of x-card in quick action (3 dots) in Card Center landing: Cancel
  Given User is logged in with cif "card_center_active_to_tblock_x_card_cif"
  And User check app language is "language"
  And User swipe up until found "card_center_widget"
  And User click "card_center_widget"
  Then "card_center_tutorial_frame" will be displayed
  And User click "card_center_close_tutorial"
  And User wait "card_center_loading_screen" will be gone
  Then "card_center_landing_page" will be displayed
  And User click "card_center_active_x_card_three_dots"
  And User click "card_center_block_card_pop_up_menu_item"
  Then "card_center_temporary_block_cta_button" will be displayed
  Then "card_center_permanent_block_cta_button" will be displayed
  And User click "card_center_cancel_button"
  Then User expect "card_center_x_card_status" contains "card_center_active"

# JENI-228/ JENI1669, need confirm and discussion with gilang
@android @ios @uidatabound
Scenario: JENI228-C63960-Card details (free): an active m-card > Cancel
  Given User is logged in with cif "card_center_active_to_pblock_m_card_cif_free"
  And User check app language is "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_m_card_clickable"
  Then "card_center_change_pin_cta_button" will be displayed
  Then "card_center_block_card_cta_button" will be displayed
  Then "card_center_change_limit_cta_button" will be displayed
  And User click "card_center_block_card_cta_button"
  Then "card_center_permanent_block_cta_button" will be displayed
  Then "card_center_temporary_block_cta_button" will be displayed
  Then "card_center_cancel_button" will be displayed
  And User click "card_center_permanent_block_cta_button"
  Then "card_center_permanent_block_title" will be displayed
  Then "card_center_permanent_block_sub_title" will be displayed
  Then "card_center_select_block_card" will be displayed
  And User click "card_center_select_block_reason"
  And User click "card_center_block_reason_stolen"
  And User click "card_center_permanent_block_button"
  And User click "card_center_block_card_confirmation_cancel_button"
  Then "card_center_change_pin_cta_button" will be displayed
  Then "card_center_block_card_cta_button" will be displayed
  Then "card_center_change_limit_cta_button" will be displayed

@android @ios @uidatabound
Scenario: JENI228-C48109-Card details (free): an active m-card > Cancel
  Given User is logged in with cif "card_center_active_to_pblock_m_card_cif_free"
  And User check app language is "language"
  And User swipe up until found "send_it_widget_title"
  And User click "card_center_active_m_card_three_dots"
  Then "card_center_change_pin_m_card_menu_item" will be displayed
  Then "card_center_block_card_m_card_menu_item" will be displayed
  Then "card_center_change_limit_m_card_menu_item" will be displayed
  And User click "card_center_block_card_m_card_menu_item"
  Then "card_center_permanent_block_cta_button" will be displayed
  Then "card_center_temporary_block_cta_button" will be displayed
  Then "card_center_cancel_button" will be displayed
  And User click "card_center_permanent_block_cta_button"
  Then "card_center_permanent_block_title" will be displayed
  Then "card_center_permanent_block_sub_title" will be displayed
  Then "card_center_select_block_card" will be displayed
  And User click "card_center_select_block_reason"
  And User click "card_center_block_reason_stolen"
  And User click "card_center_permanent_block_button"
  Then User expect "card_center_block_card_confirmation_address" equal with "card_center_permanent_block_confirm_mail_address"

@android @ios @uidatabound
Scenario: JENI228-C48116-Card details (free): a temporarily blocked m-card > Cancel
  Given User is logged in with cif "card_center_tblock_to_pblock_m_card_cif"
  And User check app language is "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_m_card_clickable"
  Then "card_center_unblock_cta_button" will be displayed
  Then "card_center_card_detail_permanent_block_cta_button" will be displayed
  And User click "card_center_card_detail_permanent_block_cta_button"
  Then "card_center_permanent_block_title" will be displayed
  Then "card_center_permanent_block_sub_title" will be displayed
  Then "card_center_select_block_card" will be displayed
  And User click "card_center_select_block_reason"
  And User click "card_center_block_reason_stolen"
  And User click "card_center_permanent_block_button"
  And User click "card_center_block_card_confirmation_cancel_button"
  Then "card_center_unblock_cta_button" will be displayed
  Then "card_center_card_detail_permanent_block_cta_button" will be displayed
  Then User expect "card_center_card_detail_status" equal with "card_center_temporarily_block_card_detail_status"

@android @uidatabound
Scenario: JENI228-C45980-Permanent Block: Active m-card: balance is less than issue card fee from m-card details
  Given User is logged in with cif "card_center_active_m_card_zero_e_card"
  And User check app language is "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_m_card_clickable"
  Then "card_center_change_pin_cta_button" will be displayed
  Then "card_center_block_card_cta_button" will be displayed
  Then "card_center_change_limit_cta_button" will be displayed
  And User click "card_center_block_card_cta_button"
  Then "card_center_permanent_block_cta_button" will be displayed
  Then "card_center_temporary_block_cta_button" will be displayed
  Then "card_center_cancel_button" will be displayed
  And User click "card_center_permanent_block_cta_button"
  Then "card_center_permanent_block_title" will be displayed
  Then "card_center_permanent_block_sub_title" will be displayed
  Then "card_center_select_block_card" will be displayed
  And User click "card_center_select_block_reason"
  And User click "card_center_block_reason_stolen"
  And User click "card_center_permanent_block_button"
  Then "card_center_block_card_top_up_balance_button" will be displayed
  Then "card_center_block_card_confirmation_cancel_button" will be displayed
  And User click "card_center_block_card_confirmation_cancel_button"
  Then "card_center_change_pin_cta_button" will be displayed
  Then "card_center_block_card_cta_button" will be displayed
  Then "card_center_change_limit_cta_button" will be displayed

@android @endtoend
Scenario: JENI228-C45975-Card details (free): an active m-card > Block Card
  Given User is logged in with cif "card_center_active_to_pblock_m_card_cif"
  And User check app language is "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_m_card_clickable"
  Then "card_center_change_pin_cta_button" will be displayed
  Then "card_center_block_card_cta_button" will be displayed
  Then "card_center_change_limit_cta_button" will be displayed
  And User click "card_center_block_card_cta_button"
  Then "card_center_permanent_block_cta_button" will be displayed
  Then "card_center_temporary_block_cta_button" will be displayed
  Then "card_center_cancel_button" will be displayed
  And User click "card_center_permanent_block_cta_button"
  Then "card_center_permanent_block_title" will be displayed
  Then "card_center_permanent_block_sub_title" will be displayed
  Then "card_center_select_block_card" will be displayed
  And User click "card_center_select_block_reason"
  And User click "card_center_block_reason_stolen"
  And User click "card_center_permanent_block_button"
  And User click "card_center_block_card_confirmation_submit_button"
  Then User expect "card_center_card_detail_status" equal with "card_center_permanently_block_card_detail_status"
  Then User expect "card_center_change_pin_cta_button" doesn't exist
  Then User expect "card_center_block_card_cta_button" doesn't exist
  Then User expect "card_center_change_limit_cta_button" doesn't exist

@android @endtoend
Scenario: JENI228-C45978-Permanent Block: a temporarily block m-card in Card detail
  Given User is logged in with cif "card_center_tblock_to_pblock_m_card_cif"
  And User check app language is "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_m_card_clickable"
  Then "card_center_unblock_cta_button" will be displayed
  Then "card_center_permanent_block_cta_button" will be displayed
  And User click "card_center_permanent_block_cta_button"
  Then "card_center_permanent_block_title" will be displayed
  Then "card_center_permanent_block_sub_title" will be displayed
  Then "card_center_select_block_card" will be displayed
  And User click "card_center_select_block_reason"
  And User click "card_center_block_reason_stolen"
  And User click "card_center_permanent_block_button"
  And User click "card_center_block_card_confirmation_submit_button"
  Then User expect "card_center_card_detail_status" equal with "card_center_permanently_block_card_detail_status"
  Then User expect "card_center_change_pin_cta_button" doesn't exist
  Then User expect "card_center_block_card_cta_button" doesn't exist
  Then User expect "card_center_change_limit_cta_button" doesn't exist
  # assert for fee

@android @endtoend
Scenario: JENI228-C48115-Card details (free): a temporarily blocked m-card > Block Card
  Given User is logged in with cif "card_center_tblock_to_pblock_m_card_cif_no_fee"
  And User check app language is "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_m_card_clickable"
  Then "card_center_unblock_cta_button" will be displayed
  Then "card_center_permanent_block_cta_button" will be displayed
  And User click "card_center_permanent_block_cta_button"
  Then "card_center_permanent_block_title" will be displayed
  Then "card_center_permanent_block_sub_title" will be displayed
  Then "card_center_select_block_card" will be displayed
  And User click "card_center_select_block_reason"
  And User click "card_center_block_reason_stolen"
  And User click "card_center_permanent_block_button"
  And User click "card_center_block_card_confirmation_submit_button"
  Then User expect "card_center_card_detail_status" equal with "card_center_permanently_block_card_detail_status"
  Then User expect "card_center_change_pin_cta_button" doesn't exist
  Then User expect "card_center_block_card_cta_button" doesn't exist
  Then User expect "card_center_change_limit_cta_button" doesn't exist

# JENI-40
@uidatabound @android 
Scenario:JENI40-C17892-[Layout]The account is active: m-card is Activate
  Given User is logged in with cif "card_center_inactive_m_card_cif_ui"
  And User change language to "language"
  Then "dashboard" will be displayed
  
  And User swipe up until found "card_center_m_card_activate_dashboard"

  And User expect "card_center_m_card_activate_dashboard" equal with "card_center_activate"

@uidatabound @android
Scenario:JENI40-C17893-[Layout]Activate m-card from card center (widget)
  Given User is logged in with cif "card_center_inactive_m_card_cif_ui"
  And User change language to "language"
  Then "dashboard" will be displayed
  
  And User swipe up until found "card_center_m_card_activate_dashboard"

  And User expect "card_center_m_card_activate_dashboard" equal with "card_center_activate"
  And User click "card_center_m_card_activate_dashboard"
  Then "card_center_card_activation_form" will be displayed

@uidatabound @android
Scenario:JENI40-C17894-[Layout]Activate m-card from card center (landing)
  Given User is logged in with cif "card_center_inactive_to_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed

  And User go to card center landing page from side menu

  And User expect "card_center_m_card_activate_dashboard" equal with "card_center_activate"
  And User click "card_center_m_card_activate_dashboard"
  Then "card_center_card_activation_form" will be displayed

@endtoend @android
Scenario:JENI40-C17896-Activate m-card: wrong CVV
  Given User is logged in with cif "card_center_inactive_to_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed

  And User go to card center landing page from side menu

  And User expect "card_center_m_card_activate_dashboard" equal with "card_center_activate"
  And User click "card_center_m_card_activate_dashboard"
  Then "card_center_card_activation_form" will be displayed

  When User fill "card_center_card_cvv_field" with 123
  When User fill "card_center_card_pin_field" with "card_center_correct_activate_m_card_pin"
  When User fill "card_center_card_pin_confirm_field" with "card_center_correct_activate_m_card_pin"
  And User click "card_center_x_activate_form_activate_button"

  And User expect "top_notification_snackbar" equal with "card_center_invalid_cvv"

@uidatabound @android 
Scenario:JENI40-C17897-Activate m-card: setting PIN is < 6 digits
  Given User is logged in with cif "card_center_inactive_to_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed

  And User go to card center landing page from side menu

  And User expect "card_center_m_card_activate_dashboard" equal with "card_center_activate"
  And User click "card_center_m_card_activate_dashboard"
  Then "card_center_card_activation_form" will be displayed

  When User fill "card_center_card_cvv_field" with "card_center_activate_m_card_correct_cvv"
  When User fill "card_center_card_pin_field" with 1
  When User fill "card_center_card_pin_confirm_field" with 1
  And User click "card_center_x_activate_form_activate_button"

  And User expect "card_center_card_pin_hint" equal with "card_center_card_pin_few"
  And User expect "card_center_card_pin_confirm_hint" equal with "card_center_card_pin_few"

  When User fill "card_center_card_pin_field" with 123
  When User fill "card_center_card_pin_confirm_field" with 123
  And User click "card_center_x_activate_form_activate_button"

  And User expect "card_center_card_pin_hint" equal with "card_center_card_pin_few"
  And User expect "card_center_card_pin_confirm_hint" equal with "card_center_card_pin_few"

  And User click "card_center_card_pin_field_eye"
  When User fill "card_center_card_pin_field" with 12345
  And User click "card_center_card_pin_confirm_field_eye"
  When User fill "card_center_card_pin_confirm_field" with 12345
  And User click "card_center_x_activate_form_activate_button"

  And User expect "card_center_card_pin_hint" equal with "card_center_card_pin_few"
  And User expect "card_center_card_pin_confirm_hint" equal with "card_center_card_pin_few"

@uidatabound @android 
Scenario:JENI40-C17899-Activate m-card: doesn't match PIN
  
  Given User is logged in with cif "card_center_inactive_to_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  
  And User swipe up until found "card_center_m_card_activate_dashboard"

  And User expect "card_center_m_card_activate_dashboard" equal with "card_center_activate"
  And User click "card_center_m_card_activate_dashboard"
  When User fill "card_center_card_cvv_field" with "card_center_activate_m_card_correct_cvv"
  When User fill "card_center_card_pin_field" with "card_center_correct_activate_m_card_pin"
  When User fill "card_center_card_pin_confirm_field" with 123456
  And User click "card_center_x_activate_form_activate_button"

  And User expect "card_center_card_pin_confirm_hint" equal with "card_center_card_pin_not_match"

@uidatabound @android 
Scenario:JENI40-C17900-Activate m-card: input PIN, but don't input confirm PIN
  
  Given User is logged in with cif "card_center_inactive_to_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  
  And User swipe up until found "card_center_m_card_activate_dashboard"

  And User expect "card_center_m_card_activate_dashboard" equal with "card_center_activate"
  And User click "card_center_m_card_activate_dashboard"
  When User fill "card_center_card_cvv_field" with "card_center_activate_m_card_correct_cvv"
  When User fill "card_center_card_pin_field" with "card_center_correct_activate_m_card_pin"
  And User click "card_center_x_activate_form_activate_button"
  And User click "card_center_x_activate_form_activate_button"

  And User expect "card_center_card_pin_confirm_hint" equal with "card_center_card_pin_empty"

@uidatabound @android 
Scenario:JENI40-C17901-Activate m-card: don't input PIN, input confirm PIN
  
  Given User is logged in with cif "card_center_inactive_to_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  
  And User swipe up until found "card_center_m_card_activate_dashboard"

  And User expect "card_center_m_card_activate_dashboard" equal with "card_center_activate"
  And User click "card_center_m_card_activate_dashboard"
  When User fill "card_center_card_cvv_field" with "card_center_activate_m_card_correct_cvv"
  When User fill "card_center_card_pin_confirm_field" with "card_center_correct_activate_m_card_pin"
  And User click "card_center_x_activate_form_activate_button"

  And User expect "card_center_card_pin_hint" equal with "card_center_card_pin_empty"

@uidatabound @android 
Scenario:JENI40-C17912-Activate m-card: submit an empty form
  
  Given User is logged in with cif "card_center_inactive_to_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  
  And User swipe up until found "card_center_m_card_activate_dashboard"

  And User expect "card_center_m_card_activate_dashboard" equal with "card_center_activate"
  And User click "card_center_m_card_activate_dashboard"
  And User click "card_center_x_activate_form_activate_button"

  And User expect "card_center_card_pin_hint" equal with "card_center_card_pin_empty"
  And User expect "card_center_card_pin_confirm_hint" equal with "card_center_card_pin_empty"
  And User expect "card_center_card_cvv_hint" equal with "card_center_card_cvv_empty"

@uidatabound @android 
Scenario:JENI40-C17937-Activate m-card: PIN is predictable
  
  Given User is logged in with cif "card_center_inactive_to_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  
  And User swipe up until found "card_center_m_card_activate_dashboard"

  And User expect "card_center_m_card_activate_dashboard" equal with "card_center_activate"
  And User click "card_center_m_card_activate_dashboard"
  When User fill "card_center_card_cvv_field" with "card_center_activate_m_card_correct_cvv"
  When User fill "card_center_card_pin_field" with 123456
  When User fill "card_center_card_pin_confirm_field" with 123456
  And User click "card_center_x_activate_form_activate_button"

  And User expect "card_center_card_pin_hint" equal with "card_center_card_pin_easy"

  And User click "card_center_card_pin_field_eye"
  When User fill "card_center_card_pin_field" with 111111
  And User click "card_center_card_pin_confirm_field_eye"
  When User fill "card_center_card_pin_confirm_field" with 111111
  And User click "card_center_x_activate_form_activate_button"

  And User expect "card_center_card_pin_hint" equal with "card_center_card_pin_easy"

  When User fill "card_center_card_pin_field" with 121212
  When User fill "card_center_card_pin_confirm_field" with 121212
  And User click "card_center_x_activate_form_activate_button"

  And User expect "card_center_card_pin_hint" equal with "card_center_card_pin_easy"

  When User fill "card_center_card_pin_field" with 112233
  When User fill "card_center_card_pin_confirm_field" with 112233
  And User click "card_center_x_activate_form_activate_button"

  And User expect "card_center_card_pin_hint" equal with "card_center_card_pin_easy"

@uidatabound @android
Scenario:JENI40-C41128-Activate m-card sucessfully - Card Center landing
  Given User is logged in with cif "card_center_inactive_to_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed

  And User go to card center landing page from side menu

  And User expect "card_center_m_card_activate_dashboard" equal with "card_center_activate"
  And User click "card_center_m_card_activate_dashboard"
  Then "card_center_card_activation_form" will be displayed

@uidatabound @android
Scenario:JENI40-C17902-[Layout]Verify the activated m-card layout
  
  Given User is logged in with cif "card_center_inactive_x_card_cif_ui"
  And User change language to "language"
  Then "dashboard" will be displayed
  
  And User swipe up until found "card_center_m_card_activate_dashboard"

  And User expect "card_center_m_card_activate_dashboard" equal with "card_center_activate"
  And User click "card_center_m_card_activate_dashboard"

  Then "card_center_card_activation_form" will be displayed
  And User expect "card_center_card_activation_page_title" equal with "card_center_title_activate_card"
  Then "card_center_card_activation_page_card_picture" will be displayed
  And User expect "card_center_card_activation_page_card_type" equal with "card_center_m_card"
  And User expect "card_center_card_activation_page_card_number" equal with "card_center_activate_m_card_masked_number"
  Then "card_center_card_cvv_field" will be displayed
  Then "card_center_card_pin_field" will be displayed
  Then "card_center_card_pin_confirm_field" will be displayed
  Then "card_center_x_activate_form_activate_button" will be displayed

@uidatabound @android 
Scenario:JENI40-C17895-Activate m-card successfully - Card Center widget
  
  Given User is logged in with cif "card_center_inactive_to_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  
  And User swipe up until found "card_center_m_card_activate_dashboard"

  And User expect "card_center_m_card_activate_dashboard" equal with "card_center_activate"
  And User click "card_center_m_card_activate_dashboard"
  When User fill "card_center_card_cvv_field" with "card_center_activate_m_card_correct_cvv"
  When User fill "card_center_card_pin_field" with "card_center_correct_activate_m_card_pin"
  When User fill "card_center_card_pin_confirm_field" with "card_center_correct_activate_m_card_pin"
  Then "card_center_x_activate_form_activate_button" will be displayed

@endtoend @android
Scenario:JENI40-C17895-Activate m-card successfully - Card Center widget
  
  Given User is logged in with cif "card_center_inactive_to_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  
  And User swipe up until found "card_center_m_card_activate_dashboard"

  And User expect "card_center_m_card_activate_dashboard" equal with "card_center_activate"
  And User click "card_center_m_card_activate_dashboard"
  When User fill "card_center_card_cvv_field" with "card_center_activate_m_card_correct_cvv"
  When User fill "card_center_card_pin_field" with "card_center_correct_activate_m_card_pin"
  When User fill "card_center_card_pin_confirm_field" with "card_center_correct_activate_m_card_pin"
  And User click "card_center_x_activate_form_activate_button"

  And User expect "card_center_m_card_status_dashboard" equal with "card_center_active"

#JENI-1597
@uidatabound @android
# T1134853, please ignore this, commented for tracking note
Scenario:JENI1597-C59704-Card Center Widget (active, no fee): Check mailing address
  Given User access card center from total balance with cif "card_center_active_m_card_zero_e_card"
  When User click "card_center_permanent_block_cta_button" until "card_center_satay_permanent_block_card" displayed
  And User click "card_center_satay_permanent_block_card" until "card_center_reason_dropdown" displayed
  And User click "card_center_card_dropdown" until "card_center_m_card_clickable" displayed 
  And User click "card_center_m_card_clickable" until "card_center_select_block_card" displayed
  And User click "card_center_reason_dropdown" until "card_center_reason_dropdown_damaged" displayed
  And User click "card_center_reason_dropdown_damaged" until "card_center_select_block_card" displayed
  And User click "card_center_permanent_block_page_block_button" until "card_center_cancel_button" displayed
  Then User expect "card_center_permanent_block_confirm_mail_address" equal with "card_center_permanent_block_confirm_mail_address"

@uidatabound @android
# T1134827, please ignore it, commented for tracking need
Scenario:JENI1597-C48090-Card Center landing (CTA button, no fee): an active m-card > Cancel
  Given User access card center from dashboard widget with cif "card_center_active_m_card_zero_e_card"
  When User click "card_center_permanent_block_cta_button" until "card_center_satay_permanent_block_card" displayed
  And User click "card_center_satay_permanent_block_card" until "card_center_reason_dropdown" displayed
  And User click "card_center_card_dropdown" until "card_center_m_card_clickable" displayed 
  And User click "card_center_m_card_clickable" until "card_center_select_block_card" displayed
  And User click "card_center_reason_dropdown" until "card_center_reason_dropdown_damaged" displayed
  And User click "card_center_reason_dropdown_damaged" until "card_center_select_block_card" displayed
  And User click "card_center_permanent_block_page_block_button" until "card_center_cancel_button" displayed
  And User click "card_center_cancel_button" until "card_center_landing_page" displayed
  Then "card_center_landing_page" will be displayed
  And User expect "card_center_m_card_status_dashboard" equal with "card_center_active"

@uidatabound @android
# T1134834, please ignore it, commented for tracking need
Scenario:JENI1597-C48097-Card Center landing (CTA button, no fee): a temporarily blocked m-card > Cancel
  Given User access card center from dashboard widget with cif "card_center_active_m_card_zero_e_card"
  When User click "card_center_active_m_card_three_dots" until "card_center_satay_block_card" displayed
  And User click "card_center_satay_block_card" until "card_center_satay_permanent_block_card" displayed
  And User click "card_center_block_pop_up_temporary" until "card_center_reason_dropdown" displayed
  And User click "card_center_reason_dropdown" until "card_center_reason_dropdown_damaged" displayed
  And User click "card_center_reason_dropdown_damaged" until "card_center_select_block_card" displayed
  And User click "card_center_permanent_block_page_block_button" until "card_center_cancel_button" displayed
  And User click "card_center_cancel_button" until "card_center_landing_page" displayed
  Then "card_center_landing_page" will be displayed
  And User expect "card_center_m_card_status_dashboard" equal with "card_center_active"


#JENI-147
@uidatabound @android @R3_1 @ios
Scenario:JENI147-C21082-Check layout of the change PIN x-card 

  Given User is logged in with cif "card_center_active_x_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_active_x_card_three_dots"
  Then "card_center_active_x_card_three_dots" will be displayed
  And User click "card_center_active_x_card_three_dots"

  Then "card_center_x_card_satay_dashboard" will be displayed
  Then "card_center_x_card_satay_change_pin" will be displayed
  Then "card_center_x_card_satay_block_card" will be displayed
  Then "card_center_x_card_satay_change_limit" will be displayed
  Then "card_center_x_card_satay_top_up" will be displayed
  Then "card_center_x_card_satay_refund" will be displayed
  And User click "card_center_x_card_satay_change_pin"

  Then "card_center_change_pin_form" will be displayed
  Then "card_center_change_pin_page_title" will be displayed
  Then "card_center_change_pin_page_card_picture" will be displayed
  And User expect "card_center_change_pin_page_card_type" equal with "card_center_x_card_blank"
  And User expect "card_center_change_pin_page_card_number" equal with "card_center_x_card_masked_number"

  When User fill "card_center_card_pin_field" with "card_center_correct_change_pin_x_card_pin"
  And User check if "card_center_card_pin_field" field masked
  When User fill "card_center_card_pin_confirm_field" with "card_center_correct_change_pin_x_card_pin"
  And User check if "card_center_card_pin_confirm_field" field masked

  Then "card_center_change_pin_save_button" will be displayed

@endtoend @android @R3_1 @ios
Scenario:JENI147-C21083-Change PIN x-card page from Card Center dashboard

  Given User is logged in with cif "card_center_active_x_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_active_x_card_three_dots"
  And User click "card_center_active_x_card_three_dots"
  And User click "card_center_x_card_satay_change_pin"

  When User fill "card_center_card_pin_field" with "card_center_correct_change_pin_x_card_pin"
  When User fill "card_center_card_pin_confirm_field" with "card_center_correct_change_pin_x_card_pin"

  Then "card_center_change_pin_save_button" will be displayed
  And User click "card_center_change_pin_save_button"

  Then "card_center_password_verification_form" will be displayed
  And User fill "card_center_password_field" with "card_center_change_pin_password"
  And User click "card_center_password_submit_button"

  And User expect "top_notification_snackbar" equal with "card_center_change_pin_success"

@uidatabound @android @R3_1 @ios
Scenario:JENI147-C21083-Change PIN x-card page from Card Center dashboard

  Given User is logged in with cif "card_center_active_x_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_active_x_card_three_dots"
  And User click "card_center_active_x_card_three_dots"
  And User click "card_center_x_card_satay_change_pin"

  When User fill "card_center_card_pin_field" with "card_center_correct_change_pin_x_card_pin"
  When User fill "card_center_card_pin_confirm_field" with "card_center_correct_change_pin_x_card_pin"

  Then "card_center_change_pin_save_button" will be displayed

@uidatabound @android @R3_1 @ios
Scenario:JENI147-C21084-Change PIN x-card page from card center landing
  Given User is logged in with cif "card_center_active_x_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed

  And User go to card center landing page from side menu
  And User check and click "card_center_close_tutorial" if exist

  Then "card_center_active_x_card_three_dots" will be displayed
  And User click "card_center_active_x_card_three_dots"
  And User click "card_center_x_card_satay_change_pin"

  Then "card_center_change_pin_form" will be displayed

@uidatabound @android @R3_1 @ios
Scenario:JENI147-C21085-Open change PIN x-card page from card details
  Given User is logged in with cif "card_center_active_x_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed

  And User go to card center landing page from side menu
  And User check and click "card_center_close_tutorial" if exist

  And User click "card_center_first_x_card_dashboard"

  Then "card_center_detail" will be displayed
  Then "card_center_more_cta_button" will be displayed
  And User click "card_center_more_cta_button"
  And User click "card_center_more_change_pin_button"

  Then "card_center_change_pin_form" will be displayed

@uidatabound @android @R3_1 @ios
Scenario:JENI147-C21086-Change PIN of x-card: Cancel the changing (Dashboard)

  Given User is logged in with cif "card_center_active_x_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_active_x_card_three_dots"
  And User click "card_center_active_x_card_three_dots" until "card_center_x_card_satay_change_pin" displayed
  And User click "card_center_x_card_satay_change_pin"
  And User click "back_button"
  Then "dashboard" will be displayed

@uidatabound @android @R3_1 @ios
Scenario:JENI147-C21087-Change PIN of x-card: Cancel the changing (Card Center Landing)
  Given User is logged in with cif "card_center_active_x_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed

  And User go to card center landing page from side menu

  Then "card_center_active_x_card_three_dots" will be displayed
  And User click "card_center_active_x_card_three_dots"
  And User click "card_center_x_card_satay_change_pin"

  Then "card_center_change_pin_form" will be displayed
  And User click "back_button"
  Then "card_center_landing_page" will be displayed

@uidatabound @android @R3_1 @ios
Scenario:JENI147-C21097-Change PIN x-card page from card detail: Cancel the changing
  Given User is logged in with cif "card_center_active_x_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed

  And User go to card center landing page from side menu
  And User check and click "card_center_close_tutorial" if exist

  Then "card_center_first_x_card_dashboard" will be displayed
  And User click "card_center_first_x_card_dashboard"

  Then "card_center_detail" will be displayed
  Then "card_center_more_cta_button" will be displayed
  And User click "card_center_more_cta_button"
  And User click "card_center_more_change_pin_button"

  Then "card_center_change_pin_form" will be displayed
  And User click "back_button"
  Then "card_center_detail" will be displayed

@uidatabound @android @R3_1 @ios
Scenario:JENI147-C21088-Change x-card PIN: pin is predictable
  
  Given User is logged in with cif "card_center_active_x_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  
  And User swipe up until found "card_center_active_x_card_three_dots"
  Then "card_center_active_x_card_three_dots" will be displayed
  And User click "card_center_active_x_card_three_dots"
  And User click "card_center_x_card_satay_change_pin"

  When User fill "card_center_card_pin_field" with 123456
  When User fill "card_center_card_pin_confirm_field" with 123456
  And User click "card_center_change_pin_save_button"

  And User expect "card_center_card_pin_hint" equal with "card_center_card_pin_easy"

  And User click "card_center_card_pin_field_eye"
  When User fill "card_center_card_pin_field" with 111111
  And User click "card_center_card_pin_confirm_field_eye"
  When User fill "card_center_card_pin_confirm_field" with 111111
  And User click "card_center_change_pin_save_button"

  And User expect "card_center_card_pin_hint" equal with "card_center_card_pin_easy"

  When User fill "card_center_card_pin_field" with 121212
  When User fill "card_center_card_pin_confirm_field" with 121212
  And User click "card_center_change_pin_save_button"

  And User expect "card_center_card_pin_hint" equal with "card_center_card_pin_easy"

  When User fill "card_center_card_pin_field" with 112233
  When User fill "card_center_card_pin_confirm_field" with 112233
  And User click "card_center_change_pin_save_button"

  And User expect "card_center_card_pin_hint" equal with "card_center_card_pin_easy"

@uidatabound @android @R3_1 @ios
Scenario:JENI147-C21089-Change x-card PIN: pin doesn't match
  
  Given User is logged in with cif "card_center_active_x_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  
  And User swipe up until found "card_center_active_x_card_three_dots"
  And User click "card_center_active_x_card_three_dots"
  And User click "card_center_x_card_satay_change_pin"

  When User fill "card_center_card_pin_field" with "card_center_correct_change_pin_x_card_pin"
  When User fill "card_center_card_pin_confirm_field" with 123456
  And User click "card_center_change_pin_save_button"

  And User expect "card_center_card_pin_confirm_hint" equal with "card_center_card_pin_not_match"

@uidatabound @android @R3_1 @ios
Scenario:JENI147-C21090-Change x-card PIN: pin is less than 6 digits
  
  Given User is logged in with cif "card_center_active_x_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  
  And User swipe up until found "card_center_active_x_card_three_dots"
  And User click "card_center_active_x_card_three_dots"
  And User click "card_center_x_card_satay_change_pin"

  When User fill "card_center_card_pin_field" with 1
  When User fill "card_center_card_pin_confirm_field" with 1
  And User click "card_center_change_pin_save_button"

  And User expect "card_center_card_pin_hint" equal with "card_center_card_pin_few"
  And User expect "card_center_card_pin_confirm_hint" equal with "card_center_card_pin_few"

  When User fill "card_center_card_pin_field" with 123
  When User fill "card_center_card_pin_confirm_field" with 123
  And User click "card_center_change_pin_save_button"

  And User expect "card_center_card_pin_hint" equal with "card_center_card_pin_few"
  And User expect "card_center_card_pin_confirm_hint" equal with "card_center_card_pin_few"

  And User click "card_center_card_pin_field_eye"
  When User fill "card_center_card_pin_field" with 12345
  And User click "card_center_card_pin_confirm_field_eye"
  When User fill "card_center_card_pin_confirm_field" with 12345
  And User click "card_center_change_pin_save_button"

  And User expect "card_center_card_pin_hint" equal with "card_center_card_pin_few"
  And User expect "card_center_card_pin_confirm_hint" equal with "card_center_card_pin_few"

@uidatabound @android @R3_1 @ios
Scenario:JENI147-C21098-Change PIN x-card: Cancel the at Verification Code

  Given User is logged in with cif "card_center_active_x_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed

  And User go to card center landing page from side menu
  And User check and click "card_center_close_tutorial" if exist

  And User click "card_center_first_x_card_dashboard"

  Then "card_center_detail" will be displayed
  Then "card_center_more_cta_button" will be displayed
  And User click "card_center_more_cta_button"
  And User click "card_center_more_change_pin_button"
  Then "card_center_change_pin_form" will be displayed

  When User fill "card_center_card_pin_field" with "card_center_correct_change_pin_x_card_pin"
  When User fill "card_center_card_pin_confirm_field" with "card_center_correct_change_pin_x_card_pin"

  Then "card_center_change_pin_save_button" will be displayed
  And User click "card_center_change_pin_save_button"

  Then "card_center_password_verification_form" will be displayed
  And User fill "card_center_password_field" with 123
  And User click "back_button_stepup"

  Then "card_center_change_pin_form" will be displayed

#JENI-41
@uidatabound @android
Scenario: JENI41-C18245-Quick card action from 3 dot - m-card is Activate (widget)

  Given User is logged in with cif "card_center_inactive_m_card_cif_ui"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_m_card_dashboard"
  And User expect "card_center_m_card_activate_dashboard" equal with "card_center_activate"
  Then User expect "card_center_m_card_tb_dashboard" doesn't exist

@uidatabound @android
Scenario: JENI41-C17848-Quick card action from 3 dot - m-card is active (widget)

  Given User is logged in with cif "card_center_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_m_card_tb_dashboard"
  Then "card_center_m_card_tb_dashboard" will be displayed
  And User click "card_center_m_card_tb_dashboard" until "card_center_satay_dashboard" displayed
  Then "card_center_satay_change_pin" will be displayed
  Then "card_center_satay_block_card" will be displayed
  Then "card_center_satay_change_limit" will be displayed

@uidatabound @android
Scenario: JENI41-C17849-Quick card action from 3 dot - m-card is temporarily blocked (widget)

  Given User is logged in with cif "card_center_tblock_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_m_card_tb_dashboard"
  Then "card_center_m_card_tb_dashboard" will be displayed
  And User click "card_center_m_card_tb_dashboard" until "card_center_satay_dashboard" displayed
  Then "card_center_satay_unblock_card" will be displayed
  Then "card_center_satay_permanent_block_card" will be displayed

@uidatabound @android
Scenario: JENI41-C17857-Quick card action from 3 dot - m-card is permanently blocked (widget)

  Given User is logged in with cif "card_center_pblock_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_e_card_status_dashboard"
  And User expect "card_center_e_card_status_dashboard" equal with "card_center_permanently_blocked"
  Then User expect "card_center_e_card_tb_dashboard" doesn't exist

@uidatabound @android
Scenario: JENI41-C18246-Quick card action from 3 dot - m-card is Activate (Card Center Landing)

  Given User is logged in with cif "card_center_inactive_m_card_cif_ui"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User go to card center landing page from side menu
  And User expect "card_center_m_card_activate_dashboard" equal with "card_center_activate"
  Then User expect "card_center_m_card_tb_dashboard" doesn't exist

@uidatabound @android
Scenario: JENI41-C17850-Quick card action from 3 dot - m-card is active (card center landing)

  Given User is logged in with cif "card_center_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User go to card center landing page from side menu
  Then "card_center_m_card_tb_dashboard" will be displayed
  And User click "card_center_m_card_tb_dashboard" until "card_center_satay_dashboard" displayed
  Then "card_center_satay_change_pin" will be displayed
  Then "card_center_satay_block_card" will be displayed
  Then "card_center_satay_change_limit" will be displayed

@uidatabound @android
Scenario: JENI41-C17851-Quick card action from 3 dot - m-card is temporarily blocked (card center landing)

  Given User is logged in with cif "card_center_tblock_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User go to card center landing page from side menu
  Then "card_center_m_card_tb_dashboard" will be displayed
  And User click "card_center_m_card_tb_dashboard" until "card_center_satay_dashboard" displayed
  Then "card_center_satay_unblock_card" will be displayed
  Then "card_center_satay_permanent_block_card" will be displayed

@uidatabound @android
Scenario: JENI41-C17856-Quick card action from 3 dot - m-card is permanently blocked (card center landing)

  Given User is logged in with cif "card_center_pblock_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User go to card center landing page from side menu
  And User expect "card_center_e_card_status_dashboard" equal with "card_center_permanently_blocked"
  Then User expect "card_center_e_card_tb_dashboard" doesn't exist

@uidatabound @android
Scenario: JENI41-C17852-Quick card action from 3 dot - e-card is active (widget)

  Given User is logged in with cif "card_center_active_e_card_ui"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_e_card_tb_dashboard"
  Then "card_center_e_card_tb_dashboard" will be displayed
  And User click "card_center_e_card_tb_dashboard" until "card_center_e_card_satay_dashboard" displayed
  Then "card_center_e_card_satay_top_up" will be displayed
  Then "card_center_e_card_satay_block_card" will be displayed
  Then "card_center_e_card_satay_refund" will be displayed
  Then "card_center_e_card_satay_change_limit" will be displayed

#JENI-240
@uidatabound @android @ios
Scenario:JENI240-C85269-See e-Card Details (active, landing)

  Given User is logged in with cif "card_center_active_e_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User go to card center landing page from side menu
  And User click "card_center_e_card_dashboard"

  Then "card_center_x_card_image" will be displayed

  #Several steps are commented because we are still dont have the real data, now the data still using mock and random

  #And User expect "card_center_e_card_dashboard" equal with "card_center_e_card"
  And User expect "card_center_e_card_dashboard" is exist
  #And User expect "card_center_x_card_number" equal with "card_center_e_card_masked_number_ui"
  And User expect "card_center_x_card_number" is exist
  #And User expect "card_center_x_card_exp" equal with "card_center_e_card_exp_ui"
  And User expect "card_center_x_card_exp" is exist
  #And User expect "card_center_x_card_cvv_link" equal with "card_center_e_card_cvv_link"
  And User expect "card_center_x_card_cvv_link" is exist

  And User swipe up "card_center_detail" until found "card_center_x_card_trx_limit_label"

  And User expect "card_center_e_card_balance_label" is exist
  #And User expect "card_center_x_card_atm_limit_amt" equal with "card_center_e_card_balance_amt"
  And User expect "card_center_x_card_trx_limit_label" is exist
  #And User expect "card_center_x_card_trx_limit_amt" equal with "card_center_e_card_trx_limit_amt"

  Then "card_center_block_card" will be displayed
  Then "card_center_change_pin_cta_button" will be displayed
  Then "card_center_change_limit_cta_button" will be displayed

@uidatabound @android @ios
Scenario:JENI240-C85268-See e-Card Details (active, widget)

  Given User is logged in with cif "card_center_active_e_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_e_card_dashboard"
  And User click "card_center_e_card_dashboard"

  Then "card_center_x_card_image" will be displayed

@uidatabound @android @ios 
Scenario:JENI240-C85271-See e-Card Details (temporarily blocked, landing)

  Given User is logged in with cif "card_center_tblock_e_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User go to card center landing page from side menu
  And User click "card_center_e_card_dashboard"
  
  #Several steps are commented because we are still dont have the real data, now the data still using mock and random

  #Then "card_center_x_card_image" will be displayed
  Then "card_center_x_card_image_tblocked" will be displayed

  #And User expect "card_center_e_card_dashboard" equal with "card_center_e_card"
  #And User expect "card_center_e_card_dashboard" is exist
  #And User expect "card_center_x_card_number" equal with "card_center_e_card_masked_number_ui"
  And User expect "card_center_x_card_number" is exist

  #And User expect "card_center_x_card_exp" equal with "card_center_e_card_exp_ui"
  And User expect "card_center_x_card_exp" is exist
  And User expect "card_center_x_card_detail_tblocked" equal with "card_center_temporarily_block_card_detail_status"

  And User swipe up "card_center_detail" until found "card_center_x_card_trx_limit_label"

  And User expect "card_center_x_card_trx_limit_label" equal with "card_center_e_card_trx_limit_label"
  #And User expect "card_center_x_card_trx_limit_amt" equal with "card_center_e_card_trx_limit_amt"

  #This step is commented because there is no ATM withdrawal limit in temporarily blocked card

  #And User expect "card_center_x_card_atm_limit_label" equal with "card_center_x_card_atm_limit_label"
  #And User expect "card_center_x_card_atm_limit_amt" equal with "card_center_x_card_atm_limit_amt"

  Then "card_center_permanent_block_cta_button" will be displayed
  Then "card_center_unblock_cta_button" will be displayed

@uidatabound @android @ios 
Scenario:JENI240-C85270-See e-Card Details (temporarily blocked, widget)

  Given User is logged in with cif "card_center_tblock_e_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_e_card_dashboard"
  And User click "card_center_e_card_dashboard"

  Then "card_center_x_card_image_tblocked" will be displayed

@uidatabound @android @ios
Scenario:JENI240-C85274-See e-Card Details (permanently blocked, landing)

  Given User is logged in with cif "card_center_pblock_e_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User go to card center landing page from side menu
  And User click "card_center_e_card_pblocked_clickable"

  #Several steps are commented because we are still dont have the real data, now the data still using mock and random

  Then "card_center_x_card_image_pblocked" will be displayed
  #And User expect "card_center_e_card_dashboard" equal with "card_center_e_card"
  #And User expect "card_center_x_card_number" equal with "card_center_pblock_e_card_masked_number"
  And User expect "card_center_x_card_number" is exist
  #And User expect "card_center_x_card_exp" equal with "card_center_e_card_exp_ui"
  And User expect "card_center_x_card_exp" is exist
  #And User expect "card_center_x_card_detail_tblocked" equal with "card_center_permanently_block_card_detail_status"
  And User expect "card_center_x_card_detail_tblocked" is exist

  And User swipe up "card_center_detail" until found "card_center_x_card_trx_limit_label"

  And User expect "card_center_x_card_trx_limit_label" equal with "card_center_e_card_trx_limit_label"
  #And User expect "card_center_x_card_trx_limit_amt" equal with "card_center_pblock_e_card_trx_limit_amt"
  And User expect "card_center_x_card_atm_limit_label" equal with "card_center_e_card_atm_limit_label"
  #And User expect "card_center_x_card_atm_limit_amt" equal with "card_center_e_card_atm_limit_amt"

@uidatabound @android @ios
Scenario:JENI240-C85273-See e-Card Details (permanently blocked, widget)

  Given User is logged in with cif "card_center_pblock_e_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_e_card_dashboard"
  And User click "card_center_e_card_pblocked_clickable"

  Then "card_center_x_card_image_pblocked" will be displayed

#JENI-241
@uidatabound @android
Scenario:JENI241-C47388-See x-Card Details (active, widget)

  Given User is logged in with cif "card_center_active_x_card_cif_ui"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_first_x_card_dashboard"
  And User click "card_center_first_x_card_dashboard"

  Then "card_center_x_card_image" will be displayed
  Then element with "card_center_active_x_card_name" text will be displayed
  And User expect "card_center_x_card_number" equal with "card_center_x_card_masked_number"
  And User expect "card_center_x_card_exp" equal with "card_center_x_card_exp"
  And User expect "card_center_x_card_cvv_link" equal with "card_center_x_card_cvv_link"

  And User expect "card_center_x_card_balance_label" equal with "card_center_x_card_balance_label"
  And User expect "card_center_x_card_balance_amt" equal with "card_center_x_card_balance_amt"

  And User swipe up "card_center_detail" until found "card_center_x_card_atm_limit_label"

  And User expect "card_center_x_card_trx_limit_label" equal with "card_center_x_card_trx_limit_label"
  And User expect "card_center_x_card_trx_limit_amt" equal with "card_center_x_card_trx_limit_amt"
  And User expect "card_center_x_card_atm_limit_label" equal with "card_center_x_card_atm_limit_label"
  And User expect "card_center_x_card_atm_limit_amt" equal with "card_center_x_card_atm_limit_amt"

  Then "card_center_block_card_cta_button" will be displayed
  Then "card_center_top_up_cta_button" will be displayed
  Then "card_center_more_cta_button" will be displayed

@uidatabound @android
Scenario:JENI241-C47389-See x-Card Details (active, landing)

  Given User is logged in with cif "card_center_active_x_card_cif_ui"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User go to card center landing page from side menu
  And User click "card_center_first_x_card_dashboard"

  Then "card_center_x_card_image" will be displayed
  Then element with "card_center_active_x_card_name" text will be displayed
  And User expect "card_center_x_card_number" equal with "card_center_x_card_masked_number"
  And User expect "card_center_x_card_exp" equal with "card_center_x_card_exp"

  And User swipe up "card_center_detail" until found "card_center_x_card_atm_limit_label"

  And User expect "card_center_x_card_trx_limit_label" equal with "card_center_x_card_balance_label"
  And User expect "card_center_x_card_trx_limit_amt" equal with "card_center_x_card_balance_amt"

  And User swipe up "card_center_detail" until found "card_center_x_card_trx_limit_label"

  And User expect "card_center_x_card_trx_limit_label" equal with "card_center_x_card_trx_limit_label"
  And User expect "card_center_x_card_trx_limit_amt" equal with "card_center_x_card_trx_limit_amt"
  And User expect "card_center_x_card_atm_limit_label" equal with "card_center_x_card_atm_limit_label"
  And User expect "card_center_x_card_atm_limit_amt" equal with "card_center_x_card_atm_limit_amt"

  Then "card_center_block_card_cta_button" will be displayed
  Then "card_center_top_up_cta_button" will be displayed
  Then "card_center_more_cta_button" will be displayed

@uidatabound @android
Scenario:JENI241-C47391-See x-Card Details (temporarily blocked, landing)

  Given User is logged in with cif "card_center_tblock_x_card_cif_ui"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User go to card center landing page from side menu
  And User swipe up until found "card_center_first_x_card_dashboard"
  And User click "card_center_first_x_card_dashboard" until "card_center_detail" displayed

  Then "card_center_x_card_image" will be displayed
  Then "card_center_x_card_image_tblocked" will be displayed
  Then element with "card_center_tblock_x_card_name_ui" text will be displayed
  And User expect "card_center_x_card_number" equal with "card_center_tblock_x_card_masked_number_ui"
  And User expect "card_center_x_card_exp" equal with "card_center_tblock_x_card_exp_ui"
  And User expect "card_center_x_card_detail_tblocked" equal with "card_center_temporarily_block_card_detail_status"

  And User expect "card_center_x_card_balance_label" equal with "card_center_x_card_balance_label"
  And User expect "card_center_x_card_balance_amt" equal with "card_center_tblock_x_card_balance_amt_ui"

  And User swipe up "card_center_detail" until found "card_center_x_card_atm_limit_label"

  And User expect "card_center_x_card_trx_limit_label" equal with "card_center_x_card_trx_limit_label"
  And User expect "card_center_x_card_trx_limit_amt" equal with "card_center_tblock_x_card_trx_limit_amt_ui"
  And User expect "card_center_x_card_atm_limit_label" equal with "card_center_x_card_atm_limit_label"
  And User expect "card_center_x_card_atm_limit_amt" equal with "card_center_tblock_x_card_atm_limit_amt_ui"

  Then "card_center_more_cta_button" will be displayed
  Then "card_center_permanent_block_cta_button" will be displayed
  Then "card_center_unblock_cta_button" will be displayed

@uidatabound @android
Scenario:JENI241-C47390-See x-Card Details (temporarily blocked, widget)

  Given User is logged in with cif "card_center_tblock_x_card_cif_ui"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_first_x_card_dashboard"
  And User click "card_center_first_x_card_dashboard" until "card_center_detail" displayed

  Then "card_center_x_card_image" will be displayed
  Then "card_center_x_card_image_tblocked" will be displayed
  Then element with "card_center_tblock_x_card_name_ui" text will be displayed
  And User expect "card_center_x_card_number" equal with "card_center_tblock_x_card_masked_number_ui"
  And User expect "card_center_x_card_exp" equal with "card_center_tblock_x_card_exp_ui"
  And User expect "card_center_x_card_detail_tblocked" equal with "card_center_temporarily_block_card_detail_status"

  And User expect "card_center_x_card_balance_label" equal with "card_center_x_card_balance_label"
  And User expect "card_center_x_card_balance_amt" equal with "card_center_tblock_x_card_balance_amt_ui"

  And User swipe up "card_center_detail" until found "card_center_x_card_atm_limit_label"

  And User expect "card_center_x_card_trx_limit_label" equal with "card_center_x_card_trx_limit_label"
  And User expect "card_center_x_card_trx_limit_amt" equal with "card_center_tblock_x_card_trx_limit_amt_ui"
  And User expect "card_center_x_card_atm_limit_label" equal with "card_center_x_card_atm_limit_label"
  And User expect "card_center_x_card_atm_limit_amt" equal with "card_center_tblock_x_card_atm_limit_amt_ui"

  Then "card_center_more_cta_button" will be displayed
  Then "card_center_permanent_block_cta_button" will be displayed
  Then "card_center_unblock_cta_button" will be displayed

@uidatabound @android
Scenario:JENI241-C47394-See x-Card Details (permanently blocked, landing) 

  Given User is logged in with cif "card_center_pblock_x_card_cif_ui"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User go to card center landing page from side menu
  And User swipe up until found "card_center_first_x_card_dashboard"
  And User click "card_center_first_x_card_dashboard" until "card_center_detail" displayed

  Then "card_center_x_card_image" will be displayed
  Then element with "card_center_pblock_x_card_name_ui" text will be displayed
  And User expect "card_center_x_card_number" equal with "card_center_pblock_x_card_masked_number_ui"
  And User expect "card_center_x_card_exp" equal with "card_center_tblock_x_card_exp_ui"
  And User expect "card_center_x_card_detail_tblocked" equal with "card_center_permanently_block_card_detail_status"
  Then "card_center_x_card_image_tblocked" will be displayed

  And User expect "card_center_x_card_balance_label" equal with "card_center_x_card_balance_label"
  And User expect "card_center_x_card_balance_amt" equal with "card_center_tblock_x_card_balance_amt_ui"

  And User swipe up "card_center_detail" until found "card_center_x_card_atm_limit_label"

  And User expect "card_center_x_card_trx_limit_label" equal with "card_center_x_card_trx_limit_label"
  And User expect "card_center_x_card_trx_limit_amt" equal with "card_center_tblock_x_card_trx_limit_amt_ui"
  And User expect "card_center_x_card_atm_limit_label" equal with "card_center_x_card_atm_limit_label"
  And User expect "card_center_x_card_atm_limit_amt" equal with "card_center_pblock_x_card_atm_limit_amt_ui"

  Then User expect "card_center_more_cta_button" doesn't exist
  Then User expect "card_center_permanent_block_cta_button" doesn't exist
  Then User expect "card_center_unblock_cta_button" doesn't exist
  Then User expect "card_center_block_card_cta_button" doesn't exist
  Then User expect "card_center_top_up_cta_button" doesn't exist

@uidatabound @android
Scenario:JENI241-C47392-See x-Card Details (permanently blocked, widget)

  Given User is logged in with cif "card_center_pblock_x_card_cif_ui"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_first_x_card_dashboard"
  And User click "card_center_first_x_card_dashboard" until "card_center_detail" displayed

  Then "card_center_x_card_image" will be displayed
  Then element with "card_center_pblock_x_card_name_ui" text will be displayed
  And User expect "card_center_x_card_number" equal with "card_center_pblock_x_card_masked_number_ui"
  And User expect "card_center_x_card_exp" equal with "card_center_tblock_x_card_exp_ui"
  And User expect "card_center_x_card_detail_tblocked" equal with "card_center_permanently_block_card_detail_status"
  Then "card_center_x_card_image_tblocked" will be displayed

  And User expect "card_center_x_card_balance_label" equal with "card_center_x_card_balance_label"
  And User expect "card_center_x_card_balance_amt" equal with "card_center_tblock_x_card_balance_amt_ui"

  And User swipe up "card_center_detail" until found "card_center_x_card_atm_limit_label"

  And User expect "card_center_x_card_trx_limit_label" equal with "card_center_x_card_trx_limit_label"
  And User expect "card_center_x_card_trx_limit_amt" equal with "card_center_tblock_x_card_trx_limit_amt_ui"
  And User expect "card_center_x_card_atm_limit_label" equal with "card_center_x_card_atm_limit_label"
  And User expect "card_center_x_card_atm_limit_amt" equal with "card_center_tblock_x_card_atm_limit_amt_ui"

  Then User expect "card_center_more_cta_button" doesn't exist
  Then User expect "card_center_permanent_block_cta_button" doesn't exist
  Then User expect "card_center_unblock_cta_button" doesn't exist
  Then User expect "card_center_block_card_cta_button" doesn't exist
  Then User expect "card_center_top_up_cta_button" doesn't exist

#JENI-58,920,921
@endtoend @android
Scenario:JENI58-C23293-Temporarily Blocked of m-card in quick action (3 dots) in Dashboard
  Given User is logged in with cif "card_center_active_to_tblock_m_card_cif"
  And User change language to "language"
  And User swipe up until found "card_center_m_card_tb_dashboard"

  And User click "card_center_m_card_tb_dashboard"
  Then "card_center_satay_change_pin" will be displayed
  Then "card_center_satay_block_card" will be displayed
  Then "card_center_satay_change_limit" will be displayed

  And User click "card_center_satay_block_card"
  Then "card_center_block_pop_up_temporary" will be displayed
  Then "card_center_block_pop_up_permanent" will be displayed
  And User click "card_center_block_pop_up_temporary"

  Then User expect "top_notification_snackbar" equal with "card_center_tblocked_msg"

  Then User expect "card_center_m_card_status_dashboard" equal with "card_center_temporarily_blocked"
  Then "dashboard" will be displayed
  Then "card_center_m_card_blocked_image" will be displayed
  And User click "card_center_m_card_tb_dashboard"
  Then "card_center_satay_unblock_card" will be displayed
  Then "card_center_satay_permanent_block_card" will be displayed

@uidatabound @android
Scenario:JENI58-C23293-Temporarily Blocked of m-card in quick action (3 dots) in Dashboard
  Given User is logged in with cif "card_center_active_to_tblock_m_card_cif"
  And User change language to "language"
  And User swipe up until found "card_center_m_card_tb_dashboard"

  And User click "card_center_m_card_tb_dashboard"
  Then "card_center_satay_change_pin" will be displayed
  Then "card_center_satay_block_card" will be displayed
  Then "card_center_satay_change_limit" will be displayed

  And User click "card_center_satay_block_card"
  Then "card_center_block_pop_up_temporary" will be displayed

@uidatabound @android
Scenario:JENI58-C23298-Temporarily of m-card in quick action (3 dots) in Card Center landing
  Given User is logged in with cif "card_center_active_to_tblock_m_card_cif"
  And User change language to "language"
  And User go to card center landing page from side menu
  
  And User click "card_center_m_card_tb_dashboard"
  Then "card_center_satay_change_pin" will be displayed
  Then "card_center_satay_block_card" will be displayed
  Then "card_center_satay_change_limit" will be displayed

  And User click "card_center_satay_block_card"
  Then "card_center_block_pop_up_temporary" will be displayed

@endtoend @android
Scenario:JENI58-C45443-Temporary Block of m-card with CTA in Card Center landing
  Given User is logged in with cif "card_center_active_to_tblock_m_card_cif"
  And User change language to "language"
  And User go to card center landing page from side menu

  And User click "card_center_landing_page_cta_block" until "card_center_temporary_block_cta_button" displayed
  Then "card_center_temporary_block_cta_button" will be displayed
  Then "card_center_permanent_block_cta_button" will be displayed

  And User click "card_center_temporary_block_cta_button" until "card_center_card_dropdown" displayed
  Then "card_center_select_block_card" will be displayed
  And User select "card_center_select_block_card" dropdown with "card_center_m_card"
  And User click "card_center_temporary_block_page_block_button"

  Then User expect "card_center_m_card_status_dashboard" equal with "card_center_temporarily_blocked"
  Then "card_center_landing_page" will be displayed
  Then "card_center_m_card_blocked_image" will be displayed

@uidatabound @android
Scenario:JENI58-C45443-Temporary Block of m-card with CTA in Card Center landing
  Given User is logged in with cif "card_center_active_to_tblock_m_card_cif"
  And User change language to "language"
  And User go to card center landing page from side menu

  And User click "card_center_landing_page_cta_block" until "card_center_temporary_block_cta_button" displayed
  Then "card_center_temporary_block_cta_button" will be displayed
  Then "card_center_permanent_block_cta_button" will be displayed

  And User click "card_center_temporary_block_cta_button" until "card_center_card_dropdown" displayed
  Then "card_center_select_block_card" will be displayed
  And User select "card_center_select_block_card" dropdown with "card_center_m_card"
  Then "card_center_temporary_block_page_block_button" will be displayed

@endtoend @android
Scenario:JENI58-C23294-Temporarily Blocked of m-card with CTA in Card details
  Given User is logged in with cif "card_center_active_to_tblock_m_card_cif"
  And User change language to "language"
  And User go to card center landing page from side menu

  And User click "card_center_m_card_dashboard" until "card_center_detail" displayed
  And User click "card_center_landing_page_cta_block" until "card_center_temporary_block_cta_button" displayed
  Then "card_center_temporary_block_cta_button" will be displayed
  Then "card_center_permanent_block_cta_button" will be displayed

  And User click "card_center_temporary_block_cta_button"

  And User expect "card_center_x_card_detail_tblocked" equal with "card_center_temporarily_block_card_detail_status"
  Then "card_center_detail" will be displayed
  Then "card_center_x_card_image_tblocked" will be displayed

@uidatabound @android
Scenario:JENI58-C23294-Temporarily Blocked of m-card with CTA in Card details
  Given User is logged in with cif "card_center_active_to_tblock_m_card_cif"
  And User change language to "language"
  And User go to card center landing page from side menu

  And User click "card_center_m_card_dashboard" until "card_center_detail" displayed
  And User click "card_center_landing_page_cta_block" until "card_center_temporary_block_cta_button" displayed
  Then "card_center_temporary_block_cta_button" will be displayed
  Then "card_center_permanent_block_cta_button" will be displayed

@uidatabound @android
Scenario:JENI58-C23299-Temporarily Blocked of m-card with CTA in Card details (landing)
  Given User is logged in with cif "card_center_active_to_tblock_m_card_cif"
  And User change language to "language"
  And User swipe up until found "card_center_m_card_tb_dashboard"

  And User click "card_center_m_card_dashboard" until "card_center_detail" displayed
  And User click "card_center_landing_page_cta_block" until "card_center_temporary_block_cta_button" displayed
  Then "card_center_temporary_block_cta_button" will be displayed
  Then "card_center_permanent_block_cta_button" will be displayed

  And User click "card_center_temporary_block_cta_button"

  And User expect "card_center_x_card_detail_tblocked" equal with "card_center_temporarily_block_card_detail_status"
  Then "card_center_detail" will be displayed
  Then "card_center_x_card_image_tblocked" will be displayed

#JENI-153
@uidatabound @android 
Scenario:JENI153-C40870-Verify m-card details

  Given User is logged in with cif "card_center_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_m_card_dashboard"
  And User click "card_center_m_card_clickable"

  Then "card_center_x_card_image" will be displayed
  And User expect "card_center_m_card_clickable" equal with "card_center_m_card"
  And User expect "card_center_x_card_number" equal with "card_center_m_card_masked_number_ui"
  And User expect "card_center_x_card_exp" equal with "card_center_m_card_exp_ui"
  And User expect "card_center_x_card_cvv_link" equal with "card_center_m_card_cvv_link"

  And User swipe up "card_center_detail" until found "card_center_x_card_trx_limit_label"

  And User expect "card_center_x_card_trx_limit_label" equal with "card_center_m_card_trx_limit_label"
  And User expect "card_center_x_card_trx_limit_amt" equal with "card_center_m_card_trx_limit_amt"
  And User expect "card_center_x_card_atm_limit_label" equal with "card_center_m_card_atm_limit_label"
  And User expect "card_center_x_card_atm_limit_amt" equal with "card_center_m_card_atm_limit_amt"

  Then "card_center_block_card" will be displayed
  Then "card_center_change_pin_cta_button" will be displayed
  Then "card_center_change_limit_cta_button" will be displayed

@uidatabound @android 
Scenario:JENI153-C40871-Verify showing CVV and card number is correct

  Given User is logged in with cif "card_center_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_m_card_dashboard"
  And User click "card_center_m_card_clickable"

  Then "card_center_x_card_image" will be displayed
  And User click "card_center_x_card_cvv_link"

  Then "card_center_password_verification_form" will be displayed
  And User fill "card_center_password_field" with "card_center_active_m_card_correct_password_ui"
  Then "card_center_password_submit_button" will be displayed

@endtoend @android 
Scenario:JENI153-C40871-Verify showing CVV and card number is correct

  Given User is logged in with cif "card_center_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_m_card_dashboard"
  And User click "card_center_m_card_clickable"

  Then "card_center_x_card_image" will be displayed
  And User click "card_center_x_card_cvv_link"

  Then "card_center_password_verification_form" will be displayed
  And User fill "card_center_password_field" with "card_center_active_m_card_correct_password_ui"
  And User click "card_center_password_submit_button"

  And User wait "card_center_loading_screen" will be gone

  Then "card_center_detail" will be displayed
  And User expect "card_center_x_card_number" equal with "card_center_m_card_number"
  And User expect "card_center_x_card_cvv" equal with "card_center_m_card_cvv_ui"

@endtoend @android
Scenario:JENI153-C40872-Verify that the CVV and card number show in 45s

  Given User is logged in with cif "card_center_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User go to card center landing page from side menu

  And User click "card_center_m_card_clickable" until "card_center_detail" displayed
  And User click "card_center_x_card_cvv_link"

  Then "card_center_password_verification_form" will be displayed
  And User fill "card_center_password_field" with "card_center_active_m_card_correct_password_ui"
  And User click "card_center_password_submit_button"

  And User wait "card_center_loading_screen" will be gone

  Then "card_center_detail" will be displayed
  And User expect "card_center_x_card_number" equal with "card_center_m_card_number"
  And User expect "card_center_x_card_cvv" equal with "card_center_m_card_cvv"

  And User wait 45 seconds

  Then "card_center_x_card_cvv_link" will be displayed
  And User expect "card_center_x_card_number" equal with "card_center_m_card_masked_number"

#JENI-54
@uidatabound @android
Scenario:JENI54-C67391-Opening Top Up Page (Active)

  Given User is logged in with cif "card_center_x_card_active_credential_top_up"
  
  And User change language to "language"
  And User go to card center landing page from side menu

  And User click "card_center_active_x_card_three_dots"
  And User click "card_center_x_card_satay_top_up"
  Then "card_center_top_up_page" will be displayed

@uidatabound @android
Scenario:JENI54-C67392-Opening Top Up Page (Temp Blocked)

  Given User is logged in with cif "card_center_x_card_tblock_credential_top_up"
  
  And User change language to "language"
  And User go to card center landing page from side menu

  And User click "card_center_active_x_card_three_dots"
  And User click "card_center_x_card_satay_top_up"
  Then "card_center_top_up_page" will be displayed

@uidatabound @android
Scenario:JENI54-C67399-Confirmation Page is shown

  Given User is logged in with cif "card_center_x_card_active_credential_top_up"
  
  And User change language to "language"
  And User go to card center landing page from side menu

  And User click "card_center_active_x_card_three_dots"
  And User click "card_center_x_card_satay_top_up"
  When User fill "card_center_top_up_amt_field" with 1
  And User click "card_center_top_up_submit"

  Then "card_center_top_up_confirm_button" will be displayed

@uidatabound @android
Scenario:JENI54-C67445-Canceling top up

  Given User is logged in with cif "card_center_x_card_active_credential_top_up"
  
  And User change language to "language"
  And User go to card center landing page from side menu

  And User click "card_center_active_x_card_three_dots"
  And User click "card_center_x_card_satay_top_up"
  And User click "back_button"
  Then "card_center_landing_page" will be displayed

@uidatabound @android
Scenario:JENI54-C67461-List of information that shown

  Given User is logged in with cif "card_center_x_card_active_credential_top_up"
  
  And User change language to "language"
  And User go to card center landing page from side menu

  And User click "card_center_active_x_card_three_dots"
  And User click "card_center_x_card_satay_top_up"
  Then "card_center_top_up_image" will be displayed
  And User expect "card_center_top_up_card_number" equal with "card_center_x_card_masked_number"
  And User expect "card_center_top_up_balance_amt" contains "card_center_top_up_idr"
  Then element with "card_center_top_up_x_card_name" text will be displayed

@uidatabound @android
Scenario:JENI54-C67465-Unable to top up card which is more than active balance

  Given User is logged in with cif "card_center_x_card_active_credential_top_up"
  
  And User change language to "language"
  And User go to card center landing page from side menu

  And User click "card_center_active_x_card_three_dots"
  And User click "card_center_x_card_satay_top_up"
  When User fill "card_center_top_up_amt_field" with 999999
  And User click "card_center_top_up_submit"
  And User expect "card_center_top_up_amt_hint" equal with "card_center_top_up_hint_exceed"

@uidatabound @android
Scenario:JENI54-C68142-Opening Top Up Card Selection Page (Temp Blocked)

  Given User is logged in with cif "card_center_x_card_tblock_credential_top_up"
  
  And User change language to "language"
  And User go to card center landing page from side menu

  And User click "card_center_landing_page_cta_top_up"
  Then "card_center_select_block_card" will be displayed

@uidatabound @android
Scenario:JENI54-C68141-Opening Top Up Card Amount Page (Active) - CTA Button

  Given User is logged in with cif "card_center_x_card_active_credential_top_up"
  
  And User change language to "language"
  And User go to card center landing page from side menu

  And User click "card_center_landing_page_cta_top_up"
  Then "card_center_top_up_title" will be displayed
  And User select "card_center_select_block_card" dropdown with "card_center_x_card_name_test"
  And User click "card_center_top_up_selection_button"

  Then "card_center_top_up_page" will be displayed

@uidatabound @android
Scenario:JENI54-C68143-Confirmation Page is shown - CTA button

  Given User is logged in with cif "card_center_x_card_active_credential_top_up"
  
  And User change language to "language"
  And User go to card center landing page from side menu

  And User click "card_center_landing_page_cta_top_up"
  Then "card_center_top_up_title" will be displayed
  And User select "card_center_select_block_card" dropdown with "card_center_x_card_name_test"
  And User click "card_center_top_up_selection_button"
  
  When User fill "card_center_top_up_amt_field" with 1
  And User click "card_center_top_up_submit"

  Then "card_center_top_up_confirm_button" will be displayed

@uidatabound @android
Scenario:JENI54-C68144-Canceling Top Up - CTA button

  Given User is logged in with cif "card_center_x_card_active_credential_top_up"
  
  And User change language to "language"
  And User go to card center landing page from side menu

  And User click "card_center_landing_page_cta_top_up"
  Then "card_center_top_up_title" will be displayed
  And User select "card_center_select_block_card" dropdown with "card_center_x_card_name_test"
  And User click "card_center_top_up_selection_button"

  Then "card_center_top_up_page" will be displayed
  And User click "back_button"
  Then "card_center_landing_page" will be displayed

@uidatabound @android
Scenario:JENI54-C68145-Not entering amount - CTA button

  Given User is logged in with cif "card_center_x_card_active_credential_top_up"
  
  And User change language to "language"
  And User go to card center landing page from side menu

  And User click "card_center_landing_page_cta_top_up"
  Then "card_center_top_up_title" will be displayed
  And User select "card_center_select_block_card" dropdown with "card_center_x_card_name_test"
  And User click "card_center_top_up_selection_button"
  
  When User fill "card_center_top_up_amt_field" with 0
  And User click "card_center_top_up_submit"
  And User expect "card_center_top_up_amt_hint" equal with "card_center_top_up_hint_min"

@uidatabound @android
Scenario:JENI54-C68147-List of information that shown - CTA button

  Given User is logged in with cif "card_center_x_card_active_credential_top_up"
  
  And User change language to "language"
  And User go to card center landing page from side menu

  And User click "card_center_landing_page_cta_top_up"
  Then "card_center_top_up_title" will be displayed
  And User select "card_center_select_block_card" dropdown with "card_center_x_card_name_test"
  And User click "card_center_top_up_selection_button"

  Then "card_center_top_up_image" will be displayed
  And User expect "card_center_top_up_card_number" equal with "card_center_x_card_masked_number"
  And User expect "card_center_top_up_balance_amt" contains "card_center_top_up_idr"
  Then element with "card_center_top_up_x_card_name" text will be displayed

@uidatabound @android
Scenario:JENI54-C68148-Unable to top up card which is more than active balance - CTA Button

  Given User is logged in with cif "card_center_x_card_active_credential_top_up"
  
  And User change language to "language"
  And User go to card center landing page from side menu

  And User click "card_center_landing_page_cta_top_up"
  Then "card_center_top_up_title" will be displayed
  And User select "card_center_select_block_card" dropdown with "card_center_x_card_name_test"
  And User click "card_center_top_up_selection_button"

  When User fill "card_center_top_up_amt_field" with 99999999999999999999
  And User click "card_center_top_up_submit"
  And User expect "card_center_top_up_amt_hint" equal with "card_center_top_up_hint_exceed"

#JENI149 Change limit e-Card 
@android @uidatabound
Scenario: JENI149-C21033-Change (increasing) limit of e-card in quick action (3 dots) in Dashboard
  Given User is logged in with cif "card_center_active_card_for_ui_transaction"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_dropdown_option_e_card"
  And "card_center_dropdown_option_e_card" will be displayed
  And User click "card_center_e_card_tb_dashboard" until "card_center_satay_detail_change_limit" displayed
  And User click "card_center_satay_detail_change_limit" until "card_center_e_card_change_limit_amount" displayed
  And User fill "card_center_e_card_change_limit_amount" with "card_center_e_card_increase_limit_max"
  And User click "card_center_e_card_change_limit_save_button" until "card_center_password_field" displayed
  And User fill "card_center_password_field" with "correct_password"
  Then User expect "card_center_password_submit_button" is exist

@android @uidatabound
Scenario: JENI149-C21038-Change (decreasing) limit of e-card in quick action (3 dots) in Dashboard
  Given User is logged in with cif "card_center_active_card_for_ui_transaction"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_dropdown_option_e_card"
  And "card_center_dropdown_option_e_card" will be displayed
  And User click "card_center_e_card_tb_dashboard" until "card_center_satay_detail_change_limit" displayed
  And User click "card_center_satay_detail_change_limit" until "card_center_e_card_change_limit_amount" displayed
  And User fill "card_center_e_card_change_limit_amount" with "card_center_e_card_decrease_limit_min"
  Then User expect "card_center_password_submit_button" is exist

@android @uidatabound
Scenario: JENI149-C21034-Change (increasing) limit of e-card in quick action (3 dots) in card center
  Given User is logged in with cif "card_center_active_card_for_ui_transaction"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  And "card_center_dropdown_option_e_card" will be displayed
  And User click "card_center_e_card_tb_dashboard" until "card_center_satay_detail_change_limit" displayed
  And User click "card_center_satay_detail_change_limit" until "card_center_e_card_change_limit_amount" displayed
  And User fill "card_center_e_card_change_limit_amount" with "card_center_e_card_increase_limit_max"
  And User click "card_center_e_card_change_limit_save_button" until "card_center_password_field" displayed
  And User fill "card_center_password_field" with "correct_password"
  Then User expect "card_center_password_submit_button" is exist

@android @uidatabound
Scenario: JENI149-C21039-Change (decreasing) limit of e-card in quick action (3 dots) in card center
  Given User is logged in with cif "card_center_active_card_for_ui_transaction"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User access card center from side menu
  And User click "card_center_close_tutorial" until "card_center_dropdown_option_e_card" displayed
  And "card_center_dropdown_option_e_card" will be displayed
  And User click "card_center_e_card_tb_dashboard" until "card_center_satay_detail_change_limit" displayed
  And User click "card_center_satay_detail_change_limit"
  And User fill "card_center_e_card_change_limit_amount" with "card_center_e_card_decrease_limit_min"
  Then User expect "card_center_password_submit_button" is exist

@android @endtoend
Scenario: JENI149-C21035-Change limit (increasing) of e-card in quick action (3 dots) in Card details
  Given User is logged in with cif "card_center_active_card_for_ui_transaction"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User access card center from side menu
  And User click "card_center_close_tutorial" until "card_center_dropdown_option_e_card" displayed
  And "card_center_dropdown_option_e_card" will be displayed
  And User click "card_center_dropdown_option_e_card" until "card_center_more_cta_button" displayed
  And User click "card_center_more_cta_button" until "card_center_satay_detail_change_limit" displayed
  And User click "card_center_satay_detail_change_limit" until "card_center_e_card_change_limit_amount" displayed
  And User fill "card_center_e_card_change_limit_amount" with "card_center_e_card_increase_limit_max"
  And User click "card_center_e_card_change_limit_save_button" until "card_center_password_field" displayed
  And User fill "card_center_password_field" with "correct_password"
  And User click "card_center_password_submit_button"
  Then User expect "top_notification_snackbar" equal with "card_center_card_change_limit_push_message"

@android @endtoend
Scenario: JENI149-C21040-Change limit (decreasing) of e-card in quick action (3 dots) in Card details
  Given User is logged in with cif "card_center_active_card_for_ui_transaction"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User access card center from side menu
  And User click "card_center_close_tutorial" until "card_center_dropdown_option_e_card" displayed
  And "card_center_dropdown_option_e_card" will be displayed
  And User click "card_center_dropdown_option_e_card" until "card_center_more_cta_button" displayed
  And User click "card_center_more_cta_button" until "card_center_satay_detail_change_limit" displayed
  And User click "card_center_satay_detail_change_limit" until "card_center_e_card_change_limit_amount" displayed
  And User fill "card_center_e_card_change_limit_amount" with "card_center_e_card_decrease_limit_min"
  And User click "card_center_e_card_change_limit_save_button"
  Then User expect "top_notification_snackbar" equal with "card_center_card_change_limit_push_message"

@android @uidatabound      
Scenario: JENI149-C23533-Input The Wrong SLA When Changing The Limit of Card
  Given User is logged in with cif "card_center_active_card_for_ui_transaction"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User access card center from side menu
  And User click "card_center_close_tutorial" until "card_center_dropdown_option_e_card" displayed
  And "card_center_dropdown_option_e_card" will be displayed
  And User click "card_center_dropdown_option_e_card" until "card_center_more_cta_button" displayed
  And User click "card_center_more_cta_button" until "card_center_satay_detail_change_limit" displayed
  And User click "card_center_satay_detail_change_limit" until "card_center_e_card_change_limit_amount" displayed
  And User fill "card_center_e_card_change_limit_amount" with "card_center_e_card_increase_limit_max"
  And User click "card_center_e_card_change_limit_save_button" until "card_center_password_field" displayed
  And User fill "card_center_password_field" with "incorrect_password_1"
  And User click "card_center_password_submit_button"
  Then User expect "top_notification_snackbar" equal with "card_center_card_change_limit_push_message"

@android @uidatabound
Scenario: JENI149-C23534-Verify The Maximum POS Limit for Main Card
  Given User is logged in with cif "card_center_active_card_for_ui_transaction"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User access card center from side menu
  And User click "card_center_close_tutorial" until "card_center_dropdown_option_e_card" displayed
  And "card_center_dropdown_option_e_card" will be displayed
  And User click "card_center_dropdown_option_e_card" until "card_center_more_cta_button" displayed
  And User click "card_center_more_cta_button" until "card_center_satay_detail_change_limit" displayed
  And User click "card_center_satay_detail_change_limit" until "card_center_e_card_change_limit_amount" displayed
  And User fill "card_center_e_card_change_limit_amount" with "card_center_e_card_increase_limit_above_max"
  And User click "card_center_e_card_change_limit_save_button"
  Then User expect "card_center_e_card_change_limit_error_message" equal with "card_center_e_card_change_limit_error_message"

#JENI148 Change limit m-card 
@android @uidatabound
Scenario: JENI148-C21048-Change (increasing) limit of m-card in quick action (3 dots) in Dashboard
  Given User is logged in with cif "card_center_active_card_for_ui_transaction"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_active_m_card_three_dots"
  And User click "card_center_active_m_card_three_dots" until "card_center_satay_detail_change_limit" displayed
  And User click "card_center_satay_detail_change_limit" until "card_center_mcard_single_purchase_limit" displayed
  And User swipe up until found "card_center_e_card_change_limit_save_button"
  And User fill "card_center_mcard_single_purchase_limit" with "card_center_mcard_single_purchase_increase_limit"     
  And User fill "card_center_mcard_daily_atm_withdrawal_limit" with "card_center_mcard_daily_atm_withdrawal_increase_limit"     
  And User click "card_center_e_card_change_limit_save_button" until "card_center_password_field" displayed
  And User fill "card_center_password_field" with "correct_password"
  Then User expect "card_center_password_submit_button" is exist

@android @uidatabound
Scenario: JENI148-C21053-Change (decreasing) limit of m-card in quick action (3 dots) in Dashboard
  Given User is logged in with cif "card_center_active_card_for_ui_transaction"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_active_m_card_three_dots"
  And User click "card_center_active_m_card_three_dots" until "card_center_satay_detail_change_limit" displayed
  And User click "card_center_satay_detail_change_limit" until "card_center_mcard_single_purchase_limit" displayed
  And User swipe up until found "card_center_e_card_change_limit_save_button"
  And User fill "card_center_mcard_single_purchase_limit" with "card_center_mcard_single_purchase_decrease_limit"     
  And User fill "card_center_mcard_daily_atm_withdrawal_limit" with "card_center_mcard_daily_atm_withdrawal_decrease_limit"     
  Then User expect "card_center_password_submit_button" is exist

@android @uidatabound
Scenario: JENI148-C21049-Change (increasing) limit of m-card in quick action (3 dots) in Card Center landing
  Given User is logged in with cif "card_center_active_card_for_ui_transaction"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  And User click "card_center_active_m_card_three_dots" until "card_center_satay_detail_change_limit" displayed
  And User click "card_center_satay_detail_change_limit" until "card_center_mcard_single_purchase_limit" displayed
  And User swipe up until found "card_center_e_card_change_limit_save_button"
  And User fill "card_center_mcard_single_purchase_limit" with "card_center_mcard_single_purchase_increase_limit"     
  And User fill "card_center_mcard_daily_atm_withdrawal_limit" with "card_center_mcard_daily_atm_withdrawal_increase_limit"     
  And User click "card_center_e_card_change_limit_save_button" until "card_center_password_field" displayed
  And User fill "card_center_password_field" with "correct_password"
  Then User expect "card_center_password_submit_button" is exist

@android @uidatabound
Scenario: JENI148-C21054-Change (decreasing) limit of m-card in quick action (3 dots) in Card Center landing
  Given User is logged in with cif "card_center_active_card_for_ui_transaction"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  And User click "card_center_active_m_card_three_dots" until "card_center_satay_detail_change_limit" displayed
  And User click "card_center_satay_detail_change_limit" until "card_center_mcard_single_purchase_limit" displayed
  And User swipe up until found "card_center_e_card_change_limit_save_button"
  And User fill "card_center_mcard_single_purchase_limit" with "card_center_mcard_single_purchase_decrease_limit"     
  And User fill "card_center_mcard_daily_atm_withdrawal_limit" with "card_center_mcard_daily_atm_withdrawal_decrease_limit"     
  Then User expect "card_center_password_submit_button" is exist

@android @endtoend
Scenario: JENI148-C21050-Change limit (increasing) of m-card with CTA in Card details
  Given User is logged in with cif "card_center_active_card_for_ui_transaction"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  And "card_center_m_card_clickable" will be displayed
  And User click "card_center_m_card_clickable"
  And User click "card_center_more_cta_button"
  And User click "card_center_satay_detail_change_limit"
  And User swipe up until found "card_center_e_card_change_limit_save_button"
  And User fill "card_center_mcard_single_purchase_limit" with "card_center_mcard_single_purchase_increase_limit"     
  And User fill "card_center_mcard_daily_atm_withdrawal_limit" with "card_center_mcard_daily_atm_withdrawal_increase_limit"     
  And User click "card_center_e_card_change_limit_save_button" until "card_center_password_field" displayed
  And User fill "card_center_password_field" with "correct_password"
  And User click "card_center_password_submit_button"
  Then User expect "top_notification_snackbar" equal with "card_center_card_change_limit_push_message"
 
@android @endtoend
Scenario: JENI148-C21055-Change limit (decreasing) of m-card with CTA in Card details
  Given User is logged in with cif "card_center_active_card_for_ui_transaction"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  And "card_center_m_card_clickable" will be displayed
  And User click "card_center_m_card_clickable"
  And User click "card_center_more_cta_button"
  And User click "card_center_satay_detail_change_limit"
  And User swipe up until found "card_center_e_card_change_limit_save_button"
  And User fill "card_center_mcard_single_purchase_limit" with "card_center_mcard_single_purchase_decrease_limit"     
  And User fill "card_center_mcard_daily_atm_withdrawal_limit" with "card_center_mcard_daily_atm_withdrawal_decrease_limit"     
  And User click "card_center_e_card_change_limit_save_button"
  Then User expect "top_notification_snackbar" equal with "card_center_card_change_limit_push_message"

@android @uidatabound
Scenario: JENI148-C21056-Change card limit (increasing Purchase, decreasing Withdrawal) m-card
  Given User is logged in with cif "card_center_active_card_for_ui_transaction"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_active_m_card_three_dots"
  And User click "card_center_active_m_card_three_dots" until "card_center_satay_detail_change_limit" displayed
  And User click "card_center_satay_detail_change_limit" until "card_center_mcard_single_purchase_limit" displayed
  And User swipe up until found "card_center_e_card_change_limit_save_button"
  And User fill "card_center_mcard_single_purchase_limit" with "card_center_mcard_single_purchase_increase_limit"     
  And User fill "card_center_mcard_daily_atm_withdrawal_limit" with "card_center_mcard_daily_atm_withdrawal_decrease_limit"     
  And User click "card_center_e_card_change_limit_save_button" until "card_center_password_field" displayed
  And User fill "card_center_password_field" with "correct_password"
  Then User expect "card_center_password_submit_button" is exist

@android @uidatabound   
Scenario: JENI148-C21057-Change card limit (decreasing Purchase, increasing Withdrawal) m-card
  Given User is logged in with cif "card_center_active_card_for_ui_transaction"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_active_m_card_three_dots"
  And User click "card_center_active_m_card_three_dots" until "card_center_satay_detail_change_limit" displayed
  And User click "card_center_satay_detail_change_limit" until "card_center_mcard_single_purchase_limit" displayed
  And User swipe up until found "card_center_e_card_change_limit_save_button"
  And User fill "card_center_mcard_single_purchase_limit" with "card_center_mcard_single_purchase_decrease_limit"     
  And User fill "card_center_mcard_daily_atm_withdrawal_limit" with "card_center_mcard_daily_atm_withdrawal_increase_limit"     
  And User click "card_center_e_card_change_limit_save_button" until "card_center_password_field" displayed
  And User fill "card_center_password_field" with "correct_password"
  Then User expect "card_center_password_submit_button" is exist

@android @uidatabound
Scenario: JENI148-C21063-Cancel change card limit m-card
  Given User is logged in with cif "card_center_active_card_for_ui_transaction"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  And User click "card_center_active_m_card_three_dots" until "card_center_satay_detail_change_limit" displayed
  And User click "card_center_satay_detail_change_limit" until "card_center_mcard_single_purchase_limit" displayed
  And User swipe up until found "card_center_e_card_change_limit_save_button"
  And User check balances for "card_center_mcard_single_purchase_limit", "card_center_mcard_daily_atm_withdrawal_limit", "null_value", "null_value" and "null_value"
  And User fill "card_center_mcard_single_purchase_limit" with "card_center_mcard_single_purchase_increase_limit"     
  And User fill "card_center_mcard_daily_atm_withdrawal_limit" with "card_center_mcard_daily_atm_withdrawal_increase_limit"     
  And User click "card_center_back_menu" until "card_center_m_card_clickable" displayed
  And User click "card_center_m_card_clickable"
  And User click "card_center_more_cta_button"
  And User click "card_center_satay_detail_change_limit"
  And User swipe up until found "card_center_e_card_change_limit_save_button"
  And User check total "card_center_mcard_single_purchase_limit" balance

@android @uidatabound
Scenario: JENI148-C23531-Input The Wrong SLA When Changing The Limit of Card
  Given User is logged in with cif "card_center_active_card_for_ui_transaction"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  And User click "card_center_active_m_card_three_dots" until "card_center_satay_detail_change_limit" displayed
  And User click "card_center_satay_detail_change_limit" until "card_center_mcard_single_purchase_limit" displayed
  And User swipe up until found "card_center_e_card_change_limit_save_button"
  And User fill "card_center_mcard_single_purchase_limit" with "card_center_mcard_single_purchase_increase_limit"     
  And User fill "card_center_mcard_daily_atm_withdrawal_limit" with "card_center_mcard_daily_atm_withdrawal_increase_limit"     
  And User click "card_center_e_card_change_limit_save_button" until "card_center_password_field" displayed
  And User fill "card_center_password_field" with "correct_password"
  And User click "card_center_password_submit_button"
  Then User expect "top_notification_snackbar" equal with "card_center_card_change_limit_error_message"

@android @uidatabound   
Scenario: JENI148-C23532-Verify The Maximum POS Limit for Main Card
  Given User is logged in with cif "card_center_active_card_for_ui_transaction"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  And User click "card_center_active_m_card_three_dots" until "card_center_satay_detail_change_limit" displayed
  And User click "card_center_satay_detail_change_limit" until "card_center_mcard_single_purchase_limit" displayed
  And User swipe up until found "card_center_e_card_change_limit_save_button"
  And User check balances for "card_center_mcard_single_purchase_limit", "null_value", "null_value", "null_value" and "null_value"
  And User fill "card_center_mcard_single_purchase_limit" with "card_center_mcard_single_purchase_increase_limit_above_max"     
  And User click "card_center_e_card_change_limit_save_button"
  And User expect "card_center_m_card_single_purchase_limit_error_message" equal with "card_center_m_card_single_purchase_limit_error_message"
  And User click "card_center_back_menu" until "card_center_m_card_clickable" displayed
  And User click "card_center_m_card_clickable" until "card_center_more_cta_button" displayed
  And User click "card_center_more_cta_button" until "card_center_satay_detail_change_limit" displayed
  And User click "card_center_satay_detail_change_limit" 
  And User swipe up until found "card_center_e_card_change_limit_save_button"
  And User check total "card_center_mcard_single_purchase_limit" balance

@android @uidatabound
Scenario: JENI148-C40896-Verify The MCard maximum withdrawal Limit for Main Card
  Given User is logged in with cif "card_center_active_card_for_ui_transaction"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  And User click "card_center_active_m_card_three_dots" until "card_center_satay_detail_change_limit" displayed
  And User click "card_center_satay_detail_change_limit" until "card_center_mcard_single_purchase_limit" displayed
  And User swipe up until found "card_center_e_card_change_limit_save_button"
  And User check balances for "card_center_mcard_daily_atm_withdrawal_limit", "null_value", "null_value", "null_value" and "null_value"
  And User fill "card_center_mcard_daily_atm_withdrawal_limit" with "card_center_mcard_daily_atm_withdrawal_increase_limit_above_max"     
  And User click "card_center_e_card_change_limit_save_button"
  And User expect "card_center_m_card_daily_atm_withdraw_limit_error_message" equal with "card_center_m_card_daily_atm_withdraw_limit_error_message"
  And User click "card_center_back_menu" until "card_center_m_card_clickable" displayed
  And User click "card_center_m_card_clickable" until "card_center_more_cta_button" displayed
  And User click "card_center_more_cta_button" until "card_center_satay_detail_change_limit" displayed
  And User click "card_center_satay_detail_change_limit"
  And User swipe up until found "card_center_e_card_change_limit_save_button"
  And User check total "card_center_mcard_daily_atm_withdrawal_limit" balance

#JENI59 
@android @uidatabound
Scenario: JENI59-C45997-Unblock card: m-card in Card Center widget
  Given User is logged in with cif "card_center_block_card_for_ui_transaction"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_active_m_card_three_dots"
  And User click "card_center_active_m_card_three_dots" until "card_center_satay_unblock_card" displayed
  And User expect "card_center_satay_unblock_card" is exist

@android @endtoend
Scenario: JENI59-C45998-Unblock card: m-card in Card Center landing
  Given User is logged in with cif "card_center_block_card_for_change_status"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "dashboard_card_center_widget"
  And User click "dashboard_card_center_widget" until "card_center_close_tutorial" displayed
  And User click "card_center_close_tutorial"
  And User click "card_center_active_m_card_three_dots" until "card_center_satay_unblock_card" displayed
  And User click "card_center_satay_unblock_card"
  Then User expect "top_notification_snackbar" equal with "card_center_unblock_m_card"
  Then User expect "card_center_m_card_status_dashboard" equal with "card_center_active"
  Then User expect "card_center_m_card_image_blocked" doesn't exist

@android @uidatabound   
Scenario: JENI59-C46006-Unblock (CTA): m-card in Card details
  Given User is logged in with cif "card_center_block_card_for_ui_transaction"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_m_card_clickable" 
  And User click "card_center_active_m_card_three_dots" until "card_center_unblock_cta_button" displayed
  And User expect "card_center_unblock_cta_button" is exist

@android @uidatabound    
Scenario: JENI59-C46000-Unblock Card: e-card in Card Center widget
  Given User is logged in with cif "card_center_block_card_for_ui_transaction"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_e_card_tb_dashboard"
  And User click "card_center_e_card_tb_dashboard" until "card_center_satay_unblock_e_card" displayed
  And User expect "card_center_satay_unblock_e_card" is exist
 
@android @uidatabound   
Scenario: JENI59-C46001-Unblock Card: e-card in Card Center landing
  Given User is logged in with cif "card_center_block_card_for_ui_transaction"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "dashboard_card_center_widget"
  And User click "dashboard_card_center_widget" until "card_center_close_tutorial" displayed
  And User click "card_center_close_tutorial"
  And User click "card_center_e_card_tb_dashboard" until "card_center_satay_unblock_e_card" displayed
  And User expect "card_center_satay_unblock_e_card" is exist

@android @endtoend
Scenario: JENI59-C46007-Unblock Card (CTA): e-card in Card details
  Given User is logged in with cif "card_center_block_card_for_change_status"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_dropdown_option_e_card"
  And User click "card_center_dropdown_option_e_card" 
  And User click "card_center_e_card_tb_dashboard" until "card_center_unblock_cta_button" displayed
  And User click "card_center_unblock_cta_button"
  And User expect "top_notification_snackbar" equal with "card_center_unblock_e_card"
  And User wait "card_center_loading_screen" will be gone
  And User click "card_center_back_menu"
  Then User expect "top_notification_snackbar" equal with "card_center_unblock_e_card"
  Then User expect "card_center_e_card_status_dashboard" equal with "card_center_active"
  Then User expect "card_center_e_card_image_blocked" doesn't exist

@android @endtoend 
Scenario: JENI59-C46003-Unblock Card: x-card in Card Center widget
  Given User is logged in with cif "card_center_block_card_for_change_status"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_active_x_card_three_dots"
  And User click "card_center_active_x_card_three_dots" until "card_center_satay_unblock_e_card" displayed
  And User click "card_center_satay_unblock_e_card" 
  Then User expect "top_notification_snackbar" equal with "card_center_unblock_x_card"
  Then User expect "card_center_first_x_card_status_dashboard" equal with "card_center_active"
  Then User expect "card_center_x_card_dashboard_blocked_image" doesn't exist

@android @uidatabound
Scenario: JENI59-C46004-Unblock Card: x-card in Card Center landing
  Given User is logged in with cif "card_center_block_card_for_ui_transaction"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "dashboard_card_center_widget"
  And User click "dashboard_card_center_widget" until "card_center_close_tutorial" displayed
  And User click "card_center_close_tutorial"
  And User wait "card_center_loading_screen" will be gone
  And User click "card_center_active_x_card_three_dots" until "card_center_satay_unblock_e_card" displayed
  And User expect "card_center_satay_unblock_e_card" is exist

#JENI62 
@android @endtoend
Scenario: JENI62-C21023-Change (increasing) limit of x-card in quick action (3 dots) in Dashboard
  Given User is logged in with cif "card_center_active_card_for_ui_transaction"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_active_x_card_three_dots"
  And User click "card_center_active_x_card_three_dots" until "card_center_satay_detail_change_limit" displayed
  And User click "card_center_satay_detail_change_limit" until "card_center_mcard_single_purchase_limit" displayed
  And User swipe up until found "card_center_e_card_change_limit_save_button"
  And User fill "card_center_mcard_single_purchase_limit" with "card_center_mcard_single_purchase_increase_limit"     
  And User fill "card_center_mcard_daily_atm_withdrawal_limit" with "card_center_mcard_daily_atm_withdrawal_increase_limit"     
  And User click "card_center_e_card_change_limit_save_button" until "card_center_password_field" displayed
  And User fill "card_center_password_field" with "correct_password"
  When User click "card_center_password_submit_button"
  Then User expect "top_notification_snackbar" equal with "card_center_card_change_limit_push_message"

@android @endtoend
Scenario: JENI62-C21028-Change (decreasing) limit of x-card in quick action (3 dots) in Dashboard
  Given User is logged in with cif "card_center_active_card_for_ui_transaction"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_active_x_card_three_dots"
  And User click "card_center_active_x_card_three_dots" until "card_center_satay_detail_change_limit" displayed
  And User click "card_center_satay_detail_change_limit" until "card_center_mcard_single_purchase_limit" displayed
  And User swipe up until found "card_center_e_card_change_limit_save_button"
  And User fill "card_center_mcard_single_purchase_limit" with "card_center_mcard_single_purchase_decrease_limit"     
  And User fill "card_center_mcard_daily_atm_withdrawal_limit" with "card_center_mcard_daily_atm_withdrawal_decrease_limit"     
  And User click "card_center_e_card_change_limit_save_button" 
  Then User expect "top_notification_snackbar" equal with "card_center_card_change_limit_push_message"

@android @uidatabound
Scenario: JENI62-C21024-Change (increasing) limit of x-card in quick action (3 dots) in Card Center landing
  Given User is logged in with cif "card_center_active_card_for_ui_transaction"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  And User click "card_center_active_x_card_three_dots" until "card_center_satay_detail_change_limit" displayed
  And User click "card_center_satay_detail_change_limit" until "card_center_mcard_single_purchase_limit" displayed
  And User swipe up until found "card_center_e_card_change_limit_save_button"
  And User fill "card_center_mcard_single_purchase_limit" with "card_center_mcard_single_purchase_increase_limit"     
  And User fill "card_center_mcard_daily_atm_withdrawal_limit" with "card_center_mcard_daily_atm_withdrawal_increase_limit"     
  And User click "card_center_e_card_change_limit_save_button" until "card_center_password_field" displayed
  And User fill "card_center_password_field" with "correct_password"
  Then User expect "card_center_password_submit_button" is exist
 
@android @uidatabound
Scenario: JENI62-C21029-Change (decreasing) limit of x-card in quick action (3 dots) in Card Center landing
  Given User is logged in with cif "card_center_active_card_for_ui_transaction"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  And User click "card_center_active_x_card_three_dots" until "card_center_satay_detail_change_limit" displayed
  And User click "card_center_satay_detail_change_limit" until "card_center_mcard_single_purchase_limit" displayed
  And User swipe up until found "card_center_e_card_change_limit_save_button"
  And User fill "card_center_mcard_single_purchase_limit" with "card_center_mcard_single_purchase_decrease_limit"     
  And User fill "card_center_mcard_daily_atm_withdrawal_limit" with "card_center_mcard_single_purchase_decrease_limit"     
  Then User expect "card_center_e_card_change_limit_save_button" is exist

@android @uidatabound
Scenario: JENI62-C21025-Change limit (increasing) of x-card in quick action (3 dots) in Card details
  Given User is logged in with cif "card_center_active_card_for_ui_transaction"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  And "card_center_x_card_clickable" will be displayed
  And User click "card_center_x_card_clickable" until "card_center_more_cta_button" displayed
  And User click "card_center_more_cta_button" until "card_center_satay_detail_change_limit" displayed
  And User click "card_center_satay_detail_change_limit"
  And User swipe up until found "card_center_e_card_change_limit_save_button"
  And User fill "card_center_mcard_single_purchase_limit" with "card_center_mcard_single_purchase_increase_limit"     
  And User fill "card_center_mcard_daily_atm_withdrawal_limit" with "card_center_mcard_daily_atm_withdrawal_increase_limit"     
  And User click "card_center_e_card_change_limit_save_button" until "card_center_password_field" displayed
  And User fill "card_center_password_field" with "correct_password"
  Then User expect "card_center_password_submit_button" is exist

@android @uidatabound   
Scenario: JENI62-C21030-Change limit (decreasing) of x-card in quick action (3 dots) in Card details
  Given User is logged in with cif "card_center_active_card_for_ui_transaction"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  And "card_center_x_card_clickable" will be displayed
  And User click "card_center_x_card_clickable" until "card_center_more_cta_button" displayed
  And User click "card_center_more_cta_button" until "card_center_satay_detail_change_limit" displayed
  And User click "card_center_satay_detail_change_limit"
  And User swipe up until found "card_center_e_card_change_limit_save_button"
  And User fill "card_center_mcard_single_purchase_limit" with "card_center_mcard_single_purchase_decrease_limit"     
  And User fill "card_center_mcard_daily_atm_withdrawal_limit" with "card_center_mcard_single_purchase_decrease_limit"     
  Then User expect "card_center_e_card_change_limit_save_button" is exist

@android @uidatabound
Scenario: JENI62-C21031-Change card limit (increasing Purchase, decreasing Withdrawal) x-card
  Given User is logged in with cif "card_center_active_card_for_ui_transaction"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_active_x_card_three_dots"
  And User click "card_center_active_x_card_three_dots" until "card_center_satay_detail_change_limit" displayed
  And User click "card_center_satay_detail_change_limit" until "card_center_mcard_single_purchase_limit" displayed
  And User swipe up until found "card_center_e_card_change_limit_save_button"
  And User fill "card_center_mcard_single_purchase_limit" with "card_center_mcard_single_purchase_increase_limit"     
  And User fill "card_center_mcard_daily_atm_withdrawal_limit" with "card_center_mcard_single_purchase_decrease_limit"     
  And User click "card_center_e_card_change_limit_save_button" until "card_center_password_field" displayed
  And User fill "card_center_password_field" with "correct_password"
  Then User expect "card_center_password_submit_button" is exist

@android @uidatabound
Scenario: JENI62-C21032-Change card limit (decreasing Purchase, increasing Withdrawal) x-card
  Given User is logged in with cif "card_center_active_card_for_ui_transaction"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_active_x_card_three_dots"
  And User click "card_center_active_x_card_three_dots" until "card_center_satay_detail_change_limit" displayed
  And User click "card_center_satay_detail_change_limit" until "card_center_mcard_single_purchase_limit" displayed
  And User swipe up until found "card_center_e_card_change_limit_save_button"
  And User fill "card_center_mcard_single_purchase_limit" with "card_center_mcard_single_purchase_decrease_limit"     
  And User fill "card_center_mcard_daily_atm_withdrawal_limit" with "card_center_mcard_daily_atm_withdrawal_increase_limit"     
  And User click "card_center_e_card_change_limit_save_button" until "card_center_password_field" displayed
  And User fill "card_center_password_field" with "correct_password"
  Then User expect "card_center_password_submit_button" is exist

@android @uidatabound
Scenario: JENI62-C21064-Cancel changing card limit of x-card
  Given User is logged in with cif "card_center_active_card_for_ui_transaction"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  And User click "card_center_active_x_card_three_dots" until "card_center_satay_detail_change_limit" displayed
  And User click "card_center_satay_detail_change_limit" until "card_center_mcard_single_purchase_limit" displayed
  And User swipe up until found "card_center_e_card_change_limit_save_button"
  And User check balances for "card_center_mcard_single_purchase_limit", "null_value", "null_value", "null_value" and "null_value"
  And User fill "card_center_mcard_single_purchase_limit" with "card_center_mcard_single_purchase_increase_limit"     
  And User fill "card_center_mcard_daily_atm_withdrawal_limit" with "card_center_mcard_daily_atm_withdrawal_increase_limit"     
  And User click "card_center_back_menu" until "card_center_m_card_clickable" displayed
  And User click "card_center_x_card_clickable"
  And User click "card_center_more_cta_button"
  And User click "card_center_satay_detail_change_limit"
  And User swipe up until found "card_center_e_card_change_limit_save_button"
  Then User check total "card_center_mcard_single_purchase_limit" balance

@android @uidatabound
Scenario: JENI62-C23536-Input The Wrong SLA When Changing The Limit of Card
  Given User is logged in with cif "card_center_active_card_for_ui_transaction"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_active_x_card_three_dots"
  And User click "card_center_active_x_card_three_dots" until "card_center_satay_detail_change_limit" displayed
  And User click "card_center_satay_detail_change_limit" until "card_center_mcard_single_purchase_limit" displayed
  And User swipe up until found "card_center_e_card_change_limit_save_button"
  And User fill "card_center_mcard_single_purchase_limit" with "card_center_mcard_single_purchase_increase_limit"     
  And User fill "card_center_mcard_daily_atm_withdrawal_limit" with "card_center_mcard_single_purchase_decrease_limit"     
  And User click "card_center_e_card_change_limit_save_button" until "card_center_password_field" displayed
  And User fill "card_center_password_field" with "incorrect_password_2"
  And User click "card_center_password_submit_button"
  Then User expect "top_notification_snackbar" equal with "card_center_card_change_limit_error_message"
 
@android @uidatabound   
Scenario: JENI62-C23535-Verify The Maximum POS Limit for Main Card
  Given User is logged in with cif "card_center_active_card_for_ui_transaction"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  And User click "card_center_active_x_card_three_dots" until "card_center_satay_detail_change_limit" displayed
  And User click "card_center_satay_detail_change_limit" until "card_center_mcard_single_purchase_limit" displayed
  And User swipe up until found "card_center_e_card_change_limit_save_button"
  And User check balances for "card_center_mcard_single_purchase_limit", "null_value", "null_value", "null_value" and "null_value"
  And User fill "card_center_mcard_single_purchase_limit" with "card_center_mcard_single_purchase_increase_limit_above_max"     
  And User fill "card_center_mcard_daily_atm_withdrawal_limit" with "card_center_mcard_daily_atm_withdrawal_increase_limit_above_max"  
  And User click "card_center_e_card_change_limit_save_button"
  Then User expect "card_center_m_card_single_purchase_limit_error_message" equal with "card_center_m_card_single_purchase_limit_error_message"
  Then User expect "card_center_m_card_daily_atm_withdraw_limit_error_message" equal with "card_center_m_card_daily_atm_withdraw_limit_error_message"
  And User click "card_center_back_menu"
  And User click "card_center_x_card_clickable"
  And User click "card_center_more_cta_button"
  And User click "card_center_satay_detail_change_limit"
  And User swipe up until found "card_center_e_card_change_limit_save_button"
  And User check total "card_center_mcard_single_purchase_limit" balance

#JENI-63
#JENI63-C19726-Check layout of the change PIN m-card
#JENI63-C19727-Change PIN m-card page from Card Center widget
@uidatabound @android @R3_1 @ios
Scenario: JENI63-C19726#C19727-Change PIN m-Card

  Given User is logged in with cif "card_center_active_m_card_change_pin"
  And User change language to "language"
  And User wait 5 seconds
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_m_card_dashboard"
  Then "card_center_m_card_tb_dashboard" will be displayed
  And User click "card_center_m_card_tb_dashboard"

  Then "card_center_satay_dashboard" will be displayed
  Then "card_center_satay_change_pin" will be displayed
  Then "card_center_satay_block_card" will be displayed
  Then "card_center_satay_change_limit" will be displayed
  And User click "card_center_satay_change_pin"

  Then "card_center_change_pin_form" will be displayed
  Then "card_center_change_pin_page_title" will be displayed
  Then "card_center_change_pin_page_card_picture" will be displayed
  And User expect "card_center_change_pin_page_card_type" equal with "card_center_m_card"
  And User expect "card_center_change_pin_page_card_number" equal with "card_center_m_card_masked_number_change_pin"

  When User fill "card_center_card_pin_field" with "correct_pin"
  And User check if "card_center_card_pin_field" field masked
  When User fill "card_center_card_pin_confirm_field" with "correct_pin"
  And User check if "card_center_card_pin_confirm_field" field masked

  Then "card_center_change_pin_save_button" will be displayed
  And User click "card_center_change_pin_save_button"

  Then "card_center_password_verification_form" will be displayed
  And User fill "card_center_password_auth" with "card_center_active_m_card_correct_password_change_pin"
  Then "card_center_password_submit_button" will be displayed

@uidatabound @android @ios @R3_1
Scenario:JENI63-C19728-Change PIN m-card page from card center landing
  Given User is logged in with cif "card_center_active_m_card_change_pin"
  And User change language to "language"
  Then "dashboard" will be displayed

  And User go to card center landing page from side menu
  And User check and click "card_center_close_tutorial" if exist
  Then "card_center_m_card_tb_dashboard" will be displayed
  And User click "card_center_m_card_tb_dashboard"
  And User click "card_center_satay_change_pin"

  Then "card_center_change_pin_form" will be displayed

@uidatabound @android @ios @R3_1
Scenario:JENI63-C19729-Open change PIN m-card page from card details
  Given User is logged in with cif "card_center_active_m_card_change_pin"
  And User change language to "language"
  Then "dashboard" will be displayed

  And User go to card center landing page from side menu
  And User check and click "card_center_close_tutorial" if exist
  And User click "card_center_m_card_clickable"

  Then "card_center_detail" will be displayed
  Then "card_center_change_pin_cta_button" will be displayed
  And User click "card_center_change_pin_cta_button"

  Then "card_center_change_pin_form" will be displayed

@uidatabound @android @ios @R3_1
Scenario:JENI63-C19730-Change PIN of m-card: Cancel the changing (Dashboard)

  Given User is logged in with cif "card_center_active_m_card_change_pin"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_m_card_dashboard"
  Then "card_center_m_card_tb_dashboard" will be displayed
  And User click "card_center_m_card_tb_dashboard"
  And User click "card_center_satay_change_pin"
  And User click "back_button"
  Then "dashboard" will be displayed

@uidatabound @android @ios @R3_1
Scenario:JENI63-C19731-Change PIN of m-card: Cancel the changing (Card Center Landing)
  Given User is logged in with cif "card_center_active_m_card_change_pin"
  And User change language to "language"
  Then "dashboard" will be displayed

  And User go to card center landing page from side menu
  And User check and click "card_center_close_tutorial" if exist
  Then "card_center_m_card_tb_dashboard" will be displayed
  And User click "card_center_m_card_tb_dashboard"
  And User click "card_center_satay_change_pin"

  Then "card_center_change_pin_form" will be displayed
  And User click "back_button"
  Then "card_center_landing_page" will be displayed

@uidatabound @android @ios @R3_1
Scenario:JENI63-C21105-Change PIN m-card page from card detail: Cancel the changing
  Given User is logged in with cif "card_center_active_m_card_change_pin"
  And User change language to "language"
  Then "dashboard" will be displayed

  And User go to card center landing page from side menu

  Then "card_center_m_card_tb_dashboard" will be displayed
  And User click "card_center_m_card_clickable"

  Then "card_center_detail" will be displayed
  Then "card_center_change_pin_cta_button" will be displayed
  And User click "card_center_change_pin_cta_button"

  Then "card_center_change_pin_form" will be displayed
  And User click "back_button"
  Then "card_center_detail" will be displayed

#JENI63-C19732-Change m-card PIN: pin is predictable
#JENI63-C19733-Change m-card PIN: pin doesn't match
#JENI63-C19734-Change m-card PIN: pin is less than 6 digits
@uidatabound @android @ios @R3_1
Scenario: JENI63-C19732#C19733#C19734-Change PIN m-Card negative case
  
  Given User is logged in with cif "card_center_active_m_card_change_pin"
  And User change language to "language"
  Then "dashboard" will be displayed
  
  And User go to card center landing page from side menu
  And User check and click "card_center_close_tutorial" if exist
  And User click "card_center_m_card_tb_dashboard"
  And User click "card_center_satay_change_pin"

  When User fill "card_center_card_pin_field" with 123456
  When User fill "card_center_card_pin_confirm_field" with 123456
  And User click "card_center_change_pin_save_button"

  And User expect "card_center_card_pin_hint" equal with "card_center_card_pin_easy"

  And User click "card_center_card_pin_field_eye"
  When User fill "card_center_card_pin_field" with 111111
  And User click "card_center_card_pin_confirm_field_eye"
  When User fill "card_center_card_pin_confirm_field" with 111111
  And User click "card_center_change_pin_save_button"

  And User expect "card_center_card_pin_hint" equal with "card_center_card_pin_easy"

  When User fill "card_center_card_pin_field" with 121212
  When User fill "card_center_card_pin_confirm_field" with 121212
  And User click "card_center_change_pin_save_button"

  And User expect "card_center_card_pin_hint" equal with "card_center_card_pin_easy"

  When User fill "card_center_card_pin_field" with 112233
  When User fill "card_center_card_pin_confirm_field" with 112233
  And User click "card_center_change_pin_save_button"

  And User expect "card_center_card_pin_hint" equal with "card_center_card_pin_easy"

  And User click "back_button"
  And User click "card_center_m_card_tb_dashboard"
  And User click "card_center_satay_change_pin"

  When User fill "card_center_card_pin_field" with "correct_pin"
  When User fill "card_center_card_pin_confirm_field" with 123456
  And User click "card_center_change_pin_save_button"

  And User expect "card_center_card_pin_confirm_hint" equal with "card_center_card_pin_not_match"

  And User click "back_button"
  And User click "card_center_m_card_tb_dashboard"
  And User click "card_center_satay_change_pin"

  When User fill "card_center_card_pin_field" with 1
  When User fill "card_center_card_pin_confirm_field" with 1
  And User click "card_center_change_pin_save_button"

  And User expect "card_center_card_pin_hint" equal with "card_center_card_pin_few"
  And User expect "card_center_card_pin_confirm_hint" equal with "card_center_card_pin_few"

  When User fill "card_center_card_pin_field" with 123
  When User fill "card_center_card_pin_confirm_field" with 123
  And User click "card_center_change_pin_save_button"

  And User expect "card_center_card_pin_hint" equal with "card_center_card_pin_few"
  And User expect "card_center_card_pin_confirm_hint" equal with "card_center_card_pin_few"

  And User click "card_center_card_pin_field_eye"
  When User fill "card_center_card_pin_field" with 12345
  And User click "card_center_card_pin_confirm_field_eye"
  When User fill "card_center_card_pin_confirm_field" with 12345
  And User click "card_center_change_pin_save_button"

  And User expect "card_center_card_pin_hint" equal with "card_center_card_pin_few"
  And User expect "card_center_card_pin_confirm_hint" equal with "card_center_card_pin_few"

@uidatabound @android @ios @R3_1
Scenario:JENI63-C21413-Change PIN m-card: Cancel the at Verification Code

  Given User is logged in with cif "card_center_active_m_card_change_pin"
  And User change language to "language"
  Then "dashboard" will be displayed

  And User go to card center landing page from side menu
  And User check and click "card_center_close_tutorial" if exist
  And User click "card_center_m_card_clickable"

  Then "card_center_detail" will be displayed
  Then "card_center_change_pin_cta_button" will be displayed
  And User click "card_center_change_pin_cta_button"
  Then "card_center_change_pin_form" will be displayed

  When User fill "card_center_card_pin_field" with "correct_pin"
  When User fill "card_center_card_pin_confirm_field" with "correct_pin"

  Then "card_center_change_pin_save_button" will be displayed
  And User click "card_center_change_pin_save_button"

  Then "card_center_password_verification_form" will be displayed
  And User fill "card_center_password_field" with 123
  And User click "back_button_stepup"

  Then "card_center_change_pin_form" will be displayed

#JENI 57 #JENI 920 #JENI 921 
@android @uidatabound
Scenario: JENI921-C45941-Temporarily Blocked of e-card in quick action (3 dots) in Dashboard
  Given User is logged in with cif "card_center_active_card_for_ui_transaction"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_e_card_tb_dashboard"
  And User click "card_center_e_card_tb_dashboard" until "card_center_landing_page_cta_block" displayed
  And User click "card_center_landing_page_cta_block" until "card_center_block_detail_temporary_block" displayed
  Then User expect "card_center_block_detail_temporary_block" is exist

@android @endtoend
Scenario: JENI921-C45946-Temporarily of e-card in quick action (3 dots) in Card Center landing
  Given User is logged in with cif "card_center_active_card_for_change_status"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "dashboard_card_center_widget"
  And User click "dashboard_card_center_widget" until "card_center_close_tutorial" displayed
  And User click "card_center_close_tutorial" until "card_center_e_card_tb_dashboard" displayed
  And "card_center_e_card_tb_dashboard" will be displayed
  And User click "card_center_e_card_tb_dashboard"
  And User click "card_center_x_card_block_card" until "card_center_block_detail_temporary_block" displayed
  Then User expect "card_center_block_detail_temporary_block" is exist

@android @uidatabound
Scenario: JENI921-C45951-Temporary Block of e-card with CTA in Card Center landing
  Given User is logged in with cif "card_center_active_card_for_ui_transaction"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "dashboard_card_center_widget"
  And User click "dashboard_card_center_widget" until "card_center_close_tutorial" displayed
  And User click "card_center_close_tutorial" until "card_center_block_card" displayed
  And "card_center_block_card" will be displayed
  And User click "card_center_block_card" until "card_center_temporary_block_cta_button" displayed
  Then "card_center_temporary_block_cta_button" will be displayed
  And User click "card_center_temporary_block_cta_button" until "card_center_select_block_card" displayed
  Then "card_center_select_block_card" will be displayed
  And User select "card_center_select_block_card" dropdown with "card_center_e_card"
  Then User expect "card_center_temporary_block_page_block_button" is exist

@android @uidatabound  
Scenario:JENI921-C45942-Temporarily Blocked of e-card with CTA in Card details
  Given User is logged in with cif "card_center_active_card_for_ui_transaction"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_dropdown_option_e_card"
  And User click "card_center_dropdown_option_e_card" until "card_center_detail" displayed
  And User click "card_center_landing_page_cta_block" until "card_center_temporary_block_cta_button" displayed
  Then "card_center_temporary_block_cta_button" will be displayed
  Then "card_center_permanent_block_cta_button" will be displayed
  Then User expect "card_center_temporary_block_cta_button" is exist

@android @endtoend   
Scenario:JENI921-C45947-Temporarily Blocked of e-card with CTA in Card details (landing)
  Given User is logged in with cif "card_center_active_e_card"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User access card center from side menu
  And User click "card_center_close_tutorial" until "card_center_dropdown_option_e_card" displayed
  And User click "card_center_dropdown_option_e_card" until "card_center_detail" displayed
  And User click "card_center_landing_page_cta_block" until "card_center_temporary_block_cta_button" displayed
  Then "card_center_temporary_block_cta_button" will be displayed
  Then "card_center_permanent_block_cta_button" will be displayed
  And User click "card_center_temporary_block_cta_button"
  Then User expect "top_notification_snackbar" equal with "card_center_temporarily_block_e_card_detail_status"
  Then User expect "card_center_e_card_status_dashboard" equal with "card_center_temporarily_blocked"
  Then User expect "card_center_e_card_block_image" is exist

@android @uidatabound
Scenario:JENI921-C45943-Temporarily Blocked of e-card in quick action (3 dots) in Dashboard: Cancel
  Given User is logged in with cif "card_center_active_e_card"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_e_card_tb_dashboard"
  And User click "card_center_e_card_tb_dashboard" until "card_center_landing_page_cta_block" displayed
  Then User expect "card_center_cancel_button" is exist
  And User click "card_center_cancel_button" 
  Then User expect "card_center_e_card_block_image" doesn't exist

@android @uidatabound
Scenario:JENI921-C45948-Temporarily of e-card in quick action (3 dots) in Card Center landing: Cancel
  Given User is logged in with cif "card_center_active_e_card"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  And User click "card_center_e_card_tb_dashboard"
  And User click "card_center_x_card_block_card" until "card_center_block_detail_temporary_block" displayed
  #And User click "card_center_block_detail_temporary_block" until "card_center_cancel_button" displayed
  Then "card_center_cancel_button" will be displayed
  And User click "card_center_cancel_button" until "card_center_landing_page" displayed
  Then "card_center_landing_page" will be displayed
  Then User expect "card_center_e_card_block_image" doesn't exist

#JENI161 
@android @uidatabound
Scenario:JENI161-C19704-Check balance of an active e-card in Card Center (landing)
  Given User is logged in with cif "card_center_active_card_for_ui_transaction"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User access card center from side menu
  And User click "card_center_close_tutorial" until "card_center_e_card_balance_dashboard" displayed
  Then "card_center_dropdown_option_e_card" will be displayed
  Then "card_center_e_card_balance_dashboard" will be displayed
  Then User expect "card_center_e_card_balance_dashboard" equal with "card_center_balance_e_card"

@android @uidatabound
Scenario:JENI161-C19705-Check balance of a temporarily blocked e-card in Card Center (landing)
  Given User is logged in with cif "card_center_block_card_for_ui_transaction"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User access card center from side menu
  And User click "card_center_close_tutorial" until "card_center_dropdown_option_e_card" displayed
  Then "card_center_dropdown_option_e_card" will be displayed
  Then "card_center_e_card_balance_dashboard" will be displayed
  Then User expect "card_center_e_card_status_dashboard" equal with "card_center_temporarily_blocked"
  Then User expect "card_center_e_card_balance_dashboard" equal with "card_center_balance_e_card_temporarily_blocked"

@android @uidatabound
Scenario:JENI161-C19706-Check balance of the e-card when **** account is not activated
  Given User is logged in with cif "card_center_card_not_activated_for_ui_transaction"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  Then "card_center_dropdown_option_e_card" will be displayed
  Then "card_center_e_card_balance_dashboard" doesn't exist
  
#JENI-60 
@android @uidatabound
Scenario:JENI60-C17867-Check layout of the card center landing page
  Given User is logged in with cif "card_center_active_x_card_for_ui_transaction"
  Then "dashboard" will be displayed
  And User change language to "language"
  And User access card center from side menu
  And User click "card_center_close_tutorial" until "card_center_m_card_clickable" displayed
  Then "card_center_m_card_clickable" will be displayed
  Then "card_center_dropdown_option_e_card" will be displayed
  Then "card_center_first_x_card_dashboard" will be displayed
  Then "card_center_landing_page_cta_top_up" will be displayed
  Then "card_center_landing_page_cta_new_card" will be displayed
  Then "card_center_landing_page_cta_block" will be displayed

@android @uidatabound
Scenario:JENI60-C17868-Check order of cards when it has 1 active m-card, active e-card, 1 active x-card
  Given User is logged in with cif "card_center_active_x_card_for_ui_transaction"
  Then "dashboard" will be displayed
  And User change language to "language"
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  Then "card_center_m_card_clickable" will be displayed
  Then "card_center_dropdown_option_e_card" will be displayed
  Then "card_center_first_x_card_dashboard" will be displayed
  Then User expect "card_center_m_card_landing_title" equal with "card_center_m_card"
  Then User expect "card_center_e_card_landing_title" equal with "card_center_e_card"
  Then User expect "card_center_first_x_card_landing_title" equal with "card_center_first_x_card"

@android @uidatabound
Scenario:JENI60-C17869-Check order of cards when it has 1 active m-card, active e-card, 2 active x-card
  Given User is logged in with cif "card_center_active_x_card_for_ui_transaction"
  Then "dashboard" will be displayed
  And User change language to "language"
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  Then "card_center_m_card_clickable" will be displayed
  Then "card_center_dropdown_option_e_card" will be displayed
  Then "card_center_first_x_card_dashboard" will be displayed
  Then User expect "card_center_m_card_landing_title" equal with "card_center_m_card"
  Then User expect "card_center_e_card_landing_title" equal with "card_center_e_card"
  Then User expect "card_center_first_x_card_landing_title" equal with "card_center_first_x_card"
  Then User expect "card_center_second_x_card_landing_title" equal with "card_center_second_x_card"

@android @uidatabound
Scenario:JENI60-C17870-Check order of cards when it has 1 active m-card, active e-card, 3 active x-card
  Given User is logged in with cif "card_center_active_x_card_for_ui_transaction"
  Then "dashboard" will be displayed
  And User change language to "language"
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  Then "card_center_m_card_clickable" will be displayed
  Then "card_center_dropdown_option_e_card" will be displayed
  Then "card_center_first_x_card_dashboard" will be displayed
  Then User expect "card_center_m_card_landing_title" equal with "card_center_m_card"
  Then User expect "card_center_e_card_landing_title" equal with "card_center_e_card"
  Then User expect "card_center_first_x_card_landing_title" equal with "card_center_first_x_card"
  Then User expect "card_center_second_x_card_landing_title" equal with "card_center_second_x_card"
  Then User expect "card_center_third_x_card_landing_title" equal with "card_center_third_x_card"

@android @uidatabound
Scenario:JENI60-C17877-Verify e-card has "Virtual Card" type
  Given User is logged in with cif "card_center_active_card_for_ui_transaction"
  Then "dashboard" will be displayed
  And User change language to "language"
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  Then "card_center_dropdown_option_e_card" will be displayed
  Then User expect "card_center_e_card_type" equal with "card_center_e_card_type"

@android @uidatabound
Scenario:JENI60-C17878-Verify CTA actions: new card, Top up, Block Card
  Given User is logged in with cif "card_center_active_card_for_ui_transaction"
  Then "dashboard" will be displayed
  And User change language to "language"
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  Then "card_center_landing_page_cta_top_up" will be displayed
  Then "card_center_landing_page_cta_new_card" will be displayed
  Then "card_center_landing_page_cta_block" will be displayed

@android @uidatabound
Scenario:JENI60-C17872-Check order of cards when it has 1 temporarily blocked m-card, temporarily blocked e-card, 1 active x-card
  Given User is logged in with cif "card_center_block_card_for_ui_transaction"
  Then "dashboard" will be displayed
  And User change language to "language"
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  Then "card_center_m_card_clickable" will be displayed
  Then "card_center_dropdown_option_e_card" will be displayed
  Then "card_center_first_x_card_dashboard" will be displayed
  Then User expect "card_center_m_card_landing_title" equal with "card_center_m_card"
  Then User expect "card_center_m_card_status_dashboard" equal with "card_center_temporarily_blocked"
  Then User expect "card_center_e_card_landing_title" equal with "card_center_e_card"
  Then User expect "card_center_e_card_status_dashboard" equal with "card_center_temporarily_blocked"
  Then User expect "card_center_first_x_card_landing_title" equal with "card_center_first_x_card"
  Then User expect "card_center_first_x_card_status_dashboard" equal with "card_center_active"  

#Cover for T1339713, T1339714, 
@android @uidatabound   
Scenario:JENI60-C17873-Check order of cards when it has 1 temporarily blocked m-card, temporarily blocked e-card, 1 temporarily blocked x-card
  Given User is logged in with cif "card_center_block_card_for_ui_transaction"
  Then "dashboard" will be displayed
  And User change language to "language"
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  Then "card_center_m_card_clickable" will be displayed
  Then "card_center_dropdown_option_e_card" will be displayed
  Then "card_center_first_x_card_dashboard" will be displayed
  Then User expect "card_center_m_card_landing_title" equal with "card_center_m_card"
  Then User expect "card_center_m_card_status_dashboard" equal with "card_center_temporarily_blocked"
  Then User expect "card_center_e_card_landing_title" equal with "card_center_e_card"
  Then User expect "card_center_e_card_status_dashboard" equal with "card_center_temporarily_blocked"
  Then User expect "card_center_first_x_card_landing_title" equal with "card_center_first_x_card"
  Then User expect "card_center_first_x_card_status_dashboard" equal with "card_center_temporarily_blocked"  

@android @uidatabound   
Scenario:JENI60-C17874-Check order of cards when it has 1 permanently blocked m-card, temporarily blocked e-card, 1 PB x-card, 1 active x-card
  Given User is logged in with cif "card_center_block_card_for_ui_transaction"
  Then "dashboard" will be displayed
  And User change language to "language"
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  Then "card_center_m_card_clickable" will be displayed
  Then "card_center_dropdown_option_e_card" will be displayed
  Then "card_center_first_x_card_dashboard" will be displayed
  Then User expect "card_center_m_card_landing_title" equal with "card_center_m_card"
  Then User expect "card_center_m_card_status_dashboard" equal with "card_center_permanently_blocked"
  Then User expect "card_center_e_card_landing_title" equal with "card_center_e_card"
  Then User expect "card_center_e_card_status_dashboard" equal with "card_center_temporarily_blocked"
  Then User expect "card_center_first_x_card_landing_title" equal with "card_center_first_x_card"
  Then User expect "card_center_first_x_card_status_dashboard" equal with "card_center_permanently_blocked"
  Then User expect "card_center_second_x_card_landing_title" equal with "card_center_second_x_card"
  Then User expect "card_center_second_x_card_status_dashboard" equal with "card_center_active"

@android @uidatabound   
Scenario:JENI60-C17875-Check order of cards, in case it has 1 PB m-card, 1 activate m-card, active e-card, 1 PB x-card, 1 active x-card
  Given User is logged in with cif "card_center_block_card_for_ui_transaction"
  Then "dashboard" will be displayed
  And User change language to "language"
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  Then User expect "card_center_m_card_landing_title" equal with "card_center_m_card"
  Then User expect "card_center_m_card_status_dashboard" equal with "card_center_temporarily_blocked"
  Then User expect "card_center_e_card_landing_title" equal with "card_center_m_card"
  Then User expect "card_center_e_card_status_dashboard" equal with "card_center_activate"
  Then User expect "card_center_first_x_card_landing_title" equal with "card_center_e_card"
  Then User expect "card_center_first_x_card_status_dashboard" equal with "card_center_active"
  Then User expect "card_center_second_x_card_landing_title" equal with "card_center_first_x_card"
  Then User expect "card_center_second_x_card_status_dashboard" equal with "card_center_permanently_blocked"
  And User swipe up until found "card_center_third_x_card_landing_title"
  Then User expect "card_center_third_x_card_landing_title" equal with "card_center_second_x_card"
  Then User expect "card_center_third_x_card_status_dashboard" equal with "card_center_active"

@android @uidatabound
 Scenario: JENI60-C17876-Verify the active m-card doesn't show its balance
  Given User is logged in with cif "card_center_active_card_for_ui_transaction"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  And "card_center_m_card_clickable" will be displayed
  And User click "card_center_m_card_clickable"
  Then User expect "card_center_m_card_balance_dashboard" doesn't exist

@android @uidatabound
 Scenario: JENI60-C17879-The account is inactive: m-card and e-card status is Processing
  Given User is logged in with cif "card_center_processing_card"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  And "card_center_m_card_clickable" will be displayed
  Then "card_center_dropdown_option_e_card" will be displayed
  Then User expect "card_center_m_card_status_dashboard" equal with "card_center_processing"
  Then User expect "card_center_e_card_status_dashboard" equal with "card_center_processing"

@android @uidatabound
Scenario: JENI60-C17880-The account is inactive: main account balance should be shown
  Given User is logged in with cif "card_center_inactive_account"
  And User change language to "language"
  Then "dashboard" will be displayed
  Then User expect "dashboard_total_balance_widget" is exist
 
@android @uidatabound
Scenario: JENI60-C17881-The account is inactive: the action in the bottom menu is in disabled state
  Given User is logged in with cif "card_center_inactive_account"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  And "card_center_landing_page_cta_new_card" will be displayed
  And "card_center_landing_page_cta_top_up" will be displayed
  And "card_center_landing_page_cta_block" will be displayed
  And User click "card_center_landing_page_cta_new_card"
  Then "card_center_landing_page_cta_new_card" will be displayed
  Then "card_center_landing_page_cta_top_up" will be displayed
  Then "card_center_landing_page_cta_block" will be displayed
  And User click "card_center_landing_page_cta_top_up"
  Then "card_center_landing_page_cta_new_card" will be displayed
  Then "card_center_landing_page_cta_top_up" will be displayed
  Then "card_center_landing_page_cta_block" will be displayed
  And User click "card_center_landing_page_cta_block"
  Then "card_center_landing_page_cta_new_card" will be displayed
  Then "card_center_landing_page_cta_top_up" will be displayed
  Then "card_center_landing_page_cta_block" will be displayed
  
#JENI-118 #Fixco
#For check active all card 
@android @uidatabound  
Scenario:JENI118-C17804-Verify the card center widget in case: m-card is active, e-card is active, x-card active
  Given User is logged in with cif "card_center_active_all_card_for_ui_transaction"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_e_card_tb_dashboard"
  Then "card_center_m_card_clickable" will be displayed
  Then "card_center_dropdown_option_e_card" will be displayed
  Then "card_center_first_x_card_dashboard" will be displayed
  Then User expect "card_center_m_card_status_dashboard" equal with "card_center_active"
  Then User expect "card_center_e_card_status_dashboard" equal with "card_center_active"
  Then User expect "card_center_first_x_card_status_dashboard" equal with "card_center_active"

#For check all card Permanen Block
@android @uidatabound  
Scenario:JENI118-C17799-Verify the card center widget in case: m-card is Permanently Blocked, e-card is Permanent Block, x-card id Permanent Block
  Given User is logged in with cif "card_center_permanent_block_account"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_e_card_tb_dashboard"
  Then "card_center_m_card_clickable" will be displayed
  Then "card_center_dropdown_option_e_card" will be displayed
  Then "card_center_first_x_card_dashboard" will be displayed
  Then User expect "card_center_m_card_status_dashboard" equal with "card_center_permanently_blocked"
  Then User expect "card_center_e_card_status_dashboard" equal with "card_center_permanently_blocked"
  Then User expect "card_center_first_x_card_status_dashboard" equal with "card_center_permanently_blocked"

#For check all card Temporarily Block
@android @uidatabound  
Scenario:JENI118-C17797-Verify the card center widget in case: m-card is Temporarily Blocked, e-card is Temporarily Block, x-card id Temporarily Block
  Given User is logged in with cif "card_center_block_card_for_ui_transaction"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_e_card_tb_dashboard"
  Then "card_center_m_card_clickable" will be displayed
  Then "card_center_dropdown_option_e_card" will be displayed
  Then "card_center_first_x_card_dashboard" will be displayed
  Then User expect "card_center_m_card_status_dashboard" equal with "card_center_temporarily_blocked"
  Then User expect "card_center_e_card_status_dashboard" equal with "card_center_temporarily_blocked"
  Then User expect "card_center_first_x_card_status_dashboard" equal with "card_center_temporarily_blocked"

@android @uidatabound   
Scenario:JENI118-C17797-Verify the card center widget in case: m-card is Temporarily Block, e-card is Active
  Given User is logged in with cif "card_center_tb_m_card_active_e_card"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_e_card_tb_dashboard"
  Then "card_center_m_card_clickable" will be displayed
  Then "card_center_dropdown_option_e_card" will be displayed
  Then User expect "card_center_m_card_status_dashboard" equal with "card_center_temporarily_blocked"
  Then User expect "card_center_e_card_status_dashboard" equal with "card_center_active"

@android @uidatabound   
Scenario:JENI118-C17799-Verify the card center widget in case: m-card is Permanently Blocked, e-card is Active
  Given User is logged in with cif "card_center_active_m_card_pb_m_card_active_e_card"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_e_card_tb_dashboard"
  Then "card_center_m_card_clickable" will be displayed
  Then "card_center_dropdown_option_e_card" will be displayed
  Then "card_center_first_x_card_dashboard" will be displayed
  Then User expect "card_center_m_card_status_dashboard" equal with "card_center_active"
  Then User expect "card_center_e_card_status_dashboard" equal with "card_center_permanently_blocked"
  Then User expect "card_center_first_x_card_status_dashboard" equal with "card_center_active"

@android @uidatabound   
Scenario:JENI118-C17801-Verify the card center widget in case: m-card is Active, e-card is Temporarily Blocked
  Given User is logged in with cif "card_center_active_m_card_tb_e_card"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_e_card_tb_dashboard"
  Then "card_center_m_card_clickable" will be displayed
  Then "card_center_dropdown_option_e_card" will be displayed
  Then User expect "card_center_m_card_status_dashboard" equal with "card_center_active"
  Then User expect "card_center_e_card_status_dashboard" equal with "card_center_temporarily_blocked"
 
@android @uidatabound
Scenario:JENI118-C17804-Verify the card center widget in case: m-card is Active, e-card is Active, x-card is Activate
  Given User is logged in with cif "card_center_active_all_card"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_e_card_tb_dashboard"
  Then "card_center_m_card_clickable" will be displayed
  Then "card_center_dropdown_option_e_card" will be displayed
  Then "card_center_first_x_card_dashboard" will be displayed
  Then User expect "card_center_m_card_status_dashboard" equal with "card_center_active"
  Then User expect "card_center_e_card_status_dashboard" equal with "card_center_active"
  Then User expect "card_center_x_card_status_dashboard" equal with "card_center_active"

@android @uidatabound
Scenario:JENI118-C17805-Verify the card center widget in case: m-card is Active, e-card is Active, x-card is Active
  Given User is logged in with cif "card_center_active_all_card"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_e_card_tb_dashboard"
  Then "card_center_m_card_clickable" will be displayed
  Then "card_center_dropdown_option_e_card" will be displayed
  Then "card_center_first_x_card_dashboard" will be displayed
  Then User expect "card_center_m_card_status_dashboard" equal with "card_center_active"
  Then User expect "card_center_e_card_status_dashboard" equal with "card_center_active"
  Then User expect "card_center_first_x_card_status_dashboard" equal with "card_center_active"

@android @uidatabound   
Scenario:JENI118-C17806-Verify the card center widget in case: m-card is Active, e-card is Active, x-card is Temporarily Blocked
  Given User is logged in with cif "card_center_active_m_card_e_card_tb_x_card"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_e_card_tb_dashboard"
  Then "card_center_m_card_clickable" will be displayed
  Then "card_center_dropdown_option_e_card" will be displayed
  Then "card_center_first_x_card_dashboard" will be displayed
  Then User expect "card_center_m_card_status_dashboard" equal with "card_center_active"
  Then User expect "card_center_e_card_status_dashboard" equal with "card_center_active"
  Then User expect "card_center_first_x_card_status_dashboard" equal with "card_center_temporarily_blocked"

@android @uidatabound   
Scenario:JENI118-C17807-Verify the card center widget in case: m-card is Active, e-card is Active, x-card is Permanently Blocked
  Given User is logged in with cif "card_center_active_m_card_e_card_pb_x_card"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_e_card_tb_dashboard"
  Then "card_center_m_card_clickable" will be displayed
  Then "card_center_dropdown_option_e_card" will be displayed
  Then "card_center_first_x_card_dashboard" will be displayed
  Then User expect "card_center_m_card_status_dashboard" equal with "card_center_active"
  Then User expect "card_center_e_card_status_dashboard" equal with "card_center_active"
  Then User expect "card_center_first_x_card_status_dashboard" equal with "card_center_permanently_blocked"

@android @uidatabound
Scenario:JENI118-C17808-Verify the card center widget: m-card=Active, e-card=Active, oldest x-card = Permanently Blocked, next x-card = Activate
  Given User is logged in with cif "card_center_active_m_card_active_e_card_pb_first_x_card_activate_second_x_card"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_e_card_tb_dashboard"
  Then "card_center_m_card_clickable" will be displayed
  Then "card_center_dropdown_option_e_card" will be displayed
  Then "card_center_first_x_card_dashboard" will be displayed
  Then User expect "card_center_m_card_status_dashboard" equal with "card_center_active"
  Then User expect "card_center_e_card_status_dashboard" equal with "card_center_active"
  Then User expect "card_center_first_x_card_status_dashboard" equal with "card_center_permanently_blocked"
  Then User expect "card_center_x_card_activate_dashboard" is exist

@android @uidatabound
Scenario:JENI118-C17809-Verify the card center widget: m-card=Active, e-card=Active, oldest x-card = Permanently Blocked, next x-card = Active
  Given User is logged in with cif "card_center_active_m_card_active_e_card_pb_first_x_card_active_second_x_card"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_e_card_tb_dashboard"
  Then "card_center_m_card_clickable" will be displayed
  Then "card_center_dropdown_option_e_card" will be displayed
  Then "card_center_first_x_card_dashboard" will be displayed
  Then User expect "card_center_m_card_status_dashboard" equal with "card_center_active"
  Then User expect "card_center_e_card_status_dashboard" equal with "card_center_active"
  Then User expect "card_center_first_x_card_status_dashboard" equal with "card_center_permanently_blocked"
  Then User expect "card_center_second_x_card_status_dashboard" equal with "card_center_active"
  
@android @uidatabound
Scenario:JENI118-C17810-Verify the card center widget: m-card=Active, e-card=Active, oldest x-card = Permanently Blocked, next x-card = Temporarily Blocked
  Given User is logged in with cif "card_center_active_m_card_e_card_pb_first_x_card_tb_second_x_card"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_e_card_tb_dashboard"
  Then "card_center_m_card_clickable" will be displayed
  Then "card_center_dropdown_option_e_card" will be displayed
  Then "card_center_first_x_card_dashboard" will be displayed
  Then "card_center_first_x_card_dashboard" will be displayed
  Then User expect "card_center_m_card_status_dashboard" equal with "card_center_active"
  Then User expect "card_center_e_card_status_dashboard" equal with "card_center_active"
  Then User expect "card_center_first_x_card_status_dashboard" equal with "card_center_permanently_blocked"
  Then User expect "card_center_second_x_card_status_dashboard" equal with "card_center_temporarily_blocked"

@android @uidatabound
Scenario:JENI118-C17811-Verify the card center widget: m-card=Active, e-card=Active, oldest x-card = Permanently Blocked, next x-card = Permanently Blocked  
  Given User is logged in with cif "card_center_active_m_card_e_card_pb_first_x_card_pb_second_x_card"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_e_card_tb_dashboard"
  Then "card_center_m_card_clickable" will be displayed
  Then "card_center_dropdown_option_e_card" will be displayed
  Then "card_center_first_x_card_dashboard" will be displayed
  Then "card_center_first_x_card_dashboard" will be displayed
  Then User expect "card_center_m_card_status_dashboard" equal with "card_center_active"
  Then User expect "card_center_e_card_status_dashboard" equal with "card_center_active"
  Then User expect "card_center_first_x_card_status_dashboard" equal with "card_center_permanently_blocked"
  Then User expect "card_center_second_x_card_status_dashboard" equal with "card_center_permanently_blocked"

@android @uidatabound
Scenario:JENI118-C17812-Verify the card center widget: m-card=Active, e-card=Temporarily Blocked, oldest x-card = Permanently Blocked, next x-card = Permanently Blocked
  Given User is logged in with cif "card_center_active_m_card_tb_e_card_pb_first_x_card_active_second_x_card"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_e_card_tb_dashboard"
  Then "card_center_m_card_clickable" will be displayed
  Then "card_center_dropdown_option_e_card" will be displayed
  Then "card_center_first_x_card_dashboard" will be displayed
  Then "card_center_first_x_card_dashboard" will be displayed
  Then User expect "card_center_m_card_status_dashboard" equal with "card_center_active"
  Then User expect "card_center_e_card_status_dashboard" equal with "card_center_temporarily_blocked"
  Then User expect "card_center_first_x_card_status_dashboard" equal with "card_center_permanently_blocked"
  Then User expect "card_center_second_x_card_status_dashboard" equal with "card_center_permanently_blocked"

@android @uidatabound
Scenario:JENI118-C17813-Verify the card center widget: m-card=Temporarily Blocked (TB), e-card=TB, oldest x-card = Permanently Blocked (PB), next x-card = PB
  Given User is logged in with cif "card_center_tb_m_card_e_card_pb_first_x_card_second_x_card"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_e_card_tb_dashboard"
  Then "card_center_m_card_clickable" will be displayed
  Then "card_center_dropdown_option_e_card" will be displayed
  Then "card_center_first_x_card_dashboard" will be displayed
  Then "card_center_first_x_card_dashboard" will be displayed
  Then User expect "card_center_m_card_status_dashboard" equal with "card_center_temporarily_blocked"
  Then User expect "card_center_e_card_status_dashboard" equal with "card_center_temporarily_blocked"
  Then User expect "card_center_first_x_card_status_dashboard" equal with "card_center_permanently_blocked"
  Then User expect "card_center_second_x_card_status_dashboard" equal with "card_center_permanently_blocked"

@android @uidatabound
Scenario:JENI118-C17814-Verify the card center widget: m-card=Permanently Blocked (PB), e-card=Temporarily Blocked, oldest x-card =PB, next x-card = PB
  Given User is logged in with cif "card_center_pb_m_card_tb_e_card_pb_first_x_card_second_x_card"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_e_card_tb_dashboard"
  Then "card_center_m_card_clickable" will be displayed
  Then "card_center_dropdown_option_e_card" will be displayed
  Then "card_center_first_x_card_dashboard" will be displayed
  Then "card_center_first_x_card_dashboard" will be displayed
  Then User expect "card_center_m_card_status_dashboard" equal with "card_center_permanently_blocked"
  Then User expect "card_center_e_card_status_dashboard" equal with "card_center_temporarily_blocked"
  Then User expect "card_center_first_x_card_status_dashboard" equal with "card_center_permanently_blocked"
  Then User expect "card_center_second_x_card_status_dashboard" equal with "card_center_permanently_blocked"

@android @uidatabound
Scenario:JENI118-C17815-Verify the card center widget: m-card=Temporarily Blocked (TB), e-card=Active, oldest x-card = Active
  Given User is logged in with cif "card_center_temporarily_block_m_card_e_card_active_x_card"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_e_card_tb_dashboard"
  Then "card_center_m_card_clickable" will be displayed
  Then "card_center_dropdown_option_e_card" will be displayed
  Then "card_center_first_x_card_dashboard" will be displayed
  Then User expect "card_center_m_card_status_dashboard" equal with "card_center_temporarily_blocked"
  Then User expect "card_center_e_card_status_dashboard" equal with "card_center_active"
  Then User expect "card_center_first_x_card_status_dashboard" equal with "card_center_active"

@android @uidatabound
Scenario:JENI118-C17816-Verify 3 dots, CTA with m-card is Processing
  Given User is logged in with cif "card_center_processing_card"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_e_card_tb_dashboard"
  Then "card_center_m_card_clickable" will be displayed
  Then User expect "card_center_active_m_card_three_dots" doesn't exist

@android @uidatabound
Scenario:JENI118-C17817-Verify 3 dots, CTA with m-card is Activate
  Given User is logged in with cif "card_center_active_card_with_inactive_m_card"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_e_card_tb_dashboard"
  Then "card_center_m_card_clickable" will be displayed
  Then User expect "card_center_active_m_card_three_dots" doesn't exist

@android @uidatabound
Scenario:JENI118-C17818-Verify 3 dots, CTA, balance of card with m-card is Active
  Given User is logged in with cif "card_center_active_all_card_for_ui_transaction"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_e_card_tb_dashboard"
  Then "card_center_m_card_clickable" will be displayed
  Then User expect "card_center_active_m_card_three_dots" is exist
  Then User expect "card_center_m_card_balance_dashboard" is exist

@android @uidatabound
Scenario:JENI118-C17821-Verify 3 dots, CTA with m-card is Temporarily Blocked
  Given User is logged in with cif "card_center_block_card_for_ui_transaction"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_m_card_clickable"
  Then "card_center_m_card_clickable" will be displayed
  Then User expect "card_center_m_card_status_dashboard" equal with "card_center_temporarily_blocked"
  Then User expect "card_center_active_m_card_three_dots" is exist

@android @uidatabound
Scenario:JENI118-C17822-Verify 3 dots, CTA with m-card is Permanently Blocked
  Given User is logged in with cif "card_center_permanent_block_account"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_e_card_tb_dashboard"
  Then "card_center_m_card_clickable" will be displayed
  Then User expect "card_center_m_card_status_dashboard" equal with "card_center_permanently_blocked"
  Then User expect "card_center_active_m_card_three_dots" doesn't exist

@android @uidatabound
Scenario:JENI118-C17819-Verify 3 dots, CTA with e-card is Processing
  Given User is logged in with cif "card_center_processing_card"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_dropdown_option_e_card"
  Then "card_center_dropdown_option_e_card" will be displayed
  Then User expect "card_center_e_card_tb_dashboard" doesn't exist

@android @uidatabound
Scenario:JENI118-C17820-Verify 3 dots, CTA, balance show with e-card is Active
  Given User is logged in with cif "card_center_active_all_card_with_zero_balance"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_dropdown_option_e_card"
  Then "card_center_dropdown_option_e_card" will be displayed
  Then User expect "card_center_e_card_tb_dashboard" is exist

@android @uidatabound
Scenario:JENI118-C17823-Verify 3 dots, CTA with e-card is Temporarily Blocked
  Given User is logged in with cif "card_center_block_card_for_ui_transaction"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_dropdown_option_e_card"
  Then "card_center_dropdown_option_e_card" will be displayed
  Then User expect "card_center_e_card_tb_dashboard" is exist
  
@android @uidatabound
Scenario:JENI118-C17959-Verify 3 dots, CTA with e-card is Permanently Blocked
  Given User is logged in with cif "card_center_permanent_block_account"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_dropdown_option_e_card"
  Then "card_center_dropdown_option_e_card" will be displayed
  Then User expect "card_center_e_card_tb_dashboard" doesn't exist

@android @uidatabound
Scenario:JENI118-C17824-Verify 3 dots, CTA with x-card is Processing
  Given User is logged in with cif "card_center_processing_card"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_first_x_card_dashboard"
  Then "card_center_first_x_card_dashboard" will be displayed
  Then User expect "card_center_active_x_card_three_dots" doesn't exist
  
@android @uidatabound
Scenario:JENI118-C17826-Verify 3 dots, CTA with x-card is Activate
  Given User is logged in with cif "card_center_processing_card"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_first_x_card_dashboard"
  Then "card_center_first_x_card_dashboard" will be displayed
  Then User expect "card_center_active_x_card_three_dots" doesn't exist
 
 
@android @uidatabound
Scenario:JENI118-C17827-Verify 3 dots, CTA, balance of the card with x-card is Active
  Given User is logged in with cif "card_center_active_all_card_for_ui_transaction"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_first_x_card_dashboard"
  Then "card_center_first_x_card_dashboard" will be displayed
  Then User expect "card_center_active_x_card_three_dots" is exist
  Then User expect "card_center_first_x_card_balance_dashboard" is exist

  
@android @uidatabound
Scenario:JENI118-C17828-Verify 3 dots, CTA with x-card is Temporarily Blocked
  Given User is logged in with cif "card_center_block_card_for_ui_transaction"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_first_x_card_dashboard"
  Then "card_center_first_x_card_dashboard" will be displayed
  Then User expect "card_center_active_x_card_three_dots" is exist

  
@android @uidatabound
Scenario:JENI118-C17829-Verify 3 dots, CTA with x-card is Permanently Blocked
  Given User is logged in with cif "card_center_permanent_block_account"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_first_x_card_dashboard"
  Then "card_center_first_x_card_dashboard" will be displayed
  Then User expect "card_center_active_x_card_three_dots" doesn't exist


@android @uidatabound
Scenario:JENI118-C17825-Verify 3 dots, CTA with x-card is Processing
  Given User is logged in with cif "card_center_processing_card"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_first_x_card_dashboard"
  Then "card_center_first_x_card_dashboard" will be displayed
  Then User expect "card_center_active_x_card_three_dots" doesn't exist 

@android @uidatabound
 Scenario: JENI118-C17802-Verify the card center widget in case: m-card is Active, e-card is Active, x-card is Processing
  Given User is logged in with cif "card_center_activate_xcard"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_e_card_tb_dashboard"
  Then "card_center_m_card_clickable" will be displayed
  Then "card_center_dropdown_option_e_card" will be displayed
  Then "card_center_first_x_card_dashboard" will be displayed
  Then User expect "card_center_m_card_status_dashboard" equal with "card_center_active"
  Then User expect "card_center_e_card_status_dashboard" equal with "card_center_active"
  Then User expect "card_center_first_x_card_status_dashboard" doesn't exist

#JENI-306
@android @uidatabound
Scenario:JENI306-C68120-Unable to top up card which is more than active balance

  Given User is logged in with cif "card_center_e_card_active_credential_top_up"
  
  And User change language to "language"

  And User swipe up until found "card_center_e_card_tb_dashboard"
  And User click "card_center_e_card_tb_dashboard" until "card_center_e_card_satay_top_up" displayed
  And User click "card_center_e_card_satay_top_up"
  Then "card_center_top_up_page" will be displayed

@android @uidatabound
Scenario:JENI306-C68121-Opening Top Up Page (Temp Blocked) - Widget

  Given User is logged in with cif "card_center_e_card_active_credential_top_up"
  
  And User change language to "language"

  And User swipe up until found "card_center_e_card_tb_dashboard"
  And User click "card_center_e_card_tb_dashboard" until "card_center_e_card_satay_top_up" displayed
  And User click "card_center_e_card_satay_top_up"
  Then "card_center_top_up_page" will be displayed

@android @uidatabound
Scenario:JENI306-C68122-Confirmation Page is shown - Widget

  Given User is logged in with cif "card_center_e_card_active_credential_top_up"
  
  And User change language to "language"

  And User swipe up until found "card_center_e_card_tb_dashboard"
  And User click "card_center_e_card_tb_dashboard" until "card_center_e_card_satay_top_up" displayed
  And User click "card_center_e_card_satay_top_up"
  Then "card_center_top_up_page" will be displayed

@android @uidatabound
Scenario:JENI306-C68123-Canceling Top Up - Widget

  Given User is logged in with cif "card_center_e_card_active_credential_top_up"
  
  And User change language to "language"

  And User swipe up until found "card_center_e_card_tb_dashboard"
  And User click "card_center_e_card_tb_dashboard" until "card_center_e_card_satay_top_up" displayed
  And User click "card_center_e_card_satay_top_up"
  And User click "back_button"
  Then "dashboard" will be displayed

#JENI-2277
@android @uidatabound
Scenario:JENI2277-C68112-Opening Top Up Page (Active)

  Given User is logged in with cif "card_center_e_card_active_credential_top_up"
  
  And User change language to "language"

  And User go to card center landing page from side menu
  And User click "card_center_e_card_dashboard"
  Then "card_center_detail" will be displayed
  And User click "card_center_top_up_cta_button"
  Then "card_center_top_up_page" will be displayed

@android @uidatabound
Scenario:JENI2277-C68113-Opening Top Up Page (Temp Blocked)

  Given User is logged in with cif "card_center_e_card_tblock_credential_top_up"
  
  And User change language to "language"

  And User go to card center landing page from side menu
  And User click "card_center_e_card_dashboard"
  Then "card_center_detail" will be displayed
  And User click "card_center_top_up_cta_button"
  Then "card_center_top_up_page" will be displayed

@android @uidatabound
Scenario:JENI2277-C68112-Opening Top Up Page (Active)

  Given User is logged in with cif "card_center_e_card_active_credential_top_up"
  And User change language to "language"

  And User go to card center landing page from side menu
  And User click "card_center_e_card_dashboard"
  Then "card_center_detail" will be displayed
  And User click "card_center_top_up_cta_button"
  And User click "back_button"
  Then "card_center_detail" will be displayed

#JENI-238
@android @uidatabound
Scenario:JENI238-C20625-E-card auto activates and status shows on Card Center Widget on Dashboard

  Given User is logged in with cif "card_center_e_card_active_credential_top_up"
  And User change language to "language"
  
  And User swipe up until found "card_center_e_card_status_dashboard"

  And User expect "card_center_e_card_status_dashboard" equal with "card_center_active"

@android @uidatabound
Scenario:JENI238-C20626-E-card auto activates and status shows on Card Center Widget on Card Center landing
  
  Given User is logged in with cif "card_center_e_card_active_credential_top_up"
  And User change language to "language"
  
  And User go to card center landing page from side menu
  And User expect "card_center_e_card_status_dashboard" equal with "card_center_active"
  
@android @ios @uispecific
  Scenario:JENI42-C109289-Card Center landing (CTA button): an active e-card > Block Card
    Given User access card center from left side menu with cif "pay_me_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_temporary_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_e_card"
    And User click "card_center_temporary_block_button"
    Then User expect "top_notification_snackbar" equal with "card_center_permanent_block_e_card_detail_status"

  @android @ios @uispecific
  Scenario:JENI42-C109296-Card Center landing (CTA button): a temporarily blocked e-card > Block Card
    Given User is on dashboard page in English language with "pay_me_cif"
    And User swipe up until found "dashboard_card_center_ecard_widget"
    When User click "dashboard_card_center_ecard_widget"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_temporary_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_e_card"
    And User click "card_center_temporary_block_button"
    Then User expect "top_notification_snackbar" equal with "card_center_permanent_block_e_card_detail_status"

  @android @ios @uispecific
  Scenario:JENI1597-C45981-Card Center landing (CTA button, no fee): an active m-card > Block Card
    Given User access card center from left side menu with cif "pay_me_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_m_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_block_card"
    Then User expect "top_notification_snackbar" equal with "card_center_permanent_block_e_card_detail_status"

  @android @ios @uispecific
  Scenario:JENI1597-C48096-Card Center landing (CTA button, no fee): an active m-card > Block Card
    Given User access card center from left side menu with cif "pay_me_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_temporary_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_e_card"
    And User click "card_center_temporary_block_button"
    Then User expect "top_notification_snackbar" equal with "card_center_temporarily_block_e_card_detail_status"
    And "card_center_landing_page" will be displayed

  @android @ios @uispecific
  Scenario:JENI1597-C45979-Permanent Block (CTA button): a temporarily block m-card in Card Center landing
    Given User access card center from left side menu with cif "card_center_tblock_e_card_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_m_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_block_card"
    Then User expect "top_notification_snackbar" equal with "card_center_permanent_block_e_card_detail_status"
    Then "card_center_landing_page" will be displayed

  @android @ios @uispecific
  Scenario:JENI1597-C45987-Permanent Block (CTA): change the selected card but Cancel the selecting
    Given User access card center from left side menu with cif "pay_me_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_m_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_cancel_button"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_m_card_status_dashboard" equal with "card_center_temporarily_blocked"

  @android @ios @uispecific
  Scenario:JENI1597-C45977-Permanent Block (3 dots): a temporarily block m-card in Card Center landing
    Given User access card center from left side menu with cif "card_center_tblock_m_card_cif"
    And User click "card_center_active_m_card_three_dots"
    And User click "card_center_satay_block_card"
    And User click "card_center_satay_permanent_block_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_block_card"
    Then User expect "top_notification_snackbar" equal with "card_center_permanent_block_e_card_detail_status"

  @android @ios @uispecific
  Scenario:JENI42-C109291-Card Center landing (CTA button): an active e-card > Block Card
    Given User access card center from left side menu with cif "pay_me_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_e_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
     And User click "card_center_block_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_e_card_status_dashboard" equal with "card_center_active"
    And User expect "top_notification_snackbar" equal with "card_center_permanent_block_e_card_detail_status"

  @android @ios @uispecific
  Scenario:JENI42-C109292-Card Center landing (CTA button): an active e-card > Cancel
    Given User access card center from left side menu with cif "card_center_tblock_e_card_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_e_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_cancel_button"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_e_card_status_dashboard" equal with "card_center_active"
    And User expect "top_notification_snackbar" doesn't exist
    And User expect "top_notification_snackbar" equal with "card_center_permanent_block_e_card_detail_status" doesn't exist

  @android @ios @uispecific
  Scenario:JENI1597-C45487-Permanent Block (3 dots): a temporarily block m-card in Card Center landing
    Given User access card center from left side menu with cif "card_center_tblock_m_card_cif"
    And User click "card_center_active_m_card_three_dots"
    And User click "card_center_three_dots_block_card_button"
    And User click "card_center_cta_temporary_block_card_button"
    And User click "card_center_temporary_block_button"
    Then User expect "top_notification_snackbar" equal with "card_center_permanent_block_e_card_detail_status"

# JENI-44
@uidatabound @android
Scenario:JENI44-C67373-Unblock X-Card by Three Dots on Card Widget
  Given User is logged in with cif "card_center_e_card_active_credential_top_up"
  And User change language to "language"
  And User swipe up until found "card_center_first_x_card_three_dots"
  And User click "card_center_first_x_card_three_dots"
  And User click "card_center_x_card_satay_unblock_card"
  Then User expect "top_notification_snackbar" equal with "card_center_unblock_x_card"
  Then "dashboard" will be displayed

@uidatabound @android
Scenario:JENI44-C67375-Unblock X-Card by Three Dots on Card Center Landing Page
  Given User is logged in with cif "card_center_e_card_active_credential_top_up"
  And User change language to "language"
  And User go to card center landing page from side menu
  And User swipe up until found "card_center_first_x_card_three_dots"
  And User click "card_center_first_x_card_three_dots"
  And User click "card_center_x_card_satay_unblock_card"
  Then User expect "top_notification_snackbar" equal with "card_center_unblock_x_card"
  Then "card_center_landing_page" will be displayed

@uidatabound @android
Scenario:JENI44-C67376-Unblock X-Card by Card Detail from Card Widget
  Given User is logged in with cif "card_center_e_card_active_credential_top_up"
  And User change language to "language"
  And User swipe up until found "card_center_first_x_card_dashboard"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_unblock_cta_button"
  Then User expect "top_notification_snackbar" equal with "card_center_unblock_x_card"
  Then "card_center_detail" will be displayed

@uidatabound @android
Scenario:JENI44-C67377-Unblock X-Card by Card Detail from Card Center Landing Page
  Given User is logged in with cif "card_center_e_card_active_credential_top_up"
  And User change language to "language"
  And User go to card center landing page from side menu
  And User swipe up until found "card_center_first_x_card_dashboard"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_unblock_cta_button"
  Then User expect "top_notification_snackbar" equal with "card_center_unblock_x_card"
  Then "card_center_detail" will be displayed

@uidatabound @android
Scenario:JENI44-C67375-Unblock X-Card by Three Dots on Card Center Landing Page
  Given User is logged in with cif "card_center_e_card_active_credential_top_up"
  And User change language to "language"
  And User go to card center landing page from side menu
  And User swipe up until found "card_center_first_x_card_three_dots"
  And User click "card_center_first_x_card_three_dots"
  And User click "card_center_x_card_satay_unblock_card"
  Then User expect "snackbar" equal with "card_center_unblock_x_card"
  Then "card_center_landing_page" will be displayed

@uidatabound @android
Scenario:JENI44-C67376-Unblock X-Card by Card Detail from Card Widget
  Given User is logged in with cif "card_center_e_card_active_credential_top_up"
  And User change language to "language"
  And User swipe up until found "card_center_first_x_card_dashboard"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_unblock_cta_button"
  Then User expect "top_notification_snackbar" equal with "card_center_unblock_x_card"
  Then "card_center_detail" will be displayed

@uidatabound @android
Scenario:JENI44-C67377-Unblock X-Card by Card Detail from Card Center Landing Page
  Given User is logged in with cif "card_center_e_card_active_credential_top_up"
  And User change language to "language"
  And User go to card center landing page from side menu
  And User swipe up until found "card_center_first_x_card_dashboard"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_unblock_cta_button"
  Then User expect "top_notification_snackbar" equal with "card_center_unblock_x_card"
  Then "card_center_detail" will be displayed

@uidatabound @android
Scenario:JENI44-C67377-Unblock X-Card by Card Detail from Card Center Landing Page
  Given User is logged in with cif "card_center_e_card_active_credential_top_up"
  And User change language to "language"
  And User go to card center landing page from side menu
  And User swipe up until found "card_center_first_x_card_dashboard"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_unblock_cta_button"
  Then User expect "top_notification_snackbar" equal with "card_center_unblock_x_card"
  Then "card_center_detail" will be displayed

# JENI-54
@uidatabound @android
Scenario:JENI54-C70145-Scenario : Select Card To Top Up
  Given User is logged in with cif "card_center_x_card_active_credential_top_up"
  And User change language to "language"
  And User go to card center landing page from side menu
  And User click "card_center_landing_page_cta_top_up"
  Then element with "card_center_top_up_header" text will be displayed
  And User select "card_center_card_dropdown" dropdown with "card_center_first_x_card_top_up"
  And System save "card_center_top_up_card_number" value
  And User click "card_center_top_up_selection_button"
  Then User expect "card_center_top_up_card_number" equal with saved data number 1
  Then element with "card_center_first_x_card_top_up" text will be displayed

@uidatabound @android
# JENI54-C70148-Scenario : Minimum Top Up Amount
Scenario:JENI54-C70146#C70148-Scenario : Enter Top Up Amount
  Given User is logged in with cif "card_center_x_card_active_credential_top_up"
  And User change language to "language"
  And User go to card center landing page from side menu
  And User click "card_center_landing_page_cta_top_up"
  And User select "card_center_card_dropdown" dropdown with "card_center_first_x_card_top_up"
  And User click "card_center_top_up_selection_button"
  When User fill "card_center_top_up_amt" with "card_center_first_x_card_top_up_amt"
  And User click "card_center_top_up_submit"
  Then element with "card_center_first_x_card_top_up_amt" text will be displayed

@uidatabound @android
Scenario:JENI54-C70149-Scenario : Active Balance
  Given User is logged in with cif "card_center_x_card_active_credential_top_up"
  And User change language to "language"
  And System save "dashboard_wealth_widget_total_active_balance" value
  And User go to card center landing page from side menu
  And User click "card_center_landing_page_cta_top_up"
  And User select "card_center_card_dropdown" dropdown with "card_center_first_x_card_top_up"
  And User click "card_center_top_up_selection_button"
  Then User expect "card_center_top_up_active_balance" similar with saved data number 1

@uidatabound @android
Scenario:JENI54-C70150-Scenario : Confirm Top Up
  Given User is logged in with cif "card_center_x_card_active_credential_top_up"
  And User change language to "language"
  And User go to card center landing page from side menu
  And User click "card_center_landing_page_cta_top_up"
  And User select "card_center_card_dropdown" dropdown with "card_center_first_x_card_top_up"
  And User click "card_center_top_up_selection_button"
  When User fill "card_center_top_up_amt" with "card_center_first_x_card_top_up_amt"
  And User click "card_center_top_up_submit"
  Then element with "card_center_first_x_card_top_up_amt" text will be displayed
  And User click "card_center_top_up_confirm_button"
  Then User expect "snackbar" equal with "card_center_x_card_top_up_notif"

@uidatabound @android
Scenario:JENI54-C70153-Scenario - Back Button for Confirmation page
  Given User is logged in with cif "card_center_x_card_active_credential_top_up"
  And User change language to "language"
  And User go to card center landing page from side menu
  And User click "card_center_landing_page_cta_top_up"
  And User select "card_center_card_dropdown" dropdown with "card_center_first_x_card_top_up"
  And User click "card_center_top_up_selection_button"
  When User fill "card_center_top_up_amt" with "card_center_first_x_card_top_up_amt"
  And User click "card_center_top_up_submit"
  Then element with "card_center_first_x_card_top_up_amt" text will be displayed
  And User click "back_button"
  And User click "back_button"

@uidatabound @android
# JENI2277-C109365-Active balance decreased, Card Balance increased
Scenario:JENI54-C70151#C109365-Scenario : Active Balance Deduction As a result of topping up
  Given User is logged in with cif "card_center_x_card_active_credential_top_up"
  And User change language to "language"
  And System save "dashboard_wealth_widget_total_active_balance" value
  And User go to card center landing page from side menu
  And System save "card_center_first_x_card_balance_dashboard" value
  And User click "card_center_landing_page_cta_top_up"
  And User select "card_center_card_dropdown" dropdown with "card_center_first_x_card_top_up"
  And User click "card_center_top_up_selection_button"
  When User fill "card_center_top_up_amt" with "card_center_first_x_card_top_up_amt"
  And User click "card_center_top_up_submit"
  And User click "card_center_top_up_confirm_button"
  Then User expect "card_center_first_x_card_balance_dashboard" equal with saved data number 2 plus "card_center_first_x_card_top_up_amt"
  And User go to dashboard from card center list
  Then User expect "dashboard_wealth_widget_total_active_balance" equal with saved data number 1 minus "card_center_first_x_card_top_up_amt"



  @android @ios @uispecific
  Scenario:JENI302-C59708-Temporarily Blocked of x-card with CTA in Card Center Landing
    Given User access card center from left side menu with cif "pay_me_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_temporary_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_x_card_one"
    And User click "card_center_temporary_block_button"
    Then User expect "top_notification_snackbar" equal with "card_center_permanent_block_x_card_detail_status"
    And "card_center_landing_page" will be displayed
    And User expect "card_center_first_x_card_status_dashboard" equal with "card_center_temporarily_blocked"
    And "card_center_first_x_card_tblocked_image" will be displayed
    When User click "card_center_third_x_card_three_dots"
    Then "card_center_top_up_menu_item" will be displayed
    And "card_center_refund_menu_item" will be displayed
    And "card_center_unblock_menu_item" will be displayed
    And "card_center_permanent_block_menu_item" will be displayed

# JENI-305


  @android @ios @uispecific
  Scenario:JENI305-C67692-Check the second x-card permanent block is free (first time)
    Given User access card center from left side menu with cif "pay_me_cif"
    And User click "card_center_second_x_card_three_dots"
    And User click "card_center_three_dots_block_card_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User expect "card_center_new_card_fee" doesn't exist

  @android @ios @uispecific
  Scenario:JENI305-C67691-Check the first x-card permanently block is free (first time)
    Given User access card center from left side menu with cif "pay_me_cif"
    And User click "card_center_first_x_card_three_dots"
    And User click "card_center_three_dots_block_card_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User expect "card_center_new_card_fee" doesn't exist

@uidatabound @android
# JENI305-C63973-Permanent Block: Active x-card: balance is less than issue card fee from x-card details
Scenario:JENI305-C63965#C63973-Card details (fee, insufficient active balance): an active x-card > Cancel

  Given User is logged in with cif "card_center_pblock_fee_active_x_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And System save "dashboard_wealth_widget_total_active_balance" value
  And User go to card center landing page from side menu
  And User swipe up until found "card_center_first_x_card_dashboard"
  And User expect "card_center_x_card_status_dashboard" equal with "card_center_active"
  And User click "card_center_first_x_card_dashboard"

  And User click "card_center_block_card_cta_button"

  And User click "card_center_block_card_cta_pblock"

  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"

  Then "card_center_permanent_block_confirm_cancel_button" will be displayed
  Then "card_center_pblock_insufficient_fee_tblock" will be displayed
  Then "card_center_pblock_insufficient_fee_add_money" will be displayed
  And User click "card_center_permanent_block_confirm_cancel_button"
  
  Then "card_center_detail" will be displayed
  Then element with "card_center_temporarily_block_card_detail_status" text will not displayed

@uidatabound @android
Scenario:JENI305-C63964-Card details (fee, insufficient active balance): an active x-card > Add money

  Given User is logged in with cif "card_center_pblock_fee_active_x_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And System save "dashboard_wealth_widget_total_active_balance" value
  And User go to card center landing page from side menu
  And User swipe up until found "card_center_first_x_card_dashboard"
  And User expect "card_center_x_card_status_dashboard" equal with "card_center_active"
  And User click "card_center_first_x_card_dashboard"

  And User click "card_center_block_card_cta_button"

  And User click "card_center_block_card_cta_pblock"

  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"

  Then "card_center_permanent_block_confirm_cancel_button" will be displayed
  Then "card_center_pblock_insufficient_fee_tblock" will be displayed
  Then "card_center_pblock_insufficient_fee_add_money" will be displayed
  And User click "card_center_pblock_insufficient_fee_add_money"

  Then "card_center_pblock_insufficient_fee_add_money_page" will be displayed

@endtoend @android
Scenario:JENI305-C63963-Card details (fee, insufficient active balance): an active x-card > Temporary Block

  Given User is logged in with cif "card_center_pblock_fee_active_x_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And System save "dashboard_wealth_widget_total_active_balance" value
  And User go to card center landing page from side menu
  And User swipe up until found "card_center_first_x_card_dashboard"
  And User expect "card_center_x_card_status_dashboard" equal with "card_center_active"
  And User click "card_center_first_x_card_dashboard"

  And User click "card_center_block_card_cta_button"

  And User click "card_center_block_card_cta_pblock"

  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"

  Then "card_center_permanent_block_confirm_cancel_button" will be displayed
  Then "card_center_pblock_insufficient_fee_tblock" will be displayed
  Then "card_center_pblock_insufficient_fee_add_money" will be displayed
  And User click "card_center_pblock_insufficient_fee_tblock"

  Then "card_center_detail" will be displayed
  Then element with "card_center_temporarily_block_card_detail_status" text will be displayed

@uidatabound @android
Scenario:JENI305-C63970-Card details (fee, insufficient active balance): a temporarily blocked x-card > Add money

  Given User is logged in with cif "card_center_pblock_fee_tblock_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And System save "dashboard_wealth_widget_total_active_balance" value
  And User go to card center landing page from side menu
  And User swipe up until found "card_center_first_x_card_dashboard"
  And User expect "card_center_x_card_status_dashboard" equal with "card_center_temporarily_blocked"
  And User click "card_center_first_x_card_dashboard"

  And User click "card_center_tblocked_card_pblock_icon_cta_button"

  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"

  Then "card_center_permanent_block_confirm_cancel_button" will be displayed
  Then "card_center_pblock_insufficient_fee_add_money" will be displayed
  And User click "card_center_pblock_insufficient_fee_add_money"

  Then "card_center_pblock_insufficient_fee_add_money_page" will be displayed

@uidatabound @android
Scenario:JENI305-C63971-Card details (fee, insufficient active balance): a temporarily blocked x-card > Cancel

  Given User is logged in with cif "card_center_pblock_fee_tblock_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And System save "dashboard_wealth_widget_total_active_balance" value
  And User go to card center landing page from side menu
  And User swipe up until found "card_center_first_x_card_dashboard"
  And User expect "card_center_x_card_status_dashboard" equal with "card_center_temporarily_blocked"
  And User click "card_center_first_x_card_dashboard"

  And User click "card_center_tblocked_card_pblock_icon_cta_button"

  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"

  Then "card_center_permanent_block_confirm_cancel_button" will be displayed
  Then "card_center_pblock_insufficient_fee_add_money" will be displayed
  And User click "card_center_permanent_block_confirm_cancel_button"
  
  Then "card_center_detail" will be displayed
  Then element with "card_center_temporarily_block_card_detail_status" text will be displayed

@uidatabound @android
Scenario:JENI303-C45995#C63933-Card Center Landing (active, no fee, insufficient active balance): Satay menu - Confirm

  Given User is logged in with cif "card_center_pblock_fee_active_x_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And System save "dashboard_wealth_widget_total_active_balance" value

  And User go to card center landing page from side menu
  Then "card_center_m_card_tb_dashboard" will be displayed
  And User click "card_center_active_x_card_three_dots"

  And User click "card_center_x_card_satay_block_card"

  And User click "card_center_x_card_block_pop_up_permanent"

  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"

  And User click "card_center_permanent_block_confirm_block_button"
  
  And User expect "card_center_m_card_blocked_status_dashboard" equal with "card_center_permanently_blocked"
  Then "card_center_x_card_activate_dashboard" will be displayed
  And User swipe down until found "dashboard_wealth_widget_total_active_balance"
  Then User expect "dashboard_wealth_widget_total_active_balance" equal with saved data number 1 minus "card_center_pblock_fee"

@uidatabound @android
Scenario:JENI303-C63952-Permanent Block: check all reason in dropdown list: Stolen, Lost, Damage 

  Given User is logged in with cif "card_center_pblock_fee_tblock_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_active_x_card_three_dots"
  And User click "card_center_active_x_card_three_dots" until "card_center_x_card_satay_block_card" displayed

  And User click "card_center_x_card_satay_block_card"

  And User click "card_center_x_card_block_pop_up_permanent"

  Then "card_center_permanent_block_page" will be displayed

  Then "card_center_reason_dropdown" will be displayed
  And User click "card_center_reason_dropdown"
  Then element with "card_center_block_card_reason_1" text will be displayed
  Then element with "card_center_block_card_reason_2" text will be displayed
  Then element with "card_center_block_card_reason_3" text will be displayed

@uidatabound @android
Scenario:JENI305-C63926-Card Center widget (active, fee, insufficient balance): satay menu - Cancel - x-card

  Given User is logged in with cif "card_center_pblock_fee_active_x_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And System save "dashboard_wealth_widget_total_active_balance" value
  And User swipe up until found "card_center_active_x_card_three_dots"
  And User expect "card_center_x_card_status_dashboard" equal with "card_center_active"
  And User click "card_center_active_x_card_three_dots" until "card_center_x_card_satay_block_card" displayed

  And User click "card_center_x_card_satay_block_card"

  And User click "card_center_x_card_block_pop_up_permanent"

  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"

  Then "card_center_permanent_block_confirm_cancel_button" will be displayed
  Then "card_center_pblock_insufficient_fee_tblock" will be displayed
  Then "card_center_pblock_insufficient_fee_add_money" will be displayed
  And User click "card_center_permanent_block_confirm_cancel_button"
  
  Then "card_center_dashboard_widget" will be displayed
  And User expect "card_center_x_card_status_dashboard" equal with "card_center_active"

@uidatabound @android
Scenario:JENI305-C63924-Card Center widget (active, fee, insufficient balance): satay menu - Add Money

  Given User is logged in with cif "card_center_pblock_fee_active_x_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And System save "dashboard_wealth_widget_total_active_balance" value
  And User swipe up until found "card_center_active_x_card_three_dots"
  And User expect "card_center_x_card_status_dashboard" equal with "card_center_active"
  And User click "card_center_active_x_card_three_dots" until "card_center_x_card_satay_block_card" displayed

  And User click "card_center_x_card_satay_block_card"

  And User click "card_center_x_card_block_pop_up_permanent"

  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"

  Then "card_center_permanent_block_confirm_cancel_button" will be displayed
  Then "card_center_pblock_insufficient_fee_tblock" will be displayed
  Then "card_center_pblock_insufficient_fee_add_money" will be displayed
  And User click "card_center_pblock_insufficient_fee_add_money"

  Then "card_center_pblock_insufficient_fee_add_money_page" will be displayed

@endtoend @android
Scenario:JENI305-C63925-Card Center widget (active, fee, insufficient balance): satay menu - Temporary Block

  Given User is logged in with cif "card_center_pblock_fee_active_x_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And System save "dashboard_wealth_widget_total_active_balance" value
  And User swipe up until found "card_center_active_x_card_three_dots"
  And User expect "card_center_x_card_status_dashboard" equal with "card_center_active"
  And User click "card_center_active_x_card_three_dots" until "card_center_x_card_satay_block_card" displayed

  And User click "card_center_x_card_satay_block_card"

  And User click "card_center_x_card_block_pop_up_permanent"

  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"

  Then "card_center_permanent_block_confirm_cancel_button" will be displayed
  Then "card_center_pblock_insufficient_fee_tblock" will be displayed
  Then "card_center_pblock_insufficient_fee_add_money" will be displayed
  And User click "card_center_pblock_insufficient_fee_tblock"

  Then "card_center_dashboard_widget" will be displayed
  And User expect "card_center_x_card_status_dashboard" equal with "card_center_temporarily_blocked" 

@uidatabound @android
Scenario:JENI305-C63931-Card Center widget (x-card temporary block, fee, insufficient balance): satay menu - Add Money

  Given User is logged in with cif "card_center_pblock_fee_tblock_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And System save "dashboard_wealth_widget_total_active_balance" value
  And User swipe up until found "card_center_active_x_card_three_dots"
  And User expect "card_center_x_card_status_dashboard" equal with "card_center_temporarily_blocked"
  And User click "card_center_active_x_card_three_dots"

  And User click "card_center_x_card_quick_pop_up_permanent"

  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"

  Then "card_center_permanent_block_confirm_cancel_button" will be displayed
  Then "card_center_pblock_insufficient_fee_add_money" will be displayed
  And User click "card_center_pblock_insufficient_fee_add_money"

  Then "card_center_pblock_insufficient_fee_add_money_page" will be displayed

@uidatabound @android
Scenario:JENI305-C63932-Card Center widget (x-card: temporary block, fee, insufficient balance): satay menu - Cancel

  Given User is logged in with cif "card_center_pblock_fee_tblock_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And System save "dashboard_wealth_widget_total_active_balance" value
  And User swipe up until found "card_center_active_x_card_three_dots"
  And User expect "card_center_x_card_status_dashboard" equal with "card_center_temporarily_blocked"
  And User click "card_center_active_x_card_three_dots"

  And User click "card_center_x_card_quick_pop_up_permanent"

  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"

  Then "card_center_permanent_block_confirm_cancel_button" will be displayed
  Then "card_center_pblock_insufficient_fee_add_money" will be displayed
  And User click "card_center_permanent_block_confirm_cancel_button"
  
  Then "card_center_dashboard_widget" will be displayed
  And User expect "card_center_x_card_status_dashboard" equal with "card_center_temporarily_blocked"

@uidatabound @android
Scenario:JENI305-C63947-Card Center landing (Temporary Block, fee, insufficient balance): satay menu - Add Money

  Given User is logged in with cif "card_center_pblock_fee_tblock_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User go to card center landing page from side menu
  And User expect "card_center_x_card_status_dashboard" equal with "card_center_temporarily_blocked"
  And User click "card_center_active_x_card_three_dots"

  And User click "card_center_x_card_quick_pop_up_permanent"

  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"

  Then "card_center_permanent_block_confirm_cancel_button" will be displayed
  Then "card_center_pblock_insufficient_fee_add_money" will be displayed
  And User click "card_center_pblock_insufficient_fee_add_money"

  Then "card_center_pblock_insufficient_fee_add_money_page" will be displayed

@uidatabound @android
Scenario:JENI305-C63948-Card Center landing (Temporary Block x-card, fee, insufficient balance): satay menu - Cancel

  Given User is logged in with cif "card_center_pblock_fee_tblock_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User go to card center landing page from side menu
  And User expect "card_center_x_card_status_dashboard" equal with "card_center_temporarily_blocked"
  And User click "card_center_active_x_card_three_dots"

  And User click "card_center_x_card_quick_pop_up_permanent"

  And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
  And User click "card_center_permanent_block_page_block_button"

  Then "card_center_permanent_block_confirm_cancel_button" will be displayed
  Then "card_center_pblock_insufficient_fee_add_money" will be displayed
  And User click "card_center_permanent_block_confirm_cancel_button"
  
  Then "card_center_landing_page" will be displayed

@uidatabound @android
Scenario:JENI305-C63953-Permanent Block: don't choose any reason

  Given User is logged in with cif "card_center_pblock_fee_tblock_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User go to card center landing page from side menu
  And User click "card_center_active_x_card_three_dots"

  And User click "card_center_x_card_quick_pop_up_permanent"

  And User click "card_center_permanent_block_page_block_button"
  And User expect "card_center_reason_dropdown_hint" equal with "card_center_reason_no_reasong_error"


  @android @ios @uidatabound
  Scenario:JENI305-C63912-Card Center landing (CTA button, with fee): a temporarily blocked x-card > Block Card
    Given User access card center from dashboard widget with cif "card_center_active_m_card_zero_balance_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_x_card_one"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_block_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_first_x_card_status_dashboard" equal with "card_center_permanently_blocked"
    And User expect "top_notification_snackbar" equal with "card_center_permanent_block_x_card_detail_status"
    And "dashboard_account_first_x_card_active_button" will be displayed

  @android @ios @uidatabound
  Scenario:JENI1597-C63623-Card Center Widget (active, no fee): Check mailing address
    Given User access card center from dashboard widget with cif "card_center_active_m_card_zero_balance_cif"
    And User click "card_center_active_m_card_three_dots"
    And User click "card_center_satay_block_card"
    And User click "card_center_satay_permanent_block_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    Then "card_center_permanent_block_confirm_mail_address" will be displayed

  @android @ios @uidatabound
  Scenario:JENI305-C63934-Card Center Widget (active, no fee): Check mailing address
    Then "card_center_permanent_block_confirm_mail_address" will be displayed

  @android @ios @uidatabound
  Scenario:JENI305-C63919-Card Center Widget (active, no fee): Check mailing address - x-card
    Given User access card center from dashboard widget with cif "card_center_active_m_card_zero_balance_cif"
    And User click "card_center_active_x_card_three_dots"
    And User click "card_center_satay_block_card"
    And User click "card_center_satay_permanent_block_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    Then "card_center_permanent_block_confirm_mail_address" will be displayed

  @android @ios @uidatabound
  Scenario:JENI1597-C63607-Permanent Block (3 dots): a temporarily block m-card in Card Center landing
    Given User access card center from dashboard widget with cif "card_center_active_m_card_zero_balance_cif"
    And User click "card_center_active_m_card_three_dots"
    And User click "card_center_satay_block_card"
    And User click "card_center_satay_permanent_block_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_block_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_second_m_card_status_dashboard" equal with "card_center_permanently_blocked"
    And User expect "top_notification_snackbar" equal with "card_center_permanent_block_m_card_detail_status"
    And "dashboard_account_m_card_active_button" will be displayed

  @android @ios @uidatabound
  Scenario:JENI305-C63921-Card Center Widget (active, no fee): Satay menu - Cancel
    Given User access card center from dashboard widget with cif "card_center_active_m_card_zero_balance_cif"
    And User click "card_center_first_x_card_three_dots"
    And User click "card_center_satay_block_card"
    And User click "card_center_satay_permanent_block_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_cancel_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_first_x_card_status_dashboard" equal with "card_center_active"

  @android @ios @uidatabound
  Scenario:JENI305-C63918-Permanent Block (3 dots): a temporarily block x-card in Card Center landing
    Given User access card center from dashboard widget with cif "card_center_active_m_card_zero_balance_cif"
    And User click "card_center_first_x_card_three_dots"
    And User click "card_center_satay_block_card"
    And User click "card_center_satay_permanent_block_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_block_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_first_x_card_status_dashboard" equal with "card_center_permanently_blocked"
    And User expect "top_notification_snackbar" equal with "card_center_permanent_block_x_card_detail_status"
    And "dashboard_account_first_x_card_active_button" will be displayed

  @android @ios @uidatabound
  Scenario:JENI305-C63920-Card Center Widget (active, no fee): Satay menu - Confirm
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_first_x_card_status_dashboard" equal with "card_center_permanently_blocked"
    And "dashboard_account_first_x_card_active_button" will be displayed

  @android @uidatabound
  Scenario:JENI1981-C63610-Permanent Block (CTA): change the selected card but Cancel the selecting
    Given User access card center from dashboard widget with cif "card_center_active_m_card_zero_balance_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_m_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User press back button on device
    And User click "card_center_permanent_block_button"
    And User click "card_center_block_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_second_m_card_status_dashboard" equal with "card_center_permanently_blocked"
    And User expect "top_notification_snackbar" equal with "card_center_permanent_block_m_card_detail_status"
    And "dashboard_account_m_card_active_button" will be displayed

  @android @uidatabound
  Scenario:JENI305-C63917-Permanent Block (CTA): change the selected card but Cancel the selecting
    Given User access card center from dashboard widget with cif "card_center_active_m_card_zero_balance_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_x_card_one"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User press back button on device
    And User click "card_center_permanent_block_button"
    And User click "card_center_block_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_first_x_card_status_dashboard" equal with "card_center_permanently_blocked"
    And User expect "top_notification_snackbar" equal with "card_center_permanent_block_x_card_detail_status"
    And "dashboard_account_first_x_card_active_button" will be displayed
  
  @android @ios @uidatabound
  Scenario:JENI305-C63923-Card Center widget (active, fee): satay menu - Cancel
    Given User is logged in with cif "card_center_active_m_card_zero_balance_cif"
    And User change language to "language"
    And System save "dashboard_wealth_widget_total_active_balance" value
    And User swipe up until found "card_center_widget"
    And User click "card_center_widget" until "card_center_close_tutorial" displayed
    And User check and click "card_center_close_tutorial" if exist
    And User click "card_center_first_x_card_three_dots"
    And User click "card_center_satay_block_card"
    And User click "card_center_satay_permanent_block_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_cancel_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_first_x_card_status_dashboard" equal with "card_center_active"
    And User click "dashboard_hamburger_icon"
    And User click "dashboard_menu"
    Then User expect "dashboard_wealth_widget_total_active_balance" equal with saved data number 1 minus "pay_me_zero_note_number"

  @android @ios @uidatabound
  Scenario:JENI305-C63939-Card Center landing (active, fee): satay menu - Cancel
    Given User is logged in with cif "card_center_active_m_card_zero_balance_cif"
    And User change language to "language"
    And System save "dashboard_wealth_widget_total_active_balance" value
    And User swipe up until found "card_center_widget"
    And User click "card_center_widget" until "card_center_close_tutorial" displayed
    And User check and click "card_center_close_tutorial" if exist
    And User click "card_center_first_x_card_three_dots"
    And User click "card_center_satay_block_card"
    And User click "card_center_satay_permanent_block_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_cancel_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_first_x_card_status_dashboard" equal with "card_center_active"

  @android @ios @uidatabound
  Scenario:JENI305-C63938-Card Center landing (active, fee): satay menu - Confirm
    Given User is logged in with cif "card_center_active_m_card_zero_balance_cif"
    And User change language to "language"
    And System save "dashboard_wealth_widget_total_active_balance" value
    And User swipe up until found "card_center_widget"
    And User click "card_center_widget" until "card_center_close_tutorial" displayed
    And User check and click "card_center_close_tutorial" if exist
    And User click "card_center_first_x_card_three_dots"
    And User click "card_center_satay_block_card"
    And User click "card_center_satay_permanent_block_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_block_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_second_x_card_status_dashboard" equal with "card_center_permanently_blocked"
    And "dashboard_account_first_x_card_active_button" will be displayed

  @android @ios @uidatabound @continuous
  Scenario:JENI305-C63922-Card Center widget (active, fee): satay menu - Confirm
    And User click "dashboard_hamburger_icon"
    And User click "dashboard_menu"
    Then User expect "dashboard_wealth_widget_total_active_balance" equal with saved data number 1 minus "card_center_pblock_fee"

  @android @ios @uidatabound @continuous
  Scenario:JENI305-C63938-Card Center landing (active, fee): satay menu - Confirm
    Then User expect "dashboard_wealth_widget_total_active_balance" equal with saved data number 1 minus "card_center_pblock_fee"

  @android @ios @uidatabound
  Scenario:JENI305-C63944-Card Center Landing (Temporary Block, no fee): Satay menu - Cancel
    Given User is logged in with cif "card_center_active_m_card_zero_balance_cif"
    And User change language to "language"
    And System save "dashboard_wealth_widget_total_active_balance" value
    And User swipe up until found "card_center_widget"
    And User click "card_center_widget" until "card_center_close_tutorial" displayed
    And User check and click "card_center_close_tutorial" if exist
    And User click "card_center_first_x_card_three_dots"
    And User click "card_center_satay_cancel_block_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_first_x_card_status_dashboard" equal with "card_center_temporarily_blocked" 

  @android @ios @uidatabound
  Scenario:JENI305-C63928-Card Center Widget (x-card: Temporary Block, no fee): Satay menu - Cancel
    Given User is logged in with cif "card_center_active_m_card_zero_balance_cif"
    And User change language to "language"
    And System save "dashboard_wealth_widget_total_active_balance" value
    And User swipe up until found "card_center_widget"
    And User click "card_center_widget" until "card_center_close_tutorial" displayed
    And User check and click "card_center_close_tutorial" if exist
    And User click "card_center_first_x_card_three_dots"
    And User click "card_center_satay_block_card"
    And User click "card_center_satay_permanent_block_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_cancel_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_first_x_card_status_dashboard" equal with "card_center_temporarily_blocked"
    And User click "dashboard_hamburger_icon"
    And User click "dashboard_menu"
    Then User expect "dashboard_wealth_widget_total_active_balance" equal with saved data number 1 minus "pay_me_zero_note_number"

  @android @ios @uidatabound
  Scenario:JENI305-C63927-Card Center Widget (x-card: Temporarily Block, no fee): Satay menu - Confirm
    Given User is logged in with cif "card_center_active_m_card_zero_balance_cif"
    And User change language to "language"
    And System save "dashboard_wealth_widget_total_active_balance" value
    And User swipe up until found "card_center_widget"
    And User click "card_center_widget" until "card_center_close_tutorial" displayed
    And User check and click "card_center_close_tutorial" if exist
    And User click "card_center_first_x_card_three_dots"
    And User click "card_center_satay_block_card"
    And User click "card_center_satay_permanent_block_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_block_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_first_x_card_status_dashboard" equal with "card_center_temporarily_blocked"
    And "dashboard_account_first_x_card_active_button" will be displayed

  @android @ios @uidatabound
  Scenario:JENI305-C63949-Permanent Block: a temporarily block x-card in Card Center widget: Cancel at Permanent Block screen
    Given User is logged in with cif "card_center_active_m_card_zero_balance_cif"
    And User change language to "language"
    And User swipe up until found "card_center_widget"
    And User click "card_center_widget" until "card_center_close_tutorial" displayed
    And User check and click "card_center_close_tutorial" if exist
    And User click "card_center_first_x_card_three_dots"
    And User click "card_center_satay_block_card"
    And User click "card_center_satay_permanent_block_card"
    And User click "back_button"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_first_x_card_status_dashboard" equal with "card_center_temporarily_blocked"

  @android @ios @uidatabound
  Scenario:JENI305-C63943-Card Center Landing (Temporary Block, no fee): Satay menu - Confirm
    Given User is logged in with cif "card_center_active_m_card_zero_balance_cif"
    And User change language to "language"
    And User swipe up until found "card_center_widget"
    And User click "card_center_widget" until "card_center_close_tutorial" displayed
    And User check and click "card_center_close_tutorial" if exist
    And User click "card_center_first_x_card_three_dots"
    And User click "card_center_satay_block_card"
    And User click "card_center_satay_permanent_block_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_block_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_first_x_card_status_dashboard" equal with "card_center_permanently_blocked"
    And "dashboard_account_first_x_card_active_button" will be displayed

  @android @ios @uidatabound
  Scenario:JENI305-C63950-Permanent Block: a temporarily block x-card in Card Center widget
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_first_x_card_status_dashboard" equal with "card_center_temporarily_blocked"
    And "dashboard_account_first_x_card_active_button" will be displayed

  @android @ios @uidatabound
  Scenario:JENI305-C63929-Card Center widget (x-card: Temporary Block, fee): satay menu - Confirm
    Given User is logged in with cif "card_center_active_m_card_zero_balance_cif"
    And User change language to "language"
    And System save "dashboard_wealth_widget_total_active_balance" value
    And User swipe up until found "card_center_widget"
    And User click "card_center_widget" until "card_center_close_tutorial" displayed
    And User check and click "card_center_close_tutorial" if exist
    And User click "card_center_first_x_card_three_dots"
    And User click "card_center_satay_block_card"
    And User click "card_center_satay_permanent_block_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_block_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_second_x_card_status_dashboard" equal with "card_center_permanently_blocked"
    And "dashboard_account_first_x_card_active_button" will be displayed
    And User click "dashboard_hamburger_icon"
    And User click "dashboard_menu"
    Then User expect "dashboard_wealth_widget_total_active_balance" equal with saved data number 1 minus "card_center_pblock_fee"

  @android @ios @uidatabound @continuous
  Scenario:JENI305-C63929-Card Center widget (x-card: Temporary Block, fee): satay menu - Confirm
    Then User expect "dashboard_wealth_widget_total_active_balance" equal with saved data number 1 minus "card_center_pblock_fee"

  @android @ios @uidatabound
  Scenario:JENI305-C63930-Card Center widget (x-card: Temporary Block, fee): satay menu - Cancel
    Given User is logged in with cif "card_center_active_m_card_zero_balance_cif"
    And User change language to "language"
    And System save "dashboard_wealth_widget_total_active_balance" value
    And User swipe up until found "card_center_widget"
    And User click "card_center_widget" until "card_center_close_tutorial" displayed
    And User check and click "card_center_close_tutorial" if exist
    And User click "card_center_first_x_card_three_dots"
    And User click "card_center_satay_block_card"
    And User click "card_center_satay_permanent_block_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_cancel_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_first_x_card_status_dashboard" equal with "card_center_active"
    And User click "dashboard_hamburger_icon"
    And User click "dashboard_menu"
    Then User expect "dashboard_wealth_widget_total_active_balance" equal with saved data number 1 minus "pay_me_zero_note_number"

  @android @ios @uidatabound @continuous
  Scenario:JENI305-C63946-Card Center landing (Temporary Block, fee): satay menu - Cancel
    Then User expect "dashboard_wealth_widget_total_active_balance" equal with saved data number 1 minus "pay_me_zero_note_number"

  @android @ios @uidatabound
  Scenario:JENI305-C63937-Card Center Landing (active, no fee): Satay menu - Cancel
    Given User is logged in with cif "card_center_active_m_card_zero_balance_cif"
    And User change language to "language"
    And System save "dashboard_wealth_widget_total_active_balance" value
    And User swipe up until found "card_center_widget"
    And User click "card_center_widget" until "card_center_close_tutorial" displayed
    And User check and click "card_center_close_tutorial" if exist
    And User click "card_center_first_x_card_three_dots"
    And User click "card_center_satay_block_card"
    And User click "card_center_satay_permanent_block_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_cancel_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_first_x_card_status_dashboard" equal with "card_center_active"
    And User click "dashboard_hamburger_icon"
    And User click "dashboard_menu"
    Then User expect "dashboard_wealth_widget_total_active_balance" equal with saved data number 1 minus "pay_me_zero_note_number"

  @android @ios @uidatabound
  Scenario:JENI305-C63937-Card Center Landing (active, fee): Satay menu - Cancel
    Given User is logged in with cif "card_center_active_m_card_zero_balance_cif"
    And User change language to "language"
    And System save "dashboard_wealth_widget_total_active_balance" value
    And User swipe up until found "card_center_widget"
    And User click "card_center_widget" until "card_center_close_tutorial" displayed
    And User check and click "card_center_close_tutorial" if exist
    And User click "card_center_first_x_card_three_dots"
    And User click "card_center_satay_block_card"
    And User click "card_center_satay_permanent_block_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_block_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_second_x_card_status_dashboard" equal with "card_center_permanently_blocked"
    And "dashboard_account_first_x_card_active_button" will be displayed
    And User click "dashboard_hamburger_icon"
    And User click "dashboard_menu"
    Then User expect "dashboard_wealth_widget_total_active_balance" equal with saved data number 1 minus "card_center_pblock_fee"

  @android @ios @uidatabound
  Scenario:JENI305-C63940-Card Center landing (active, fee, insufficient balance): satay menu - Add Money
    Given User access card center from dashboard widget with cif "card_center_active_m_card_zero_balance_cif"
    And User click "card_center_first_x_card_three_dots"
    And User click "card_center_satay_block_card"
    And User click "card_center_satay_permanent_block_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_add_money_card"
    Then "dashboard_wealth_widget_top_up_tutorial_page_title" will be displayed

  @android @ios @uidatabound
  Scenario:JENI305-C63942-Card Center landing (active, fee, insufficient balance): satay menu - Cancel
    Given User access card center from dashboard widget with cif "card_center_active_m_card_zero_balance_cif"
    And User click "card_center_first_x_card_three_dots"
    And User click "card_center_satay_block_card"
    And User click "card_center_satay_permanent_block_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_cancel_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_second_m_card_status_dashboard" equal with "card_center_active"

  @android @ios @uidatabound
  Scenario:JENI305-C63941-Card Center landing (active, fee, insufficient balance): satay menu - Temporary Block
    Given User access card center from dashboard widget with cif "card_center_active_m_card_zero_balance_cif"
    And User click "card_center_first_x_card_three_dots"
    And User click "card_center_satay_block_card"
    And User click "card_center_satay_permanent_block_card"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_temporary_block_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_first_x_card_status_dashboard" equal with "card_center_temporarily_blocked"
    And User expect "top_notification_snackbar" equal with "card_center_permanent_block_x_card_detail_status"

  @android @ios @uidatabound
  Scenario:JENI305-C63960-Card details (free): an active x-card > Cancel
    Given User access card center from dashboard widget with cif "card_center_active_m_card_zero_balance_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_x_card_one"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_cancel_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_second_m_card_status_dashboard" equal with "card_center_active"

  @android @ios @uidatabound
  Scenario:JENI305-C63959-Card details (free): an active x-card > Block Card
    Given User access card center from dashboard widget with cif "card_center_active_m_card_zero_balance_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_x_card_one"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_block_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_first_x_card_status_dashboard" equal with "card_center_permanently_blocked"
    And User expect "top_notification_snackbar" equal with "card_center_permanent_block_x_card_detail_status"
    And "dashboard_account_first_x_card_active_button" will be displayed

  @android @ios @uidatabound
  Scenario:JENI305-C63962-Card details (fee): an active x-card > Cancel
    Given User access card center from dashboard widget with cif "card_center_active_m_card_zero_balance_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_x_card_one"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_cancel_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_second_m_card_status_dashboard" equal with "card_center_active"

  @android @ios @uidatabound
  Scenario:JENI305-C63961-Card details (fee): an active x-card > Block Card
    Given User is logged in with cif "card_center_active_m_card_zero_balance_cif"
    And User change language to "language"
    And System save "dashboard_wealth_widget_total_active_balance" value
    And User swipe up until found "card_center_widget"
    And User click "card_center_widget" until "card_center_close_tutorial" displayed
    And User check and click "card_center_close_tutorial" if exist
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_x_card_one"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_block_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_first_x_card_status_dashboard" equal with "card_center_permanently_blocked"
    And User expect "top_notification_snackbar" equal with "card_center_permanent_block_x_card_detail_status"
    And "dashboard_account_first_x_card_active_button" will be displayed
    And User click "dashboard_hamburger_icon"
    And User click "dashboard_menu"
    Then User expect "dashboard_wealth_widget_total_active_balance" equal with saved data number 1 minus "card_center_pblock_fee"

  @android @ios @uidatabound
  Scenario:JENI305-C63967-Card details (free): a temporarily blocked x-card > Cancel
    Given User access card center from dashboard widget with cif "card_center_active_m_card_zero_balance_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_x_card_one"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_cancel_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_second_m_card_status_dashboard" equal with "card_center_active"

  @android @ios @uidatabound
  Scenario:JENI305-C63966-Card details (free): a temporarily blocked x-card > Block Card
    Given User is logged in with cif "card_center_active_m_card_zero_balance_cif"
    And User change language to "language"
    And System save "dashboard_wealth_widget_total_active_balance" value
    And User swipe up until found "card_center_widget"
    And User click "card_center_widget" until "card_center_close_tutorial" displayed
    And User check and click "card_center_close_tutorial" if exist
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_x_card_one"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_block_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_first_x_card_status_dashboard" equal with "card_center_permanently_blocked"
    And User expect "top_notification_snackbar" equal with "card_center_permanent_block_x_card_detail_status"
    And "dashboard_account_first_x_card_active_button" will be displayed
    And User click "dashboard_hamburger_icon"
    And User click "dashboard_menu"
    Then User expect "dashboard_wealth_widget_total_active_balance" equal with saved data number 1 minus "pay_me_zero_note_number"

  @android @ios @uidatabound
  Scenario:JENI305-C63969-Card details (fee): a temporarily blocked x-card > Cancel at the last step
    Given User access card center from dashboard widget with cif "card_center_active_m_card_zero_balance_cif"
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_x_card_one"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_cancel_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_second_m_card_status_dashboard" equal with "card_center_active"

  @android @ios @uidatabound
  Scenario:JENI305-C63968-Card details (fee): a temporarily blocked x-card > Block Card
    Given User is logged in with cif "card_center_active_m_card_zero_balance_cif"
    And User change language to "language"
    And System save "dashboard_wealth_widget_total_active_balance" value
    And User swipe up until found "card_center_widget"
    And User click "card_center_widget" until "card_center_close_tutorial" displayed
    And User check and click "card_center_close_tutorial" if exist
    And User click "card_center_block_card_cta_button"
    And User click "card_center_permanent_block_cta_button"
    And User select "card_center_card_dropdown" dropdown with "card_center_x_card_one"
    And User select "card_center_reason_dropdown" dropdown with "card_center_block_card_reason_1"
    And User click "card_center_permanent_block_button"
    And User click "card_center_block_card"
    Then "card_center_landing_page" will be displayed
    And User expect "card_center_first_x_card_status_dashboard" equal with "card_center_permanently_blocked"
    And User expect "top_notification_snackbar" equal with "card_center_permanent_block_x_card_detail_status"
    And "dashboard_account_first_x_card_active_button" will be displayed
    And User click "dashboard_hamburger_icon"
    And User click "dashboard_menu"
    Then User expect "dashboard_wealth_widget_total_active_balance" equal with saved data number 1 minus "pay_me_zero_note_number"

# JENI-8067
@endtoend @android @R3_1 @R3_2 @R3_3
#JENI8444-C125004-User clicks on Show CVV button in Card Details page
Scenario:JENI8067-C117790#C125004-[Scenario] User clicks on Show CVV button in Card Details page
  Given User access card center from left side menu with cif "card_center_special_card_show_cvv"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_x_card_cvv_link"

  Then "card_center_password_verification_form" will be displayed

@android @endtoend @R3_1 @R3_2 @R3_3 @continuous
Scenario:JENI8067-C117791-[Scenario] User enters password to authenticate showing of CVV
  When User fill "card_center_password_field" with "card_center_special_card_password"
  And User click "card_center_password_submit_button"

  And User wait "card_center_loading_screen" will be gone

  Then "card_center_detail" will be displayed
  And User expect "card_center_x_card_cvv" equal with "card_center_special_x_card_cvv_show_cvv"
  Then "card_center_x_card_number" will be displayed

  # Need new step to handle card number
  # And User expect "card_center_x_card_number" equal with "card_center_x_card_number"

@android @endtoend @R3_1 @R3_2 @R3_3 @continuous
Scenario:JENI8067-C117792-[Scenario] Auto hide/mask CVV after 45 seconds
  When User wait 45 seconds

  Then "card_center_x_card_cvv_link" will be displayed
  Then "card_center_x_card_number" will be displayed
  # And User expect "card_center_x_card_number" equal with "card_center_x_card_masked_number"

@android @endtoend @R3_1 @R3_2 @R3_3
Scenario:JENI8067-C117796-[Scenario] User Enters Incorrect Password

  Given User access card center from left side menu with cif "card_center_special_card_show_cvv"

  And User click "card_center_first_x_card_dashboard" until "card_center_detail" displayed
  And User click "card_center_x_card_cvv_link"

  Then "card_center_password_verification_form" will be displayed
  And User fill "card_center_password_field" with 123
  And User click "card_center_password_submit_button"

  And User expect "snackbar" equal with "****_contacts_check_popup_text_wording_error"

# JENI-8073
@android @uidatabound @ios @R3_1 @R3_2 @R3_3
Scenario:JENI8073-C117797-[Mobile] [Scenario] User lands on the change limit screen - for Special Edition X-Card
  Given User is logged in with cif "card_center_special_card_change_limit"
  And User change language to "language"
  Then User go to card center landing page from side menu
  And User swipe up until found "card_center_active_x_card_three_dots"
  And User click "card_center_active_x_card_three_dots" until "card_center_x_card_satay_change_limit" displayed
  And User click "card_center_x_card_satay_change_limit" until "card_center_change_limit_page" displayed

@android @uidatabound @ios @R3_1 @R3_2 @R3_3
Scenario:JENI8073-C117798-[Mobile] [Scenario] Entering Details on Change Limit Screen - Default Values
  Given User is logged in with cif "card_center_special_card_change_limit"
  And User change language to "language"
  Then User go to card center landing page from side menu
  And User swipe up until found "card_center_active_x_card_three_dots"
  And User click "card_center_active_x_card_three_dots" until "card_center_x_card_satay_change_limit" displayed
  And User click "card_center_x_card_satay_change_limit" until "card_center_change_limit_page" displayed
  And User expect "card_center_e_card_change_limit_amount" equal with "card_center_default_limit_amt"

@android @uidatabound @ios @R3_1 @R3_2 @R3_3
Scenario:JENI8073-C117799-[Mobile] [Scenario] Entering Details on Change Limit Screen - Changing limits
  Given User is logged in with cif "card_center_special_card_change_limit"
  And User change language to "language"
  Then User go to card center landing page from side menu
  And User swipe up until found "card_center_active_x_card_three_dots"
  And User click "card_center_active_x_card_three_dots" until "card_center_x_card_satay_change_limit" displayed
  And User click "card_center_x_card_satay_change_limit" until "card_center_change_limit_page" displayed
  And User fill "card_center_e_card_change_limit_amount" with 10000
  And User click "card_center_e_card_change_limit_save_button"
  And User expect "snackbar" equal with "card_center_card_change_limit_push_message"

@android @uidatabound @ios @R3_1 @R3_2 @R3_3
#JENI8444-C125005-User change Card's limit to higher value
Scenario: JENI8073-C117800#C125005-[Mobile] [Scenario] Entering Details on Change Limit Screen - Saving
  Given User is logged in with cif "card_center_special_card_change_limit"
  And User change language to "language"
  And User go to card center landing page from side menu
  And User swipe up until found "card_center_active_x_card_three_dots"
  And User click "card_center_active_x_card_three_dots" until "card_center_x_card_satay_change_limit" displayed
  And User click "card_center_x_card_satay_change_limit" until "card_center_change_limit_page" displayed
  And User fill "card_center_e_card_change_limit_amount" with "card_center_default_limit_amt"
  And User click "card_center_e_card_change_limit_save_button"
  Then "card_center_password_verification_form" will be displayed

@android @uidatabound @ios @R3_1 @R3_2 @R3_3
Scenario:JENI8073-C117802-[Mobile] [Scenario] Entering Password after entering Changed Limits
  Given User is logged in with cif "card_center_special_card_change_limit"
  And User change language to "language"
  And User go to card center landing page from side menu
  And User swipe up until found "card_center_active_x_card_three_dots"
  And User click "card_center_active_x_card_three_dots" until "card_center_x_card_satay_change_limit" displayed
  And User click "card_center_x_card_satay_change_limit" until "card_center_change_limit_page" displayed
  And User fill "card_center_e_card_change_limit_amount" with "card_center_default_limit_amt"
  And User click "card_center_e_card_change_limit_save_button"
  Then "card_center_password_field" will be displayed
  And User fill "card_center_password_field" with "card_center_special_card_password"
  And User click "card_center_password_submit_button"

  And User expect "snackbar" equal with "card_center_card_change_limit_push_message"

@android @uidatabound @ios @R3_1 @R3_2 @R3_3
Scenario:JENI8073-C117809-[Mobile] [Scenario] Error Flows Authentication
  Given User is logged in with cif "card_center_special_card_change_limit"
  And User change language to "language"
  And User go to card center landing page from side menu
  And User swipe up until found "card_center_active_x_card_three_dots"
  And User click "card_center_active_x_card_three_dots" until "card_center_x_card_satay_change_limit" displayed
  And User click "card_center_x_card_satay_change_limit" until "card_center_change_limit_page" displayed
  And User fill "card_center_e_card_change_limit_amount" with 999999999
  And User expect "card_center_change_trx_limit_hint" equal with "card_center_change_limit_max"

# JENI-8074
@uidatabound @android @R3_1 @ios @R3_2 @R3_3
Scenario: JENI8074-C117867-[Mobile] [Scenario] User lands on the change pin screen - for Special Edition X-Card

  Given User is logged in with cif "card_center_special_card_change_pin"
  And User change language to "language"
  #Then "dashboard" will be displayed
  And User go to card center landing page from side menu
  And User swipe up until found "card_center_active_x_card_three_dots"
  And User click "card_center_active_x_card_three_dots"

  And User click "profile_and_setting_change_pin_button"

  Then "card_center_change_pin_form" will be displayed
  Then "card_center_change_pin_page_card_picture" will be displayed
  Then "card_center_change_pin_page_card_number" will be displayed

  # Need new step to handle card number
  # And User expect "card_center_change_pin_page_card_number" equal with "card_center_m_card_masked_number_change_pin"
  Then "card_center_card_pin_field" will be displayed
  Then "card_center_card_pin_confirm_field" will be displayed

@android @uidatabound @R3_1 @R3_2 @R3_3
Scenario: JENI8074-C117871-[Mobile] [Scenario] User leaves New Pin field empty

  Given User is logged in with cif "card_center_special_card_change_pin"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User go to card center landing page from side menu
  And User swipe up until found "card_center_active_x_card_three_dots"
  And User click "card_center_active_x_card_three_dots"

  And User click "profile_and_setting_change_pin_button"

  And User click "card_center_card_pin_field"
  And User fill "card_center_card_pin_confirm_field" with "correct_pin"
  And User click "card_center_change_pin_save_button"

  And User expect "card_center_card_pin_hint" equal with "card_center_card_pin_empty"

@android @uidatabound @R3_1 @R3_2 @R3_3
Scenario: JENI8074-C117872-[Mobile] [Scenario] User leaves Repeat Pin field empty

  Given User is logged in with cif "card_center_special_card_change_pin"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User go to card center landing page from side menu
  And User swipe up until found "card_center_active_x_card_three_dots"
  And User click "card_center_active_x_card_three_dots"

  And User click "profile_and_setting_change_pin_button"

  And User fill "card_center_card_pin_field" with "correct_pin"
  And User click "card_center_card_pin_confirm_field"
  And User click "card_center_card_pin_field"

  And User expect "card_center_card_pin_confirm_hint" equal with "card_center_card_pin_empty"

@android @uidatabound @R3_1 @R3_2 @R3_3
Scenario: JENI8074-C117873-[Mobile] [Scenario] User enters New pin field less than 6 digits

  Given User is logged in with cif "card_center_special_card_change_pin"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User go to card center landing page from side menu
  And User swipe up until found "card_center_active_x_card_three_dots"
  And User click "card_center_active_x_card_three_dots"

  And User click "profile_and_setting_change_pin_button"

  And User fill "card_center_card_pin_field" with 123
  And User fill "card_center_card_pin_confirm_field" with 123
  And User click "card_center_change_pin_save_button"

  And User expect "card_center_card_pin_hint" equal with "card_center_card_pin_few"

@android @uidatabound @R3_1 @R3_2 @R3_3
Scenario: JENI8074-C117874-[Mobile] [Scenario] User enters Repeat pin field less than 6 digits

  Given User is logged in with cif "card_center_special_card_change_pin"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User go to card center landing page from side menu
  And User swipe up until found "card_center_active_x_card_three_dots"
  And User click "card_center_active_x_card_three_dots"

  And User click "profile_and_setting_change_pin_button"

  And User fill "card_center_card_pin_field" with 123
  And User fill "card_center_card_pin_confirm_field" with 123
  And User click "card_center_change_pin_save_button"

  And User expect "card_center_card_pin_confirm_hint" equal with "card_center_card_pin_few"

@android @uidatabound @R3_1 @R3_2 @R3_3
Scenario: JENI8074-C117875-[Mobile] [Scenario] Users New Pin and Repeat Pin dont match

  Given User is logged in with cif "card_center_special_card_change_pin"

  And User change language to "language"
  And User go to card center landing page from side menu
  And User swipe up until found "card_center_active_x_card_three_dots"
  And User click "card_center_active_x_card_three_dots"

  And User click "profile_and_setting_change_pin_button"

  And User fill "card_center_card_pin_field" with "correct_pin"
  And User fill "card_center_card_pin_confirm_field" with 140323
  And User click "card_center_change_pin_save_button"

  And User expect "card_center_card_pin_confirm_hint" equal with "card_center_card_pin_not_match"

@android @uidatabound @R3_1 @R3_2 @R3_3
Scenario: JENI8074-C117876-[Mobile] [Scenario] Users Pin Combination is too simple
  Given User is logged in with cif "card_center_special_card_change_pin"

  And User change language to "language"
  And User go to card center landing page from side menu
  And User swipe up until found "card_center_active_x_card_three_dots"
  And User click "card_center_active_x_card_three_dots"

  And User click "profile_and_setting_change_pin_button"

  When User fill "card_center_card_pin_field" with 123456
  When User fill "card_center_card_pin_confirm_field" with 123456
  And User click "card_center_change_pin_save_button"

  And User expect "card_center_card_pin_hint" equal with "card_center_card_pin_easy"

  And User click "card_center_card_pin_field_eye"
  When User fill "card_center_card_pin_field" with 111111
  When User fill "card_center_card_pin_confirm_field" with 111111
  And User click "card_center_change_pin_save_button"

  And User expect "card_center_card_pin_hint" equal with "card_center_card_pin_easy"

  When User fill "card_center_card_pin_field" with 121212
  When User fill "card_center_card_pin_confirm_field" with 121212
  And User click "card_center_change_pin_save_button"

  And User expect "card_center_card_pin_hint" equal with "card_center_card_pin_easy"

  When User fill "card_center_card_pin_field" with 112233
  When User fill "card_center_card_pin_confirm_field" with 112233
  And User click "card_center_change_pin_save_button"

  And User expect "card_center_card_pin_hint" equal with "card_center_card_pin_easy"

@uidatabound @android @R3_1 @R3_2 @R3_3
#JENI8444-C125006-User change Card's PIN
Scenario: JENI8074-C117868-[Mobile] [Scenario] Entering Details on Change Pin Screen

  Given User is logged in with cif "card_center_special_card_change_pin"
  And User change language to "language"
  And User go to card center landing page from side menu
  And User swipe up until found "card_center_active_x_card_three_dots"
  And User click "card_center_active_x_card_three_dots"

  And User click "profile_and_setting_change_pin_button"

  And User fill "card_center_card_pin_field" with "correct_pin"
  And User fill "card_center_card_pin_confirm_field" with "correct_pin"
  And User click "card_center_change_pin_save_button"

  Then "card_center_password_verification_form" will be displayed

@android @uidatabound @R3_1 @R3_2 @R3_3
Scenario: JENI8074-C117869-[Mobile] [Scenario] Entering Password Post Changing Pin

  Given User is logged in with cif "card_center_special_card_change_pin"

  And User change language to "language"
  And User go to card center landing page from side menu
  And User swipe up until found "card_center_active_x_card_three_dots"
  And User click "card_center_active_x_card_three_dots"

  And User click "profile_and_setting_change_pin_button"

  And User fill "card_center_card_pin_field" with "correct_pin"
  And User fill "card_center_card_pin_confirm_field" with "correct_pin"
  And User click "card_center_change_pin_save_button"

  And User fill "card_center_password_field" with "card_center_special_card_password"
  And User click "card_center_password_submit_button"

  And User check snackbar with dynamic text "card_center_change_pin_success"
  

@android @uidatabound @R3_1 @R3_2 @R3_3
Scenario: JENI8074-C117870-[Mobile] [Scenario] Error Password

  Given User is logged in with cif "card_center_special_card_change_pin"

  And User change language to "language"
  And User go to card center landing page from side menu
  And User swipe up until found "card_center_active_x_card_three_dots"
  And User click "card_center_active_x_card_three_dots"

  And User click "profile_and_setting_change_pin_button"

  And User fill "card_center_card_pin_field" with "correct_pin"
  And User fill "card_center_card_pin_confirm_field" with "correct_pin"
  And User click "card_center_change_pin_save_button"

  And User fill "card_center_password_field" with 123456
  And User click "card_center_password_submit_button"

  And User check snackbar with static text "card_center_change_pin_wrong_password"

# JENI-8068
@android @uidatabound @ios @R3_1 @R3_2 @R3_3
Scenario:JENI8068-C117759-[Scenario] Initiate top up and select card to top up
  Given User access card center from left side menu with cif "card_center_special_card_topup"
  And User click "card_center_landing_page_cta_top_up"
  Then "card_center_top_up_selection_form" will be displayed

@android @uidatabound @R3_1 @R3_2 @R3_3
Scenario:JENI8068-C117762-[Scenario] Enable Next Button When Card is selected
  Given User access card center from left side menu with cif "card_center_special_card_topup"
  And User click "card_center_landing_page_cta_top_up"
  Then "card_center_top_up_selection_form" will be displayed
  # assert for click disable next button when there is no card selected
  And User click "card_center_top_up_selection_button"
  Then User expect "card_center_top_up_selection_form" is exist
  # assert for click enable Next button when there is a card selected
  And User select "card_center_card_dropdown" dropdown with "card_center_refund_card_name"
  And User click "card_center_top_up_selection_button"
  Then User expect "card_center_top_up_selection_form" doesn't exist

@android @uidatabound @R3_1 @R3_2 @R3_3
Scenario:JENI8068-C117763-[Scenario] Select Card To Top Up
  Given User access card center from left side menu with cif "card_center_special_card_topup"
  And User click "card_center_landing_page_cta_top_up"
  # Then "card_center_top_up_selection_form" will be displayed
  # Select for active special x-card
  And User select "card_center_card_dropdown" dropdown with "card_center_refund_card_name"
  And System save "card_center_top_up_selection_card_number" value
  And User click "card_center_top_up_selection_button"
  Then element with "card_center_refund_card_name" text will be displayed
  And User expect saved text value number 1 displayed
  # Select for active e-card
  And User click "back_button"
  And User select "card_center_card_dropdown" dropdown with "card_center_e_card"
  And System save "card_center_top_up_selection_card_number" value
  And User click "card_center_top_up_selection_button"
  Then element with "card_center_e_card" text will be displayed
  And User expect saved text value number 2 displayed

@android @uidatabound @R3_1 @R3_2 @R3_3
Scenario:JENI8068-C117764-[Scenario] Enter Top Up Amount
  Given User access card center from left side menu with cif "card_center_special_card_topup"
  And User click "card_center_landing_page_cta_top_up"
  And User select "card_center_card_dropdown" dropdown with "card_center_refund_card_name"
  And User click "card_center_top_up_selection_button"
  And User fill "card_center_top_up_amt" with "card_center_filter_amount_range_3"
  And User click "card_center_top_up_submit"
  Then "card_center_top_up_confirm_page" will be displayed
  And User expect "card_center_top_up_confirm_amount" equal with "card_center_filter_amount_range_label_3"

@android @uidatabound @R3_1 @R3_2 @R3_3
# JENI8068-C117765-[Scenario] Default Top Up Amount Values
# JENI8068-C117766-[Scenario] Minimum Top Up Amount
Scenario:JENI8068-C117765#C117766-Default and Minimum Top Up Amount
  Given User access card center from left side menu with cif "card_center_special_card_topup"
  And User click "card_center_landing_page_cta_top_up"
  And User select "card_center_card_dropdown" dropdown with "card_center_refund_card_name"
  And User click "card_center_top_up_selection_button"
  # assertion for C117765
  Then User expect "card_center_top_up_amt" equal with "zero_value"
  # steps and assertion for C117766
  And User click "card_center_top_up_submit"
  And User fill "card_center_top_up_amt" with "zero_value"
  Then User expect "card_center_top_up_amt" is exist
  And User fill "card_center_top_up_amt" with "card_center_first_x_card_top_up_amt"
  And User click "card_center_top_up_submit"
  Then "card_center_top_up_confirm_page" will be displayed
  And User expect "card_center_top_up_amt" doesn't exist

@android @uidatabound @R3_1 @R3_2 @R3_3
Scenario:JENI8068-C117767-[Scenario] Active Balance
  Given User is on Dashboard screen in selected environment and logged with "card_center_special_card_topup"
  And System save balance "dashboard_wealth_widget_total_active_balance" value
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User check and click "card_center_close_tutorial" if exist
  And User click "card_center_landing_page_cta_top_up"
  And User select "card_center_card_dropdown" dropdown with "card_center_refund_card_name"
  And User click "card_center_top_up_selection_button"
  And System save balance "card_center_top_up_active_balance" value
  Then User expect saved value number 1 and 2 are equal

@android @uidatabound @R3_1 @R3_2 @R3_3 
# JENI8068-C117771-[Scenario] Back Button for Confirmation page
# JENI8068-C117772-[Scenario] Back button for Amount Page
Scenario:JENI8068-C117771#C117772-[Scenario] Back Button
  Given User access card center from left side menu with cif "card_center_special_card_topup"
  And User click "card_center_landing_page_cta_top_up"
  And User select "card_center_card_dropdown" dropdown with "card_center_refund_card_name"
  And User click "card_center_top_up_selection_button"
  And User fill "card_center_top_up_amt" with "card_center_filter_amount_range_3"
  And User click "card_center_top_up_submit"
  Then "card_center_top_up_confirm_page" will be displayed
  # step and assrtion for C117771
  And User click "back_button"
  Then "card_center_top_up_amt" will be displayed
  And User expect "card_center_top_up_confirm_page" doesn't exist
  # step and assertion for C117772
  And User click "back_button"
  Then "card_center_card_dropdown" will be displayed
  And User expect "card_center_top_up_amt" doesn't exist

@android @uidatabound @ios @R3_1 @R3_2 @R3_3
Scenario:JENI8068-C117833-[Scenario] Active Balance is lesser than Top Up Amount

  Given User is logged in with cif "card_center_special_card_topup"
  
  And User change language to "language"
  And User go to card center landing page from side menu

  And User click "card_center_active_x_card_three_dots"
  And User click "card_center_x_card_satay_top_up"
  When User fill "card_center_top_up_amt_field" with 9999999
  Then User expect "card_center_top_up_amt_hint" equal with "card_center_top_up_hint_exceed"

  When User fill "card_center_top_up_amt_field" with 10000
  And User click "card_center_top_up_submit"
  Then "card_center_top_up_confirm_page" will be displayed 

@uidatabound @android @R3_1 @R3_2 @R3_3
# JENI8068-C117768-[Scenario] Confirm Top Up
Scenario:JENI8068-C117768#C117769-[Scenario] Active Balance Deduction As a result of topping up
  Given User is logged in with cif "card_center_special_card_topup"
  And User change language to "language"
  And System save "dashboard_wealth_widget_total_active_balance" value
  And User go to card center landing page from side menu
  And System save "card_center_first_x_card_balance_dashboard" value
  And User click "card_center_landing_page_cta_top_up"
  And User select "card_center_card_dropdown" dropdown with "card_center_first_x_card_top_up"
  And User click "card_center_top_up_selection_button"
  When User fill "card_center_top_up_amt" with "card_center_first_x_card_top_up_amt"
  And User click "card_center_top_up_submit"
  And User click "card_center_top_up_confirm_button"
  Then User expect "card_center_first_x_card_balance_dashboard" equal with saved data number 2 plus "card_center_first_x_card_top_up_amt"
  And User go to dashboard from card center list
  Then User expect "dashboard_wealth_widget_total_active_balance" equal with saved data number 1 minus "card_center_first_x_card_top_up_amt"

@android @uidatabound @R3_1 @R3_2 @R3_3
Scenario:JENI8068-C117770-[Scenario] Transaction History as a result of topping up
  Given User is logged in with cif "card_center_special_card_topup"
  And User change language to "language"
  And System save "dashboard_wealth_widget_total_active_balance" value
  And User go to card center landing page from side menu
  And System save "card_center_first_x_card_balance_dashboard" value
  And User click "card_center_landing_page_cta_top_up"
  And User select "card_center_card_dropdown" dropdown with "card_center_first_x_card_top_up"
  And User click "card_center_top_up_selection_button"
  When User fill "card_center_top_up_amt" with "card_center_first_x_card_top_up_amt"
  And User click "card_center_top_up_submit"
  And User click "card_center_top_up_confirm_button"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_transactions_tab"
  Then User expect "card_center_transcation_first_item_narrative" equal with "card_center_top_up_history_title"
  Then User expect "card_center_transcation_first_item_amount" equal with "card_center_top_up_history_amt"

@uidatabound @android @R3_1 @R3_2 @R3_3
# JENI8068-C117768-[Scenario] Confirm Top Up
Scenario:JENI8068-C117768#C117769-[Scenario] Active Balance Deduction As a result of topping up
  Given User is logged in with cif "card_center_special_card_topup"
  And User change language to "language"
  And System save "dashboard_wealth_widget_total_active_balance" value
  And User go to card center landing page from side menu
  And System save "card_center_first_x_card_balance_dashboard" value
  And User click "card_center_landing_page_cta_top_up"
  And User select "card_center_card_dropdown" dropdown with "card_center_first_x_card_top_up"
  And User click "card_center_top_up_selection_button"
  When User fill "card_center_top_up_amt" with "card_center_first_x_card_top_up_amt"
  And User click "card_center_top_up_submit"
  And User click "card_center_top_up_confirm_button"
  Then User expect "card_center_first_x_card_balance_dashboard" equal with saved data number 2 plus "card_center_first_x_card_top_up_amt"
  And User go to dashboard from card center list
  Then User expect "dashboard_wealth_widget_total_active_balance" equal with saved data number 1 minus "card_center_first_x_card_top_up_amt"

@uidatabound @android @R3_1 @R3_2 @R3_3
Scenario:JENI8068-C117770-[Scenario] Transaction History as a result of topping up
  Given User is logged in with cif "card_center_special_card_topup"
  And User change language to "language"
  And System save "dashboard_wealth_widget_total_active_balance" value
  And User go to card center landing page from side menu
  And System save "card_center_first_x_card_balance_dashboard" value
  And User click "card_center_landing_page_cta_top_up"
  And User select "card_center_card_dropdown" dropdown with "card_center_first_x_card_top_up"
  And User click "card_center_top_up_selection_button"
  When User fill "card_center_top_up_amt" with "card_center_first_x_card_top_up_amt"
  And User click "card_center_top_up_submit"
  And User click "card_center_top_up_confirm_button"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_transactions_tab"
  Then User expect "card_center_transcation_first_item_narrative" equal with "card_center_top_up_history_title"
  Then User expect "card_center_transcation_first_item_amount" equal with "card_center_top_up_history_amt"

###################################
#Release 3.1
#Eko Adi Prabowo
##################################

#[JENI-293]Adding an X- Card
#JENI8444-C125007-User create new X-Card
  @android @uispecific @R3_1 @R3_3 @ios
  Scenario:JENI293-C63638-Adding New X-Card from Card Center Landing Page
    Given User access card center from left side menu with cif "card_center_add_card"
    And User click "card_center_new_card"
    And User click "card_center_xcard_proceed_button"
    And User swipe up until found "card_center_xcard_input_amount_field" 
    And User fill "card_center_xcard_input_name_field" with "card_center_rename_x_card_name"
    And User fill "card_center_xcard_input_amount_field" with "card_center_add_card_amount"
    And User click "card_center_xcard_next_button"
    And User click "card_center_xcard_create_new_xcard_button"
    And User click "card_center_password_field_eye"
    And User expect "card_center_password_verification_form" is exist
    And User fill "card_center_password_verification_form" with "correct_password"
    And User expect "card_center_password_submit_button" is exist


  @android @uispecific @R3_1 @ios
  Scenario:JENI293-C63639-Adding New X-card from Card Center Landing Page (Initiation)
    Given User access card center from left side menu with cif "card_center_add_card"
    And User click "card_center_new_card"
    And User expect "card_center_xcard_landing_page_title" is exist
    And User expect "card_center_xcard_landing_page_header_text" is exist
    And User expect "card_center_xcard_landing_page_title" is exist
    And User expect "card_center_xcard_landing_page_detail_text1" is exist
    And User expect "card_center_xcard_landing_page_detail_text2" is exist
    And User expect "card_center_xcard_landing_page_view_personal_button" is exist

  @android @uispecific @R3_1 @ios
  Scenario:JENI293-C67362-Adding New X-Card from Card Center Landing Page (>3)
    Given User access card center from left side menu with cif "card_center_active_x_card_have_3_xcard"    
    And User click "card_center_new_card"
    And User wait 5 seconds
    And User expect "card_center_new_card" is exist


  @android @uispecific @R3_1 @ios 
  Scenario:JENI293-C63640-Options in X-Card Landing Page is shown
    Given User access card center from left side menu with cif "card_center_add_card"
    And User click "card_center_new_card"
    And User click "card_center_xcard_landing_page_view_personal_button"
    And User expect "profile_and_setting_header_text" is exist

  @android @uispecific @R3_1 @ios 
  Scenario:JENI293-C63641-Choosing X-Card Color
    Given User access card center from left side menu with cif "card_center_add_card"
    And User click "card_center_new_card"
    And User click "card_center_xcard_proceed_button"
    And User wait 5 seconds
    And User click "card_center_xcard_color_2_card"
    And User expect "card_center_xcard_color_2_card_text" is exist


  @android @uispecific @R3_1 @ios
  Scenario:JENI293-C63642-Fields for X-Card details
    Given User access card center from left side menu with cif "card_center_add_card"
    And User click "card_center_new_card"
    And User expect "card_center_xcard_landing_page_title" is exist
    And User expect "card_center_xcard_landing_page_header_text" is exist
    And User expect "card_center_xcard_landing_page_title" is exist
    And User expect "card_center_xcard_landing_page_detail_text1" is exist
    And User expect "card_center_xcard_landing_page_detail_text2" is exist
    And User expect "card_center_xcard_landing_page_view_personal_button" is exist
    And User click "card_center_xcard_proceed_button"
    And User swipe up until found "card_center_xcard_input_amount_field" 
    And User expect "card_center_xcard_input_name_field" is exist
    And User expect "card_center_xcard_balance_page_input_amount" is exist

  @android @uispecific @R3_1 @ios 
  Scenario:JENI293-C67363-Fields for X-Card details are enable to input
    Given User access card center from left side menu with cif "card_center_add_card"
    And User click "card_center_new_card"
    And User click "card_center_xcard_proceed_button"
    And User swipe up until found "card_center_xcard_input_amount_field" 
    And User fill "card_center_xcard_input_name_field" with "card_center_x_card_name_test"
    And User fill "card_center_xcard_input_amount_field" with "find_us_withdraw_amount"
    And User click "card_center_xcard_next_button"

  @android @uispecific @R3_1 @ios 
  Scenario:JENI293-C67364-First balance of X-Card is more than active balance
    Given User access card center from left side menu with cif "bill_payment_user_active_balance_<20k"
    And User click "card_center_new_card"
    And User click "card_center_xcard_proceed_button"
    And User swipe up until found "card_center_xcard_input_amount_field" 
    And User fill "card_center_xcard_input_name_field" with "card_center_x_card_name_test"
    And User fill "card_center_xcard_input_amount_field" with "bill_payment_input_20_mil"
    And User click "card_center_xcard_next_button"

  @android @uispecific @R3_1 @ios
  Scenario:JENI293-C63643-X-Card Confirmation Page
    Given User access card center from left side menu with cif "card_center_add_card"
    And User click "card_center_new_card"
    And User click "card_center_xcard_proceed_button"
    And User swipe up until found "card_center_xcard_input_amount_field" 
    And User fill "card_center_xcard_input_name_field" with "card_center_x_card_name_test"
    And User fill "card_center_xcard_input_amount_field" with "find_us_withdraw_amount"
    And User click "card_center_xcard_next_button"
    And User expect "card_center_x_card_check_resulth_name_xcard" equal with "card_center_x_card_name_test"
    And User expect "card_center_xcard_create_new_xcard_button" is exist

  @android @uispecific @R3_1 @ios
  Scenario:JENI293-C63644-Authentication Page is shown
    Given User access card center from left side menu with cif "card_center_add_card"
    And User click "card_center_new_card"
    And User click "card_center_xcard_proceed_button"
    And User swipe up until found "card_center_xcard_input_amount_field" 
    And User fill "card_center_xcard_input_name_field" with "card_center_x_card_name_test"
    And User fill "card_center_xcard_input_amount_field" with "find_us_withdraw_amount"
    And User click "card_center_xcard_next_button"
    And User click "card_center_xcard_create_new_xcard_button"
    And User click "card_center_password_field_eye"
    And User expect "card_center_password_auth" is exist
    And User fill "card_center_password_auth" with "correct_password"
    And User expect "card_center_password_submit_button" is exist

  @android @uispecific @R3_1 @ios
  Scenario:JENI293-C63645-Input Wrong SLA for X-Card
    Given User access card center from left side menu with cif "card_center_add_card"
    And User click "card_center_new_card"
    And User click "card_center_xcard_proceed_button"
    And User swipe up until found "card_center_xcard_input_amount_field" 
    And User fill "card_center_xcard_input_name_field" with "card_center_x_card_name_test"
    And User fill "card_center_xcard_input_amount_field" with "find_us_withdraw_amount"
    And User click "card_center_xcard_next_button"
    And User click "card_center_xcard_create_new_xcard_button"
    And User click "card_center_password_field_eye"
    And User expect "card_center_password_auth" is exist
    And User fill "card_center_password_auth" with "bill_payment_text_notes"
    And User click "card_center_password_submit_button"

  @android @uispecific @R3_1 @ios 
  Scenario:JENI293-C67366-Canceling in the middle of the steps
   Given User access card center from left side menu with cif "card_center_add_card"
    And User click "card_center_new_card"
    And User click "card_center_xcard_proceed_button"
    And User swipe up until found "card_center_xcard_input_amount_field" 
    And User fill "card_center_xcard_input_name_field" with "card_center_x_card_name_test"
    And User fill "card_center_xcard_input_amount_field" with "find_us_withdraw_amount"
    And User click "card_center_xcard_next_button"
    And User press back button on device
    And User swipe up until found "card_center_xcard_input_amount_field"
    And User expect "card_center_xcard_input_name_field" is exist
    And User expect "card_center_xcard_input_amount_field" is exist

  @android @endtoend @R3_1 @ios
  Scenario:JENI293-C67365-SLA for X-Card
    Given User access card center from left side menu with cif "card_center_add_card"
    And User click "card_center_new_card"
    And User click "card_center_xcard_proceed_button"
    And User swipe up until found "card_center_xcard_input_amount_field" 
    And User fill "card_center_xcard_input_name_field" with "card_center_x_card_name_test"
    And User fill "card_center_xcard_input_amount_field" with "find_us_withdraw_amount"
    And User click "card_center_xcard_next_button"
    And User click "card_center_xcard_create_new_xcard_button"
    And User click "card_center_password_field_eye"
    And User expect "card_center_password_auth" is exist
    And User fill "card_center_password_auth" with "correct_password"
    And User click "card_center_password_submit_button"

# JENI-8070
@android @ios @uidatabound @R3_1 @R3_2 @R3_3
  Scenario:JENI8070-C117880-[Scenario] Temporary Block Modal from Card Center landing page
    Given User access card center from left side menu with cif "card_center_special_card_tblock"
    And User click "card_center_landing_page_cta_block"
    Then "card_center_block_detail_temporary_block" will be displayed

  # in iOS dropdown can't be selected (?)
  @android @R3_1 @R3_2 @R3_3 @uidatabound
  Scenario:JENI8070-C117882-[Scenario] User initiate Temporary Block from CTA button
    Given User access card center from left side menu with cif "card_center_special_card_tblock"
    And User click "card_center_landing_page_cta_block"
    And User click "card_center_block_detail_temporary_block"
    And User select "card_center_card_dropdown" dropdown with "card_center_special_x_card_tblock"

@uidatabound @android @R3_1 @R3_2 @R3_3 @ios
Scenario:JENI8070-C117884-[Scenario] User initiate Temporary Block from 3-dots Menu

  Given User is logged in with cif "card_center_special_card_tblock"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_active_x_card_three_dots"
  And User click "card_center_active_x_card_three_dots" until "card_center_x_card_satay_dashboard" displayed
  Then "card_center_x_card_satay_temporary_block_card" will be displayed

@uidatabound @android @R3_1 @R3_2 @R3_3 @ios
Scenario:JENI8070-C117885-[Scenario] User click Block from Special Edition Card Detail

  Given User is logged in with cif "card_center_special_card_tblock"
  And User change language to "language"
  And User go to card center landing page from side menu
  And User click "card_center_first_x_card_dashboard"

  Then "card_center_detail" will be displayed
  Then "card_center_block_detail_temporary_block" will be displayed

  @android @endtoend @R3_1 @R3_2 @R3_3 @ios
  Scenario:JENI8070-C117883-[Scenario] User clicks BLOCK TEMPORARILY button
    Given User access card center from left side menu with cif "card_center_special_card_tblock"
    And User swipe up until found "card_center_active_x_card_three_dots"
    And User click "card_center_active_x_card_three_dots" until "card_center_x_card_satay_dashboard" displayed
    And User click "card_center_x_card_satay_temporary_block_card"
    And User check snackbar with dynamic text "card_center_temporarily_block_x_card_success_message"

@uidatabound @android @R3_1 @R3_2 @R3_3 @ios
# JENI8070-C117888-[Scenario] User go to Card Detail after doing Temporary block for Spec X-Card
# JENI8070-C117890-[Scenario] User do actions for my temporary block Spec x-Card
Scenario:JENI8070-C117886#C117888#C117890-[Scenario] User clicks Temporary Block Special Edition X-Card

  Given User is logged in with cif "card_center_special_card_tblock"
  And User change language to "language"
  And User go to card center landing page from side menu
  And User click "card_center_first_x_card_dashboard"
  Then "card_center_detail" will be displayed
  Then "card_center_card_detail_status_temporary_block" will be displayed
  Then "card_center_more_cta_button" will be displayed
  And User click "card_center_more_cta_button"
  Then "card_center_top_up_popup_menu" will be displayed
  Then "card_center_refund_card_popup_menu" will be displayed


@uidatabound @android @R3_1 @R3_2 @R3_3 @ios
Scenario:JENI8070-C117887-[Scenario] User go to Card Center landing page after doing Temporary block for Spec X-Card

  Given User is logged in with cif "card_center_special_card_tblock"
  And User change language to "language"
  And User go to card center landing page from side menu
  Then "card_center_first_x_card_dashboard" will be displayed
  And User expect "card_center_first_x_card_status_dashboard" contains "card_center_temporarily_blocked"

@uidatabound @android @R3_1 @R3_2 @R3_3 @ios
Scenario:JENI8070-C117889-[Scenario] User go to Card Center widget after doing Temporary block for Spec X-Card
  Given User is logged in with cif "card_center_special_card_tblock"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User swipe up until found "card_center_first_x_card_status_dashboard"
  And User expect "card_center_first_x_card_status_dashboard" contains "card_center_temporarily_blocked"

# JENI-8071
  @android @ios @uidatabound @R3_1 @R3_2 @R3_3
  # JENI8071-C117773-[Scenario] 3-dot Card Center landing page - Option to Unblock the card 
  # JENI8071-C117778-[Scenario] User go to Card Center page after Unblocking Card
  Scenario:JENI8071-C117773#C117774#C117778-[Scenario] 3-dot Card Center landing page - Unblocking the Card
    Given User access card center from left side menu with cif "card_center_special_card_tblock"
    And User swipe up until found "card_center_first_x_card_three_dots"
    And User click "card_center_first_x_card_three_dots"
    Then "card_center_x_card_satay_unblock_card" will be displayed
    When User click "card_center_x_card_satay_unblock_card"
    And User expect "snackbar" contains "card_center_unblock_x_card"
    Then "card_center_landing_page" will be displayed    

  @android @ios @uidatabound @R3_1 @R3_2 @R3_3
  # JENI8071-C117775-[Scenario] 3-dot Card Center Widget on Dashboard - Option to Unblock the card
  # JENI8071-C117780-[Scenario] User go to Card Center widget after Unblocking Card
  Scenario:JENI8071-C117775#C117776#C117780-[Scenario] 3-dot Card Center Widget on Dashboard - Unblocking the Card
    Given User is logged in with cif "card_center_special_card_tblock"
    And User change language to "language"
    And User swipe up until found "card_center_first_x_card_three_dots"
    And User click "card_center_first_x_card_three_dots"
    Then "card_center_x_card_satay_unblock_card" will be displayed
    When User click "card_center_x_card_satay_unblock_card"
    And User expect "snackbar" contains "card_center_unblock_x_card"
    Then "card_center_widget" will be displayed

  @android @ios @uidatabound @R3_1 @R3_2 @R3_3
  Scenario:JENI8071-C117777-[Scenario] Card Detail - Option to Unblock the card
    Given User is logged in with cif "card_center_special_card_tblock"
    And User change language to "language"
    And User swipe up until found "card_center_first_x_card_dashboard"
    And User click "card_center_first_x_card_dashboard"
    Then "card_center_unblock_menu_item" will be displayed

  @android @ios @uidatabound @R3_1 @R3_2 @R3_3
  # JENI8071-C117779-[Scenario] User go to Card Details page after Unblocking Card
  Scenario:JENI8071-C117777#C117779-[Scenario] Card Detail - Unblocking the Card
    Given User is logged in with cif "card_center_special_card_tblock"
    And User change language to "language"
    And User swipe up until found "card_center_first_x_card_dashboard"
    And User click "card_center_first_x_card_dashboard"
    And User click "card_center_unblock_menu_item"
    And User expect "snackbar" contains "card_center_unblock_x_card"
    Then "card_center_detail" will be displayed

  @android @endtoend @R3_1 @R3_2 @R3_3
  Scenario:JENI8071-C117781-[Scenario] Card actions are available after unblocking Temporary Block card
    Given User is logged in with cif "card_center_special_card_tblock"
    And User change language to "language"
    And User go to card center landing page from side menu
    And User swipe up until found "card_center_first_x_card_three_dots"
    And User click "card_center_first_x_card_three_dots"
    Then "card_center_x_card_satay_change_pin" will be displayed
    Then "card_center_x_card_satay_change_limit" will be displayed
    Then "card_center_x_card_satay_temporary_block_card" will be displayed
    Then "card_center_x_card_satay_top_up" will be displayed
    Then "card_center_x_card_satay_refund" will be displayed
    Then "card_center_x_card_satay_delete" will be displayed
    And User click "card_center_x_card_satay_cancel"
    And User click "card_center_first_x_card_dashboard"
    And User click "card_center_unblock_menu_item"
    And User expect "snackbar" contains "card_center_unblock_x_card"
    Then "card_center_detail" will be displayed

# JENI-8077
@android @uidatabound @ios @R3_1 @R3_2 @R3_3
Scenario:JENI8077-C117812-[Scenario] User Cancelling on confirmation popup
  Given User is logged in with cif "card_center_special_card_delete"
  And User change language to "language"
  And User go to card center landing page from side menu
  And User swipe up until found "card_center_first_x_card_three_dots"
  And User click "card_center_first_x_card_three_dots"
  And User click "card_center_x_card_satay_delete_card"
  And User click "card_center_delete_page_submit"
  And User click element with text "send_it_frequency_confirmation_cancel"
  
  Then "card_center_delete_page_title" will be displayed

@endtoend @ios @android @R3_1 @R3_2 @R3_3
# JENI8077-C117813-[Scenario] Updated list of Special Edition X-Card
Scenario:JENI8077-C117810-[Scenario] User Delete X-Card
  Given User is logged in with cif "card_center_special_card_delete"
  And User change language to "language"
  And User go to card center landing page from side menu
  And User swipe up until found "card_center_first_x_card_three_dots"
  And User click "card_center_first_x_card_three_dots"
  And User click "card_center_x_card_satay_delete_card"
  And User click "card_center_delete_page_submit"
  And User click "card_center_confirm_delete_button"
  Then "card_center_landing_page" will be displayed

@endtoend @ios @android @R3_1 @R3_2 @R3_3 @continuous
Scenario:ENI8077-C117813-[Scenario] Updated list of Special Edition X-Card
  Then element with "card_center_refund_card_name" text will not displayed

@endtoend @ios @android @R3_1 @R3_2 @R3_3
Scenario:JENI8077-C117811-[Scenario] Special Edition X-Card has balance that needs to be refunded
  Given User is logged in with cif "card_center_special_card_delete_with_balance"
  And User change language to "language"
  And System save "dashboard_wealth_widget_total_active_balance" value
  And User go to card center landing page from side menu
  And User swipe up until found "card_center_first_x_card_three_dots"
  And System save "card_center_first_x_card_balance_dashboard" value
  And User click "card_center_first_x_card_three_dots"
  And User click "card_center_x_card_satay_delete_card"
  And User click "card_center_delete_page_submit"
  And User click "card_center_confirm_delete_button"
  Then "card_center_landing_page" will be displayed
  And User go to dashboard from card center list
  Then User expect "dashboard_wealth_widget_total_active_balance" equal with saved data number 1 plus 2

# JENI-2221
@uidatabound @android @ios @R3_1 
Scenario:JENI2221-C116842-[Scenario] User Cancelling on confirmation popup
  Given User is logged in with cif "card_center_x_card_tblock_credential_top_up"
  And User change language to "language"
  And User go to card center landing page from side menu
  And User swipe up until found "card_center_first_x_card_three_dots"
  And User click "card_center_first_x_card_three_dots"
  And User click "card_center_x_card_satay_delete_card"
  And User click "card_center_delete_page_submit"
  And User click element with text "send_it_frequency_confirmation_cancel"
  
  Then "card_center_delete_page_title" will be displayed

@endtoend @android @R3_1 
# JENI2221-C116845-[Scenario] Updated list of Special Edition X-Card
Scenario:JENI2221-C116843#C116845-[Scenario] User Delete X-Card
  Given User is logged in with cif "card_center_x_card_tblock_credential_top_up"
  And User change language to "language"
  And User go to card center landing page from side menu
  And User swipe up until found "card_center_first_x_card_three_dots"
  And User click "card_center_first_x_card_three_dots"
  And User click "card_center_x_card_satay_delete_card"
  And User click "card_center_delete_page_submit"
  And User click "card_center_confirm_delete_button"
  Then "card_center_landing_page" will be displayed
  Then element with "card_center_refund_card_name" text will not displayed

@endtoend @android @R3_1
Scenario:JENI2221-C116844-[Scenario] Special Edition X-Card has balance that needs to be refunded
  Given User is logged in with cif "card_center_x_card_tblock_credential_top_up"
  And User change language to "language"
  And System save "dashboard_wealth_widget_total_active_balance" value
  And User go to card center landing page from side menu
  And User swipe up until found "card_center_first_x_card_three_dots"
  And System save "card_center_first_x_card_balance_dashboard" value
  And User click "card_center_first_x_card_three_dots"
  And User click "card_center_x_card_satay_delete_card"
  And User click "card_center_delete_page_submit"
  And User click "card_center_confirm_delete_button"
  Then "card_center_landing_page" will be displayed
  And User go to dashboard from card center list
  Then User expect "dashboard_wealth_widget_total_active_balance" equal with saved data number 1 plus 2

# JENI-7365
@uidatabound @android @R3_4
Scenario:JENI7365-C116931-User can find rename x-card feature via 3 dots button in Card Widget from Dashboard
  Given User is logged in with cif "card_center_x_card_rename"
  And User change language to "language"
  And User access card center from side menu
  And User wait "card_center_loading_screen" will be gone
  And User check and click "card_center_close_tutorial" if exist
  And User swipe up until found "card_center_first_x_card_three_dots"
  And User click "card_center_first_x_card_three_dots"
  Then "card_center_x_card_satay_rename" will be displayed

@uidatabound @android @R3_4
Scenario:JENI7365-C116932-User can find rename x-card feature via 3 dots button in Card Center landing page
  Given User is logged in with cif "card_center_x_card_rename"
  And User change language to "language"
  And User go to card center landing page from side menu
  And User swipe up until found "card_center_first_x_card_three_dots"
  And User click "card_center_first_x_card_three_dots"
  Then "card_center_x_card_satay_rename" will be displayed

@uidatabound @android @R3_4
Scenario:JENI7365-C116933-User can find rename x-card feature via 3 dots button in Card Details
  Given User is logged in with cif "card_center_x_card_rename"
  And User change language to "language"
  And User go to card center landing page from side menu
  And User wait "card_center_loading_screen" will be gone
  And User check and click "card_center_close_tutorial" if exist
  And User click "card_center_first_x_card_dashboard"
  Then "card_center_detail" will be displayed
  And User click "card_center_more_cta_button"
  Then "card_center_change_card_name_popup_menu" will be displayed

@uidatabound @android @R3_4
Scenario:JENI7365-C116934-User go to x-card name page
  Given User is logged in with cif "card_center_x_card_rename"
  And User change language to "language"
  And User go to card center landing page from side menu
  And User wait "card_center_loading_screen" will be gone
  And User check and click "card_center_close_tutorial" if exist
  And User click "card_center_first_x_card_three_dots"
  And User click "card_center_x_card_satay_rename"
  Then "card_center_rename_page_header" will be displayed
  Then User expect "card_center_rename_page_field" equal with "card_center_rename_page_field_default"

@uidatabound @android @R3_4
Scenario:JENI7365-C127518-User cancel rename x-card
  Given User is logged in with cif "card_center_x_card_rename"
  And User change language to "language"
  And User go to card center landing page from side menu
  And User wait "card_center_loading_screen" will be gone
  And User check and click "card_center_close_tutorial" if exist
  And User click "card_center_first_x_card_three_dots"
  And User click "card_center_x_card_satay_rename"
  Then "card_center_rename_page_header" will be displayed
  And User click "back_button"
  Then element with "card_center_landing_page" text will be displayed
  Then element with "card_center_rename_x_card_name" text will be displayed

@uidatabound @android @R3_4
Scenario:JENI7365-C116936-User Change X-Card Name via 3 dots button in Card Center landing page
  Given User is logged in with cif "card_center_x_card_rename"
  And User change language to "language"
  And User go to card center landing page from side menu
  And User swipe up until found "card_center_first_x_card_three_dots"
  Then element with "card_center_rename_x_card_name" text will be displayed
  And User click "card_center_first_x_card_three_dots"
  And User click "card_center_x_card_satay_rename"
  Then "card_center_rename_page_header" will be displayed
  When User fill "card_center_rename_page_field" with "card_center_rename_x_card_name_new"
  And User click "card_center_rename_page_submit"
  And User check snackbar with dynamic text "card_center_rename_success_snackbar"
  Then element with "card_center_rename_x_card_name_new" text will be displayed

@uidatabound @android @R3_4
Scenario:JENI7365-C116935-User Change X-Card Name via 3 dots button in Card Widget from Dashboard
  Given User is logged in with cif "card_center_x_card_rename"
  And User change language to "language"
  And User swipe up until found "card_center_first_x_card_three_dots"
  Then element with "card_center_rename_x_card_name_new" text will be displayed
  And User click "card_center_first_x_card_three_dots"
  And User click "card_center_x_card_satay_rename"
  Then "card_center_rename_page_header" will be displayed
  When User fill "card_center_rename_page_field" with "card_center_rename_x_card_name_dashboard"
  And User click "card_center_rename_page_submit"
  And User check snackbar with dynamic text "card_center_rename_success_snackbar"
  Then element with "card_center_rename_x_card_name_dashboard" text will be displayed

@uidatabound @android @R3_4
Scenario:JENI7365-C116937-User Change X-Card Name via 3 dots button in X-Card Details
  Given User is logged in with cif "card_center_x_card_rename"
  And User change language to "language"
  And User go to card center landing page from side menu
  And User swipe up until found "card_center_first_x_card_dashboard"
  Then element with "card_center_rename_x_card_name_dashboard" text will be displayed
  And User click "card_center_first_x_card_dashboard"
  Then "card_center_detail" will be displayed
  And User click "card_center_more_cta_button"
  And User click "card_center_change_card_name_popup_menu"
  When User fill "card_center_rename_page_field" with "card_center_rename_x_card_name"
  And User click "card_center_rename_page_submit"
  And User check snackbar with dynamic text "card_center_rename_success_snackbar"
  Then element with "card_center_rename_x_card_name" text will be displayed

@uidatabound @android @R3_4
Scenario:JENI7365-C127519-Invalid Card Renaming
  Given User is logged in with cif "card_center_x_card_rename"
  And User change language to "language"
  And User go to card center landing page from side menu
  And User swipe up until found "card_center_first_x_card_three_dots"
  Then element with "card_center_rename_x_card_name" text will be displayed
  And User click "card_center_first_x_card_three_dots"
  And User click "card_center_x_card_satay_rename"
  Then "card_center_rename_page_header" will be displayed

  When User fill "card_center_rename_page_field" with "card_center_rename_x_card_name_empty"
  Then User expect "card_center_rename_page_field_hint" equal with "card_center_rename_empty_name"

  When User fill "card_center_rename_page_field" with "card_center_rename_x_card_name_15_more"
  Then User expect "card_center_rename_page_field" is not equal with "card_center_rename_x_card_name_15_more"

  When User fill "card_center_rename_page_field" with "card_center_rename_x_card_name_3_less"
  Then User expect "card_center_rename_page_field_hint" equal with "card_center_rename_few_name"

  When User fill "card_center_rename_page_field" with "card_center_rename_x_card_name_inapropriate"
  Then User expect "card_center_rename_page_field_hint" equal with "card_center_rename_invalid_name"