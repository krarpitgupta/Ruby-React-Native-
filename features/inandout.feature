@inandout @run  
Feature: In and Out Module

  #JENI1153
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

  @android @ios @uispecific
  Scenario:JENI1153-C17904-Check the arrow link on the top right of In & Out Widget
    Given User is on in and out page in English language with "in_and_out_static"
    And User check and click "tutorial_close" if exist
    Then "in_and_out_title" will be displayed

  @android @ios @uispecific
  Scenario:JENI1153-C47766-Verify that Rp/IDR is prefixed to the active balance to indicate currency name in Bahasa/English respectively
    Given User is on in and out page in English language with "in_and_out_static"
    And User check and click "tutorial_close" if exist
    Then "in_and_out_currency" will be displayed
  
  @android @uidatabound
  Scenario:JENI1153-C47765-[Functional] Verify that comma or period characters are used to indicate currency format in Bahasa/English
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User check and click "tutorial_close" if exist
    When User click "in_and_out_filter_search_loupe" until "in_and_out_filter_search_textfield" displayed
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_recipient_name_1"
    Then "in_and_out_result_comma" will be displayed

  #JENI1154
  @android @uidatabound @continuous
  Scenario:JENI1154-C47576-[Content] Verify content detail for each transactions listed: Transaction Narrative (System Defined) or **** Contact name
    When User click "in_and_out_detail_recipient_name_1_amount" until "in_and_out_detail_total" displayed
    Then User expect "in_and_out_history_ptbukalapak" equal with "in_and_out_search_recipient_name_1"

  @android @uidatabound @continuous
  Scenario:JENI1154-C47577-[Content] Verify content detail for each transactions listed: Transaction amount
    Then User expect "in_and_out_detail_ptbukalapak_amount" equal with "in_and_out_detail_recipient_name_1_amount"

  @android @uidatabound @continuous
  Scenario:JENI1154-C47581-[Content] Verify content detail for each transactions listed: Transaction Date with specified format
    Then User expect "in_and_out_detail_ptbukalapak_date_text" equal with "in_and_out_detail_recipient_name_1_date_text"

  #JENI1159
  @android @ios @uispecific
  Scenario:JENI1159-C67380-[Functionality] Verify 'DONE' button is enabled when user fill 'From' amount is less than 'To' amount
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_button"
    And User set filter for amount range from 999 to 912134566
    Then "in_and_out_filter_category" will be displayed
 
  @android @ios @uispecific
  Scenario:JENI1159-C67388-[Functionality] Verify 'DONE' button is disabled if 'From' and 'To' value are preset to the default value 0
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_button"
    And User click "in_and_out_amount_menu"
    Then User click "in_and_out_done_button" until "in_and_out_amount_from_texfield" displayed

  @android @ios @uispecific @continuous
  Scenario:JENI1159-C67382-[Functionality] Verify 'DONE' button is enabled if user has cleared an existing applied amount range using 'CLEAR' button
    And User fill "in_and_out_amount_from_texfield" with "in_and_out_amount_from"
    And User fill "in_and_out_amount_to_texfield" with "in_and_out_amount_to"
    And User click "in_and_out_clear_button"
    Then User click "in_and_out_done_button" until "in_and_out_filter_category" displayed

  @android @ios @uispecific
  Scenario:JENI1159-C67403-[Functionality] Clicking back button in the header after user inputs a valid amount range should not save the changes
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_button"
    And User click "in_and_out_amount_menu"
    And User fill "in_and_out_amount_from_texfield" with "in_and_out_amount_from"
    And User fill "in_and_out_amount_to_texfield" with "in_and_out_amount_to"
    And User click "back_button"
    Then User expect "in_and_out_amount_filter_text" doesn't exist

  @android @ios @uispecific 
  Scenario:JENI1159-C67406-[Functionality] Verify that 'From' and 'To' fields meet the desired requirements
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_button"
    And User click "in_and_out_amount_menu"
    Then User expect "in_and_out_amount_from_texfield" equal with "zero_value"
    And User expect "in_and_out_amount_to_texfield" equal with "zero_value"
    When User fill "in_and_out_amount_from_texfield" with "correct_cashtag_1"
    And User expect "in_and_out_amount_from_texfield" equal with "in_and_out_amount_range_zero" 
    Then User fill "in_and_out_amount_to_texfield" with "correct_cashtag_1"
    And User expect "in_and_out_amount_to_texfield" equal with "in_and_out_amount_range_zero"
    And User fill "in_and_out_amount_from_texfield" with "in_and_out_amount_range_overlimit"
    And User expect "in_and_out_amount_from_texfield" equal with 20 characters
    And User fill "in_and_out_amount_to_texfield" with "in_and_out_amount_range_overlimit"
    And User expect "in_and_out_amount_to_texfield" equal with 20 characters
    Then "in_and_out_fieldtext_comma" will be displayed
    Then User click "in_and_out_amount_from_texfield"
    And User hide the keyboard
    Then User click "in_and_out_amount_to_texfield"
    And User hide the keyboard

  @android @ios @uispecific
  Scenario:JENI1159-C67408-[Functionality] Verify that 'CLEAR' button is enabled only if user input valid amount range
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_button"
    And User click "in_and_out_amount_menu"
    And User fill "in_and_out_amount_from_texfield" with "in_and_out_amount_from"
    And User fill "in_and_out_amount_to_texfield" with "in_and_out_amount_to"    
    And User click "in_and_out_clear_button"
    Then User expect "in_and_out_amount_from_texfield" equal with "in_and_out_amount_range_zero"  
    Then User expect "in_and_out_amount_to_texfield" equal with "in_and_out_amount_range_zero" 

  @android @ios @uispecific @continuous
  Scenario:JENI1159-C67409-[Functionality] Clicking 'CLEAR' button should remove the added value in 'From' and 'To' fields
    Then User expect "in_and_out_amount_from_texfield" equal with "in_and_out_amount_range_zero"  
    Then User expect "in_and_out_amount_to_texfield" equal with "in_and_out_amount_range_zero" 

  @android @ios @uispecific
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

  @android @ios @uispecific
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
    Then User expect "in_and_out_amount_filter_text" equal with "in_and_out_filter_amount_range_from_111_to_111111111"

  @android @uispecific
  Scenario:JENI1159-C67440-[Functionality] Remove an existing amount range filter applied
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_button"
    And User click "in_and_out_amount_menu"

    When User fill "in_and_out_amount_from_texfield" with "in_and_out_amount_from"
    And User fill "in_and_out_amount_to_texfield" with "in_and_out_amount_to"    
    And User click "in_and_out_clear_button"
    And User click "in_and_out_done_button"
    Then User expect "in_and_out_number_active_filter" equal with "in_and_out_filter_counter_zero"
    And User expect "in_and_out_amount_filter_text" doesn't exist
    
    When User click "in_and_out_apply_filter_button"
    Then User expect "in_and_out_filter_bubble" doesn't exist

  #JENI1156
  @android @uidatabound
  Scenario:JENI1156-C47599-Application should view more transactions when user scroll down deeper at the bottom of transaction list
    Given User is on in and out page in English language with "in_and_out_static"   
    Then User expect "in_and_out_history_number_transaction_label" equal with "in_and_out_number_transaction_10_27"

    When User swipe up until found "in_and_out_history_cashwith_element"
    Then User expect "in_and_out_history_number_transaction_label" equal with "in_and_out_number_transaction_20_27"

  @android @uidatabound
  Scenario:JENI1156-C48021-Verify the default number of transactions being currently shown out of the total transactions
    Given User is on in and out page in English language with "in_and_out_static"
    Then User expect "in_and_out_history_number_transaction_label" equal with "in_and_out_number_transaction_10_27"

  @android @uidatabound
  Scenario:JENI1156-C48022-Verify the actual number of transactions being displayed out of total transactions
    Given User is on in and out page in English language with "in_and_out_dynamic"
    Then User expect there are 10 of "in_and_out_request_account"

  @android @uidatabound
  Scenario:JENI1156-C48023-Verify the actual number of total transactions
    Given User is on in and out page in English language with "in_and_out_dynamic"

    When User swipe up until found "in_and_out_history_month_year_label_3"
    Then User expect "in_and_out_history_number_transaction_label" equal with "in_and_out_number_transaction_27_27"

  #JENI1538
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

  #JENI1310/JENI1622
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

  #JENI1154
  @android @uidatabound
  Scenario:JENI1154-C47551-Verify that transactions are listed with most recent ones showing on top
    Given User is on in and out page in English language with "in_and_out_dynamic"
    Then "in_and_out_history_month_year_label_1" will be displayed

  @android @uidatabound
  Scenario:JENI1154-C47553-Verify that only up to 10 transactions should be displayed as default  
    Given User is on in and out page in English language with "in_and_out_dynamic"
    Then "in_and_out_history_number_transaction_show_ten_label" will be displayed

  @android @uidatabound
  Scenario:JENI1154-C47558-Verify **** contact picture on a listed transaction 
    Given User is on in and out page in English language with "in_and_out_dynamic"
    Then User expect there are 3 of "in_and_out_history_profil_picture"

  @android @uidatabound
  Scenario:JENI1154-C47556-Verify that each transaction listed can be tapped upon to view details
  Given User is on in and out page in English language with "in_and_out_dynamic"
    And User wait 4 seconds
    And User click "in_and_out_history_transaction_value"
    Then "in_and_out_detail_amount" will be displayed
    And "in_and_out_detail_transaction" will be displayed
    And "in_and_out_detail_total" will be displayed
    And "in_and_out_detail_notes" will be displayed

  @android @uidatabound
  Scenario:JENI1154-C47552-Verify that transactions should be grouped together by month/year name
    Given User is on in and out page in English language with "in_and_out_dynamic"
    Then "in_and_out_history_month_year_label_1" will be displayed
    And "in_and_out_history_month_year_label_2" will be displayed

    When User swipe up until found "in_and_out_history_month_year_label_3"
    Then "in_and_out_history_month_year_label_3" will be displayed 

  # JENI1155
  @android @uidatabound
  Scenario:JENI1155-C47611-Verify that up to 10 transactions are retrieved and shown at a time 
    Given User is on in and out page in English language with "in_and_out_dynamic"
    
    When User click "in_and_out_history_toggle_off"
    Then "in_and_out_history_number_transaction_show_ten_label" will be displayed

  @android @uidatabound
  Scenario:JENI1155-C47612-Verify that user can scroll down to view more transactions
    Given User is on in and out page in English language with "in_and_out_dynamic"
    Then User expect "in_and_out_history_number_transaction_label" equal with "in_and_out_number_transaction_10_11"

    When User click "in_and_out_history_toggle_off"
    Then User expect "in_and_out_history_number_transaction_label" equal with "in_and_out_number_transaction_10_23"

    When User swipe up until found "in_and_out_history_month_year_text_5"
    Then User expect "in_and_out_history_number_transaction_label" equal with "in_and_out_number_transaction_20_23"

  @android @uidatabound
  Scenario:JENI1155-C47610-[Internal transaction is hidden] verify that the list of transactions being shown should refresh to include external as well as internal transactions when user click the toggle to view internal transactions
    Given User is on in and out page in English language with "in_and_out_dynamic"
    
    When User click "in_and_out_history_toggle_off"
    Then User expect there are 2 of "in_and_out_history_flexi_saving"

  @android @uidatabound
  Scenario:JENI1155-C47613-[Internal transaction is displayed] verify that the app should refresh and hide internal transactions that have made when user click the toggle to hide internal transactions
    Given User is on in and out page in English language with "in_and_out_dynamic"
    
    When User click "in_and_out_history_toggle_off"
    Then User expect there are 2 of "in_and_out_history_flexi_saving"
    When User click "in_and_out_history_toggle_on"
    Then User expect "in_and_out_history_flexi_saving" doesn't exist

  #JENI1152
  @android @ios @uispecific
  Scenario:JENI1152-C48305-Verify search field input character limit
    Given User is on in and out page in English language with "in_and_out_static"
    And User click "in_and_out_filter_search_loupe"
    Then User fill "in_and_out_filter_search_textfield" with "in_and_out_search_overlimit"
    And User expect "in_and_out_filter_search_textfield" equal with 100 characters

  @android @uidatabound
  Scenario:JENI1152-C48306-Verify that Search should be dynamic and should not require user to press enter/done/go on the keyboard
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_cash"
    Then User expect there are 2 of "in_and_out_history_cashwith_element"

  @android @uidatabound
  Scenario:JENI1152-C48307-Verify that search should NOT be triggered when user has typed less than 3 characters and paused typing
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User click "in_and_out_filter_search_loupe"

    When User fill "in_and_out_filter_search_textfield" with "in_and_out_search_c"
    Then "in_and_out_history_month_year_label_1" will be displayed
    
    When User click "in_and_out_filter_search_cancel"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_ca"
    Then "in_and_out_history_month_year_label_1" will be displayed

  @android @ios @uispecific
  Scenario:JENI1152-C48313-Verify that search field should appear when user clicks on the magnifying glass icon
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User click "in_and_out_filter_search_loupe"
    Then "in_and_out_filter_search_textfield" will be displayed

  @android @ios @uispecific
  Scenario:JENI1152-C48310-Verify that before the user starts typing a search query in the input field, there must be a default text shown e.g. Search
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User click "in_and_out_filter_search_loupe"
    Then User expect "in_and_out_filter_search_textfield" equal with "in_and_out_filter_text"

  @android @ios @uispecific
  Scenario:JENI1152-C48311-Verify default text shown (Search) should disappear when user type something in search field
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User click "in_and_out_filter_search_loupe"
    Then User expect "in_and_out_filter_search_textfield" equal with "in_and_out_filter_text"

    When User fill "in_and_out_filter_search_textfield" with "in_and_out_search_c"
    Then User expect "in_and_out_filter_search_textfield_default" doesn't exist

  @android @ios @uispecific
  Scenario:JENI1152-C48312-Verify that after user cleared search input field, the default text should be shown again
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User click "in_and_out_filter_search_loupe"
    When User fill "in_and_out_filter_search_textfield" with "in_and_out_search_c"
    Then User expect "in_and_out_filter_search_textfield_default" doesn't exist
    And User click "in_and_out_filter_search_clear"
    Then User expect "in_and_out_filter_search_textfield" equal with "in_and_out_filter_text"

  @android @ios @uispecific
  Scenario:JENI1152-C48314-There should be a 'Cancel' button once search field appeared
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User click "in_and_out_filter_search_loupe"
    Then "in_and_out_filter_search_cancel" will be displayed  

  @android @ios @uispecific
  Scenario:JENI1152-C48315-Verify that while the search input field is being shown, the magnifying glass icon should not be shown
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User click "in_and_out_filter_search_loupe"
    
    When User fill "in_and_out_filter_search_textfield" with "in_and_out_search_c"
    Then User expect "in_and_out_filter_search_loupe" doesn't exist 

  @android @ios @uispecific
  Scenario:JENI1152-C48316-Verify that Clicking the cancel button should close the search input field and begin showing the magnifying glass icon again
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User click "in_and_out_filter_search_loupe"
    
    When User fill "in_and_out_filter_search_textfield" with "in_and_out_search_c"
    And User click "in_and_out_filter_search_clear"
    And User click "in_and_out_filter_search_cancel"
    Then "in_and_out_filter_search_loupe" will be displayed 

  @android @ios @uispecific
  Scenario:JENI1152-C48317-Verify that 'Cancel' button should only be shown while a user has NOT input any search text
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User click "in_and_out_filter_search_loupe"
    Then "in_and_out_filter_search_cancel" will be displayed

  @android @ios @uispecific
  Scenario:JENI1152-C48318-Verify that If the user taps/clicks on the magnifying glass icon again, the search input field shown should not have previously typed string
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User click "in_and_out_filter_search_loupe"
    
    When User fill "in_and_out_filter_search_textfield" with "in_and_out_search_cashtag"
    And User click "in_and_out_filter_search_clear"
    And User click "in_and_out_filter_search_cancel"

    When User click "in_and_out_filter_search_loupe"
    Then User expect "in_and_out_search_cashtag" doesn't exist 
    And User expect "in_and_out_filter_search_textfield" equal with "in_and_out_filter_text"

  @android @ios @uispecific
  Scenario:JENI1152-C48319-Verify that the app should Display a cross icon in the search field as soon as the user begin typing a search query
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User click "in_and_out_filter_search_loupe"
    
    When User fill "in_and_out_filter_search_textfield" with "in_and_out_search_c"
    And "in_and_out_filter_search_clear" will be displayed

  @android @ios @uispecific
  Scenario:JENI1152-C48320-Verify that clicking the 'cross' icon should completely delete the typed text and be replaced by 'Cancel' button
    Given User is on in and out page in English language with "in_and_out_static"
    And User click "in_and_out_filter_search_loupe"
    
    When User fill "in_and_out_filter_search_textfield" with "in_and_out_search_c"
    And User click "in_and_out_filter_search_clear"
    Then User expect "in_and_out_filter_search_textfield" equal with "in_and_out_filter_text"
    And "in_and_out_filter_search_cancel" will be displayed

  @android @uidatabound
  Scenario:JENI1152-C48324-Verify that up to 10 transaction search result should be displayed at a time (user can scroll down and load 10 more each time - lazy loader)
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User click "in_and_out_filter_search_loupe"
    
    When User fill "in_and_out_filter_search_textfield" with "in_and_out_search_win"
    Then User expect there are 10 of "in_and_out_history_winter"

  @android @uidatabound
  Scenario:JENI1152-C48327-Verify that Narrative text received OR Name of contact should be searchable
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User click "in_and_out_filter_search_loupe"
    
    When User fill "in_and_out_filter_search_textfield" with "in_and_out_search_arbi"
    Then User expect there are 2 of "in_and_out_history_arbiseptian"
    When User fill "in_and_out_filter_search_textfield" with "in_and_out_search_bukalapak"
    Then User expect there are 2 of "in_and_out_history_ptbukalapak"

  @android @uidatabound
  Scenario:JENI1152-C48325-Verify that search result should be grouped by month/year (most recent to oldest)
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User click "in_and_out_filter_search_loupe"

    When User fill "in_and_out_filter_search_textfield" with "in_and_out_search_win"
    Then "in_and_out_history_month_year_label_1" will be displayed
    And "in_and_out_history_month_year_label_2" will be displayed
  
  #JENI1646
  @android @ios @uispecific
  Scenario:JENI1646-C48301-Verify that what user inputted in search bar will be displayed as well between two ' sign
    Given User is on in and out page in English language with "in_and_out_static"
    And User click "in_and_out_filter_search_loupe"

    When User fill "in_and_out_filter_search_textfield" with 123
    Then "in_and_out_history_no_matches" will be displayed
    And "in_and_out_result_aphostrope" will be displayed

  #JENI1650
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

  #JENI1649
  @android @ios @uispecific
  Scenario:JENI649-C48080-User should be shown the empty state message in English/Bahasa based on their language preference
    Given User is on in and out upcoming tab in English language with "in_and_out_static"
    And User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with 123
    Then "in_and_out_upcoming_no_matches" will be displayed

    When User click "in_and_out_filter_search_clear"
    And User click "in_and_out_filter_search_cancel"
    When User change language to "language_id"
    And User click "dashboard_hamburger_icon"
    And User click "in_and_out_menu"
    And User click "in_and_out_upcoming_tab_id"
    
    When User click "in_and_out_filter_search_loupe" 
    And User fill "in_and_out_filter_search_textfield_id" with 123
    Then "in_and_out_upcoming_no_matches_id" will be displayed

  @android @ios @uispecific
  Scenario:JENI649-C48081-User should be shown the empty state message when there are no upcoming transactions 
    Given User is on in and out upcoming tab in English language with "in_and_out_static"
    And User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with 123
    Then "in_and_out_upcoming_no_matches" will be displayed

  @android @uidatabound
  Scenario:JENI649-C48082-If there is at least 1 transaction in the upcoming, the empty state message should not be shown
    Given User is on in and out upcoming tab in English language with "in_and_out_static"
    And User click "in_and_out_filter_search_loupe" until "in_and_out_filter_search_textfield" displayed
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_cashtag"
    Then User expect "in_and_out_upcoming_no_matches" doesn't exist
    And "in_and_out_history_number_transaction_label" will be displayed

  #JENI1156
  @android @ios @uispecific
  Scenario:JENI1156-C48300-[Functional] Verify that search results applies for all tabs (History, Upcoming, Request)
    Given User is on in and out page in English language with "in_and_out_static"
    And User click "in_and_out_filter_search_loupe" until "in_and_out_filter_search_textfield" displayed
    And User fill "in_and_out_filter_search_textfield" with 151425
    Then "in_and_out_history_no_matches" will be displayed

  #JENI1159
  @android @ios @uispecific
  Scenario:JENI1159-C70635-20 digits of number can be the input for Amount Range Filter
    Given User is on in and out page in English language with "in_and_out_static"
    When User click "in_and_out_filter_button"
    And User click "in_and_out_amount_menu"
    Then "filter_amount_range_page_title" will be displayed

    When User fill "in_and_out_amount_from_texfield" with "in_and_out_amount_range_overlimit" 
    Then User expect "in_and_out_amount_from_texfield" equal with 20 characters
    When User fill "in_and_out_amount_to_texfield" with "in_and_out_amount_range_overlimit" 
    Then User expect "in_and_out_amount_to_texfield" equal with 20 characters

  @android @ios @uidatabound
  Scenario:JENI1159-C70645-Verify maximum search range can be handled by system
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_button"
    And User click "in_and_out_amount_menu" 
    Then "filter_amount_range_page_title" will be displayed

    When User fill "in_and_out_amount_from_texfield" with "in_and_out_amount_range_zero" 
    And User fill "in_and_out_amount_to_texfield" with "in_and_out_amount_range_max"
    And User click "in_and_out_done_button"
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_history_tab" will be displayed
    #Will be added when data provided

  @android @uidatabound
  Scenario:JENI1161-C47603-[Functionality] verify that only up to 10 more transactions are retrieved at a time  
    Given User is on in and out page in English language with "in_and_out_dynamic"
    Then "in_and_out_history_number_transaction_show_ten_label" will be displayed

  @android @uidatabound
  Scenario:JENI1653-C48039-[Functionality] Clicking 'Done' when 1 or more transaction is selected should take the user to landing page of filters
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_button"
    And User set filter for amount range from 111 to 1111111
    And User set filter for category to all
    And User set filter for time range to this week
    And User set filter for transaction type to all
    Then "in_and_out_transaction_menu" will be displayed

  @android @uidatabound
  Scenario:JENI1653-C48040-[Functionality] If 1 or more transaction types have been selected, the landing page should indicate this number next to the filter option 'Transaction Type'
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_button"
    And User set filter for amount range from 111 to 1111111
    And User set filter for transaction type to all
    Then "in_and_out_transaction_filter" will be displayed

  @android @uidatabound @continuous
  Scenario:JENI1653-C48038-[Functionality] Verify that Clicking 'Clear' when 1 or more listed transaction type(s) have been selected should cause them become unselected
    And User click "in_and_out_transaction_menu"    
    When User click "in_and_out_clear_button"
    Then User expect "in_and_out_selected_mark" doesn't exist

  @android @uidatabound @continuous  
  Scenario:JENI1650-C48047-[Functionality] Verify If all applied transaction types are unselected and changes saved by user, the 'Active filters' count should be reduced by 1
    When User click "in_and_out_done_button"
    Then "in_and_out_number_active_filter_1" will be displayed

  #JENI1652
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

  @android @uidatabound
  Scenario:JENI1653-C48046-[Functionality] Verify that Application of transaction filters should increment the 'Active filters' on landing page by 1
    Given User is on in and out page in English language with "in_and_out_static"
    When User click "in_and_out_filter_button"
    And User set filter for transaction type to all
    Then "in_and_out_number_active_filter_1" will be displayed


  @android @uidatabound @continuous
  Scenario:JENI1653-C48042-[Functionality] Clicking 'APPLY FILTER' when 1 or more transaction type(s) have been selected should Take user back to the In & Out tab which was opened before applying transaction type filter   
    When User click "in_and_out_apply_filter_button"
    Then "in_and_out_page" will be displayed


  @android @uidatabound
  Scenario:JENI1653-C48045-[Functionality] Clicking back button should not save any changes to existing transaction type filter or selection of new filter and take user back to landing page
    Given User is on in and out page in English language with "in_and_out_static"
    And User set the filters
    When User click "back_button"
    Then "in_and_out_page" will be displayed
    And User expect "in_and_out_filter_bubble" doesn't exist

  # JENI1372
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

  # JENI1651
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

  # JENI1653
  @android @ios @uidatabound
  Scenario:JENI1653-C48032-[Functionality] Verify that the filter should show all 'n' transaction types to select form 
    Given User is on in and out page in English language with "in_and_out_static"
    And User wait "card_center_loading_screen" will be gone
    And User click "in_and_out_filter_button"  
    And User click "in_and_out_transaction_menu"
    Then "in_and_out_filter_transaction_type_bank_charge" will be displayed
    Then "in_and_out_filter_transaction_type_bill_payment" will be displayed
    Then "in_and_out_filter_transaction_type_card_refund" will be displayed
    Then "in_and_out_filter_transaction_type_cash_withdrawal" will be displayed
    Then "in_and_out_filter_transaction_type_fee_payment" will be displayed
    Then "in_and_out_filter_transaction_type_incoming_cash" will be displayed
    Then "in_and_out_filter_transaction_type_incoming_transfer" will be displayed
    Then "in_and_out_filter_transaction_type_interest" will be displayed
    Then "in_and_out_filter_transaction_type_payment_with_card" will be displayed
    And User swipe up until found "tax_on_interest_label"
    Then "in_and_out_filter_transaction_type_loan_installment" will be displayed
    Then "in_and_out_filter_transaction_type_mobile_top_up" will be displayed
    Then "in_and_out_filter_transaction_type_outgoing_transfer" will be displayed
    Then "in_and_out_filter_transaction_type_saving_withdrawal" will be displayed
    Then "in_and_out_filter_transaction_type_top_up_savings_balance" will be displayed
    Then "in_and_out_filter_transaction_type_tax_on_interest" will be displayed

  @android @ios @uispecific
  Scenario:JENI1653-C48033-[Content] Verify there should be a static text to indicate that a user can select more than 1 transaction
    Given User is on in and out page in English language with "in_and_out_static"
    And User wait "card_center_loading_screen" will be gone
    And User click "in_and_out_filter_button"
    And User click "in_and_out_transaction_menu"
    Then "in_and_out_filter_select_more_than_one" will be displayed

  @android @uidatabound
  Scenario:JENI1653-C48034-[Functionality] Verify that 'SELECT ALL' button should select all listed transaction types 
    Given User is on in and out page in English language with "in_and_out_static"
    And User wait "card_center_loading_screen" will be gone
    And User click "in_and_out_filter_button"
    And User click "in_and_out_transaction_menu"
    And User click "filter_select_all"
    And User expect there are 10 of "in_and_out_filter_selected_filter"
    And User swipe up until found "tax_on_interest_label"
    And User expect there are 10 of "in_and_out_filter_selected_filter"
    And User click "in_and_out_filter_done"
    Then User expect "in_and_out_filter_select_all_type" equal with "in_and_out_filter_selected_all_transaction_type"

  @android @uidatabound
  Scenario:JENI1653-C48044-[Content] Content shown should be based on language preference set by user (English/Bahasa)
    Given User is on in and out page in English language with "in_and_out_static"
    And User wait "card_center_loading_screen" will be gone
    And User click "in_and_out_filter_button"
    And User click "in_and_out_transaction_menu"
    Then User expect "filter_select_all" equal with "in_and_out_filter_select_all_label"
    Then User expect "in_and_out_filter_done" equal with "in_and_out_filter_done_label"
    Then User expect "in_and_out_filter_transaction_type_bank_charge" equal with "in_and_out_filter_category_bank_charge_label"
    Then User expect "in_and_out_filter_transaction_type_bill_payment" equal with "in_and_out_filter_category_bill_payment_label"
 
  # JENI2016
  @android @uidatabound
  Scenario:JENI2016-C67708-Verify filters function   
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_button"
    And User click "in_and_out_filter_category"
    And User click "in_and_out_filter_category_children"
    And User click "in_and_out_filter_done"
    And User click "in_and_out_filter_apply_button"
    Then User expect there are 2 of "in_and_out_history_children"
  
  @android @uidatabound
  Scenario:JENI2016-C67709-Verify Search function
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_cash"
    Then User expect there are 2 of "in_and_out_history_cashwith_element"
  
  @android @uidatabound
  Scenario:JENI2016-C67710-Verify transaction details
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User click "in_and_out_history_transaction_value"
    Then "in_and_out_detail_amount" will be displayed
    And "in_and_out_detail_transaction" will be displayed
    And "in_and_out_detail_total" will be displayed
    And "in_and_out_detail_notes" will be displayed

  # JENI2020
  @android @uidatabound
  Scenario:JENI2020-C67629-Verify that transaction amount format and the content should be based on language selection when the toggle is on/off
    Given User is on in and out page in English language with "in_and_out_dynamic"
    Then "in_and_out_title" will be displayed 
    And "in_and_out_currency" will be displayed
    And "in_and_out_history_number_transaction_label" will be displayed
    And "in_and_out_history_month_year_label_1" will be displayed
    And "in_and_out_history_transaction_value" will be displayed
  
  @android @uidatabound
  Scenario:JENI2020-C67630-Verify that the transactions listed chronologically when the toggle is on/off
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User click "in_and_out_history_toggle_off"
    Then "in_and_out_history_month_year_label_1" will be displayed
    And "in_and_out_history_month_year_label_2" will be displayed

    When User swipe up until found "in_and_out_history_month_year_label_3"
    Then "in_and_out_history_month_year_label_3" will be displayed

  @android @uidatabound
  Scenario:JENI2020-C67633-Verify numbers of transaction listed when the toggle is ON
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_history_toggle_off"
    Then "in_and_out_history_number_transaction_show_ten_label" will be displayed

  @android @uidatabound
  Scenario:JENI2020-C67634-Verify togle state when internal transaction is hidden/shown   
    Given User is on in and out page in English language with "in_and_out_dynamic"
    
    When User click "in_and_out_history_toggle_off"
    Then User expect there are 2 of "in_and_out_history_flexi_saving"
    When User click "in_and_out_history_toggle_on"
    Then User expect "in_and_out_history_flexi_saving" doesn't exist

  @android @uidatabound
  Scenario:JENI2020-C67635-Verify already existing filters when the toggle is switched ON/ OFF   
    Given User is on in and out page in English language with "in_and_out_dynamic"
    
    When User click "in_and_out_history_toggle_off"
    And User click "in_and_out_filter_button"
    And User click "in_and_out_filter_category"
    And User click "in_and_out_filter_category_children"
    And User click "in_and_out_filter_done"
    And User click "in_and_out_filter_apply_button"
    Then User expect there are 2 of "in_and_out_history_children"

  @android @uidatabound
  Scenario:JENI2020-C67638-Verify that internal transaction list should be hidden when user switch the toggle off   
    Given User is on in and out page in English language with "in_and_out_dynamic"    
    When User click "in_and_out_history_toggle_off"
    Then User expect there are 2 of "in_and_out_history_flexi_saving"

  @android @uidatabound
  Scenario:JENI2020-C67639-Verify numbers of transaction listed when the toggle is OFF
    Given User is on in and out page in English language with "in_and_out_dynamic"
    Then "in_and_out_history_number_transaction_show_ten_label" will be displayed

  @android @ios @uispecific
  Scenario:JENI1648-C67470-[Functionality] Verify that there should be an error message when no result found in searching requested transaction
    Given User is on in and out page in English language with "in_and_out_static"
    When User click "in_and_out_request_tab"
    And User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with 123
    And "in_and_out_request_no_matches" will be displayed

  @android @ios @uispecific
  Scenario:JENI1648-C67477-[Functionality] Verify search field input character limit for search requested transaction
    Given User is on in and out page in English language with "in_and_out_static"
    When User click "in_and_out_request_tab"
    And User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_overlimit_with_symbols" 
    And User expect "in_and_out_filter_search_textfield" equal with 100 characters

  @android @uidatabound
  Scenario:JENI1648-C67487-[Content] Verify default text shown (Search) should disappear when user type something in search field
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_request_tab"
    And User click "in_and_out_filter_search_loupe" until "in_and_out_filter_search_textfield" displayed
    Then "in_and_out_filter_search_textfield" will be displayed

  @android @uidatabound @continuous
  Scenario:JENI1648-C67487-[Content] Verify default text shown (Search) should disappear when user type something in search field
    Then "in_and_out_filter_search_cancel" will be displayed  
  
  @android @uidatabound @continuous
  Scenario:JENI1648-C67478-[Functionality] Verify that Search should be dynamic and should not require the user to press enter/done/go on the keyboard
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_recipient_name_4"
    Then "in_and_out_filter_result_with_win" will be displayed

  @android @uidatabound @continuous
  Scenario:JENI1648-C67489-[Layout] Verify that while the search input field is being shown, the magnifying glass icon should not be shown
    Then User expect "in_and_out_filter_search_loupe" doesn't exist

  @android @uidatabound @continuous
  Scenario:JENI1648-C67480-[Functionality] Verify that Search should be triggered as soon as the user has typed at least 3 characters and paused typing for 1 second
    Then "in_and_out_filter_result_with_win" will be displayed

  @android @uidatabound @continuous
  Scenario:JENI1648-C67490-[Functionality] Verify that 'Cancel' button should only be shown while a user has NOT input any search requested transaction text
    When User fill "in_and_out_filter_search_textfield" with "in_and_out_search_recipient_name_4"
    Then User expect "in_and_out_filter_search_cancel" doesn't exist

  @android @ios @uispecific
  Scenario:JENI1648-C67499-[Functionality] Verify that Clicking the cancel button should close the search input field and begin showing the magnifying glass icon again
    Given User is on in and out page in English language with "in_and_out_static"
    When User click "in_and_out_request_tab"
    And User click "in_and_out_filter_search_loupe" until "in_and_out_filter_search_textfield" displayed
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_win"
    And User click "in_and_out_filter_search_clear"
    And User click "in_and_out_filter_search_cancel"
    Then "in_and_out_filter_search_loupe" will be displayed 

  @android @ios @uispecific @continuous
  Scenario:JENI1648-C67500-[Functionality] Verify that If the user taps/clicks on the magnifying glass icon again, the search input field shown should not have previous typed string
    When User click "in_and_out_filter_search_loupe"
    Then User expect "in_and_out_filter_search_textfield" is not equal with "in_and_out_search_win"

  @android @ios @uispecific @continuous
  Scenario:JENI1648-C67502-[Functionality] Verify that the app should Display a cross icon in the search field as soon as the user begin typing a search query
    When User fill "in_and_out_filter_search_textfield" with "in_and_out_search_win"
    Then "in_and_out_filter_search_clear" will be displayed 

  @android @ios @uispecific @continuous
  Scenario:JENI1648-C67503-[Functionality] Verify that clicking the 'cross' icon should completely delete the typed text and be replaced by 'Cancel' button
    When User click "in_and_out_filter_search_clear"
    Then "in_and_out_filter_search_cancel" will be displayed

  # JENI2143  
  @android @uidatabound
  Scenario:JENI2143-C67620-Verify 'Apply Filter' button when 1 or more categories selected: Apply the filter on listed transactions (all tabs - history/upcoming/requests)
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_upcoming_tab"
    And User click "in_and_out_filter_button"
    When User set filter for category to all
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_upcoming_tab" will be displayed
    #Add more expectation after the data provided
    When User click "in_and_out_request_tab"
    Then "in_and_out_request_tab" will be displayed
    #Add more expectation after the data provided
    When User click "in_and_out_history_tab"
    Then "in_and_out_history_tab" will be displayed
    #Add more expectation after the data provided
  
  @android @uidatabound
  Scenario:JENI2143-C67621-Verify 'Apply Filter' button when 1 or more categories selected:Take user back to the In & Out tab which was opened before applying category filter
    Given User is on in and out page in English language with "in_and_out_static"
    When User click "in_and_out_upcoming_tab"
    And User click "in_and_out_filter_button"
    And User set filter for category to all
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_page" will be displayed
  
  @android @uidatabound
  Scenario:JENI2143-C67622-Verify 'Apply Filter' button when 1 or more categories selected: Only show relevant/qualified transactions when the user navigates to any of these tabs
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_upcoming_tab"
    And User click "in_and_out_filter_button"
    When User set filter for category to all
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_upcoming_tab" will be displayed
    #Add more expectation after the data provided
    When User click "in_and_out_request_tab"
    Then "in_and_out_request_tab" will be displayed
    #Add more expectation after the data provided
    When User click "in_and_out_history_tab"
    Then "in_and_out_history_tab" will be displayed
    #Add more expectation after the data provided
  
  @android @uidatabound
  Scenario:JENI2143-C67623-Verify Content shown should be based on language preference set by user (English/Bahasa)
    Given User is on in and out page in English language with "in_and_out_static"
    When User click "in_and_out_upcoming_tab"
    And User click "in_and_out_filter_button"
    When User set filter for category to all
    And User click "in_and_out_apply_filter_button"
    # Expected
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
  Scenario:JENI2143-C67626-Verify functionality of 'Reset' button
    Given User is on in and out page in English language with "in_and_out_static"
    When User click "in_and_out_upcoming_tab"
    And User click "in_and_out_filter_button"
    When User set filter for category to all
    And User set filter for time range to this week
    And User set filter for transaction type to all

    When User click "in_and_out_reset_button"
    Then User expect "in_and_out_amount_filter" doesn't exist
    And User expect "in_and_out_category_filter" doesn't exist
    And User expect "in_and_out_time_filter" doesn't exist
    And User expect "in_and_out_transaction_filter" doesn't exist

    Then "in_and_out_number_active_filter_0" will be displayed
  
  @android @uidatabound
  Scenario:JENI2143-C67631-Verify 'Active filter' status on In & Out landing page
    Given User is on in and out page in English language with "in_and_out_static"
    When User click "in_and_out_upcoming_tab"
    And User click "in_and_out_filter_button"
    
    When User set filter for category to all
    Then "in_and_out_number_active_filter_1" will be displayed      
    When User set filter for time range to this week
    Then "in_and_out_number_active_filter_2" will be displayed

    When User click "in_and_out_filter_category"
    And User click "in_and_out_clear_button"
    And User click "in_and_out_done_button"
    Then "in_and_out_number_active_filter_1" will be displayed
  
  @android @ios @uispecific
  Scenario:JENI2143-C69669-Clicking 'APPLY FILTER' button when 'Amount Range' filter is applied
    Given User is on in and out page in English language with "in_and_out_static"
    When User click "in_and_out_upcoming_tab"
    And User click "in_and_out_filter_button"
    And User set filter for amount range from 100000 to 1000
    Then "in_and_out_amount_from_texfield" will be displayed
    And "in_and_out_amount_to_texfield" will be displayed
  
  @android @uidatabound
  Scenario:JENI2143-C67540-Verify 'Apply filter' button: Transactions list should be revised based on applied Time Range filter
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_upcoming_tab"
    And User click "in_and_out_filter_button"
    And User set filter for time range to this month
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_upcoming_empty_image" will be displayed
    And "in_and_out_upcoming_empty_message" will be displayed
    #Add more expectation after the data provided
  
  @android @uidatabound
  Scenario:JENI2143-C67541-Verify 'Apply filter' button: If there exist other filters that have been applied, then the transaction list should get added on for filtration
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_upcoming_tab"
    And User click "in_and_out_filter_button"
    And User set filter for category to all
    And User set filter for time range to this week
    Then "in_and_out_number_active_filter_2" will be displayed
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_upcoming_tab" will be displayed
    And "in_and_out_upcoming_empty_image" will be displayed
    And "in_and_out_upcoming_empty_message" will be displayed
    #Add more expectation after the data provided
  
  @android @uidatabound
  Scenario:JENI2143-C67542-Verify 'Apply filter' button: If a search has been performed then the transaction result should get further narrowed down with the applied Time Range filter
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_upcoming_tab"
    And User click "in_and_out_filter_button"
    And User set filter for time range to this week
    Then "in_and_out_number_active_filter_1" will be displayed
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_upcoming_tab" will be displayed
    And "in_and_out_upcoming_empty_image" will be displayed
    And "in_and_out_upcoming_empty_message" will be displayed
    #Will update later. Add more expectation after the data provided
  
  @android @uidatabound
  Scenario:JENI2143-C67545-Verify time range filter for 'This week': Transactions list is revised based on applied Time Range filter
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_upcoming_tab"
    And User click "in_and_out_filter_button"
    And User set filter for time range to this week
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_upcoming_empty_image" will be displayed
    And "in_and_out_upcoming_empty_message" will be displayed
    #Wait for week data. Add more expectation after the data provided
  
  @android @uidatabound
  Scenario:JENI2143-C67546-Verify time range filter for 'This week': Only transactions between Monday 00:00hrs of the current week and current date/time are shown
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_upcoming_tab"
    And User click "in_and_out_filter_button"
    And User set filter for time range to this week
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_upcoming_empty_image" will be displayed
    And "in_and_out_upcoming_empty_message" will be displayed
    #Wait for data transactions between Monday 00:00hrs of the current week and current date/time are shown. Add more expectation after the data provided
  
  @android @uidatabound
  Scenario:JENI2143-C67547-Verify time range filter for 'This week': If there exist other filters that have been applied, then the transaction list should get added on for filtration
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_upcoming_tab"
    And User click "in_and_out_filter_button"
    And User set filter for category to all
    And User set filter for time range to this week
    Then "in_and_out_number_active_filter_2" will be displayed
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_upcoming_empty_image" will be displayed
    And "in_and_out_upcoming_empty_message" will be displayed
    #Wait for data. Add more expectation after the data provided
  
  @android @uidatabound
  Scenario:JENI2143-C67548-Verify time range filter for 'This week': If a search has been performed then the transaction result should get further narrowed down with the applied Time Range filter
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_upcoming_tab"
    And User click "in_and_out_filter_button"
    And User set filter for time range to this week
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_upcoming_empty_image" will be displayed
    And "in_and_out_upcoming_empty_message" will be displayed
    #Wait for week data. Add more expectation after the data provided
  
  @android @uidatabound
  Scenario:JENI2143-C67549-Verify time range filter for 'This week': If a search has been performed & other filter(s) have been already applied, the applied time range filter should further narrow down the transaction list
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_upcoming_tab"
    And User click "in_and_out_filter_button"
    And User set filter for time range to this week
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_upcoming_empty_image" will be displayed
    And "in_and_out_upcoming_empty_message" will be displayed
    #Wait for week data. Add more expectation after the data provided
  
  @android @uidatabound
  Scenario:JENI2143-C67551-Verify time range filter for 'This month': Transactions list is revised based on applied Time Range filter
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_upcoming_tab"
    And User click "in_and_out_filter_button"
    And User set filter for time range to this month
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_upcoming_empty_image" will be displayed
    And "in_and_out_upcoming_empty_message" will be displayed
    #Wait for month data. Add more expectation after the data provided
  
  @android @uidatabound
  Scenario:JENI2143-C67552-Verify time range filter for 'This month': Only transactions made between current date and 1st day of current month (00:00hrs) are shown
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_upcoming_tab"
    And User click "in_and_out_filter_button"
    And User set filter for time range to this month
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_upcoming_empty_image" will be displayed
    And "in_and_out_upcoming_empty_message" will be displayed
    #Wait for transactions made between current date and 1st day of current month (00:00hrs) are shown. Add more expectation after the data provided
  
  @android @uidatabound
  Scenario:JENI2143-C67553-Verify time range filter for 'This month': If there exist other filters that have been applied, then the transaction list should get added on for filtration
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_upcoming_tab"
    And User click "in_and_out_filter_button"
    And User set filter for category to all
    And User set filter for time range to this month
    Then "in_and_out_number_active_filter_2" will be displayed
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_upcoming_tab" will be displayed
    And "in_and_out_upcoming_empty_image" will be displayed
    And "in_and_out_upcoming_empty_message" will be displayed
    #Add more expectation after the data provided
  
  @android @uidatabound
  Scenario:JENI2143-C67554-Verify time range filter for 'This month': If a search has been performed then the transaction result should get further narrowed down with the applied Time Range filter
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_upcoming_tab"
    And User click "in_and_out_filter_button"
    And User set filter for time range to this month
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_upcoming_empty_image" will be displayed
    And "in_and_out_upcoming_empty_message" will be displayed
    #Wait for month data. Add more expectation after the data provided
  
  @android @uidatabound
  Scenario:JENI2143-C67555-Verify time range filter for 'This month': If a search has been performed & other filter(s) have been already applied, the applied time range filter should further narrow down the transaction list
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_upcoming_tab"
    And User click "in_and_out_filter_button"
    And User set filter for category to all
    And User set filter for time range to this month
    Then "in_and_out_number_active_filter_2" will be displayed
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_upcoming_tab" will be displayed
    And "in_and_out_upcoming_empty_image" will be displayed
    And "in_and_out_upcoming_empty_message" will be displayed
    #Add more expectation after the data provided
  
  @android @uidatabound
  Scenario:JENI2143-C67551-Verify time range filter for 'This year': Transactions list is revised based on applied Time Range filter
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_upcoming_tab"
    And User click "in_and_out_filter_button"
    And User set filter for time range to this year
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_upcoming_empty_image" will be displayed
    And "in_and_out_upcoming_empty_message" will be displayed
    #Wait for year data. Add more expectation after the data provided
  
  @android @uidatabound
  Scenario:JENI2143-C67552-Verify time range filter for 'This year': Only transactions made between current date and 1st Jan of current year (00:00hrs) are shown
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_upcoming_tab"
    And User click "in_and_out_filter_button"
    And User set filter for time range to this year
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_upcoming_empty_image" will be displayed
    And "in_and_out_upcoming_empty_message" will be displayed
    #Wait for transactions made between current date and 1st Jan of current year (00:00hrs) are shown. Add more expectation after the data provided
  
  @android @uidatabound
  Scenario:JENI2143-C67553-Verify time range filter for 'This year': If there exist other filters that have been applied, then the transaction list should get added on for filtration
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_upcoming_tab"
    And User click "in_and_out_filter_button"
    And User set filter for category to all
    And User set filter for time range to this year
    Then "in_and_out_number_active_filter_2" will be displayed
    When User click "in_and_out_apply_filter_button"
    Then "in_and_out_upcoming_empty_image" will be displayed
    And "in_and_out_upcoming_empty_message" will be displayed
    #Add more expectation after the data provided
  
  @android @uidatabound
  Scenario:JENI2143-C67554-Verify time range filter for 'This year': If a search has been performed then the transaction result should get further narrowed down with the applied Time Range filter
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_upcoming_tab"
    And User click "in_and_out_filter_button"
    And User set filter for time range to this year
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_upcoming_empty_image" will be displayed
    And "in_and_out_upcoming_empty_message" will be displayed
    #Add more expectation after the data provided
    #Wait for year data. Add more expectation after the data provided
  
  @android @uidatabound
  Scenario:JENI2143-C67555-Verify time range filter for 'This year': If a search has been performed & other filter(s) have been already applied, the applied time range filter should further narrow down the transaction list
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_upcoming_tab"
    And User click "in_and_out_filter_button"
    And User set filter for category to all
    And User set filter for time range to this year
    Then "in_and_out_number_active_filter_2" will be displayed
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_upcoming_tab" will be displayed
    And "in_and_out_upcoming_empty_image" will be displayed
    And "in_and_out_upcoming_empty_message" will be displayed
    #Add more expectation after the data provided
  
  @android @uidatabound
  Scenario:JENI2143-C67564-Verify time range filter for 'Last 7 days': Transactions list is revised based on applied Time Range filter
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_upcoming_tab"
    And User click "in_and_out_filter_button"
    And User set filter for time range to last seven days
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_upcoming_empty_image" will be displayed
    And "in_and_out_upcoming_empty_message" will be displayed
    #Wait for year data. Add more expectation after the data provided
  
  @android @uidatabound
  Scenario:JENI2143-C67565-Verify time range filter for 'Last 7 days': Only transactions made between current date and previous 7 days are shown
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_upcoming_tab"
    And User click "in_and_out_filter_button"
    And User set filter for time range to last seven days
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_upcoming_empty_image" will be displayed
    And "in_and_out_upcoming_empty_message" will be displayed
    #Wait for transactions made between current date and previous 7 days are shown. Add more expectation after the data provided
  
  @android @uidatabound
  Scenario:JENI2143-C67566-Verify time range filter for 'Last 7 days': If there exist other filters that have been applied, then the transaction list should get added on for filtration
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_upcoming_tab"
    And User click "in_and_out_filter_button"
    And User set filter for category to all
    And User set filter for time range to last seven days
    Then "in_and_out_number_active_filter_2" will be displayed
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_upcoming_tab" will be displayed
    And "in_and_out_upcoming_empty_image" will be displayed
    And "in_and_out_upcoming_empty_message" will be displayed
    #Add more expectation after the data provided
  
  @android @uidatabound
  Scenario:JENI2143-C67567-Verify time range filter for 'Last 7 days': If a search has been performed then the transaction result should get further narrowed down with the applied Time Range filter
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_upcoming_tab"
    And User click "in_and_out_filter_button"
    And User set filter for time range to last seven days
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_upcoming_empty_image" will be displayed
    And "in_and_out_upcoming_empty_message" will be displayed
    #Wait for year data. Add more expectation after the data provided
  
  @android @uispecific
  Scenario:JENI2143-C67537-Verify 'Custom' filter: If 'From' date selected is equal/older than 'To' date
    Given User is on in and out page in English language with "in_and_out_static"
    And User click "in_and_out_filter_button"
    And User click "in_and_out_time_menu"
    And User click "filter_time_range_input_from_date"
    And User click "filter_time_range_date_picker_ok"
    And User click "filter_time_range_input_to_date"
    And User click "filter_time_range_date_picker_ok"
    And User click "in_and_out_filter_done"
    Then "in_and_out_filter_screen" will be displayed
    And User click "in_and_out_time_menu"
    And User click "filter_time_range_input_to_date"
    And User click "filter_time_range_date_picker_next_month"
    And User click "filter_time_range_date_picker_date_one"
    And User click "filter_time_range_date_picker_ok"
    And User click "in_and_out_filter_done"
    Then "in_and_out_filter_screen" will be displayed

  @android @ios @uispecific
  Scenario:JENI2143-C67544-Verify time range filter for 'This week': user should be taken back to the Transactions Tab of 'In & Out' landing page
    Given User is on in and out page in English language with "in_and_out_static"
    And User click "in_and_out_filter_button"
    And User click "in_and_out_time_menu"
    And User click "filter_time_range_second_this_week"
    And User click "in_and_out_filter_done"
    And User click "in_and_out_filter_apply_button"
    Then "in_and_out_history_tab" will be displayed

  @android @ios @uispecific
  Scenario:JENI2143-C67550-Verify time range filter for 'This month': User should be taken back to the Transactions Tab of 'In & Out' landing page 
    Given User is on in and out page in English language with "in_and_out_static"
    And User click "in_and_out_filter_button"
    And User click "in_and_out_time_menu"
    And User click "filter_time_range_third_this_month"
    And User click "in_and_out_filter_done"
    And User click "in_and_out_filter_apply_button"
    Then "in_and_out_history_tab" will be displayed

  @android @ios @uispecific
  Scenario:JENI2143-C67556-Verify time range filter for 'This year': User should be taken back to the Transactions Tab of 'In & Out' landing page 
    Given User is on in and out page in English language with "in_and_out_static"
    And User click "in_and_out_filter_button"
    And User click "in_and_out_time_menu"
    And User click "filter_time_range_fourth_this_year"
    And User click "in_and_out_filter_done"
    And User click "in_and_out_filter_apply_button"
    Then "in_and_out_history_tab" will be displayed

  @android @ios @uispecific
  Scenario:JENI2143-C67562-Verify time range filter for 'Last 7 days': User should be taken back to the Transactions Tab of 'In & Out' landing page
    Given User is on in and out page in English language with "in_and_out_static"
    And User click "in_and_out_filter_button"
    And User click "in_and_out_time_menu"
    And User click "filter_time_range_fifth_last_seven_days"
    And User click "in_and_out_done_button"
    And User click "in_and_out_filter_apply_button"
    Then "in_and_out_history_tab" will be displayed

  @android @ios @uispecific
  Scenario:JENI2143-C67569-Verify time range filter for 'Last 30 days': User should be taken back to the Transactions Tab of 'In & Out' landing page
    Given User is on in and out page in English language with "in_and_out_static"
    And User click "in_and_out_filter_button"
    And User click "in_and_out_time_menu"
    And User click "filter_time_range_sixth_last_thirty_days"
    And User click "in_and_out_done_button"
    And User click "in_and_out_filter_apply_button"
    Then "in_and_out_history_tab" will be displayed

  @android @ios @uispecific
  Scenario:JENI2143-C67575-Verify selected Time range filter indicator
    Given User is on in and out page in English language with "in_and_out_static"
    And User click "in_and_out_filter_button"
    And User click "in_and_out_time_menu"
    And User click "filter_time_range_fifth_last_seven_days"
    And User click "in_and_out_done_button"
    Then "in_and_out_filter_screen" will be displayed
    Then User expect "in_and_out_filter_counter" equal with "in_and_out_filter_counter_one"
  
  @android @uidatabound
  Scenario:JENI2143-C67568-Verify time range filter for 'Last 7 days': If a search has been performed & other filter(s) have been already applied, the applied time range filter should further narrow down the transaction list
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_upcoming_tab"
    And User click "in_and_out_filter_button"
    And User set filter for category to all
    And User set filter for time range to last seven days
    Then "in_and_out_number_active_filter_2" will be displayed
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_upcoming_tab" will be displayed
    And "in_and_out_upcoming_empty_image" will be displayed
    And "in_and_out_upcoming_empty_message" will be displayed
    #Add more expectation after the data provided
  
  @android @uidatabound
  Scenario:JENI2143-C67570-Verify time range filter for 'Last 30 days': Transactions list is revised based on applied Time Range filter
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_upcoming_tab"
    And User click "in_and_out_filter_button"
    And User set filter for time range to last thirty days
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_upcoming_empty_image" will be displayed
    And "in_and_out_upcoming_empty_message" will be displayed
    #Wait for year data. Add more expectation after the data provided
  
  @android @uidatabound
  Scenario:JENI2143-C67571-Verify time range filter for 'Last 30 days': Only transactions made between current date and previous 30 days are shown
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_upcoming_tab"
    And User click "in_and_out_filter_button"
    And User set filter for time range to last thirty days
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_upcoming_empty_image" will be displayed
    And "in_and_out_upcoming_empty_message" will be displayed
    #Wait for transactions made between current date and previous 7 days are shown. Add more expectation after the data provided
  
  @android @uidatabound
  Scenario:JENI2143-C67572-Verify time range filter for 'Last 30 days': If there exist other filters that have been applied, then the transaction list should get added on for filtration
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_upcoming_tab"
    And User click "in_and_out_filter_button"
    And User set filter for category to all
    And User set filter for time range to last thirty days
    Then "in_and_out_number_active_filter_2" will be displayed
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_upcoming_tab" will be displayed
    And "in_and_out_upcoming_empty_image" will be displayed
    And "in_and_out_upcoming_empty_message" will be displayed
    #Add more expectation after the data provided
  
  @android @uidatabound
  Scenario:JENI2143-C67573-Verify time range filter for 'Last 30 days': If a search has been performed then the transaction result should get further narrowed down with the applied Time Range filter
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_upcoming_tab"
    And User click "in_and_out_filter_button"
    And User set filter for time range to last thirty days
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_upcoming_empty_image" will be displayed
    And "in_and_out_upcoming_empty_message" will be displayed
    #Wait for year data. Add more expectation after the data provided
  
  @android @uidatabound
  Scenario:JENI2143-C67574-Verify time range filter for 'Last 30 days': If a search has been performed & other filter(s) have been already applied, the applied time range filter should further narrow down the transaction list
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_upcoming_tab"
    And User click "in_and_out_filter_button"
    And User set filter for category to all
    And User set filter for time range to last thirty days
    Then "in_and_out_number_active_filter_2" will be displayed
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_upcoming_tab" will be displayed
    And "in_and_out_upcoming_empty_image" will be displayed
    And "in_and_out_upcoming_empty_message" will be displayed
    #Add more expectation after the data provided

  # JENI2141
  @android @uispecific @ios
  Scenario:JENI2141-C70301-Clicking 'APPLY FILTER' button when 'Amount Range' filter is applied
    Given User is on in and out page in English language with "in_and_out_static"
    When User click "in_and_out_request_tab"
    And User click "in_and_out_filter_button"
    And User set filter for amount range from 100000 to 1000
    Then "in_and_out_amount_from_texfield" will be displayed
    And "in_and_out_amount_to_texfield" will be displayed
  
 @android @uispecific
  Scenario:JENI2141-C70306-Verify 'Custom' filter: If 'From' date selected is equal/older than 'To' date
    Given User is on in and out page in English language with "in_and_out_static"
    When User click "in_and_out_request_tab"
    And User click "in_and_out_filter_button"
    And User click "in_and_out_time_menu"
    And User click "filter_time_range_input_from_date"
    And User click "filter_time_range_date_picker_ok"
    And User click "filter_time_range_input_to_date"
    And User click "filter_time_range_date_picker_ok"
    And User click "in_and_out_filter_done"
    Then "in_and_out_filter_screen" will be displayed
    And User click "in_and_out_time_menu"
    And User click "filter_time_range_input_to_date"
    And User click "filter_time_range_date_picker_next_month"
    And User click "filter_time_range_date_picker_date_one"
    And User click "filter_time_range_date_picker_ok"
    And User click "in_and_out_filter_done"
    Then "in_and_out_filter_screen" will be displayed

  @android @uispecific
  Scenario:JENI2141-C70307-Verify 'Apply filter' button: User should be taken back to the Transactions Tab of 'In & Out'
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_request_tab"
    And User click "in_and_out_filter_button"
    And User set filter for time range to this month
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_request_tab" will be displayed

  @android @uidatabound
  Scenario:JENI2141-C70308-Verify 'Apply filter' button: Transactions list should be revised based on applied Time Range filter
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_request_tab"
    And User click "in_and_out_filter_button"
    And User set filter for time range to this month
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_request_empty_image" will be displayed
    And "in_and_out_request_empty_message" will be displayed
    #Add more expectation after the data provided

  @android @uidatabound
  Scenario:JENI2141-C70309-Verify 'Apply filter' button: If there exist other filters that have been applied, then the transaction list should get added on for filtration
    Given User is on in and out page in English language with "in_and_out_dynamic"
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
  
  @android @uispecific @ios
  Scenario:JENI2141-C70311-Verify time range filter for 'This week': user should be taken back to the Transactions Tab of 'In & Out' landing page 
    Given User is on in and out page in English language with "in_and_out_static"
    When User click "in_and_out_request_tab"
    And User click "in_and_out_filter_button"
    And User set filter for time range to this week
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_request_tab" will be displayed
  
  @android @uidatabound
  Scenario:JENI2141-C70312-Verify time range filter for 'This week': Transactions list is revised based on applied Time Range filter
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_request_tab"
    And User click "in_and_out_filter_button"
    And User set filter for time range to this week
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_request_empty_image" will be displayed
    And "in_and_out_request_empty_message" will be displayed
    #Wait for week data. Add more expectation after the data provided
  
  @android @uidatabound
  Scenario:JENI2141-C70313-Verify time range filter for 'This week': Only transactions between Monday 00:00hrs of the current week and current date/time are shown
    Given User is on in and out page in English language with "in_and_out_dynamic"
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

  @android @uidatabound
  Scenario:JENI1647-C69957-[Layout] Verify that the search field is shown as indicated design with a cancel button
    Given User is on in and out upcoming tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And "in_and_out_filter_search_cancel" will be displayed
  
  @continuous @android @uidatabound
  Scenario:JENI1647-C69959-[Functionality] Verify that 'Cancel' button should only be shown while a user has NOT input any search upcoming transaction text
    And "in_and_out_filter_search_cancel" will be displayed

  @continuous @android @uidatabound
  Scenario:JENI1647-C69958-[Layout] Verify that while the search input field is being shown, the magnifying glass icon should not be shown
    And User expect "in_and_out_filter_search_loupe" doesn't exist

  @continuous @android @uidatabound
  Scenario:JENI1647-C69954-[Content] Verify that before the user starts typing a search requested transaction query in the input field, there must be a default text shown 
    Then User expect "in_and_out_filter_search_textfield" equal with "in_and_out_filter_text"
  
  @continuous @android @uidatabound
  Scenario:JENI1647-C69818-[Functionality] No results found
    And User fill "in_and_out_filter_search_textfield" with 151425
    And "in_and_out_request_no_matches" will be displayed

  @continuous @android @uidatabound
  Scenario:JENI1647-C69990-[Functionality] Verify that the app should Display a cross icon in the search field as soon as the user begin typing a search query
    And User fill "in_and_out_filter_search_textfield" with "empty"
    Then "in_and_out_filter_search_clear" will be displayed

  @continuous @android @uidatabound  
  Scenario:JENI1647-C69992-[Functionality] Verify that clicking the 'cross' icon should completely delete the typed text and be replaced by 'Cancel' button
    When User click "in_and_out_filter_search_clear"
    Then User expect "in_and_out_filter_search_textfield" is not equal with "empty"
    And "in_and_out_filter_search_cancel" will be displayed

  @continuous @android @uidatabound
  Scenario:JENI1647-C69956-[Content] Verify default text shown (Search) should disappear when user type something in search field
    Then User expect "in_and_out_filter_search_textfield" is not equal with "in_and_out_filter_text"

  @continuous @android @uidatabound
  Scenario:JENI1647-C69944-[Functionality] Verify search field input character limit for search upcoming transaction
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_overlimit_with_symbols" 
    And User expect "in_and_out_filter_search_textfield" equal with 100 characters

  @continuous @android @uidatabound
  Scenario:JENI1647-C69899-[Functionality] Verify White-listed characters for search input (EN/IND) of Upcoming transaction
    And User fill "in_and_out_filter_search_textfield" with "card_center_search_transactions_whitelist_characters"
    Then User expect "in_and_out_filter_search_textfield" equal with "card_center_search_transactions_whitelist_characters"
    And User fill "in_and_out_filter_search_textfield" with "card_center_double_quote_character"
    Then User expect "in_and_out_filter_search_textfield" equal with "card_center_double_quote_character"

  @continuous @android @uidatabound
  Scenario:JENI1647-C69946-[Functionality] Verify that Search should be dynamic and should not require the user to press enter/done/go on the keyboard
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_recipient_first_name_5"
    Then "in_and_out_history_first" will be displayed

  @continuous @android @uidatabound
  Scenario:JENI1647-C69867-[Functionality] Verify that there should be number of search result appeared
    Then "in_and_out_history_number_transaction_show_one_result" will be displayed

  @continuous @android @uidatabound
  Scenario:JENI1647-C69947-[Functionality] Verify that Search should be triggered as soon as the user has typed at least 3 characters and paused typing for 1 second
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_three_recipient_characters_name_5"
    Then "in_and_out_history_first" will be displayed 

  @continuous @android @uidatabound
  Scenario:JENI1647-C69998-[Functionality] Verify that Narrative text received OR Name of contact should be searchable
    Then "in_and_out_history_first" will be displayed 

  @continuous @android @uidatabound
  Scenario:JENI1647-C69960-[Functionality] Verify that Clicking the cancel button should close the search input field and begin showing the magnifying glass icon again
    And User click "in_and_out_filter_search_clear"
    And User click "in_and_out_filter_search_cancel"
    Then User expect "in_and_out_filter_search_textfield" doesn't exist
    And "in_and_out_filter_search_loupe" will be displayed

  @continuous @android @uidatabound  
  Scenario:JENI1647-C69988-[Functionality] Verify that If the user taps/clicks on the magnifying glass icon again, the search input field shown should not have previous typed string
    When User click "in_and_out_filter_search_loupe"
    Then User expect "in_and_out_filter_search_textfield" is not equal with "in_and_out_search_three_recipient_characters_name_5"

  #JENI2160
  @android @ios @uispecific
  Scenario:JENI2160-C67770-User should be shown the empty state message when there are no Request (Pay-me or Split bill)
    #Use CIF without In & Out - Request transaction
    Given User is on in and out page in English language with "in_and_out_static"
    When User click "in_and_out_request_tab"
    Then "in_and_out_request_empty_message" will be displayed

  @android @ios @uispecific
  Scenario:JENI2160-C67771-User should be shown the empty state message in English/Bahasa based on their language preference
    #Use CIF without In & Out - Request transaction
    Given User is on in and out page in English language with "in_and_out_static"
    When User click "in_and_out_request_tab"
    Then "in_and_out_request_empty_message" will be displayed

  @android @ios @uidatabound
  Scenario:JENI2160-C67772-If there is at least 1 request in Request tab, the empty state message should not be shown
    #Use CIF with In & Out - Request transaction
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_request_tab"
    Then User expect "in_and_out_request_empty_message" doesn't exist

  @android @uidatabound
  Scenario:JENI1648-C67475-[Functionality] Verify White-listed characters for search input (EN/IND) of requested transaction
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "card_center_search_transactions_whitelist_characters"
    Then User expect "in_and_out_filter_search_textfield" equal with "card_center_search_transactions_whitelist_characters"
    And User fill "in_and_out_filter_search_textfield" with "card_center_double_quote_character"
    Then User expect "in_and_out_filter_search_textfield" equal with "card_center_double_quote_character"

  @continuous @android @uidatabound
  Scenario:JENI1647-C67588-[Functionality] Verify that Narrative text received OR Name of contact should be searchable
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_recipient_name_6"
    Then "in_and_out_request_split_bill_history_split_resolved" will be displayed

  #JENI3227
  @android @uidatabound
  Scenario:JENI3227-C70544-[Functionality] Verify Split Bill Detail Page Can Be Shown
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_recipient_name_6"
    And User click "in_and_out_request_split_bill_history_split_resolved"
    Then "in_and_out_request_split_bill_detail_split_with" will be displayed

  @continuous @android @uidatabound
  Scenario:JENI3227-C70545-[Functionality] Verify that Split Bill detail page is shown
    Then "in_and_out_request_split_bill_detail_split_with" will be displayed

  @continuous @android @uidatabound
  Scenario:JENI3227-C70547-[Functionality] Verify language of split bill detail based on language preference
    Then "split_bill_currency_en" will be displayed

  @continuous @android @uidatabound
  Scenario:JENI3227-C70551-[Content] Verify content in Split bill detail page: Tittle
    Then "in_and_out_request_split_bill_detail_page_title" will be displayed

  @continuous @android @uidatabound
  Scenario:JENI3227-C70552-[Content] Verify content in Split Bill detail page: Generic Text
    Then "in_and_out_request_split_bill_detail_split_with_two_people" will be displayed
  
  @continuous @android @uidatabound
  Scenario:JENI3227-C70554-[Content] Verify content in Split Bill detail page: Total Split bill amount
    Then "in_and_out_request_split_bill_detail_amount" will be displayed

  @continuous @android @uidatabound
  Scenario:JENI3227-C70555-[Content] Verify content in Split Bill detail page: Notes
    Then User expect "in_and_out_request_split_bill_detail_note" equal with "in_and_out_request_split_bill_note_text"

  @continuous @android @uidatabound
  Scenario:JENI3227-C70563-[Functional] Verify content in Split Bill detail page: 'Resolved on' date
    Then "in_and_out_request_split_bill_detail_resolve_by" will be displayed

  @continuous @android @uidatabound
  Scenario:JENI3227-C70569-[Content] Verify content in Split Bill detail page: Cashtag for **** user
    And User swipe up until found "in_and_out_request_split_bill_detail_email"
    Then "in_and_out_request_split_bill_detail_email" will be displayed

  @continuous @android @uidatabound
  Scenario:JENI3227-C70576-[Content] Verify content in Split Bill detail page: Email/Phone number for non **** user
    And User swipe up until found "in_and_out_request_split_bill_detail_cashtag"
    Then "in_and_out_request_split_bill_detail_cashtag" will be displayed

  @continuous @android @uidatabound
  Scenario:JENI3227-C80588-[Functionality] Pressing Back Arrow Return User to Request Tab
    And User click "back_button"
    Then "in_and_out_request_container" will be displayed

  @android @uidatabound
  Scenario:JENI3227-C70676-[Functionality] Verify Default Overall status in split bill detail: Unpaid(3 **** user)
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_recipient_name_6"
    And User click "in_and_out_request_split_bill_menu_three_****_unpaid"
    Then User expect "in_and_out_request_split_bill_detail_status_value" equal with "in_and_out_request_splitbill_status_unpaid"

  @android @uidatabound
  Scenario:JENI3227-C70676-[Functionality] Verify Default Overall status in split bill detail: Unpaid(2 non **** user)
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_recipient_name_6"
    And User click "in_and_out_request_split_bill_menu_two_non_****_unpaid"
    And User click "in_and_out_request_split_bill_history_split_2_non_****"
    Then User expect "in_and_out_request_split_bill_detail_status_value" equal with "in_and_out_request_splitbill_status_unpaid"

  @android @uidatabound
  Scenario:JENI3227-C70676-[Functionality] Verify Default Overall status in split bill detail: Unpaid(2 **** 1 non **** user)
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_recipient_name_6"
    And User click "in_and_out_request_split_bill_split_two_****_one_non_****_unpaid"
    Then User expect "in_and_out_request_split_bill_detail_status_value" equal with "in_and_out_request_splitbill_status_unpaid"

  #JENI3231
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

  #JENI3227
  @android @endtoend @uidatabound
  Scenario:JENI3227-C70683-[Functionality] Verify Default Overall status in split bill detail: Paid(3 **** user)
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_recipient_name_6"
    And User click "in_and_out_request_split_bill_history_split_three_****"
    Then User expect "in_and_out_request_split_bill_detail_status_value" equal with "in_and_out_request_splitbill_status_paid"

  @android @endtoend @uidatabound
  Scenario:JENI3227-C70683-[Functionality] Verify Default Overall status in split bill detail: Paid(2 non **** user)
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_recipient_name_6"
    And User click "in_and_out_request_split_bill_history_split_two_non_****"
    Then User expect "in_and_out_request_split_bill_detail_status_value" equal with "in_and_out_request_splitbill_status_paid"

  @android @endtoend @uidatabound
  Scenario:JENI3227-C70683-[Functionality] Verify Default Overall status in split bill detail: Paid(2 **** 1 non **** user)
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_recipient_name_6"
    And User click "in_and_out_request_split_bill_history_split_two_****_one_non_****"
    Then User expect "in_and_out_request_split_bill_detail_status_value" equal with "in_and_out_request_splitbill_status_paid"

  @android @endtoend @uidatabound
  Scenario:JENI3227-C70686-[Functionality] Verify Default Overall status in split bill detail: Declined(3 **** user)
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_recipient_name_6"
    And User click "in_and_out_request_split_bill_history_split_three_****"
    Then User expect "in_and_out_request_split_bill_detail_status_value" equal with "in_and_out_request_splitbill_status_declined"

  @android @endtoend @uidatabound
  Scenario:JENI3227-C70686-[Functionality] Verify Default Overall status in split bill detail: Declined(2 non **** user)
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_recipient_name_6"
    And User click "in_and_out_request_split_bill_history_split_two_non_****"
    Then User expect "in_and_out_request_split_bill_detail_status_value" equal with "in_and_out_request_splitbill_status_declined"

  @android @endtoend @uidatabound
  Scenario:JENI3227-C70686-[Functionality] Verify Default Overall status in split bill detail: Declined(2 **** 1 non **** user)
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_recipient_name_6"
    And User click "in_and_out_request_split_bill_history_split_two_****_one_non_****"
    Then User expect "in_and_out_request_split_bill_detail_status_value" equal with "in_and_out_request_splitbill_status_declined"

  @android @endtoend @uidatabound
  Scenario:JENI3227-C70690-[Functionality] Verify Default Overall status in split bill detail: Resolved(2 **** user, 1 Paid, 1 Declined)
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_recipient_name_6"
    And User click "in_and_out_request_split_bill_history_split_three_****"
    Then User expect "in_and_out_request_split_bill_detail_status_value" equal with "in_and_out_request_splitbill_status_resolved"

  @android @endtoend @uidatabound
  Scenario:JENI3227-C70690-[Functionality] Verify Default Overall status in split bill detail: Resolved(2 non **** user, 1 Paid, 1 Declined)
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_recipient_name_6"
    And User click "in_and_out_request_split_bill_history_split_two_non_****"
    Then User expect "in_and_out_request_split_bill_detail_status_value" equal with "in_and_out_request_splitbill_status_resolved"

  @android @endtoend @uidatabound
  Scenario:JENI3227-C70690-[Functionality] Verify Default Overall status in split bill detail: Resolved(1 **** user, 1 non **** user, **** user Paid, non **** user Declined)
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_recipient_name_6"
    And User click "in_and_out_request_split_bill_history_split_two_****_one_non_****"
    Then User expect "in_and_out_request_split_bill_detail_status_value" equal with "in_and_out_request_splitbill_status_resolved"

  @android @endtoend @uidatabound
  Scenario:JENI3227-C70690-[Functionality] Verify Default Overall status in split bill detail: Resolved(1 **** user, 1 non **** user, **** user Declined, non **** user Paid)
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_recipient_name_6"
    And User click "in_and_out_request_split_bill_history_split_two_****_one_non_****"
    Then User expect "in_and_out_request_split_bill_detail_status_value" equal with "in_and_out_request_splitbill_status_resolved"

  @android @endtoend @uidatabound
  Scenario:JENI3227-C70696-[Functionality] Verify Default Overall status in split bill detail: Partially Resolved (some paid some not responded)(3 **** user, 2 Paid, 1 Not Responded)
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_recipient_name_6"
    And User click "in_and_out_request_split_bill_history_split_three_****"
    Then User expect "in_and_out_request_split_bill_detail_status_value" equal with "in_and_out_request_splitbill_status_partially"

  @android @endtoend @uidatabound
  Scenario:JENI3227-C70696-[Functionality] Verify Default Overall status in split bill detail: Partially Resolved (some paid some not responded)(3 non **** user, 1 Paid, 1 Declined)
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_recipient_name_6"
    And User click "in_and_out_request_split_bill_history_split_two_non_****"
    Then User expect "in_and_out_request_split_bill_detail_status_value" equal with "in_and_out_request_splitbill_status_partially"

  @android @endtoend @uidatabound
  Scenario:JENI3227-C70696-[Functionality] Verify Default Overall status in split bill detail: Partially Resolved (some paid some not responded)(1 **** user, 1 non **** user, **** user Paid, non **** user not responded)
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_recipient_name_6"
    And User click "in_and_out_request_split_bill_history_split_two_****_one_non_****"
    Then User expect "in_and_out_request_split_bill_detail_status_value" equal with "in_and_out_request_splitbill_status_partially"

  @android @endtoend @uidatabound
  Scenario:JENI3227-C70696-[Functionality] Verify Default Overall status in split bill detail: Partially Resolved (some paid some not responded)(1 **** user, 1 non **** user, **** user Not responded, non **** user Paid)
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_recipient_name_6"
    And User click "in_and_out_request_split_bill_history_split_two_****_one_non_****"
    Then User expect "in_and_out_request_split_bill_detail_status_value" equal with "in_and_out_request_splitbill_status_partially"

  @android @endtoend @uidatabound
  Scenario:JENI3227-C70710-[Functionality] Verify Default Overall status in split bill detail: Partially Resolved (some paid some not responded)(3 **** user, 2 Declined, 1 Not Responded)
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_recipient_name_6"
    And User click "in_and_out_request_split_bill_history_split_three_****"
    Then User expect "in_and_out_request_split_bill_detail_status_value" equal with "in_and_out_request_splitbill_status_partially"

  @android @endtoend @uidatabound
  Scenario:JENI3227-C70710-[Functionality] Verify Default Overall status in split bill detail: Partially Resolved (some paid some not responded)(3 non **** user, 2 Declined, 1 Not Responded)
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_recipient_name_6"
    And User click "in_and_out_request_split_bill_history_split_two_non_****"
    Then User expect "in_and_out_request_split_bill_detail_status_value" equal with "in_and_out_request_splitbill_status_partially"

  @android @endtoend @uidatabound
  Scenario:JENI3227-C70710-[Functionality] Verify Default Overall status in split bill detail: Partially Resolved (some paid some not responded)(1 **** user, 1 non **** user, **** user Declined, non **** user not responded)
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_recipient_name_6"
    And User click "in_and_out_request_split_bill_history_split_two_****_one_non_****"
    Then User expect "in_and_out_request_split_bill_detail_status_value" equal with "in_and_out_request_splitbill_status_partially"

  @android @endtoend @uidatabound
  Scenario:JENI3227-C70710-[Functionality] Verify Default Overall status in split bill detail: Partially Resolved (some paid some not responded)(1 **** user, 1 non **** user, **** user Not responded, non **** user Declined)
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_recipient_name_6"
    And User click "in_and_out_request_split_bill_history_split_two_****_one_non_****"
    Then User expect "in_and_out_request_split_bill_detail_status_value" equal with "in_and_out_request_splitbill_status_partially"

  @android @endtoend @uidatabound
  Scenario:JENI3227-C75553-[Functionality] Verify Default Overall status in split bill detail: Partially Resolved (some paid some declined some not responded)(3 **** user, 1 Paid, 1 Declined, 1 Not Responded)
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_recipient_name_6"
    And User click "in_and_out_request_split_bill_history_split_three_****"
    Then User expect "in_and_out_request_split_bill_detail_status_value" equal with "in_and_out_request_splitbill_status_partially"

  @android @endtoend @uidatabound
  Scenario:JENI3227-C75553-[Functionality] Verify Default Overall status in split bill detail: Partially Resolved (some paid some declined some not responded)(3 non **** user, 1 Paid, 1 Declined, 1 Not Responded)
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_recipient_name_6"
    And User click "in_and_out_request_split_bill_history_split_two_non_****"
    Then User expect "in_and_out_request_split_bill_detail_status_value" equal with "in_and_out_request_splitbill_status_partially"

  @android @endtoend @uidatabound
  Scenario:JENI3227-C75553-[Functionality] Verify Default Overall status in split bill detail: Partially Resolved (some paid some declined some not responded)(2 **** user, 2 non **** user, 1 **** user not respond, 1 **** user Paid, non **** user Declined)
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_recipient_name_6"
    And User click "in_and_out_request_split_bill_history_split_two_****_one_non_****"
    Then User expect "in_and_out_request_split_bill_detail_status_value" equal with "in_and_out_request_splitbill_status_partially"

  @android @endtoend @uidatabound
  Scenario:JENI3227-C75553-[Functionality] Verify Default Overall status in split bill detail: Partially Resolved (some paid some declined some not responded)(2 **** user, 2 non **** user, **** user Declined, 1 non **** user Paid, 1 non **** user not responded)
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_recipient_name_6"
    And User click "in_and_out_request_split_bill_history_split_two_****_one_non_****"
    Then User expect "in_and_out_request_split_bill_detail_status_value" equal with "in_and_out_request_splitbill_status_partially"

  @android @endtoend @uidatabound
  Scenario:JENI3227-C75553-[Functionality] Verify Default Overall status in split bill detail: Partially Resolved (some paid some declined some not responded)(2 **** user, 1 non **** user, 1 **** user not respond, 1 **** user Declined, non **** user Paid)
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_recipient_name_6"
    And User click "in_and_out_request_split_bill_history_split_two_****_one_non_****"
    Then User expect "in_and_out_request_split_bill_detail_status_value" equal with "in_and_out_request_splitbill_status_partially"

  @android @endtoend @uidatabound
  Scenario:JENI3227-C75553-[Functionality] Verify Default Overall status in split bill detail: Partially Resolved (some paid some declined some not responded)(1 **** user, 2 non **** user, **** user Declined, **** user Paid, 1 non **** user Declined, 1 non **** user not responded)
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_recipient_name_6"
    And User click "in_and_out_request_split_bill_history_split_two_****_one_non_****"
    Then User expect "in_and_out_request_split_bill_detail_status_value" equal with "in_and_out_request_splitbill_status_partially"

  @android @endtoend @uidatabound
  Scenario:JENI3227-C75553-[Functionality] Verify Default Overall status in split bill detail: Partially Resolved (some paid some declined some not responded)(2 **** user, 1 non **** user, 1 **** user not respond, 1 **** user Declined, non **** user Paid)
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_recipient_name_6"
    And User click "in_and_out_request_split_bill_history_split_two_****_one_non_****"
    Then User expect "in_and_out_request_split_bill_detail_status_value" equal with "in_and_out_request_splitbill_status_partially"

  @android @endtoend @uidatabound
  Scenario:JENI3227-C75553-[Functionality] Verify Default Overall status in split bill detail: Partially Resolved (some paid some declined some not responded)(1 **** user, 2 non **** user, **** user Paid, 1 non **** user Declined, 1 non **** user not responded)
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_recipient_name_6"
    And User click "in_and_out_request_split_bill_history_split_two_****_one_non_****"
    Then User expect "in_and_out_request_split_bill_detail_status_value" equal with "in_and_out_request_splitbill_status_partially"





  @android @uidatabound
  Scenario:JENI2016-C67715-Verify transaction sub-Categories: Incoming Internal transactions
    Given User is logged in with cif "in_and_out_dynamic"
    When User swipe up until found "dashboard_in_and_out_widget_third_transaction_history"
    And User click "dashboard_in_and_out_widget_title"
    And User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_flexi_saver" 
    And User swipe up until found "in_and_out_history_flexi_withdrawal"
    Then "in_and_out_history_flexi_withdrawal" will be displayed

  @android @uidatabound
  Scenario:JENI2016-C67716-Verify transaction sub-Categories: Outgoing external transactions
    Given User is logged in with cif "in_and_out_dynamic"
    When User swipe up until found "dashboard_in_and_out_widget_third_transaction_history"
    And User click "dashboard_in_and_out_widget_title"
    And User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_atm_fee" 
    And User swipe up until found "in_and_out_history_atm_fee"
    Then "in_and_out_history_atm_fee" will be displayed

  @android @uidatabound
  Scenario:JENI2016-C67717-Verify transaction sub-Categories: Outgoing internal transactions
    Given User is logged in with cif "in_and_out_dynamic"
    When User swipe up until found "dashboard_in_and_out_widget_third_transaction_history"
    And User click "dashboard_in_and_out_widget_title"
    And User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_flexi_saver" 
    And User swipe up until found "in_and_out_history_flexi_adding"
    Then "in_and_out_history_flexi_adding" will be displayed

  @android @uidatabound
  Scenario:JENI2016-C67705-Verify that transactions should be grouped together by month/year name
    Given User is logged in with cif "in_and_out_dynamic"
    When User swipe up until found "dashboard_in_and_out_widget_third_transaction_history"
    And User click "dashboard_in_and_out_widget_title"
    And User swipe up until found "in_and_out_history_date_grouping_one"
    Then "in_and_out_history_date_grouping_one" will be displayed

  @android @uidatabound
  Scenario:JENI2016-C67706-Verify the functionality of 'Show internal transactions' toggle 
    Given User is logged in with cif "in_and_out_dynamic"
    When User swipe up until found "dashboard_in_and_out_widget_third_transaction_history"
    And User click "dashboard_in_and_out_widget_title"    
    And User click "in_and_out_show_internal_transactions_button"
    And User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_flexi_saver" 
    And User swipe up until found "in_and_out_history_flexi_withdrawal"
    Then "in_and_out_history_flexi_withdrawal" will be displayed   
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_atm_fee" 
    And User swipe up until found "in_and_out_history_atm_fee"
    Then "in_and_out_history_atm_fee" will be displayed  

  @android @uidatabound
  Scenario:JENI2016-C67707-Verify empty state UI when there are no transactions
    Given User is logged in with cif "in_and_out_active_account"
    When User swipe up until found "dashboard_in_and_out_widget_third_transaction_history"
    And User click "dashboard_in_and_out_widget_title"
    And User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_dynamic" 
    Then "in_and_out_history_no_matches" will be displayed
    And User expect "in_and_out_no_matches_search_value" equal with "in_and_out_dynamic"

  #JENI1166
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
  Scenario:JENI1166-C48049-Verify displayed number of transactions currently being shown out of total existing transactions
    Then "in_and_out_request_shown_transactions" will be displayed

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
  Scenario:JENI1166-C67417-Verify Completed requests: Replace the date when request was made with status
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User check and click "tutorial_close" if exist
    When User click "in_and_out_request_tab"
    And User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_recipient_first_name_5"
    Then "in_and_out_request_status_value" will be displayed
    And User expect "in_and_out_request_date" doesn't exist

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

  @android @uidatabound
  Scenario:JENI3230-C70592-[Functionality] Verify that payment status for **** contributor is automatically update: If contributor has paid the request
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_request_split_bill_menu_three_****_contributor_paid"
    And User click "in_and_out_request_split_bill_menu_three_****_contributor_paid"
    And User swipe up until found "in_and_out_request_split_bill_detail_contributor_three_status" 
    Then User expect "in_and_out_request_split_bill_detail_contributor_one_status" equal with "in_and_out_request_splitbill_status_paid"
    And User expect "in_and_out_request_split_bill_detail_contributor_two_status" equal with "in_and_out_request_splitbill_status_paid"
    And User expect "in_and_out_request_split_bill_detail_contributor_three_status" equal with "in_and_out_request_splitbill_status_paid"

  @continuous @android @uidatabound
  Scenario:JENI3230-C70615-[Functionality] Verify contributors detail section: Send Reminder button not available to **** contributor who has responded
    Then User expect "in_and_out_request_send_reminder_button" doesn't exist
    And "in_and_out_request_date" will be displayed

  @continuous @android @uidatabound
  Scenario:JENI3230-C76051-[Fuctionality] Verify that Delete Split Bill button is available when Split Bill status is Paid
    Then "in_and_out_request_delete_button" will be displayed

  @android @uidatabound
  Scenario:JENI3230-C70595-[Functionality] Verify that payment status for **** contributor is automatically update: If contributor has decline the request
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_request_split_bill_menu_three_****_contributor_declined"
    And User click "in_and_out_request_split_bill_menu_three_****_contributor_declined"
    And User swipe up until found "in_and_out_request_split_bill_detail_contributor_three_status" 
    Then User expect "in_and_out_request_split_bill_detail_contributor_one_status" equal with "in_and_out_request_splitbill_status_declined"
    And User expect "in_and_out_request_split_bill_detail_contributor_two_status" equal with "in_and_out_request_splitbill_status_declined"
    And User expect "in_and_out_request_split_bill_detail_contributor_three_status" equal with "in_and_out_request_splitbill_status_declined"

  @continuous @android @uidatabound
  Scenario:JENI3230-C76053-[Fuctionality] Verify that Delete Split Bill button is available when Split Bill status is Declined
    Then "in_and_out_request_delete_button" will be displayed

  @android @uidatabound
  Scenario:JENI3230-C70596-[Functionality] Verify that payment status for **** contributor is automatically update: If contributor has not paid/decline the request
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_request_split_bill_menu_three_****_contributor_unpaid"
    And User click "in_and_out_request_split_bill_menu_three_****_contributor_unpaid"
    And User swipe up until found "in_and_out_request_split_bill_detail_contributor_three_status" 
    Then User expect "in_and_out_request_split_bill_detail_contributor_one_status" equal with "in_and_out_request_splitbill_status_unpaid"
    And User expect "in_and_out_request_split_bill_detail_contributor_two_status" equal with "in_and_out_request_splitbill_status_unpaid"
    And User expect "in_and_out_request_split_bill_detail_contributor_three_status" equal with "in_and_out_request_splitbill_status_unpaid"

  @continuous @android @uidatabound
  Scenario:JENI3230-C70614-[Functionality] Verify contributors detail section: Send Reminder button available to **** contributor who haven't responded
    Then "in_and_out_request_send_reminder_button" will be displayed

  @continuous @android @uidatabound
  Scenario:JENI3230-C70602-[Functionality] Verify contributors detail section: list of all contributors of the split bill 
    Then "in_and_out_request_split_bill_detail_contributor_list" will be displayed

  @continuous @android @uidatabound
  Scenario:JENI3230-C70617-[Fuctionality] Verify that Delete Split Bill button is not available when Split Bill status is Unpaid
    Then User expect "in_and_out_request_delete_button" doesn't exist

  @continuous @android @uidatabound
  Scenario:JENI3230-C70604-[Functionality] Verify contributors detail section: profile picture or initials
    Then "in_and_out_request_split_bill_detail_contributor_one_picture" will be displayed
    And "in_and_out_request_split_bill_detail_contributor_two_picture" will be displayed
    And "in_and_out_request_split_bill_detail_contributor_three_picture" will be displayed
  
  @continuous @android @uidatabound
  Scenario:JENI3230-C70604-[Functionality] Verify contributors detail section: profile picture or initials
    Then "in_and_out_request_split_bill_detail_contributor_one_cashtag" will be displayed
    And "in_and_out_request_split_bill_detail_contributor_two_cashtag" will be displayed
    And "in_and_out_request_split_bill_detail_contributor_three_cashtag" will be displayed
    Then "in_and_out_request_split_bill_detail_contributor_one_fullname" will be displayed
    And "in_and_out_request_split_bill_detail_contributor_two_fullname" will be displayed
    And "in_and_out_request_split_bill_detail_contributor_three_fullname" will be displayed

  @android @uidatabound
  Scenario:JENI3230-C70613-[Functionality] Verify contributors detail section: non **** contributor's basic information
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_request_split_bill_menu_three_non_****_contributor_paid"
    And User click "in_and_out_request_split_bill_menu_three_non_****_contributor_paid"
    And User swipe up until found "in_and_out_request_split_bill_detail_contributor_three_email" 
    Then "in_and_out_request_split_bill_detail_contributor_one_email" will be displayed
    And "in_and_out_request_split_bill_detail_contributor_two_email" will be displayed
    And "in_and_out_request_split_bill_detail_contributor_three_email" will be displayed
    Then "in_and_out_request_split_bill_detail_contributor_one_fullname" will be displayed
    And "in_and_out_request_split_bill_detail_contributor_two_fullname" will be displayed
    And "in_and_out_request_split_bill_detail_contributor_three_fullname" will be displayed

  @android @uidatabound
  Scenario:JENI3230-C70619-[Fuctionality] Verify that Delete Split Bill button is not available when Split Bill status is Partially Resolved
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_request_split_bill_menu_three_****_contributor_partial_resolved"
    And User click "in_and_out_request_split_bill_history_split_resolved"
    And User swipe up until found "in_and_out_request_split_bill_detail_contributor_three_status" 
    Then User expect "in_and_out_request_split_bill_detail_contributor_one_status" equal with "in_and_out_request_splitbill_status_partially"
    And User expect "in_and_out_request_split_bill_detail_contributor_two_status" equal with "in_and_out_request_splitbill_status_partially"
    And User expect "in_and_out_request_split_bill_detail_contributor_three_status" equal with "in_and_out_request_splitbill_status_partially"

  @continuous @android @uidatabound
  Scenario:JENI3230-C70619-[Fuctionality] Verify that Delete Split Bill button is not available when Split Bill status is Partially Resolved
    Then User expect "in_and_out_request_delete_button" doesn't exist

  @android @uidatabound
  Scenario:JENI3230-C75712-[Functionality] Verify that Auto update on a **** contributor status from Unpaid to Paid will not affect to non **** contributor status(****User1, ****User2, non****User1)
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_request_split_bill_menu_two_****_paid_one_non_****_unpaid"
    And User click "in_and_out_request_split_bill_menu_two_****_paid_one_non_****_unpaid"
    And User swipe up until found "in_and_out_request_split_bill_detail_contributor_three_status" 
    Then User expect "in_and_out_request_split_bill_detail_contributor_one_status" equal with "in_and_out_request_splitbill_status_paid"
    And User expect "in_and_out_request_split_bill_detail_contributor_two_status" equal with "in_and_out_request_splitbill_status_unpaid"
    And User expect "in_and_out_request_split_bill_detail_contributor_three_status" equal with "in_and_out_request_splitbill_status_unpaid"

  @android @uidatabound
  Scenario:JENI3230-C75711-[Functionality] Verify that Auto update on a **** contributor status from Unpaid to Paid will not affect to another **** contributor status(****User1, ****User2, ****User3)
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_request_split_bill_menu_one_****_paid_two_****_unpaid"
    And User click "in_and_out_request_split_bill_menu_one_****_paid_two_****_unpaid"
    And User swipe up until found "in_and_out_request_split_bill_detail_contributor_three_status" 
    Then User expect "in_and_out_request_split_bill_detail_contributor_one_status" equal with "in_and_out_request_splitbill_status_paid"
    And User expect "in_and_out_request_split_bill_detail_contributor_two_status" equal with "in_and_out_request_splitbill_status_unpaid"
    And User expect "in_and_out_request_split_bill_detail_contributor_three_status" equal with "in_and_out_request_splitbill_status_unpaid"

  @android @uidatabound
  Scenario:JENI3230-C75713-[Functionality] Verify that Auto update on a **** contributor status from Unpaid to Declined will not affect to another **** contributor status(****User1, ****User2, ****User3)
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_request_split_bill_menu_one_****_declined_two_****_unpaid"
    And User click "in_and_out_request_split_bill_menu_one_****_declined_two_****_unpaid"
    And User swipe up until found "in_and_out_request_split_bill_detail_contributor_three_status" 
    Then User expect "in_and_out_request_split_bill_detail_contributor_one_status" equal with "in_and_out_request_splitbill_status_declined"
    And User expect "in_and_out_request_split_bill_detail_contributor_two_status" equal with "in_and_out_request_splitbill_status_unpaid"
    And User expect "in_and_out_request_split_bill_detail_contributor_three_status" equal with "in_and_out_request_splitbill_status_unpaid"

  @android @uidatabound
  Scenario:JENI3230-C75714-[Functionality] Verify that Auto update on a **** contributor status from Unpaid to Declined will not affect to non **** contributor status(****User1, ****User2, non****User1)
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_request_split_bill_menu_one_****_declined_one_****_unpaid_one_non_****_unpaid"
    And User click "in_and_out_request_split_bill_menu_one_****_declined_one_****_unpaid_one_non_****_unpaid"
    And User swipe up until found "in_and_out_request_split_bill_detail_contributor_three_status" 
    Then User expect "in_and_out_request_split_bill_detail_contributor_one_status" equal with "in_and_out_request_splitbill_status_declined"
    And User expect "in_and_out_request_split_bill_detail_contributor_two_status" equal with "in_and_out_request_splitbill_status_unpaid"
    And User expect "in_and_out_request_split_bill_detail_contributor_three_status" equal with "in_and_out_request_splitbill_status_unpaid"

  #JENI3226
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

  @android @uidatabound
  Scenario:JENI3226-C70156-Verify that 'Remove' button should be shown when split bill requests are paid
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User swipe up until found "in_and_out_request_splitbill_status_paid"
    Then "in_and_out_request_splitbill_delete_button" will be displayed

  @android @uidatabound
  Scenario:JENI3226-C70157-Verify that 'Remove' button should be shown when split bill requests are declined
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User swipe up until found "in_and_out_request_splitbill_status_declined"
    Then "in_and_out_request_splitbill_delete_button" will be displayed

  @android @uidatabound
  Scenario:JENI3226-C70158-Verify that 'Remove' button should be shown when split bill requests are resolved
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User swipe up until found "in_and_out_request_splitbill_status_resolved"
    Then "in_and_out_request_splitbill_delete_button" will be displayed

 #JENI2192 & JENI2587
  @android @uidatabound
  Scenario:JENI2192-C67449-Verify that 'Remove' button should be shown when pay me requests are paid
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User swipe up until found "in_and_out_request_splitbill_status_paid"
    Then "in_and_out_request_splitbill_delete_button" will be displayed

  @android @uidatabound
  Scenario:JENI2192-C67448-Verify that 'Remove' button should be shown when pay me requests are declined
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User swipe up until found "in_and_out_request_splitbill_status_declined"
    Then "in_and_out_request_splitbill_delete_button" will be displayed

  @android @uidatabound
  Scenario:JENI2192-C67450-Verify that when user click 'Remove' button a pop-up screen would be shown
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User swipe up until found "in_and_out_request_splitbill_status_declined"
    Then "in_and_out_request_splitbill_delete_button" will be displayed
    When User click "in_and_out_request_splitbill_delete_button"
    Then "in_and_out_request_splitbill_cancel_button" will be displayed
    And "in_and_out_request_splitbill_delete_button" will be displayed

  @android @uidatabound
  Scenario:JENI2192-C67456-Verify if user click 'Back': user will be brought back to the Request Tab
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User swipe up until found "in_and_out_request_splitbill_status_declined"
    Then "in_and_out_request_splitbill_delete_button" will be displayed
    When User click "in_and_out_request_splitbill_delete_button"
    And User click "in_and_out_request_splitbill_cancel_button"
    Then "in_and_out_request_tab" will be displayed

  @android @uidatabound @continous
  Scenario:JENI2192-C67457-Verify if user click 'Cancel': user will be shown the requests she/he was previously viewing (no refresh/update)
    Then "n_and_out_request_splitbill_status_declined" will be displayed

  @android @uidatabound
  Scenario:JENI2192-C67451-Verify that if user click 'Remove now': user will be brought back to the Request Tab
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User swipe up until found "in_and_out_request_splitbill_status_declined"
    Then "in_and_out_request_splitbill_delete_button" will be displayed
    When User click "in_and_out_request_splitbill_delete_button"
    And User click "in_and_out_request_splitbill_delete_button"
    Then "in_and_out_request_tab" will be displayed

  @android @uidatabound @continous
  Scenario:JENI2192-C67452-Verify that if user click 'Remove now': the listed requests is refreshed/updated
    Then "in_and_out_history_number_transaction_show_ten_label" will be displayed

  @android @uidatabound @continous
  Scenario:JENI2192-C67454-Verify that if user click 'Remove now': the removed request no longer displays when the revised requests are shown
    Then User expect "in_and_out_request_splitbill_status_declined" doesn't exist

  #JENI3228
  @android @uidatabound
  Scenario:JENI3228-C70530-Verify that when user click listed split bill which they triggered from transaction history, they should be shown split bill request details
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

    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_split"
    And User swipe up until found "in_and_out_request_splitbill_with_one"
    And User click "in_and_out_request_splitbill_with_one"
    Then "split_bill_currency_en" will be displayed
    And "in_and_out_request_split_bill_detail_page_title" will be displayed
    And "in_and_out_request_split_bill_detail_split_with_two_people" will be displayed
    And "in_and_out_request_split_bill_detail_amount" will be displayed
    And "in_and_out_request_split_bill_detail_note" will be displayed
    And "in_and_out_request_split_bill_detail_resolve_by" will be displayed
    And "in_and_out_request_split_bill_detail_email" will be displayed

  @android @uidatabound
  Scenario:JENI3228-C70531-Verify that Content shown on page uses English/Bahasa translations based on user language preference
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_split"
    And User swipe up until found "in_and_out_request_splitbill_with_one"
    And User click "in_and_out_request_splitbill_with_one"
    Then "split_bill_currency_en" will be displayed
    And "in_and_out_request_split_bill_detail_page_title" will be displayed
    And "in_and_out_request_split_bill_detail_split_with_two_people" will be displayed
    And "in_and_out_request_split_bill_detail_amount" will be displayed
    And "in_and_out_request_split_bill_detail_note" will be displayed
    And "in_and_out_request_split_bill_detail_resolve_by" will be displayed
    And "in_and_out_request_split_bill_detail_email" will be displayed

  @android @uidatabound
  Scenario:JENI3228-C70532-Verify that currency being used based on user language preference
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_split"
    And User swipe up until found "in_and_out_request_splitbill_with_one"
    And User click "in_and_out_request_splitbill_with_one"
    Then "split_bill_currency_en" will be displayed

  @android @uidatabound
  Scenario:JENI3228-C70534-Verify that user can see transaction narrative
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_split"
    And User swipe up until found "in_and_out_request_splitbill_narrative"
    Then "in_and_out_request_splitbill_narrative" will be displayed

  @android @uidatabound
  Scenario:JENI3228-C70535-Verify that user can see transaction narrative's initials in avatar
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_split"
    And User swipe up until found "in_and_out_request_splitbill_narrative_initial"
    Then "in_and_out_request_splitbill_narrative_initial" will be displayed

  @android @uidatabound
  Scenario:JENI3228-C70536-Verify that user can see total split bill amount
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_split"
    And User swipe up until found "in_and_out_request_splitbill_with_one"
    And User click "in_and_out_request_splitbill_with_one"
    Then "in_and_out_request_split_bill_detail_amount" will be displayed

  @android @uidatabound
  Scenario:JENI3228-C70537-Verify that user can see notes
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_split"
    And User swipe up until found "in_and_out_request_splitbill_with_one"
    And User click "in_and_out_request_splitbill_with_one"
    Then "in_and_out_request_split_bill_detail_note" will be displayed

  @android @uidatabound
  Scenario:JENI3228-C70538-Verify that user can see Overall split bill request status
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_split"
    And User swipe up until found "in_and_out_request_splitbill_with_one"
    And User click "in_and_out_request_splitbill_with_one"
    Then "in_and_out_request_splitbill_overall_status" will be displayed

  @android @uidatabound
  Scenario:JENI3228-C70539-Verify that user can see request date
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_split"
    And User swipe up until found "in_and_out_request_splitbill_with_one"
    And User click "in_and_out_request_splitbill_with_one"
    Then "in_and_out_request_splitbill_detail_request_date" will be displayed

  @android @uidatabound
  Scenario:JENI3228-C70540-Verify that user can see Resolved on date
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_split"
    And User swipe up until found "in_and_out_request_splitbill_with_one"
    And User click "in_and_out_request_splitbill_with_one"
    Then "in_and_out_request_splitbill_detail_resolved_date" will be displayed

  @android @uidatabound
  Scenario:JENI3228-C70541-Verify that user can see numbers of people who have paid or declined the split-bill request
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_split"
    And User swipe up until found "in_and_out_request_splitbill_with_one"
    And User click "in_and_out_request_splitbill_with_one"
    And User swipe up until found "in_and_out_request_splitbill_status_paid"
    Then "in_and_out_request_splitbill_status_paid" will be displayed
    When User swipe up until found "in_and_out_request_splitbill_status_declined"
    Then "in_and_out_request_splitbill_status_declined" will be displayed

  @android @uidatabound
  Scenario:JENI3228-C70542-Verify that user can view cashtag for **** users
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_split"
    And User swipe up until found "in_and_out_request_splitbill_with_one"
    And User click "in_and_out_request_splitbill_with_one"
    And User swipe up until found "in_and_out_request_splitbill_cashtag"
    Then "in_and_out_request_splitbill_cashtag" will be displayed

  @android @uidatabound
  Scenario:JENI3228-C70653-Verify Set Reminder options are available for ****-User Split Bill Participant with status Unpaid
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_split"
    And User swipe up until found "in_and_out_request_splitbill_with_one"
    And User click "in_and_out_request_splitbill_with_one"
    And User swipe up until found "in_and_out_request_splitbill_detail_send_reminder"
    Then "in_and_out_request_splitbill_detail_send_reminder" will be displayed

  @android @uidatabound
  Scenario:JENI3228-C70655-Verify Non-**** Split Bill Participant Status Can Be Updated Manually
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_split"
    And User swipe up until found "in_and_out_request_splitbill_with_one"
    And User click "in_and_out_request_splitbill_with_one"
    And User swipe up until found "in_and_out_request_splitbill_status_dropdown_first"
    Then "in_and_out_request_splitbill_status_dropdown_first" will be displayed
    When User select "in_and_out_request_splitbill_status_dropdown_first" dropdown with "in_and_out_request_splitbill_status_paid"

  @android @uidatabound
  Scenario:JENI3228-C70658-Verify Resolved Split Bill Request has Remove Request options at bottom part of Request Details
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User swipe up until found "in_and_out_request_splitbill_status_resolved"
    And User click "in_and_out_request_splitbill_status_resolved"
    When User swipe up until found "in_and_out_request_splitbill_delete_button"
    Then "in_and_out_request_splitbill_delete_button" will be displayed

  @android @uidatabound
  Scenario:JENI3228-C70661-Verify Details of Each Participant with Resolved status contain Individual Resolved Date
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User swipe up until found "in_and_out_request_splitbill_status_resolved"
    And User click "in_and_out_request_splitbill_status_resolved"
    When User swipe up until found "in_and_out_request_splitbill_detail_resolved_date"
    Then "in_and_out_request_splitbill_detail_resolved_date" will be displayed

  #JENI1162
  @android @uidatabound
  Scenario:JENI1162-C70568-Verify that drop-down should be shown when user click on category
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User swipe up until found "in_and_out_history_bene"
    And User click element with text "in_and_out_history_bene" 
    When User swipe up until found "in_and_out_history_category_dropdown"
    And "in_and_out_history_category_dropdown" will be displayed
  
  @android @uidatabound
  Scenario:JENI1162-C70571-Verify that Default category should be 'Uncategorized'
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User swipe up until found "in_and_out_history_bene"
    And User click element with text "in_and_out_history_bene"
    
    When User swipe up until found "in_and_out_history_category_dropdown"
    And User expect "in_and_out_history_category_dropdown" equal to "in_and_out_history_category_uncategorized"

  @android @uidatabound
  Scenario:JENI1162-C70572-Verify that user can view more categories using scroll inside the drop-down list
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User swipe up until found "in_and_out_history_bene"
    And User click element with text "in_and_out_history_bene" 
    When User swipe up until found "in_and_out_history_category_dropdown"
    And User select "in_and_out_history_category_dropdown" dropdown with "in_and_out_history_category_uncategorized"

  @android @uidatabound
  Scenario:JENI1162-C70575-Verify that user can change category when transaction category had already set previously
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User swipe up until found "in_and_out_history_bene"
    And User click element with text "in_and_out_history_bene" 
    When User swipe up until found "in_and_out_history_category_dropdown"
    And User select "in_and_out_history_category_dropdown" dropdown with "in_and_out_history_category_uncategorized"
    And User select "in_and_out_history_category_dropdown" dropdown with "in_and_out_history_category_entertaiment"
    
  @android @uidatabound
  Scenario:JENI1162-C70577-Verify that user can set category back to 'Uncategorized'
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User swipe up until found "in_and_out_history_bene"
    And User click element with text "in_and_out_history_bene" 
    When User swipe up until found "in_and_out_history_category_dropdown"
    And User select "in_and_out_history_category_dropdown" dropdown with "in_and_out_history_category_uncategorized"

  @android @uidatabound
  Scenario:JENI1162-C70588-Verify there should be a green check mark to indicate which category which is being selected
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User swipe up until found "in_and_out_history_bene"
    And User click element with text "in_and_out_history_bene" 
    When User swipe up until found "in_and_out_history_category_dropdown"
    And User click "in_and_out_history_category_dropdown" 
    Then "in_and_out_history_category_dropdown" will be displayed

  @android @uidatabound
  Scenario:JENI1166-C70159-Verify Split Bill Status: Paid
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_recipient_name_6"
    And User click "in_and_out_request_split_bill_history_split_resolved"
    And User expect "in_and_out_request_split_bill_detail_status_value" equal with "in_and_out_request_splitbill_status_paid"

  @android @uidatabound
  Scenario:JENI1166-C70161-Verify Split Bill Status: Resolve
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_recipient_name_6"
    And User click "in_and_out_request_split_bill_history_split_resolved"
    And User expect "in_and_out_request_split_bill_detail_status_value" equal with "in_and_out_request_splitbill_status_resolved"

  @android @uidatabound
  Scenario:JENI1166-C70160-Verify Split Bill Status: Decline
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_recipient_name_6"
    And User click "in_and_out_request_split_bill_history_split_resolved"
    And User expect "in_and_out_request_split_bill_detail_status_value" equal with "in_and_out_request_splitbill_status_declined"

  @android @endtoend
  Scenario:JENI3228-C75684-[Functionality] Verify Overall split bill status = "Unpaid"
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_request_split_bill_menu_one_****_unpaid_non_****_paid"
    And User swipe up until found "in_and_out_request_split_bill_menu_one_****_unpaid_non_****_paid"
    And User click "in_and_out_request_split_bill_menu_one_****_unpaid_non_****_paid"
    And User swipe up until found "in_and_out_request_splitbill_status_dropdown_first_non_****"
    And User select "in_and_out_request_splitbill_status_dropdown_first_non_****" dropdown with "in_and_out_request_splitbill_status_unpaid"
    And User swipe down until found "in_and_out_request_splitbill_overall_status"
    Then User expect "in_and_out_request_splitbill_overall_status" equal with "in_and_out_request_splitbill_status_unpaid"

  @android @uidatabound
  Scenario:JENI3228-C75685-[Functionality] Verify Overall split bill status in split bill detail: Split bill to 2 non **** friends, User has not updated all contributor status
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_request_split_bill_history_two_non_****_unpaid"
    And User swipe up until found "in_and_out_request_split_bill_history_two_non_****_unpaid"
    And User click "in_and_out_request_split_bill_history_two_non_****_unpaid"
    Then User expect "in_and_out_request_splitbill_overall_status" equal with "in_and_out_request_splitbill_status_unpaid"

  @android @uidatabound
  Scenario:JENI3228-C75686-[Functionality] Verify Overall split bill status in split bill detail: Split bill to 5 friends, 2 **** contributors not responded + 3 non **** contibutors status has not been updated
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_request_split_bill_history_two_****_unpaid_non_****_unpaid"
    And User swipe up until found "in_and_out_request_split_bill_history_two_****_unpaid_non_****_unpaid"
    And User click "in_and_out_request_split_bill_history_two_****_unpaid_non_****_unpaid"
    Then User expect "in_and_out_request_splitbill_overall_status" equal with "in_and_out_request_splitbill_status_unpaid"

  @android @uidatabound
  Scenario:JENI3228-C75687-[Functionality] Verify Overall split bill status in split bill detail: Split bill to 3 **** friends, 2 Paid  
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_request_split_bill_history_one_****_unpaid_two_****_paid"
    And User swipe up until found "in_and_out_request_split_bill_history_one_****_unpaid_two_****_paid"
    And User click "in_and_out_request_split_bill_history_one_****_unpaid_two_****_paid"
    Then User expect "in_and_out_request_splitbill_overall_status" equal with "in_and_out_request_splitbill_status_paid"

  @android @uidatabound
  Scenario:JENI3228-C75688-[Functionality] Verify Overall split bill status in split bill detail: Split bill to 2 non **** friends, 2 Paid
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_request_split_bill_history_two_non_****_paid"
    And User swipe up until found "in_and_out_request_split_bill_history_two_non_****_paid"
    And User click "in_and_out_request_split_bill_history_two_non_****_paid"
    Then User expect "in_and_out_request_splitbill_overall_status" equal with "in_and_out_request_splitbill_status_paid"

  @android @uidatabound
  Scenario:JENI3228-C75689-[Functionality] Verify Overall split bill status in split bill detail: Split bill to 3 friends, 2 **** contributors Paid + 1 non **** contributors Paid
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_request_split_bill_history_two_****_paid_one_non_****_paid"
    And User swipe up until found "in_and_out_request_split_bill_history_two_****_paid_one_non_****_paid"
    And User click "in_and_out_request_split_bill_history_two_****_paid_one_non_****_paid"
    Then User expect "in_and_out_request_splitbill_overall_status" equal with "in_and_out_request_splitbill_status_paid"

  @android @uidatabound
  Scenario:JENI3228-C75690-[Functionality] Verify Overall split bill status in split bill detail: Split bill to 4 **** friends, 4 Declined
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_request_split_bill_history_four_****_declined"
    And User swipe up until found "in_and_out_request_split_bill_history_four_****_declined"
    And User click "in_and_out_request_split_bill_history_four_****_declined"
    Then User expect "in_and_out_request_splitbill_overall_status" equal with "in_and_out_request_splitbill_status_declined"

  @android @uidatabound
  Scenario:JENI3228-C75691-[Functionality] Verify Overall split bill status in split bill detail: Split bill to 3 non **** friends, 3 Declined
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_request_split_bill_history_three_****_declined"
    And User swipe up until found "in_and_out_request_split_bill_history_three_****_declined"
    And User click "in_and_out_request_split_bill_history_three_****_declined"
    Then User expect "in_and_out_request_splitbill_overall_status" equal with "in_and_out_request_splitbill_status_declined"

  @android @uidatabound
  Scenario:JENI3228-C75692-[Functionality] Verify Overall split bill status in split bill detail: Split bill to 3 friends, 1 **** contributor Declined + 2 non **** contributor Declined
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_request_split_bill_menu_one_****_declined_two_non_****_declined"
    And User swipe up until found "in_and_out_request_split_bill_menu_one_****_declined_two_non_****_declined"
    And User click "in_and_out_request_split_bill_menu_one_****_declined_two_non_****_declined"
    Then User expect "in_and_out_request_splitbill_overall_status" equal with "in_and_out_request_splitbill_status_declined"

  @android @uidatabound
  Scenario:JENI3228-C75693-[Functionality] Verify Overall split bill status in split bill detail: Split bill to 2 **** friends, 1 Paid + 1 Declined
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_request_split_bill_history_one_****_paid_one_****_declined"
    And User swipe up until found "in_and_out_request_split_bill_history_one_****_paid_one_****_declined"
    And User click "in_and_out_request_split_bill_history_one_****_paid_one_****_declined"
    Then User expect "in_and_out_request_splitbill_overall_status" equal with "in_and_out_request_splitbill_status_resolved"

  @android @uidatabound
  Scenario:JENI3228-C75694-[Functionality] Verify Overall split bill status in split bill detail: Split bill to 2 non **** friends, 1 Paid + 1 Declined
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_request_split_bill_history_one_non_****_paid_one_non_****_declined"
    And User swipe up until found "in_and_out_request_split_bill_history_one_non_****_paid_one_non_****_declined"
    And User click "in_and_out_request_split_bill_history_one_non_****_paid_one_non_****_declined"
    Then User expect "in_and_out_request_splitbill_overall_status" equal with "in_and_out_request_splitbill_status_resolved"

  @android @uidatabound
  Scenario:JENI3228-C75695-[Functionality] Verify Overall split bill status in split bill detail: Split bill to 4 friends, 2 **** contributors Paid + 2 non **** contributors Declined
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_split"
    And User swipe up until found "in_and_out_request_splitbill_with_one"
    And User click "in_and_out_request_splitbill_with_one"
    Then User expect "in_and_out_request_splitbill_overall_status" equal with "in_and_out_request_splitbill_status_resolved"

  @android @uidatabound
  Scenario:JENI3228-C75696-[Functionality] Verify Overall split bill status in split bill detail: Split bill to 4 friends, 2 **** contributors Declined + 2 non **** contributors Paid
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_request_split_bill_history_two_****_paid_two_non_****_declined"
    And User swipe up until found "in_and_out_request_split_bill_history_two_****_paid_two_non_****_declined"
    And User click "in_and_out_request_split_bill_history_two_****_paid_two_non_****_declined"
    Then User expect "in_and_out_request_splitbill_overall_status" equal with "in_and_out_request_splitbill_status_resolved"

  @android @uidatabound
  Scenario:JENI3228-C75697-[Functionality] Verify Overall split bill status in split bill detail: Split bill to 4 **** friends, 3 Paid + 1 Not Responded
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_request_split_bill_history_three_****_paid_one_****_unpaid"
    And User swipe up until found "in_and_out_request_split_bill_history_three_****_paid_one_****_unpaid"
    And User click "in_and_out_request_split_bill_history_three_****_paid_one_****_unpaid"
    Then User expect "in_and_out_request_splitbill_overall_status" equal with "in_and_out_request_splitbill_status_partially"

  @android @uidatabound
  Scenario:JENI3228-C75698-[Functionality] Verify Overall split bill status in split bill detail: Split bill to 3 non **** friends, 2 Paid + 1 non **** contributor status is not updated
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_request_split_bill_history_two_non_****_paid_one_non_****_unpaid"
    And User swipe up until found "in_and_out_request_split_bill_history_two_non_****_paid_one_non_****_unpaid"
    And User click "in_and_out_request_split_bill_history_two_non_****_paid_one_non_****_unpaid"
    Then User expect "in_and_out_request_splitbill_overall_status" equal with "in_and_out_request_splitbill_status_partially"

  @android @uidatabound
  Scenario:JENI3228-C75699-[Functionality] Verify Overall split bill status in split bill detail: Split bill to 2 friends, 1 **** contributor Paid + 1 non **** contributor status is not updated
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_request_split_bill_history_one_****_paid_one_****_unpaid"
    And User swipe up until found "in_and_out_request_split_bill_history_one_****_paid_one_****_unpaid"
    And User click "in_and_out_request_split_bill_history_one_****_paid_one_****_unpaid"
    Then User expect "in_and_out_request_splitbill_overall_status" equal with "in_and_out_request_splitbill_status_partially"

  @android @uidatabound
  Scenario:JENI3228-C75700-[Functionality] Verify Overall split bill status in split bill detail: Split bill to 3 friends, 1 **** contributor has not responded + 2 non **** contributor paid
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_request_split_bill_history_two_non_****_paid_one_non_****_unpaid"
    And User swipe up until found "in_and_out_request_split_bill_history_two_non_****_paid_one_non_****_unpaid"
    And User click "in_and_out_request_split_bill_history_two_non_****_paid_one_non_****_unpaid"
    Then User expect "in_and_out_request_splitbill_overall_status" equal with "in_and_out_request_splitbill_status_partially"

  @android @uidatabound
  Scenario:JENI3228-C75701-[Functionality] Verify Overall split bill status in split bill detail: Split bill to 4 **** friends, 2 Decline + 2 Not Responded
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_request_split_bill_history_two_****_declined_two_****_unpaid"
    And User swipe up until found "in_and_out_request_split_bill_history_two_****_declined_two_****_unpaid"
    And User click "in_and_out_request_split_bill_history_two_****_declined_two_****_unpaid"
    Then User expect "in_and_out_request_splitbill_overall_status" equal with "in_and_out_request_splitbill_status_partially"

  @android @uidatabound
  Scenario:JENI3228-C75705-[Functionality] Verify Overall split bill status in split bill detail: Split bill to 5 friends, 2 **** contributors not responded + 1 **** contributors Paid + 2 **** contributors Declined
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_request_split_bill_history_two_****_unpaid_two_****_declined_one_****_paid"
    And User swipe up until found "in_and_out_request_split_bill_history_two_****_unpaid_two_****_declined_one_****_paid"
    And User click "in_and_out_request_split_bill_history_two_****_unpaid_two_****_declined_one_****_paid"
    Then User expect "in_and_out_request_splitbill_overall_status" equal with "in_and_out_request_splitbill_status_partially"

  @android @uidatabound
  Scenario:JENI3228-C75706-[Functionality] Verify Overall split bill status in split bill detail: Split bill to 5 friends, 2 Non-**** contributors not responded + 2 Non-**** contributors Paid + 1 Non-**** contributors Declined
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_request_split_bill_history_two_****_unpaid_one_****_declined_two_****_paid"
    And User swipe up until found "in_and_out_request_split_bill_history_two_****_unpaid_one_****_declined_two_****_paid"
    And User click "in_and_out_request_split_bill_history_two_****_unpaid_one_****_declined_two_****_paid"
    Then User expect "in_and_out_request_splitbill_overall_status" equal with "in_and_out_request_splitbill_status_partially"

  @android @uidatabound
  Scenario:JENI3228-C75707-[Functionality] Verify Overall split bill status in split bill detail: Split bill to 5 friends, 1 **** contributors not responded + 2 **** contributors Paid + 3 Non-**** contributors Declined
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_request_split_bill_history_one_****_unpaid_three_non_****_declined_two_****_paid"
    And User swipe up until found "in_and_out_request_split_bill_history_one_****_unpaid_three_non_****_declined_two_****_paid"
    And User click "in_and_out_request_split_bill_history_one_****_unpaid_three_non_****_declined_two_****_paid"
    Then User expect "in_and_out_request_splitbill_overall_status" equal with "in_and_out_request_splitbill_status_partially"

  @android @uidatabound
  Scenario:JENI3228-C75708-[Functionality] Verify Overall split bill status in split bill detail: Split bill to 4 friends, 2 **** contributors Declined + 1 Non-**** contributors Not Responded + 1 Non-**** contributors Paid
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_request_split_bill_history_two_****_declined_one_non_****_unpaid_one_non_****_paid"
    And User swipe up until found "in_and_out_request_split_bill_history_two_****_declined_one_non_****_unpaid_one_non_****_paid"
    And User click "in_and_out_request_split_bill_history_two_****_declined_one_non_****_unpaid_one_non_****_paid"
    Then User expect "in_and_out_request_splitbill_overall_status" equal with "in_and_out_request_splitbill_status_partially"

  @android @uidatabound
  Scenario:JENI3228-C75709-[Functionality] Verify Overall split bill status in split bill detail: Split bill to 6 friends, 3 **** contributors Declined + 1 Non-**** contributors Not Responded + 2 Non-**** contributors Paid
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_request_split_bill_history_three_****_declined_one_non_****_unpaid_two_non_****_paid"
    And User swipe up until found "in_and_out_request_split_bill_history_three_****_declined_one_non_****_unpaid_two_non_****_paid"
    And User click "in_and_out_request_split_bill_history_three_****_declined_one_non_****_unpaid_two_non_****_paid"
    Then User expect "in_and_out_request_splitbill_overall_status" equal with "in_and_out_request_splitbill_status_partially"

  @android @uidatabound
  Scenario:JENI3228-C75710-[Functionality] Verify Overall split bill status in split bill detail: Split bill to 4 friends, 1 **** contributors Paid + 2 Non-**** contributors Not Responded + 1 Non-**** contributors Declined
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_request_split_bill_history_one_****_paid_two_non_****_unpaid_one_non_****_declined"
    And User swipe up until found "in_and_out_request_split_bill_history_one_****_paid_two_non_****_unpaid_one_non_****_declined"
    And User click "in_and_out_request_split_bill_history_one_****_paid_two_non_****_unpaid_one_non_****_declined"
    Then User expect "in_and_out_request_splitbill_overall_status" equal with "in_and_out_request_splitbill_status_partially"

  @android @uidatabound
  Scenario:JENI3228-C75702-[Functionality] Verify Overall split bill status in split bill detail: Split bill to 3 non **** friends, 1 Declined + 2 Not Responded
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_request_split_bill_history_one_non_****_declined_two_non_****_unpaid"
    And User swipe up until found "in_and_out_request_split_bill_history_one_non_****_declined_two_non_****_unpaid"
    And User click "in_and_out_request_split_bill_history_one_non_****_declined_two_non_****_unpaid"
    Then User expect "in_and_out_request_splitbill_overall_status" equal with "in_and_out_request_splitbill_status_partially"

  @android @uidatabound
  Scenario:JENI3228-C75703-[Functionality] Verify Overall split bill status in split bill detail: Split bill to 3 friends, 1 **** contributor Declined + 2 Non **** contributor status has not been updated
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_request_split_bill_history_one_****_declined_two_non_****_unpaid"
    And User swipe up until found "in_and_out_request_split_bill_history_one_****_declined_two_non_****_unpaid"
    And User click "in_and_out_request_split_bill_history_one_****_declined_two_non_****_unpaid"
    Then User expect "in_and_out_request_splitbill_overall_status" equal with "in_and_out_request_splitbill_status_partially"

  @android @uidatabound
  Scenario:JENI3228-C75704-[Functionality] Verify Overall split bill status in split bill detail: Split bill to 5 friends, 2 **** contributors have not responded + 3 Non **** contributors Declined
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_request_split_bill_history_two_****_unpaid_three_non_****_declined"
    And User swipe up until found "in_and_out_request_split_bill_history_two_****_unpaid_three_non_****_declined"
    And User click "in_and_out_request_split_bill_history_two_****_unpaid_three_non_****_declined"
    Then User expect "in_and_out_request_splitbill_overall_status" equal with "in_and_out_request_splitbill_status_partially"

  #JENI3811
  @android @uidatabound
  Scenario:JENI3811-C78694-Allowance to split-bill from Trx History should be shown on applicable external outgoing transactions only
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User swipe up until found "in_and_out_history_bersama_atm"
    And User click element with text "in_and_out_history_bersama_atm"
    And User swipe up until found "in_and_out_history_detail_splitbill_button"
    Then "in_and_out_history_detail_splitbill_button" will be displayed
    
  @android @uidatabound
  Scenario:JENI3811-C78695-Navigation from trx history for creating a split-bill request
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User swipe up until found "in_and_out_history_bersama_atm"
    And User click element with text "in_and_out_history_bersama_atm"
    And User swipe up until found "in_and_out_history_detail_splitbill_button"
    Then "in_and_out_history_detail_splitbill_button" will be displayed
    
    When User click "in_and_out_history_detail_splitbill_button"
    Then "split_bill_title" will be displayed
    And "split_bill_input_manually_button" will be displayed
 
  @android @uidatabound
  Scenario:JENI3811-C80760-User should be able to reset contribution amount into default value after editing by tapping reset button
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User swipe up until found "in_and_out_history_bersama_atm"
    And User click element with text "in_and_out_history_bersama_atm"
    And User swipe up until found "in_and_out_history_detail_splitbill_button"
    And User click "in_and_out_history_detail_splitbill_button"
    
    When User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_valid_email_address_2"
    And User click "split_bill_add_button"
    And User click "split_bill_done_button"
    
    When User fill "split_bill_amount_participant_one_amount" with "split_bill_adjust_amount_anamika_data_text"
    And User click "split_bill_reset_button"
    #Add expected after data provided

  @android @uidatabound
  Scenario:JENI3841-C84147-[Functionality] 2. User has not used Split Bill on transaction
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_history_bill_payment"
    And User click "in_and_out_transaction_name_one" with value "in_and_out_transaction_balance_one"
    Then "in_and_out_history_detail_splitbill_button" will be displayed

  @continuous @android @uidatabound
  Scenario:JENI3841-C84146-[Functionality] 1. Navigate to transaction details & content displayed
    Then "in_and_out_history_bill_payment_detail_title" will be displayed
    And "in_and_out_history_bill_payment_container" will be displayed
    And "in_and_out_history_bill_payment_download_button" will be displayed
    And "in_and_out_history_bill_payment_biller_name_one" will be displayed
    And "in_and_out_history_bill_payment_more_info_biller_name_one" will be displayed
    And "in_and_out_history_bill_payment_avatar_logo" will be displayed
    And "in_and_out_history_bill_payment_transaction_amount" will be displayed
    And "in_and_out_history_bill_payment_notes" will be displayed
    And "in_and_out_history_bill_payment_date_timestamp" will be displayed
    And "in_and_out_history_bill_payment_transaction_id" will be displayed
    And "in_and_out_history_bill_payment_category_name" will be displayed
    And "in_and_out_history_bill_payment_action_title" will be displayed

  @continuous @android @uidatabound
  Scenario:JENI3841-C84156-[Layout] Verify the UI  
    Then "in_and_out_history_bill_payment_detail_title" will be displayed
    And "in_and_out_history_bill_payment_container" will be displayed
    And "in_and_out_history_bill_payment_download_button" will be displayed
    And "in_and_out_history_bill_payment_biller_name_one" will be displayed
    And "in_and_out_history_bill_payment_more_info_biller_name_one" will be displayed
    And "in_and_out_history_bill_payment_avatar_logo" will be displayed
    And "in_and_out_history_bill_payment_transaction_amount" will be displayed
    And "in_and_out_history_bill_payment_notes" will be displayed
    And "in_and_out_history_bill_payment_date_timestamp" will be displayed
    And "in_and_out_history_bill_payment_transaction_id" will be displayed
    And "in_and_out_history_bill_payment_category_name" will be displayed
    And "in_and_out_history_bill_payment_action_title" will be displayed

  @continuous @android @uidatabound
  Scenario:JENI3841-C84149-[Functionality] 4. User has NOT changed/set a category name for trx
    Then User expect "in_and_out_history_bill_payment_category_name" equal with "in_and_out_request_payme_default_category"

  @android @uidatabound
  Scenario:JENI3841-C84148-[Functionality] 3. User has already performed a Split Bill request on trx
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_history_bill_payment"
    And User click "in_and_out_transaction_name_one" with value "in_and_out_transaction_balance_one"
    Then User expect "in_and_out_history_detail_splitbill_button" doesn't exist
    And User expect "in_and_out_history_bill_payment_split_with" equal with "in_and_out_history_bill_payment_split_with"

  @android @uidatabound
  Scenario:JENI3841-C84152-[Functionality] 7. Edge case - Transaction details are not retrieved (due to server unavailability or network latency etc)
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_history_bill_payment"
    When User turn off network connection for data and wifi
    And User click "in_and_out_transaction_name_one" with value "in_and_out_transaction_balance_one"
    Then User expect "dashboard_connection_loss_notification" equal with "connection_loss_notification"
    And User turn on network connection for data and wifi

  @android @uidatabound
  Scenario:JENI3841-C84157-[Layout] Verify translation between ID and EN
    Given User is on in and out page in Indonesia language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_history_bill_payment"
    And User click "in_and_out_transaction_name_one" with value "in_and_out_transaction_balance_one"
    Then "in_and_out_history_detail_splitbill_button" will be displayed
    And "in_and_out_history_bill_payment_detail_title_id" will be displayed
    And "in_and_out_history_bill_payment_containe_idr" will be displayed
    And "in_and_out_history_bill_payment_download_button_id" will be displayed
    And "in_and_out_history_bill_payment_biller_name_one_id" will be displayed
    And "in_and_out_history_bill_payment_more_info_biller_name_one_id" will be displayed
    And "in_and_out_history_bill_payment_avatar_logo_id" will be displayed
    And "in_and_out_history_bill_payment_transaction_amount_id" will be displayed
    And "in_and_out_history_bill_payment_notes_id" will be displayed
    And "in_and_out_history_bill_payment_date_timestamp_id" will be displayed
    And "in_and_out_history_bill_payment_transaction_id" will be displayed
    And "in_and_out_history_bill_payment_category_name_id" will be displayed
    And "in_and_out_history_bill_payment_action_title_id" will be displayed

  @android @uidatabound
  Scenario:JENI4072-C84202-[Functionality] 2. User has not used Split Bill on transaction
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_history_payment_with_card"
    And User click "in_and_out_transaction_name_one" with value "in_and_out_transaction_balance_one"
    Then "in_and_out_history_detail_splitbill_button" will be displayed

  @continuous @android @uidatabound
  Scenario:JENI4072-C84201-[Functionality] 1. Navigate to transaction details & content displayed
    Then "in_and_out_history_card_payment_detail_title" will be displayed
    And "in_and_out_history_card_payment_container" will be displayed
    And "in_and_out_history_card_payment_download_button" will be displayed
    And "in_and_out_history_card_payment_biller_name_one" will be displayed
    And "in_and_out_history_card_payment_more_info_biller_name_one" will be displayed
    And "in_and_out_history_card_payment_avatar_logo" will be displayed
    And "in_and_out_history_card_payment_transaction_amount" will be displayed
    And "in_and_out_history_card_payment_date_timestamp" will be displayed
    And "in_and_out_history_card_payment_transaction_id" will be displayed
    And "in_and_out_history_card_payment_category_name" will be displayed
    And "in_and_out_history_card_payment_action_title" will be displayed

  @continuous @android @uidatabound
  Scenario:JENI4072-C84204-[Functionality] 4. User has NOT changed/set a category name for trx
    Then User expect "in_and_out_history_bill_payment_category_name" equal with "in_and_out_request_payme_default_category"

  @android @uidatabound
  Scenario:JENI4072-C84203-[Functionality] 3. User has already performed a Split Bill request on trx
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_history_payment_with_card"
    And User click "in_and_out_transaction_name_one" with value "in_and_out_transaction_balance_one"
    Then User expect "in_and_out_history_detail_splitbill_button" doesn't exist
    And User expect "in_and_out_history_bill_payment_split_with" equal with "in_and_out_history_bill_payment_split_with"

  @android @uidatabound
  Scenario:JENI3841-C84206-[Functionality] 6. Edge case - Transaction details are not retrieved (due to server unavailability or network latency etc)
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_history_payment_with_card"
    When User turn off network connection for data and wifi
    And User click "in_and_out_transaction_name_one" with value "in_and_out_transaction_balance_one"
    Then User expect "dashboard_connection_loss_notification" equal with "connection_loss_notification"
    And User turn on network connection for data and wifi

  @android @uidatabound
  Scenario:JENI4072-C84209-[Layout] Verify the UI
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_history_payment_with_card"
    And User click "in_and_out_transaction_name_one" with value "in_and_out_transaction_balance_one"
    Then "in_and_out_history_detail_splitbill_button" will be displayed
    And "in_and_out_history_card_payment_detail_title" will be displayed
    And "in_and_out_history_card_payment_container" will be displayed
    And "in_and_out_history_card_payment_download_button" will be displayed
    And "in_and_out_history_card_payment_biller_name_one" will be displayed
    And "in_and_out_history_card_payment_more_info_biller_name_one" will be displayed
    And "in_and_out_history_card_payment_avatar_logo" will be displayed
    And "in_and_out_history_card_payment_transaction_amount" will be displayed
    And "in_and_out_history_card_payment_date_timestamp" will be displayed
    And "in_and_out_history_card_payment_transaction_id" will be displayed
    And "in_and_out_history_card_payment_category_name" will be displayed
    And "in_and_out_history_card_payment_action_title" will be displayed

  @android @uidatabound
  Scenario:JENI3841-C84210-[Layout] Verify translation between ID and EN
    Given User is on in and out page in Indonesia language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_history_payment_with_card"
    And User click "in_and_out_transaction_name_one" with value "in_and_out_transaction_balance_one"
    Then "in_and_out_history_detail_splitbill_button" will be displayed
    And "in_and_out_history_bill_payment_detail_title_id" will be displayed
    And "in_and_out_history_bill_payment_containe_idr" will be displayed
    And "in_and_out_history_bill_payment_download_button_id" will be displayed
    And "in_and_out_history_bill_payment_biller_name_one_id" will be displayed
    And "in_and_out_history_bill_payment_more_info_biller_name_one_id" will be displayed
    And "in_and_out_history_bill_payment_avatar_logo_id" will be displayed
    And "in_and_out_history_bill_payment_transaction_amount_id" will be displayed
    And "in_and_out_history_bill_payment_notes_id" will be displayed
    And "in_and_out_history_bill_payment_date_timestamp_id" will be displayed
    And "in_and_out_history_bill_payment_transaction_id" will be displayed
    And "in_and_out_history_bill_payment_category_name_id" will be displayed
    And "in_and_out_history_bill_payment_action_title_id" will be displayed

  @continuous @android @endtoend
  Scenario:JENI3841-C84150-[Functionality] 5. User has changed OR set a category name for trx earlier
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_history_payment_with_card"
    And User click "in_and_out_transaction_name_one" with value "in_and_out_transaction_balance_one"
    When User click "in_and_out_history_bill_payment_category_name"
    And User click "in_and_out_category_chidren_button"
    And User expect "in_and_out_history_bill_payment_category_name" equal with "in_and_out_category_1"

  @continuous @android @endtoend
  Scenario:JENI4072-C84205-[Functionality] 5. User has changed OR set a category name for trx earlier
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_history_payment_with_card"
    And User click "in_and_out_transaction_name_one" with value "in_and_out_transaction_balance_one"
    When User click "in_and_out_history_bill_payment_category_name"
    And User click "in_and_out_category_chidren_button"
    And User expect "in_and_out_history_bill_payment_category_name" equal with "in_and_out_category_1"

  #JENI3842
  @android @uidatabound
  Scenario:JENI3842-C84115-[Functionality] 2. User has not used Split Bill on transaction
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_history_payment_with_card"
    And User click "in_and_out_transaction_name_one" with value "in_and_out_transaction_balance_one"
    Then "in_and_out_history_detail_splitbill_button" will be displayed

  @continuous @android @uidatabound
  Scenario:JENI3842-C84114-[Functionality] 1. Navigate to transaction details & content displayed
    Then "in_and_out_history_cash_withdrawal_detail_title" will be displayed
    And "in_and_out_history_cash_withdrawal_download_button" will be displayed
    And "in_and_out_history_cash_withdrawal_biller_name_one" will be displayed
    And "in_and_out_history_cash_withdrawal_avatar_logo" will be displayed
    And "in_and_out_history_cash_withdrawal_transaction_amount" will be displayed
    And "in_and_out_history_cash_withdrawal_date_timestamp" will be displayed
    And "in_and_out_history_cash_withdrawal_transaction_id" will be displayed
    And "in_and_out_history_cash_withdrawal_category_name" will be displayed
    And "in_and_out_history_cash_withdrawal_action_title" will be displayed

  @continuous @android @uidatabound
  Scenario:JENI3842-C84117-[Functionality] 4. User has NOT changed/set a category name for trx
    Then User expect "in_and_out_history_bill_payment_category_name" equal with "in_and_out_request_payme_default_category"

  @android @uidatabound
  Scenario:JENI3842-C84116-[Functionality] 3. User has already performed a Split Bill request on trx
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_history_payment_with_card"
    And User click "in_and_out_transaction_name_one" with value "in_and_out_transaction_balance_one"
    Then User expect "in_and_out_history_detail_splitbill_button" doesn't exist
    And User expect "in_and_out_history_bill_payment_split_with" equal with "in_and_out_history_bill_payment_split_with"

  @android @uidatabound
  Scenario:JENI3842-C84120-[Functionality] 7. Edge case - Transaction details are not retrieved (due to server unavailability or network latency etc)
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_history_bill_payment"
    When User turn off network connection for data and wifi
    And User click "in_and_out_transaction_name_one" with value "in_and_out_transaction_balance_one"
    Then User expect "dashboard_connection_loss_notification" equal with "connection_loss_notification"
    And User turn on network connection for data and wifi

  @continuous @android @endtoend
  Scenario:JENI3842-C84118-[Functionality] 5. User has changed OR set a category name for trx earlier
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_history_payment_with_card"
    And User click "in_and_out_transaction_name_one" with value "in_and_out_transaction_balance_one"
    When User click "in_and_out_history_bill_payment_category_name"
    And User click "in_and_out_category_chidren_button"
    And User expect "in_and_out_history_bill_payment_category_name" equal with "in_and_out_category_1"
  
  #JENI3843
  @android @uidatabound
  Scenario:JENI3843-C84137-[Functionality] 2. User has not used Split Bill on transaction
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_history_payment_with_card"
    And User click "in_and_out_transaction_name_one" with value "in_and_out_transaction_balance_one"
    Then "in_and_out_history_detail_splitbill_button" will be displayed

  @continuous @android @uidatabound
  Scenario:JENI3843-C84136-[Functionality] 1. Navigate to transaction details & content displayed
    Then "in_and_out_history_outgoing_transfer_detail_title" will be displayed
    And "in_and_out_history_outgoing_transfer_download_button" will be displayed
    And "in_and_out_history_outgoing_transfer_biller_name_one" will be displayed
    And "in_and_out_history_outgoing_transfer_avatar_logo" will be displayed
    And "in_and_out_history_outgoing_transfer_transaction_amount" will be displayed
    And "in_and_out_history_outgoing_transfer_date_timestamp" will be displayed
    And "in_and_out_history_outgoing_transfer_transaction_id" will be displayed
    And "in_and_out_history_outgoing_transfer_category_name" will be displayed
    And "in_and_out_history_outgoing_transfer_action_title" will be displayed

  @continuous @android @uidatabound
  Scenario:JENI3843-C84139-[Functionality] 4. User has NOT changed/set a category name for trx
    Then User expect "in_and_out_history_bill_payment_category_name" equal with "in_and_out_request_payme_default_category"

  @android @uidatabound
  Scenario:JENI3843-C84138-[Functionality] 3. User has already performed a Split Bill request on trx
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_history_payment_with_card"
    And User click "in_and_out_transaction_name_one" with value "in_and_out_transaction_balance_one"
    Then User expect "in_and_out_history_detail_splitbill_button" doesn't exist
    And User expect "in_and_out_history_bill_payment_split_with" equal with "in_and_out_history_bill_payment_split_with"

  @android @uidatabound
  Scenario:JENI3843-C84142-[Functionality] 7. Edge case - Transaction details are not retrieved (due to server unavailability or network latency etc)
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_history_bill_payment"
    When User turn off network connection for data and wifi
    And User click "in_and_out_transaction_name_one" with value "in_and_out_transaction_balance_one"
    Then User expect "dashboard_connection_loss_notification" equal with "connection_loss_notification"
    And User turn on network connection for data and wifi

  @continuous @android @endtoend
  Scenario:JENI3843-C84140-[Functionality] 5. User has changed OR set a category name for trx earlier
    Given User is on in and out page in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_history_payment_with_card"
    And User click "in_and_out_transaction_name_one" with value "in_and_out_transaction_balance_one"
    When User click "in_and_out_history_bill_payment_category_name"
    And User click "in_and_out_category_chidren_button"
    And User expect "in_and_out_history_bill_payment_category_name" equal with "in_and_out_category_1"

  #JENI4055
  @android @uidatabound
  Scenario:JENI4055-C94143-Scenario: Navigate and view Push-Payment Details Page
    Given User is on in and out upcoming tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_history_payment_with_card"
    And User click "in_and_out_transaction_name_one" with value "in_and_out_transaction_balance_one"
    Then "in_and_out_upcoming_push_payment_recipient_info" will be displayed
    And "in_and_out_upcoming_push_payment_avatar_logo" will be displayed
    And "in_and_out_upcoming_push_payment_amount" will be displayed
    And "in_and_out_upcoming_push_payment_notes" will be displayed
    And "in_and_out_upcoming_push_payment_notes_field" will be displayed
    And "in_and_out_upcoming_push_payment_transfer_date" will be displayed
    And "in_and_out_upcoming_push_payment_transaction_id" will be displayed
    And "in_and_out_upcoming_push_payment_cancel_button" will be displayed
    And "in_and_out_upcoming_push_payment_category_dropdown" will be displayed

  @android @uidatabound
  Scenario:JENI4055-C94144-Scenario: Avatar and Logo
    Given User is on in and out upcoming tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_history_payment_with_card"
    And User click "in_and_out_transaction_name_one" with value "in_and_out_transaction_balance_one"
    And "in_and_out_upcoming_push_payment_avatar_logo" will be displayed

  @android @uidatabound
  Scenario:JENI4055-C94145-Scenario: Note was NOT added in Push-Payment
    Given User is on in and out upcoming tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_history_payment_with_card"
    Then User click "in_and_out_upcoming_push_payment_notes_field" with value "in_and_out_upcoming_notes_blank"
    

  @android @uidatabound
  Scenario:JENI4055-C94146-Scenario: Note was added in Push-Payment
    Given User is on in and out upcoming tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_history_payment_with_card"
    Then User click "in_and_out_upcoming_push_payment_notes_field" with value "in_and_out_upcoming_notes_filled"

  @android @uidatabound
  Scenario:JENI4055-C94148-[Layout] Verify the UI
    Given User is on in and out upcoming tab in English language with "in_and_out_dynamic"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_history_payment_with_card"
    And User click "in_and_out_transaction_name_one" with value "in_and_out_transaction_balance_one"
    Then "in_and_out_upcoming_push_payment_recipient_info" will be displayed
    And "in_and_out_upcoming_push_payment_avatar_logo" will be displayed
    And "in_and_out_upcoming_push_payment_amount" will be displayed
    And "in_and_out_upcoming_push_payment_notes" will be displayed
    And "in_and_out_upcoming_push_payment_notes_field" will be displayed
    And "in_and_out_upcoming_push_payment_transfer_date" will be displayed
    And "in_and_out_upcoming_push_payment_transaction_id" will be displayed
    And "in_and_out_upcoming_push_payment_cancel_button" will be displayed
    And "in_and_out_upcoming_push_payment_category_dropdown" will be displayed

  @android @uidatabound @continuous
  Scenario:JENI4055-C94149-[Layout] Verify translation between ID and EN
    Then "in_and_out_upcoming_push_payment_recipient_info" will be displayed
    And "in_and_out_upcoming_push_payment_avatar_logo" will be displayed
    And "in_and_out_upcoming_push_payment_amount" will be displayed
    And "in_and_out_upcoming_push_payment_notes" will be displayed
    And "in_and_out_upcoming_push_payment_notes_field" will be displayed
    And "in_and_out_upcoming_push_payment_transfer_date" will be displayed
    And "in_and_out_upcoming_push_payment_transaction_id" will be displayed
    And "in_and_out_upcoming_push_payment_cancel_button" will be displayed
    And "in_and_out_upcoming_push_payment_category_dropdown" will be displayed

    When User change language to "language_id"
    And User click "dashboard_hamburger_icon"  
    And User click "in_and_out_menu"
    And User click "in_and_out_upcoming_tab"
    When User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_history_payment_with_card"
    And User click "in_and_out_transaction_name_one" with value "in_and_out_transaction_balance_one"

    Then "in_and_out_upcoming_push_payment_recipient_info_id" will be displayed
    And "in_and_out_upcoming_push_payment_avatar_logo" will be displayed
    And "in_and_out_upcoming_push_payment_amount_id" will be displayed
    And "in_and_out_upcoming_push_payment_notes_id" will be displayed
    And "in_and_out_upcoming_push_payment_notes_field_id" will be displayed
    And "in_and_out_upcoming_push_payment_transfer_date" will be displayed
    And "in_and_out_upcoming_push_payment_transaction_id" will be displayed
    And "in_and_out_upcoming_push_payment_cancel_button_id" will be displayed
    And "in_and_out_upcoming_push_payment_category_dropdown" will be displayed

  #JENI1305
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

  #JENI3832
  @android @uidatabound
  Scenario:JENI3832-C80559-Scenario: Mobile Native
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User swipe up to "in_and_out_request_payme_handphone" text
    And User click element with text "in_and_out_request_payme_handphone"
    Then "in_and_out_request_payme_details_title" will be displayed
    When User click "back_button"
    Then "in_and_out_request_tab" will be displayed

  @android @uidatabound @continuous
  Scenario:JENI3832-C80560-Scenario: Navigate to Pay-Me Details page & content
    When User swipe up to "in_and_out_request_payme_handphone" text
    And User click element with text "in_and_out_request_payme_handphone"
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
    When User swipe up to "in_and_out_request_payme_handphone" text
    And User click element with text "in_and_out_request_payme_handphone"
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

  #JENI857
  @android @uidatabound
  Scenario:JENI857-C80590-Default payment status when I have not set it manually
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User swipe up to "in_and_out_request_payme_handphone" text
    And User click element with text "in_and_out_request_payme_handphone"
    Then "in_and_out_request_splitbill_status_unpaid" will be displayed
    
    When User click "in_and_out_request_payme_details_dropdown_status"
    Then "in_and_out_request_splitbill_status_paid" will be displayed
    And "in_and_out_request_splitbill_status_unpaid" will be displayed
    And "in_and_out_request_splitbill_status_declined" will be displayed
    And "in_and_out_request_payme_details_select_mark" will be displayed

  @android @uidatabound
  Scenario:JENI857-C80591-the checkmark displays by default
    Given User is on in and out request tab in English language with "in_and_out_dynamic"
    When User swipe up to "in_and_out_request_payme_handphone" text
    And User click element with text "in_and_out_request_payme_handphone"
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
    When User swipe up to "in_and_out_request_payme_handphone" text
    And User click element with text "in_and_out_request_payme_handphone"
    And User click "in_and_out_request_payme_details_dropdown_status"
    And User click "in_and_out_request_payme_details_status_unpaid"
    Then element with "in_and_out_request_payme_details_blank_resolved_date" text will be displayed

  #JENI3485
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

  #JENI3820
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
    And User expect "in_and_out_request_payme_handphone" element not displayed

  @android @ios @uispecific
  Scenario:JENI1159/2944-C67393-[Functionality] Verify when the number being shown is equal to numbers of filters applied
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User check and click "tutorial_close" if exist
    When User click "in_and_out_filter_button"
    And User set filter for amount range from 111 to 1111111
    Then "in_and_out_filter_screen" will be displayed 
    And "in_and_out_fieldtext_comma" will be displayed
    And "in_and_out_filter_amount_range" will be displayed

  @android @uispecific 
  Scenario:JENI1159/2944-C67402-[Functionality] Clicking 'APPLY FILTER' button when 'Amount Range' filter is applied
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User check and click "tutorial_close" if exist
    When User click "in_and_out_filter_button"
    And User set filter for amount range from 1000 to 100000
    And User click "in_and_out_apply_filter_button"
    Then User expect all "in_and_out_history_amount" displayed, have value between "card_center_filter_amount_range_1" until "card_center_filter_amount_range_3" 
    And User expect "in_and_out_filter_bubble" equal with "in_and_out_one_value"

  @android @uispecific 
  Scenario:JENI2117-C69701-Verify time range filter for 'This month': User should be taken back to the Transactions Tab of 'In & Out' landing page
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User check and click "tutorial_close" if exist    
    When User click "in_and_out_filter_button"
    And User set filter for time range to this month
    When User click "in_and_out_apply_filter_button"
    Then "in_and_out_page" will be displayed

  @android @uispecific 
  Scenario:JENI2117-C69707-Verify time range filter for 'This year': User should be taken back to the Transactions Tab of 'In & Out' landing page
    Given User is on in and out page in English language with "in_and_out_dynamic"
    And User check and click "tutorial_close" if exist    
    When User click "in_and_out_filter_button"
    And User set filter for time range to this year
    When User click "in_and_out_apply_filter_button"
    Then "in_and_out_page" will be displayed

