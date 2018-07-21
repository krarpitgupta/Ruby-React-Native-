@r3_dashboard
Feature: Release 3 - DASHBOARD Module

#[JENI-236] Wealth Widget (Inactive/In-progress **** Account) - Default widget content when **** balance is 0
  @android @uidatabound @ios
  Scenario: JENI236-C17960-[Layout] Check UI of Wealth Widget when user account status is inactive and total balance=0
    Given User is on dashboard page in English language with "dashboard_inactive_account"
    Then User expect "wealth_widget_total_balance" equal with "dashboard_inactive_account_balance"
    And "dashboard_wealth_widget_instruction_text_1" will be displayed
    And "dashboard_wealth_widget_instruction_image" will be displayed
    And User expect "dashboard_wealth_widget_instruction_text_4" equal with "dashboard_wealth_widget_instruction_text_4"
    
    When User swipe up until found "dashboard_wealth_widget_top_up_tutorial_button"
    Then User expect "dashboard_wealth_widget_top_up_tutorial_button" is exist
    And User expect "dashboard_wealth_widget_total_active_balance" doesn't exist
    And User expect "dashboard_wealth_widget_total_card_balance" doesn't exist
    And User expect "dashboard_wealth_widget_total_save_it_balance" doesn't exist
    
  @android @uidatabound @ios
  Scenario: JENI236-C17961-[Layout] Check UI of Wealth Widget when user account status is inprogress  and total balance=0
    Given User is on dashboard page in English language with "dashboard_inprogress_account"
    Then User expect "wealth_widget_total_balance" equal with "dashboard_inactive_account_balance"
    And "dashboard_wealth_widget_instruction_text_1" will be displayed
    And "dashboard_wealth_widget_instruction_image" will be displayed
    And User expect "dashboard_wealth_widget_instruction_text_4" equal with "dashboard_wealth_widget_instruction_text_4"
    
    When User swipe up until found "dashboard_wealth_widget_top_up_tutorial_button"
    Then User expect "dashboard_wealth_widget_top_up_tutorial_button" is exist
    And User expect "dashboard_wealth_widget_total_active_balance" doesn't exist
    And User expect "dashboard_wealth_widget_total_card_balance" doesn't exist
    And User expect "dashboard_wealth_widget_total_save_it_balance" doesn't exist

  @android @uidatabound @ios
  Scenario: JENI236-C17963-[Functionality] Check Wealth Widget when user account status is inactive and user hasn't deposited money into his **** account yet
    Given User is on dashboard page in English language with "dashboard_inactive_account"
    Then User expect "wealth_widget_total_balance" equal with "dashboard_inactive_account_balance"
    And "dashboard_wealth_widget_instruction_text_1" will be displayed
    And "dashboard_wealth_widget_instruction_image" will be displayed
    And User expect "dashboard_wealth_widget_instruction_text_4" equal with "dashboard_wealth_widget_instruction_text_4"
    
    When User swipe up until found "dashboard_wealth_widget_top_up_tutorial_button"
    Then User expect "dashboard_wealth_widget_top_up_tutorial_button" is exist

  @android @uidatabound @ios
  Scenario: JENI236-C17964-[Functionality] Check Wealth Widget when user account status is inprogress and user hasn't deposited money into his **** account yet
    Given User is on dashboard page in English language with "dashboard_inprogress_account"
    Then User expect "wealth_widget_total_balance" equal with "dashboard_inactive_account_balance"
    And "dashboard_wealth_widget_instruction_text_1" will be displayed
    And "dashboard_wealth_widget_instruction_image" will be displayed
    And User expect "dashboard_wealth_widget_instruction_text_4" equal with "dashboard_wealth_widget_instruction_text_4"
    
    When User swipe up until found "dashboard_wealth_widget_top_up_tutorial_button"
    Then User expect "dashboard_wealth_widget_top_up_tutorial_button" is exist

  @android @uidatabound @ios
  Scenario: JENI236-C18240-[Functionality] Verify Total Balance when user hasn't deposited money into his **** account
    Given User is on dashboard page in English language with "dashboard_inprogress_account"
    Then User expect "wealth_widget_total_balance" equal with "dashboard_inactive_account_balance"

  @android @uidatabound @ios
  Scenario: JENI236-C18592-[Content][EN] Check Wealth Widget copy/content
    Given User is on dashboard page in English language with "dashboard_inactive_account"
    Then User expect "dashboard_wealth_widget_instruction_text_1" equal with "dashboard_wealth_widget_instruction_text_1"
    And User expect "dashboard_wealth_widget_instruction_text_2" equal with "dashboard_wealth_widget_instruction_text_2"
    And User expect "dashboard_wealth_widget_instruction_text_3" equal with "dashboard_wealth_widget_instruction_text_3"
    And User expect "dashboard_wealth_widget_instruction_text_4" equal with "dashboard_wealth_widget_instruction_text_4"
    
    When User swipe up until found "dashboard_wealth_widget_top_up_tutorial_button"
    Then User expect "dashboard_wealth_widget_top_up_tutorial_button" is exist

  @android @uidatabound @ios
  Scenario: JENI236-C18593-[Content][ID] Check Wealth Widget copy/content
    Given User is on dashboard page in Indonesia language with "dashboard_inactive_account"
    Then User expect "dashboard_wealth_widget_instruction_text_1" equal with "dashboard_wealth_widget_instruction_text_1_id"
    And User expect "dashboard_wealth_widget_instruction_text_2" equal with "dashboard_wealth_widget_instruction_text_2_id"
    And User expect "dashboard_wealth_widget_instruction_text_3" equal with "dashboard_wealth_widget_instruction_text_3_id"
    And User expect "dashboard_wealth_widget_instruction_text_4" equal with "dashboard_wealth_widget_instruction_text_4_id"
    
    When User swipe up until found "dashboard_wealth_widget_top_up_tutorial_button_id"
    Then User expect "dashboard_wealth_widget_top_up_tutorial_button_id" is exist
  
  #[JENI-288] Wealth Widget (Inactive/In-progress **** Account) - User has deposited money in **** Account via TCR/other bank/retail bank branch
  @android @uidatabound @ios
  Scenario:JENI288-C18242-Check Wealth Widget when user account status is inactive and user deposited money into his **** account
    #Use CIF with zero wealth widget. The user's **** account status is 'inactive'
    Given User is on dashboard page in English language with "dashboard_with_balance_inactive_account"
    And User check and click "later_button" if exist
    And User input balances "dashboard_wealth_widget_total_active_balance" into variable
    Then User check total "dashboard_wealth_widget_total_balance" balance
    And User expect "dashboard_wealth_widget_total_save_it_balance" equal with "dashboard_wealth_save_it_value_zero"
    And User expect "dashboard_wealth_widget_total_card_balance" equal with "dashboard_wealth_card_value_zero"

  @android @uidatabound @ios
  Scenario:JENI288-C18243-Check Wealth Widget when user account status is inprogress and user deposited money into his **** account
    #Use CIF with zero wealth widget. The user's **** account status is 'inprogress'
    Given User is on dashboard page in English language with "dashboard_with_balance_inprogress_account"
    And User check and click "later_button" if exist
    And User input balances "dashboard_wealth_widget_total_active_balance" into variable
    Then User check total "dashboard_wealth_widget_total_balance" balance
    And User expect "dashboard_wealth_widget_total_save_it_balance" equal with "dashboard_wealth_save_it_value_zero"
    And User expect "dashboard_wealth_widget_total_card_balance" equal with "dashboard_wealth_card_value_zero"

  @android @uidatabound @ios
  Scenario:JENI288-C18241-Verify Total Balance after user deposited money into his **** account while user account status is inactive
    #Use CIF that deposited money into his **** account. The user's **** account status is 'inactive'
    Given User is on dashboard page in English language with "dashboard_with_balance_inactive_account"
    When User check and click "later_button" if exist
    And User input balances "dashboard_wealth_widget_total_active_balance" into variable
    And User input balances "dashboard_wealth_widget_total_card_balance" into variable
    And User input balances "dashboard_wealth_widget_total_save_it_balance" into variable
    Then User check total "dashboard_wealth_widget_total_balance" balance

  @android @uidatabound @ios
  Scenario:JENI288-C18585-Verify Active Balance after deposited money into **** account while user account status is inactive
    #Use CIF that deposited all money into his **** account. The user's **** account status is 'inactive'
    Given User is on dashboard page in English language with "dashboard_with_balance_inactive_account"
    When User check and click "later_button" if exist
    And User input balances "dashboard_wealth_widget_total_active_balance" into variable
    Then User check total "dashboard_wealth_widget_total_balance" balance

  @android @uidatabound @ios
  Scenario:JENI288-C18586-Verify Cards Balance after deposited money into **** account while user account status is inactive
    #Use CIF that deposited all money into his **** account. The user's **** account status is 'inactive'
    Given User is on dashboard page in English language with "dashboard_with_balance_inactive_account"
    When User check and click "later_button" if exist
    Then User expect "dashboard_wealth_widget_total_card_balance" equal with "dashboard_wealth_card_value_zero"

  @android @uidatabound @ios
  Scenario:JENI288-C18587-Verify Savings Balance after deposited money into **** account while user account status is inactive
    #Use CIF that deposited all money into his **** account. The user's **** account status is 'inactive'
    Given User is on dashboard page in English language with "dashboard_with_balance_inactive_account"
    When User check and click "later_button" if exist
    Then User expect "dashboard_wealth_widget_total_save_it_balance" equal with "dashboard_wealth_save_it_value_zero"

  @android @uidatabound @ios
  Scenario:JENI288-C18588-Verify Total Balance after user deposited money into his **** account while user account status is in-progress
    #Use CIF that deposited money into his **** account. The user's **** account status is 'in-progress'
    Given User is on dashboard page in English language with "dashboard_with_balance_inprogress_account"
    When User check and click "later_button" if exist
    And User input balances "dashboard_wealth_widget_total_active_balance" into variable
    And User input balances "dashboard_wealth_widget_total_card_balance" into variable
    And User input balances "dashboard_wealth_widget_total_save_it_balance" into variable
    Then User check total "dashboard_wealth_widget_total_balance" balance

  @android @uidatabound @ios
  Scenario:JENI288-C18589-Verify Active Balance after deposited money into **** account while user account status is in-progress
    #Use CIF that deposited all money into his **** account. The user's **** account status is 'in-progress'
    Given User is on dashboard page in English language with "dashboard_with_balance_inprogress_account"
    When User check and click "later_button" if exist
    And User input balances "dashboard_wealth_widget_total_active_balance" into variable
    Then User check total "dashboard_wealth_widget_total_balance" balance

  @android @uidatabound @ios
  Scenario:JENI288-C18590-Verify Cards Balance after deposited money into **** account while user account status is in-progress
    #Use CIF that deposited all money into his **** account. The user's **** account status is 'in-progress'
    Given User is on dashboard page in English language with "dashboard_with_balance_inprogress_account"
    When User check and click "later_button" if exist
    Then User expect "dashboard_wealth_widget_total_card_balance" equal with "dashboard_wealth_card_value_zero"

  @android @uidatabound @ios
  Scenario:JENI288-C18591-Verify Savings Balance after deposited money into **** account while user account status is in-progress
    #Use CIF that deposited all money into his **** account. The user's **** account status is 'in-progress'
    Given User is on dashboard page in English language with "dashboard_with_balance_inprogress_account"
    When User check and click "later_button" if exist
    Then User expect "dashboard_wealth_widget_total_save_it_balance" equal with "dashboard_wealth_save_it_value_zero"

  #[JENI-287- Wealth Widget (Active/Inactive/In-Progress) - View SEE HOW TO FUND YOUR **** external website
  @android @ios @uispecific
  Scenario:JENI287-C18567-[EN]Check "See how to fund your ****" button when user account status is inactive and total balance=0
    #The user's **** account is 'inactive'
    Given User is on dashboard page in English language with "dashboard_inactive_account"
    When User swipe up until found "dashboard_wealth_widget_top_up_tutorial_button"
    And User click "dashboard_wealth_widget_top_up_tutorial_button"
    Then "how_top_up_page_title" will be displayed
    And User wait 5 seconds
    And "how_top_up_page" will be displayed

  @android @ios @uispecific
  Scenario:JENI287-C18572-[EN]Check "See how to fund your ****" button when user account status is inprogress and total balance=0
    #The user's **** account is 'inprogress'
    Given User is on dashboard page in English language with "dashboard_inprogress_account"
    When User swipe up until found "dashboard_wealth_widget_top_up_tutorial_button"
    And User click "dashboard_wealth_widget_top_up_tutorial_button"
    Then "how_top_up_page_title" will be displayed
    And User wait 5 seconds
    And "how_top_up_page" will be displayed

  @android @ios @uispecific
  Scenario:JENI287-C18575-[EN]Check "See how to fund your ****" button when user account status is active and total balance=0
    #The user's **** account is 'active'
    Given User is on dashboard page in English language with "dashboard_active_account"
    When User swipe up until found "dashboard_wealth_widget_top_up_tutorial_button"
    And User click "dashboard_wealth_widget_top_up_tutorial_button"
    Then "how_top_up_page_title" will be displayed
    And User wait 5 seconds
    And "how_top_up_page" will be displayed

  @android @ios @uispecific
  Scenario:JENI287-C18573-[ID]Check "See how to fund your ****" button when user account status is inactive and total balance=0
    #The user's **** account is 'inactive'
    Given User is on dashboard page in Indonesia language with "dashboard_inactive_account"
    When User swipe up until found "dashboard_wealth_widget_top_up_tutorial_button_id"
    And User click "dashboard_wealth_widget_top_up_tutorial_button_id"
    Then "how_top_up_page_title" will be displayed
    And User wait 5 seconds
    And "how_top_up_page_id" will be displayed

  @android @ios @uispecific
  Scenario:JENI287-C18574-[ID]Check "See how to fund your ****" button when user account status is inprogress and total balance=0
    #The user's **** account is 'inprogress'
    Given User is on dashboard page in Indonesia language with "dashboard_inprogress_account"
    When User swipe up until found "dashboard_wealth_widget_top_up_tutorial_button_id"
    And User click "dashboard_wealth_widget_top_up_tutorial_button_id"
    Then "how_top_up_page_title" will be displayed
    And User wait 5 seconds
    And "how_top_up_page_id" will be displayed

  @android @ios @uispecific
  Scenario:JENI287-C18576-[ID]Check "See how to fund your ****" button when user account status is active and total balance=0
    #The user's **** account is 'active'
    Given User is on dashboard page in Indonesia language with "dashboard_active_account"
    When User swipe up until found "dashboard_wealth_widget_top_up_tutorial_button_id"
    And User click "dashboard_wealth_widget_top_up_tutorial_button_id"
    Then "how_top_up_page_title" will be displayed
    And User wait 5 seconds
    And "how_top_up_page_id" will be displayed

  #[JENI-7] Wealth Widget (Active **** Account) - Show Total/Active/Cards/Savings Balance
  @android @ios @uidatabound
  Scenario:JENI7-C18614-[Functionality] Check Wealth Widget when user account status is active and user deposited money into his **** account.
    Given User is logged in with cif "dashboard_active_account"
    When User swipe up until found "dashboard_wealth_widget_total_save_it_balance"
    Then "dashboard_wealth_widget_total_save_it_balance" will be displayed
    And "dashboard_wealth_widget_total_active_balance" will be displayed
    And "dashboard_wealth_widget_total_card_balance" will be displayed
    And "dashboard_wealth_widget_total_balance" will be displayed
    And User expect "dashboard_wealth_widget_top_up_tutorial_button" doesn't exist

  @android @ios @endtoend @uidatabound 
  Scenario:JENI7-C19693-[Functionality] Verify Total Balance after user deposited money into his **** account while user account status is Active
    Given User is logged in with cif "dashboard_active_account"
    When User swipe up until found "dashboard_wealth_widget_total_save_it_balance"
    And User check balances for "dashboard_wealth_widget_total_save_it_balance", "dashboard_wealth_widget_total_active_balance", "dashboard_wealth_widget_total_card_balance", "null_value" and "null_value"
    Then User check total "dashboard_wealth_widget_total_balance" balance

  @android @ios @uidatabound
  Scenario:JENI7-C18620-[Functionality] Verify Savings Balance after deposited money into **** account while user account status is active
    Given User is logged in with cif "dashboard_active_account"
    When User swipe up until found "dashboard_wealth_widget_total_save_it_balance"
    And User check balances for "dashboard_wealth_widget_total_balance", "dashboard_wealth_widget_total_active_balance", "dashboard_wealth_widget_total_card_balance", "null_value" and "null_value"
    Then User check difference "dashboard_wealth_widget_total_save_it_balance" balance

  #[JENI-284] Wealth Widget (Active **** Account) - Hide Active/Cards/Savings Balance
  @android @ios @uidatabound
  Scenario:JENI284-C18596-Check UI of Wealth Widget when user account status is active and total balance=0
    #Use CIF that account status is 'active'
    Given User is on dashboard page in English language with "dashboard_inactive_account"
    Then "dashboard_wealth_widget_total_balance_zero" will be displayed

  @android @ios @uidatabound
  Scenario:JENI284-C18598-Check Wealth Widget when user account status is inactive and user hasn't deposited money into his **** account yet
    #Use CIF that hasn't deposited money. The user's **** account status is 'inactive'
    Given User is on dashboard page in English language with "dashboard_inactive_account"
    Then "dashboard_wealth_widget_total_balance_zero" will be displayed
    And "dashboard_wealth_widget_instruction_image" will be displayed
    When User swipe up until found "dashboard_wealth_widget_top_up_tutorial_button"
    And "dashboard_wealth_widget_top_up_instruction" will be displayed
    And User expect "dashboard_wealth_widget_total_active_balance" doesn't exist
    And User expect "dashboard_wealth_widget_total_save_it_balance" doesn't exist
    And User expect "dashboard_wealth_widget_total_card_balance" doesn't exist
    And "dashboard_wealth_widget_top_up_tutorial_button" will be displayed

  @android @ios @uidatabound
  Scenario:JENI284-C18599-Verify Total Balance when user hasn't deposited money into his **** account
    #Use CIF that hasn't deposited money
    Given User is on dashboard page in English language with "dashboard_inactive_account"
    Then "dashboard_wealth_widget_total_balance_zero" will be displayed

  #[JENI-285] Wealth Widget (Active **** Account) - Clickable icons for Total/Active/Cards/Savings Balance
  @android @ios @uidatabound
  Scenario:JENI285-C19701-Verify the Active balance icon is clickable if user account status is Active and user's **** account has been deposited.
    Given User is on dashboard page in English language with "dashboard_dynamic_account"
    And User click "dashboard_active_balance_icon"
    And User wait 4 seconds
    And User check and click "tutorial_close" if exist
    Then "in_and_out_title" will be displayed

  @android @ios @uidatabound
  Scenario:JENI285-C19702-Verify the Cards balance icon is clickable if user account status is Active and user's **** account has been deposited.
    Given User is on dashboard page in English language with "dashboard_dynamic_account"
    And User click "dashboard_cards_icon"
    And User wait 4 seconds
    And User check and click "tutorial_close" if exist
    Then "card_center_title" will be displayed

  @android @ios @uidatabound
  Scenario:JENI285-C19703-Verify the Savings balance icon is clickable if user account status is Active and user's **** account has been deposited.
    Given User is on dashboard page in English language with "dashboard_dynamic_account"
    And User click "dashboard_save_it_icon"
    And User wait 4 seconds
    And User check and click "tutorial_close" if exist
    Then "save_it_title" will be displayed

  #[JENI-332] Wealth Widget - In-App Web view "SEE HOW TO FUND YOUR ****" external website 
  @android @ios @uispecific
  Scenario:JENI332-C47550-[Functionality] Able to open How to Top Up link (English)
    #User has 0 balance
    Given User is on dashboard page in English language with "dashboard_inactive_account"
    When User swipe up until found "dashboard_wealth_widget_top_up_tutorial_button"
    And User click "dashboard_wealth_widget_top_up_tutorial_button"
    And User wait 4 seconds
    Then "how_top_up_page" will be displayed

  @android @ios @uispecific
  Scenario:JENI332-C47807-[Layout] Verify the back button in the title bar on the top
    #User has 0 balance
    Given User is on dashboard page in English language with "dashboard_inactive_account"
    When User swipe up until found "dashboard_wealth_widget_top_up_tutorial_button"
    And User click "dashboard_wealth_widget_top_up_tutorial_button"
    Then "back_button" will be displayed

  @android @ios @uispecific
  Scenario:JENI332-C47808-[Content] Verify the How to Top Up Title bar
   #User has 0 balance
    Given User is on dashboard page in English language with "dashboard_inactive_account"
    When User swipe up until found "dashboard_wealth_widget_top_up_tutorial_button"
    And User click "dashboard_wealth_widget_top_up_tutorial_button"
    Then "how_top_up_page_title" will be displayed

  @android @ios @uispecific
  Scenario:JENI332-C47578-[Functionality] Able to open How to Top Up link (Indonesia)
    #User has 0 balance
    Given User is on dashboard page in Indonesia language with "dashboard_inactive_account"
    When User swipe up until found "dashboard_wealth_widget_top_up_tutorial_button_id"
    And User click "dashboard_wealth_widget_top_up_tutorial_button_id"
    And User wait 4 seconds
    Then "how_top_up_page_id" will be displayed

  #[JENI-1311][JENI-1904] Wealth Widget - Integration with BE to show Active Balance & Cards Balance
  @android @uidatabound @ios
  Scenario:JENI1311-C18618-[Functionality] Verify Active Balance: Active Balance >0
    Given User is on dashboard page in English language with "dashboard_with_all_balance_account"
    When User check balances for "dashboard_wealth_widget_total_active_balance", "null_value", "null_value", "null_value" and "null_value"
    Then User check total "dashboard_wealth_widget_total_active_balance" balance 

  @android @uidatabound @ios
  Scenario:JENI1311-C47711-[Functionality] Verify Active Balance: Active Balance =0
    Given User is on dashboard page in English language with "dashboard_with_only_saving_balance_account"
    When User check balances for "dashboard_wealth_widget_total_active_balance", "null_value", "null_value", "null_value" and "null_value"
    Then User check total "dashboard_wealth_widget_total_active_balance" balance

  @android @uispecific
  Scenario:JENI1904-C47714-[Functionality] Verify Active Balance: Error returns when retrieving Active Balance from API
    Given User is on dashboard page in English language with "dashboard_with_all_balance_account"
    When User turn off network connection for data and wifi
    Then User expect "dashboard_connection_loss_notification" equal with "connection_loss_notification"
    And User turn on network connection for data and wifi

  @android @uidatabound
  Scenario:JENI1311-C18619-[Functionality] Verify Cards Balance: 1 e-Card >0 and 1 x-Card >0
    Given User is on dashboard page in English language with "dashboard_with_one_x_card_with_balance"
    When User click "dashboard_hamburger_icon"
    When User click "card_center_menu"
    And User check and click "tutorial_close" if exist
    When User check balances for "card_center_e_card_balance_dashboard", "card_center_first_x_card_balance_dashboard", "null_value", "null_value" and "null_value"
    And User click "dashboard_hamburger_icon"
    And User click "dashboard_menu"
    And User wait 5 seconds
    Then User check total "dashboard_wealth_widget_total_card_balance" balance

  @android @uidatabound @ios
  Scenario:JENI1311-C47716-[Functionality] Verify Cards Balance: 1 e-Card >0 and 2 x-Card >0
    Given User is on dashboard page in English language with "card_center_e_card_two_x_card_with_balance"
    When User click "dashboard_hamburger_icon"
    When User click "card_center_menu"
    And User check and click "tutorial_close" if exist
    When User check balances for "card_center_e_card_balance_dashboard", "card_center_first_x_card_balance_dashboard", "card_center_second_x_card_balance_dashboard", "null_value" and "null_value"
    And User click "dashboard_hamburger_icon"
    And User click "dashboard_menu"
    And User wait 5 seconds 
    Then User check total "dashboard_wealth_widget_total_card_balance" balance 
  
  @android @uidatabound @ios
  Scenario:JENI1311-C47717-[Functionality] Verify Cards Balance: 1 e-Card >0 and 3 x-Card >0
    Given User is on dashboard page in English language with "dashboard_with_three_x_card_with_balance"
    When User click "dashboard_hamburger_icon"
    When User click "card_center_menu"
    And User check and click "tutorial_close" if exist
    And User swipe up until found "card_center_third_x_card_balance_dashboard"
    When User check balances for "card_center_e_card_balance_dashboard", "card_center_first_x_card_balance_dashboard", "card_center_second_x_card_balance_dashboard", "card_center_third_x_card_balance_dashboard" and "null_value"
    And User click "dashboard_hamburger_icon"
    And User click "dashboard_menu"
    And User wait 5 seconds 
    Then User check total "dashboard_wealth_widget_total_card_balance" balance 

  @android @uidatabound
  Scenario:JENI1311-C47718-[Functionality] Verify Cards Balance: 1 e-Card >0 and x-Card =0
    Given User is on dashboard page in English language with "save_it_no_balance_for_maxi_saver"
    When User click "dashboard_hamburger_icon"
    And User swipe down until found "card_center_menu"
    When User click "card_center_menu"
    And User click "card_center_close_tutorial"
    When User check balances for "card_center_e_card_balance_dashboard", "card_center_first_x_card_balance_dashboard", "null_value", "null_value" and "null_value"
    And User click "dashboard_hamburger_icon"
    And User swipe down until found "dashboard_menu"
    And User wait 5 seconds 
    Then User check total "dashboard_wealth_widget_total_card_balance" balance 

  @android @uidatabound
  Scenario:JENI1311-C47721-[Functionality] Verify Cards Balance: 1 e-Card = 0 and x-Card > 0
    Given User is on dashboard page in English language with "card_center_e_card_one_x_card_with_balance"
    When User click "dashboard_hamburger_icon"
    And User swipe down until found "card_center_menu"
    When User click "card_center_menu"
    And User click "card_center_close_tutorial"
    When User check balances for "card_center_e_card_balance_dashboard", "card_center_first_x_card_balance_dashboard", "null_value", "null_value" and "null_value"
    And User click "dashboard_hamburger_icon"
    And User swipe down until found "dashboard_menu"
    And User wait 5 seconds 
    Then User check total "dashboard_wealth_widget_total_card_balance" balance 
  
  @android @uidatabound
  Scenario:JENI1311-C47727-[Functionality] Verify Cards Balance: 1 e-Card = 0 and x-Card = 0
    Given User is on dashboard page in English language with "save_it_no_balance_for_dream_flexi_saver"
    When User click "dashboard_hamburger_icon"
    And User swipe down until found "card_center_menu"
    When User click "card_center_menu"
    And User click "card_center_close_tutorial"
    When User check balances for "card_center_e_card_balance_dashboard", "card_center_first_x_card_balance_dashboard", "card_center_second_x_card_balance_dashboard", "card_center_third_x_card_balance_dashboard" and "null_value"
    And User click "dashboard_hamburger_icon"
    And User swipe down until found "dashboard_menu"
    And User wait 5 seconds 
    Then User check total "dashboard_wealth_widget_total_card_balance" balance

  @android @uidatabound
  Scenario:JENI1904-C67778-[Functionality] Verify Saving Balance: 1 flexisaver >0, x number of dreamsaver >0 and x number of maxisaver>0
    Given User is on save it page in English language with "dashboard_with_all_balance_account"
    When User check balances for "save_it_maxi_saver_balance", "save_it_dream_saver_balance", "null_value", "null_value" and "null_value"
    And User click "dashboard_hamburger_icon"
    And User swipe down until found "dashboard_menu"
    And User click "dashboard_menu"
    Then User check total "dashboard_wealth_widget_total_save_it_balance" balance

  @android @uidatabound
  Scenario:JENI1904-C67779-[Functionality] Verify Saving Balance: 1 flexisaver >0, x number of dreamsaver >0 and maxisaver=0
    Given User is on save it page in English language with "save_it_no_balance_for_maxi_saver"
    When User check balances for "save_it_maxi_saver_balance", "save_it_dream_saver_balance", "null_value", "null_value" and "null_value"
    And User click "dashboard_hamburger_icon"
    And User swipe down until found "dashboard_menu"
    And User click "dashboard_menu"
    Then User check total "dashboard_wealth_widget_total_save_it_balance" balance

  @android @uidatabound
  Scenario:JENI1904-C67780-[Functionality] Verify Saving Balance: 1 flexisaver >0, dreamsaver=0 and x number of maxisaver>0
    Given User is on save it page in English language with "dashboard_with_flexi_maxi_account"
    When User check balances for "save_it_maxi_saver_balance", "save_it_dream_saver_balance", "null_value", "null_value" and "null_value"
    And User click "dashboard_hamburger_icon"
    And User swipe down until found "dashboard_menu"
    And User click "dashboard_menu"
    Then User check total "dashboard_wealth_widget_total_save_it_balance" balance

  @android @uidatabound
  Scenario:JENI1904-C67781-[Functionality] Verify Saving Balance: flexisaver =0, x number of dreamsaver >0 and x number of maxisaver>0
    Given User is on save it page in English language with "save_it_no_balance_for_dream_flexi_saver"
    When User check balances for "save_it_maxi_saver_balance", "save_it_dream_saver_balance", "null_value", "null_value" and "null_value"
    And User click "dashboard_hamburger_icon"
    And User swipe down until found "dashboard_menu"
    And User click "dashboard_menu"
    Then User check total "dashboard_wealth_widget_total_save_it_balance" balance

  @android @uidatabound
  Scenario:JENI1904-C67782-[Functionality] Verify Saving Balance: 1 flexisaver >0, dreamsaver =0 and maxisaver =0
    Given User is on save it page in English language with "dashboard_with_only_flexi_account"
    When User check balances for "save_it_flexi_saver_balance", "null_value", "null_value", "null_value" and "null_value"
    And User click "dashboard_hamburger_icon"
    And User swipe down until found "dashboard_menu"
    And User click "dashboard_menu"
    Then User check total "dashboard_wealth_widget_total_save_it_balance" balance

  @android @uidatabound
  Scenario:JENI1904-C67783-[Functionality] Verify Saving Balance: flexisaver =0, x number of dreamsaver >0 and maxisaver =0
    Given User is on save it page in English language with "dashboard_with_only_dream_account"
    When User check balances for "save_it_maxi_saver_balance", "save_it_dream_saver_balance", "null_value", "null_value" and "null_value"
    And User click "dashboard_hamburger_icon"
    And User swipe down until found "dashboard_menu"
    And User click "dashboard_menu"
    Then User check total "dashboard_wealth_widget_total_save_it_balance" balance

  @android @uidatabound
  Scenario:JENI1904-C67784-[Functionality] Verify Saving Balance: flexisaver =0, dreamsaver =0 and x number of maxisaver >0
    Given User is on save it page in English language with "dashboard_with_only_maxi_account"
    When User check balances for "save_it_maxi_saver_balance", "save_it_dream_saver_balance", "null_value", "null_value" and "null_value"
    And User click "dashboard_hamburger_icon"
    And User swipe down until found "dashboard_menu"
    And User click "dashboard_menu"
    Then User check total "dashboard_wealth_widget_total_save_it_balance" balance

  @android @uidatabound
  Scenario:JENI1904-C67785-[Functionality] Verify Saving Balance: flexisaver =0, dreamsaver =0 and maxisaver =0
    Given User is on save it page in English language with "dashboard_with_no_saving_balance_account"
    When User check balances for "save_it_maxi_saver_balance", "save_it_dream_saver_balance", "null_value", "null_value" and "null_value"
    And User click "dashboard_hamburger_icon"
    And User swipe down until found "dashboard_menu"
    And User click "dashboard_menu"
    Then User check total "dashboard_wealth_widget_total_save_it_balance" balance

  @android @uispecific
  Scenario:JENI1904-C67786-[Functionality] Verify Saving Balance: Error returns when retrieving Saving Balance from API
    Given User is on dashboard page in English language with "save_it_all_have_balance"
    When User turn off network connection for data and wifi
    Then User expect "dashboard_connection_loss_notification" equal with "connection_loss_notification"
    And User turn on network connection for data and wifi    

  @android @ios @uidatabound
  Scenario:JENI1904-C67787-[Functionality] Verify Total Balance: Active Balance>0, Card Balance >0 and Saving Balance >0
    Given User is on dashboard page in English language with "dashboard_with_all_balance_account"
    When User check balances for "dashboard_wealth_widget_total_save_it_balance", "dashboard_wealth_widget_total_active_balance", "dashboard_wealth_widget_total_card_balance", "null_value" and "null_value"
    Then User check total "dashboard_wealth_widget_total_balance" balance  

  @android @uidatabound
  Scenario:JENI1904-C67788-[Functionality] Verify Total Balance: Active Balance>0, Card Balance >0 and Saving Balance =0
    Given User is on dashboard page in English language with "dashboard_with_no_saving_balance_account"
    When User check balances for "dashboard_wealth_widget_total_save_it_balance", "dashboard_wealth_widget_total_active_balance", "dashboard_wealth_widget_total_card_balance", "null_value" and "null_value"
    Then User check total "dashboard_wealth_widget_total_balance" balance 

  @android @ios @uidatabound
  Scenario:JENI1904-C67789-[Functionality] Verify Total Balance: Active Balance>0, Card Balance =0 and Saving Balance >0
    Given User is on dashboard page in English language with "dashboard_with_no_card_balance_account"
    When User check balances for "dashboard_wealth_widget_total_save_it_balance", "dashboard_wealth_widget_total_active_balance", "dashboard_wealth_widget_total_card_balance", "null_value" and "null_value"
    Then User check total "dashboard_wealth_widget_total_balance" balance 

  @android @uidatabound
  Scenario:JENI1904-C67790-[Functionality] Verify Total Balance: Active Balance=0, Card Balance >0 and Saving Balance >0
    Given User is on dashboard page in English language with "dashboard_with_no_active_balance_account"
    When User check balances for "dashboard_wealth_widget_total_save_it_balance", "dashboard_wealth_widget_total_active_balance", "dashboard_wealth_widget_total_card_balance", "null_value" and "null_value"
    Then User check total "dashboard_wealth_widget_total_balance" balance 

  @android @uidatabound
  Scenario:JENI1904-C67791-[Functionality] Verify Total Balance: Active Balance>0, Card Balance =0 and Saving Balance =0
    Given User is on dashboard page in English language with "dashboard_with_zero_balance_account"
    When User check balances for "dashboard_wealth_widget_total_save_it_balance", "dashboard_wealth_widget_total_active_balance", "dashboard_wealth_widget_total_card_balance", "null_value" and "null_value"
    Then User check total "dashboard_wealth_widget_total_save_it_balance" balance  

  @android @uidatabound
  Scenario:JENI1904-C67792-[Functionality] Verify Total Balance: Active Balance=0, Card Balance >0 and Saving Balance =0
    Given User is on dashboard page in English language with "card_center_temporary_block_m_card_cif"
    When User check balances for "dashboard_wealth_widget_total_save_it_balance", "dashboard_wealth_widget_total_active_balance", "dashboard_wealth_widget_total_card_balance", "null_value" and "null_value"
    Then User check total "dashboard_wealth_widget_total_save_it_balance" balance 

  @android @uidatabound
  Scenario:JENI1904-C67793-[Functionality] Verify Total Balance: Active Balance=0, Card Balance =0 and Saving Balance >0
    Given User is on dashboard page in English language with "in_and_out_cif_no_active_balance_with_card_balance"
    When User check balances for "dashboard_wealth_widget_total_save_it_balance", "dashboard_wealth_widget_total_active_balance", "dashboard_wealth_widget_total_card_balance", "null_value" and "null_value"
    Then User check total "dashboard_wealth_widget_total_balance" balance 

  @android @uispecific
  Scenario:JENI1904-C67795-[Functionality] Verify Total Balance: Error returns when retrieving Total Balance from API
    Given User is on dashboard page in English language with "save_it_all_have_balance"
    When User turn off network connection for data and wifi
    Then User expect "dashboard_connection_loss_notification" equal with "connection_loss_notification"
    And User turn on network connection for data and wifi

  @android @uidatabound
  Scenario:JENI1904-C67799-[Functionality] Verify Active Balance: Active Balance > 0, user account status = "Inactive"
    Given User is on dashboard page in English language with "dashboard_with_balance_inactive_account"
    When User check balances for "dashboard_wealth_widget_total_save_it_balance", "dashboard_wealth_widget_total_active_balance", "dashboard_wealth_widget_total_card_balance", "null_value" and "null_value"
    Then User check total "dashboard_wealth_widget_total_save_it_balance" balance

  @android @uidatabound
  Scenario:JENI1904-C67800-[Functionality] Verify Active Balance: Active Balance > 0, user account status = "Inprogres"
    Given User is on dashboard page in English language with "dashboard_with_balance_inactive_account"
    When User check balances for "dashboard_wealth_widget_total_active_balance", "null_value", "null_value", "null_value" and "null_value"
    Then User check total "dashboard_wealth_widget_total_active_balance" balance

  @android @ios @uidatabound
  Scenario:JENI1904-C67801-[Functionality] Verify Active Balance: Active Balance > 0, m-Card is temporarily blocked
    Given User is on dashboard page in English language with "card_center_temporarily_blocked_with_balance"
    When User check balances for "dashboard_wealth_widget_total_active_balance", "null_value", "null_value", "null_value" and "null_value"
    Then User check total "dashboard_wealth_widget_total_active_balance" balance

  @android @uidatabound
  Scenario:JENI1904-C67802-[Functionality] Verify Active Balance: Active Balance > 0, m-Card is permanent blocked, new system-generated M-Card is "Inactive"
    Given User is on dashboard page in English language with "card_center_temporarily_blocked_with_balance"
    When User check balances for "dashboard_wealth_widget_total_active_balance", "null_value", "null_value", "null_value" and "null_value"
    Then User check total "dashboard_wealth_widget_total_active_balance" balance

  @android @uidatabound
  Scenario:JENI1904-C67803-[Functionality] Verify Active Balance: Active Balance > 0, m-Card is permanent blocked, new system-generated M-Card is "Active"
    Given User is on dashboard page in English language with "card_center_temporarily_blocked_with_balance"
    When User check balances for "dashboard_wealth_widget_total_active_balance", "null_value", "null_value", "null_value" and "null_value"
    Then User check total "dashboard_wealth_widget_total_active_balance" balance

  @android @uidatabound
  Scenario:JENI1904-C67809-[Functionality] Verify Card Balance: X-Card balance > 0, x-Card is temporarily blocked
    Given User is on dashboard page in English language with "card_center_temporarily_blocked_with_balance"

  @android @uidatabound
  Scenario:JENI1904-C67810-[Functionality] Verify Card Balance: X-Card balance > 0, x-Card is permanent blocked, new system-generated x_Card is "Inactive"
    Given User is on dashboard page in English language with "card_center_temporarily_blocked_with_balance"
    When User swipe up until found "card_center_title"
    Then "in_and_out_title" will be displayed
    And User expect there are 3 of "dashboard_in_and_out_widget_3_most_recent"

  Scenario:JENI1904-C67811-[Functionality] Verify Card Balance: X-Card balance > 0, x-Card is permanent blocked, new system-generated x_Card is "Active"
    Given User is on dashboard page in English language with "card_center_temporarily_blocked_with_balance"
    When User swipe up until found "card_center_title"
    Then "in_and_out_title" will be displayed
    And User expect there are 3 of "dashboard_in_and_out_widget_3_most_recent"

  @android @uidatabound
  Scenario:JENI1904-C67812-[Functionality] Verify Card Balance: e-Card balance > 0, e-Card is temporarily blocked
    Given User is on dashboard page in English language with "card_center_temporarily_blocked_with_balance"
    When User swipe up until found "card_center_title"
    Then "in_and_out_title" will be displayed
    And User expect there are 3 of "dashboard_in_and_out_widget_3_most_recent"
  
  @android @uidatabound
  Scenario:JENI1904-C67813-[Functionality] Verify Card Balance: e-Card balance > 0, e-Card is permanent blocked, new system-generated e_Card is "Active"
    Given User is on dashboard page in English language with "card_center_temporarily_blocked_with_balance"
    When User click "dashboard_hamburger_icon"
    And User swipe down until found "card_center_menu"
    When User click "card_center_menu"
    And User click "card_center_close_tutorial"
    When User check balances for "card_center_e_card_balance_dashboard", "card_center_first_x_card_balance_dashboard", "card_center_second_x_card_balance_dashboard", "card_center_third_x_card_balance_dashboard" and "null_value"
    And User click "dashboard_hamburger_icon"
    And User swipe down until found "dashboard_menu"
    And User wait 5 seconds 
    Then User check total "dashboard_wealth_widget_total_card_balance" balance

  #[JENI-1101] CR: Wealth Widget] Using ellipsis for showing large balances
  @android @ios @uidatabound
  Scenario:JENI1101-C47810-Verify Active Balance on Wealth Widget should allow for a minimum of 10 digits to be shown
    Given User is on dashboard page in English language with "dashboard_ten_digit_account"
    And User swipe up until found "dashboard_wealth_widget_total_active_balance"
    And User input balances "dashboard_wealth_widget_total_active_balance" into variable
    Then User check total "dashboard_wealth_widget_total_active_balance" balance

  @android @ios @uidatabound
  Scenario:JENI1101-C47811-Verify Savings Balance on Wealth Widget should allow for a minimum of 10 digits to be shown
    Given User is on dashboard page in English language with "dashboard_ten_digit_account"
    And User swipe up until found "dashboard_wealth_widget_total_save_it_balance"
    And User input balances "dashboard_wealth_widget_total_save_it_balance" into variable
    Then User check total "dashboard_wealth_widget_total_save_it_balance" balance

  @android @ios @uidatabound
  Scenario:JENI1101-C47812-Verify Cards Balance on Wealth Widget should allow for a minimum of 10 digits to be shown
    Given User is on dashboard page in English language with "dashboard_ten_digit_account"
    And User swipe up until found "dashboard_wealth_widget_total_card_balance"
    And User input balances "dashboard_wealth_widget_total_card_balance" into variable
    Then User check total "dashboard_wealth_widget_total_card_balance" balance

  @android @ios @uidatabound
  Scenario:JENI1101-C47816-Verify Total Balance on Wealth Widget
    Given User is on dashboard page in English language with "dashboard_ten_digit_account"
    And User swipe up until found "dashboard_wealth_widget_total_balance"
    And User input balances "dashboard_wealth_widget_total_balance" into variable
    Then User check total "dashboard_wealth_widget_total_balance" balance

  #[JENI-33] In & Out Widget - Placeholder content when no external transactions made
  @android @ios @uidatabound
  Scenario:JENI33-C17781-[Functionality] User has not done any external transactions while his account was inactive
    #User Account is inactive
    Given User is logged in with cif "in_and_out_no_trans"
    And User swipe up until found "save_it_widget_title"
    Then  "in_and_out_no_transaction_on_in_and_out_widget" will be displayed
    And "in_and_out_view_in_n_out_link_on_in_and_out_widget" will be displayed

  @android @ios @uidatabound
  Scenario:JENI33-C20629-[Functionality] User has not done any external transactions while his account was in-progress
    #User Account is in-progress
    Given User is logged in with cif "in_and_out_no_trans"
    And User swipe up until found "save_it_widget_title"
    Then  "in_and_out_no_transaction_on_in_and_out_widget" will be displayed
    And "in_and_out_view_in_n_out_link_on_in_and_out_widget" will be displayed

  @android @ios @uidatabound
  Scenario:JENI33-C17785-[Functionality] User has not done any external transactions while his account was active
    #User Account is active
    Given User is logged in with cif "in_and_out_no_trans"
    And User swipe up until found "save_it_widget_title"
    Then  "in_and_out_no_transaction_on_in_and_out_widget" will be displayed
    And "in_and_out_view_in_n_out_link_on_in_and_out_widget" will be displayed

  @android @ios @uidatabound
  Scenario:JENI33-C17864-[Functionality] User has not done any external transactions while his account was re-activated after being deactivated intentionally by admin
    #User Account is re-activated after being deactivated
    Given User is logged in with cif "in_and_out_no_trans"
    And User swipe up until found "save_it_widget_title"
    Then  "in_and_out_no_transaction_on_in_and_out_widget" will be displayed
    And "in_and_out_view_in_n_out_link_on_in_and_out_widget" will be displayed

  @android @ios @uidatabound
  Scenario:JENI33-C17830-[Functionality] Check "See In and Out" link in case NO transactions and user account was INACTIVE
    #User Account is inactive
    Given User is logged in with cif "in_and_out_no_trans"
    And User swipe up until found "save_it_widget_title"
    Then  "in_and_out_no_transaction_on_in_and_out_widget" will be displayed
    And "in_and_out_view_in_n_out_link_on_in_and_out_widget" will be displayed
    When User click "in_and_out_view_in_n_out_link_on_in_and_out_widget"
    And User check and click "tutorial_close" if exist
    Then "in_and_out_no_transaction_on_in_and_out_screen" will be displayed

  @android @ios @uidatabound
  Scenario:JENI33-C20627-[Functionality] Check "See In and Out" link in case NO transactions and user account was IN-PROGRESS
    #User Account is in-progress
    Given User is logged in with cif "in_and_out_no_trans"
    And User swipe up until found "save_it_widget_title"
    Then  "in_and_out_no_transaction_on_in_and_out_widget" will be displayed
    And "in_and_out_view_in_n_out_link_on_in_and_out_widget" will be displayed
    When User click "in_and_out_view_in_n_out_link_on_in_and_out_widget"
    And User check and click "tutorial_close" if exist
    Then "in_and_out_no_transaction_on_in_and_out_screen" will be displayed

  @android @ios @uidatabound
  Scenario:JENI33-C17837-[Functionality] Check "See In and Out" link in case NO transactions and user account was ACTIVE
    #User Account is active
    Given User is logged in with cif "in_and_out_no_trans"
    And User swipe up until found "save_it_widget_title"
    Then "in_and_out_no_transaction_on_in_and_out_widget" will be displayed
    And "in_and_out_view_in_n_out_link_on_in_and_out_widget" will be displayed
    When User click "in_and_out_view_in_n_out_link_on_in_and_out_widget"
    And User check and click "tutorial_close" if exist
    Then "in_and_out_no_transaction_on_in_and_out_screen" will be displayed

  #[JENI-311] In & Out Widget - Logo/Avatar shown on each listed transaction
  @android @endtoend @uidatabound
  Scenario:JENI311-C21065-[Functionality] Verify the **** contact's initials shown if it is FROM a **** contact whose name has only 1 word and doesn't upload his avatar
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_from_****_contact_single_word_name"
    Then "dashboard_widget_inandout_single_initial" will be displayed

  @continuous @android @endtoend @uidatabound
  Scenario:JENI311-C21067-[Functionality] Verify the **** contact's initials shown if it is FROM a **** contact whose name has only 2 words and doesn't upload his avatar
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_from_****_contact_double_words_name"
    Then "dashboard_widget_inandout_double_initial" will be displayed

  @continuous @android @endtoend @uidatabound
  Scenario:JENI311-C21068-[Functionality] Verify the **** contact's initials shown if it is FROM a **** contact whose name has more than 2 words and doesn't upload his avatar
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_from_****_contact_triple_words_name"
    Then "dashboard_widget_inandout_double_initial" will be displayed

  @continuous @android @uidatabound
  Scenario:JENI311-C21066-[Functionality] Verify the **** contact's initials shown if it is sent TO a **** contact whose name has only 1 word and doesn't upload his avatar.
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_to_****_contact_single_word_name"
    Then "dashboard_widget_inandout_single_initial" will be displayed

  @continuous @android @uidatabound
  Scenario:JENI311-C21069-[Functionality] Verify the **** contact's initials shown if it is sent TO a **** contact whose name has only 2 words and doesn't upload his avatar.
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_to_****_contact_double_word_name"
    Then "dashboard_widget_inandout_double_initial" will be displayed

  @continuous @android @uidatabound
  Scenario:JENI311-C21070-[Functionality] Verify the **** contact's initials shown if it is sent TO a **** contact whose name has > 2words and doesn't upload his avatar.
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_to_****_contact_triple_word_name"
    Then "dashboard_widget_inandout_double_initial" will be displayed

  @continuous @android @uidatabound
  Scenario:JENI311-C17940-[Functionality] Verify the narrative initials shown if it is an incoming transaction and narrative text has 1 word only.
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_incoming_single_word_name"
    Then "dashboard_widget_inandout_single_initial" will be displayed

  @continuous @android @endtoend @uidatabound
  Scenario:JENI311-C21071-[Functionality] Verify the narrative initials shown if it is an incoming transaction and narrative text has 2 words only.
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_incoming_double_word_name"
    Then "dashboard_widget_inandout_double_initial" will be displayed

  @continuous @android @endtoend @uidatabound
  Scenario:JENI311-C21072-[Functionality] Verify the narrative initials shown if it is an incoming transaction and narrative text has >2 words.
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_incoming_triple_word_name"
    Then "dashboard_widget_inandout_double_initial" will be displayed

  @android @endtoend @uidatabound
  Scenario:JENI311-C21073-[Functionality] Verify the narrative initials shown if it is an outgoing transaction and narrative text has 1 word only.
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_outgoing_triple_word_name"
    Then "dashboard_widget_inandout_single_initial" will be displayed

  @continuous @android @endtoend @uidatabound
  Scenario:JENI311-C17942-[Functionality] Verify the narrative initials shown if it is an incoming transaction and narrative text has 2 words only.
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_outgoing_triple_word_name"
    Then "dashboard_widget_inandout_double_initial" will be displayed

  @continuous @android @endtoend @uidatabound
  Scenario:JENI311-C21074-[Functionality] Verify the narrative initials shown if it is an outgoing transaction and narrative text has > 2 words
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_outgoing_triple_word_name"
    Then "dashboard_widget_inandout_double_initial" will be displayed

  #[JENI-1273] Integrate In & Out widget w/Transactions Microservice to show 3 recent outgoing/incoming external transactions
  @android @uidatabound
  Scenario:JENI1273-C67747-Verify there are only up to 3 most recent External Transaction are shown
    Given User is on dashboard page in English language with "dashboard_active_account"
    When User click "dashboard_hamburger_icon"
    And User swipe down until found "card_center_menu"
    When User click "card_center_menu"
    And User click "card_center_close_tutorial"
    When User check balances for "card_center_e_card_balance_dashboard", "card_center_first_x_card_balance_dashboard", "card_center_second_x_card_balance_dashboard", "card_center_third_x_card_balance_dashboard" and "null_value"
    And User click "dashboard_hamburger_icon"
    And User swipe down until found "dashboard_menu"
    And User wait 5 seconds 
    Then User check total "dashboard_wealth_widget_total_card_balance" balance 

  @android @uidatabound
  Scenario:JENI1273-C67753-Verify that up to 3 recent external transactions should be shown when user account is active
    # Use CIF No Active Account
    Given User is on dashboard page in English language with "in_and_out_dynamic"
    When User click "dashboard_hamburger_icon"
    And User swipe down until found "card_center_menu"
    When User click "card_center_menu"
    And User click "card_center_close_tutorial"
    When User check balances for "card_center_e_card_balance_dashboard", "card_center_first_x_card_balance_dashboard", "card_center_second_x_card_balance_dashboard", "card_center_third_x_card_balance_dashboard" and "null_value"
    And User click "dashboard_hamburger_icon"
    And User swipe down until found "dashboard_menu"
    And User wait 5 seconds 
    Then User check total "dashboard_wealth_widget_total_card_balance" balance

  @android @uidatabound
  Scenario:JENI1273-C67754-Verify that up to 3 recent external transactions should be shown when user account is inactive
    # Use CIF No Inactive Account
    Given User is on dashboard page in English language with "in_and_out_dynamic"
    When User click "dashboard_hamburger_icon"
    And User swipe down until found "card_center_menu"
    When User click "card_center_menu"
    And User click "card_center_close_tutorial"
    When User check balances for "card_center_e_card_balance_dashboard", "card_center_first_x_card_balance_dashboard", "card_center_second_x_card_balance_dashboard", "card_center_third_x_card_balance_dashboard" and "null_value"
    And User click "dashboard_hamburger_icon"
    And User swipe down until found "dashboard_menu"
    And User wait 5 seconds 
    Then User check total "dashboard_wealth_widget_total_card_balance" balance

  @android @uidatabound
  Scenario:JENI1273-C67755-Verify that up to 3 recent external transactions should be shown when user account is in progress
    # Use CIF No In progress Account
    Given User is on dashboard page in English language with "in_and_out_dynamic"
    When User click "dashboard_hamburger_icon"
    And User swipe down until found "card_center_menu"
    When User click "card_center_menu"
    And User click "card_center_close_tutorial"
    When User check balances for "card_center_e_card_balance_dashboard", "card_center_first_x_card_balance_dashboard", "card_center_second_x_card_balance_dashboard", "card_center_third_x_card_balance_dashboard" and "null_value"
    And User click "dashboard_hamburger_icon"
    And User swipe down until found "dashboard_menu"
    And User wait 5 seconds 
    Then User check total "dashboard_wealth_widget_total_card_balance" balance 

  @android @uidatabound
  Scenario:JENI1273-C67748-Verify that the app should show empty state if there's no transaction at all
    # Use CIF No with active account with no in & out transaction
    Given User is on dashboard page in English language with "dashboard_active_account"
    When User swipe up until found "card_center_title"
    Then "dashboard_view_in_and_out_widget" will be displayed
    And "dashboard_in_and_out_widget_emptystate" will be displayed
    And "dashboard_in_and_out_widget_emptystate_desc" will be displayed

  @android @uidatabound
  Scenario:JENI1273-C67749-Verify that the app should show empty state if there are no External Transaction existed
    # Use CIF No with active account with no External Transaction
    Given User is on dashboard page in English language with "dashboard_active_account"
    When User swipe up until found "card_center_title"
    Then "dashboard_view_in_and_out_widget" will be displayed
    And "dashboard_in_and_out_widget_emptystate" will be displayed
    And "dashboard_in_and_out_widget_emptystate_desc" will be displayed

    @android @uidatabound
  Scenario:JENI1273-C67757-When there's only 1 external transactions existed
    Given User is on dashboard page in English language with "dashboard_one_transaction_account"
    When User swipe up until found "card_center_title"
    Then "in_and_out_title" will be displayed 
    And "dashboard_in_and_out_widget_rohan" will be displayed
  
  @android @uidatabound
  Scenario:JENI1273-C67758-When there's only 2 external transactions existed
    Given User is on dashboard page in English language with "dashboard_two_transaction_account"
    When User swipe up until found "card_center_title"
    Then "in_and_out_title" will be displayed
    And "dashboard_in_and_out_widget_arya" will be displayed
    And "dashboard_in_and_out_widget_tuyen" will be displayed
  
  @android @uidatabound
  Scenario:JENI1273-C67759-Verify when there's only Internal transactions existed in transaction History
    # Use CIF No with active account with Internal Transaction
    Given User is on dashboard page in English language with "dashboard_inactive_account"
    When User swipe up until found "card_center_title"
    Then "dashboard_view_in_and_out_widget" will be displayed
    And "dashboard_in_and_out_widget_emptystate" will be displayed
    And "dashboard_in_and_out_widget_emptystate_desc" will be displayed

  #[JENI-20] Awards Widget - Widget layout
  @android @ios @uispecific
  Scenario:JENI20-C47842-Verify award widget is enabled for displaying on dashboard for Active User
    Given User is on dashboard page in English language with "dashboard_active_account"
    And User swipe up until found "awards_invite_someone_en"
    Then "dashboard_awards_title" will be displayed
    And "awards_invite_friend_en" will be displayed

  @android @ios @uispecific
  Scenario:JENI20-C47843-Verify award widget is enabled for displaying on dashboard for Inactive User
    Given User is on dashboard page in English language with "dashboard_inactive_account"
    And User swipe up until found "awards_invite_someone_en"
    Then "dashboard_awards_title" will be displayed
    And "awards_invite_friend_en" will be displayed

  @android @ios @uispecific
  Scenario:JENI20-C47844-Verify award widget is enabled for displaying on dashboard for In-progress User
    Given User is on dashboard page in English language with "dashboard_inprogress_account"
    And User swipe up until found "awards_invite_someone_en"
    Then "dashboard_awards_title" will be displayed
    And "awards_invite_friend_en" will be displayed

  @android @ios @uispecific
  Scenario:JENI20-C47845-Verify award widget is enabled for displaying on dashboard
    Given User is on dashboard page in English language with "dashboard_inprogress_account"
    And User swipe up until found "awards_invite_someone_en"
    Then "dashboard_awards_title" will be displayed
    And "awards_invite_friend_en" will be displayed
    And "awards_widget_invite_desc_en" will be displayed
    And "awards_invite_someone_en" will be displayed
    And User swipe up until found "awards_widget_free_transaction"
    And "awards_widget_free_transaction" will be displayed
    And "awards_widget_free_trans_your_quota_en" will be displayed
    And "awards_widget_free_trans_interbank_en" will be displayed
    And "awards_widget_free_trans_atm_cash_en" will be displayed