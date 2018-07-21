@cardcenter_filter_transaction @authentication_cardcenter  

Feature: Card Center (Filter and Transaction)

#JENI-265
@android @uidatabound
Scenario: JENI265-C68270-[Funcionality] Verify user is viewing the "m-card transactions" in the Transactions tab of m-card
  Given User is logged in with cif "card_center_m_card_transaction_history_cif"
  And User change language to "language"
  And User scroll to "card_center_m_card"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User expect "card_center_transaction_list_container" is exist

@android @uidatabound
Scenario: JENI265-C68292-[Funcionality] Verify all M-Card transactions are displayed correctly 
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User change language to "language"
  And User scroll to "card_center_m_card"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User swipe up to "card_center_transaction_history_month_5" text
  Then User expect "card_center_transactions_number_indicator" equal with "card_center_m_card_showing_all_transactions_label"

@android @uidatabound
Scenario: JENI265-C68293-[Functionality] Verify each M-Card Transactions contains some information
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User change language to "language"
  And User scroll to "card_center_m_card"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  Then User expect "card_center_transcation_first_item_narrative" is exist
  Then User expect "card_center_transcation_first_item_date" is exist
  Then User expect "card_center_transcation_first_item_amount" is exist
  Then User expect "card_center_transcation_first_item_category" is exist
  Then User expect "card_center_transcation_first_item_tax_avatar" is exist

@android @uidatabound
Scenario: JENI265-C68296-[Content] Verify default category name should be set as 'Uncategorized'
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User change language to "language"
  And User scroll to "card_center_m_card"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  Then User expect "card_center_transcation_first_item_category" equal with "card_center_transaction_category_uncategorized"

@android @uidatabound
Scenario: JENI265-C70068-[Functionality]Verify that the number of result should be displayed as format "Showing [number] of [total number]"
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User change language to "language"
  And User scroll to "card_center_m_card"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  Then User expect "card_center_transactions_number_indicator" equal with "card_center_m_card_showing_ten_transactions_label"

@android @uidatabound
Scenario: JENI265-C70077-[Functionality]Verify that the lazy loading function work correctly
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User change language to "language"
  And User scroll to "card_center_m_card"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  Then User expect "card_center_transactions_number_indicator" equal with "card_center_m_card_showing_ten_transactions_label"
  And User swipe up to "card_center_transaction_history_month_4" text
  Then User expect "card_center_transactions_number_indicator" equal with "card_center_m_card_showing_twenty_transactions_label"
  And User swipe up to "card_center_transaction_history_month_5" text
  Then User expect "card_center_transactions_number_indicator" equal with "card_center_m_card_showing_all_transactions_label"

@android @uidatabound
Scenario: JENI265-C70139-[Functionality]Verify that transaction list will be grouped by month
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User change language to "language"
  And User scroll to "card_center_m_card"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  Then User expect "card_center_transaction_history_month_1" past month(s) text element from current month displayed
  Then User expect "card_center_transaction_history_month_2" past month(s) text element from current month displayed

# JENI-268
@android @ios @uidatabound
Scenario: JENI268-C68179-[Functionality] Verify that search field should appear when user clicks on the magnifying glass icon 
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User change language to "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "in_and_out_filter_search_loupe"
  Then User expect "in_and_out_filter_search_textfield" is exist

@android @ios @uidatabound
Scenario: JENI268-C68173-[Functionality] Verify White-listed characters for search input (EN/IND) 
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User change language to "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "in_and_out_filter_search_loupe"
  And User fill "card_center_transactions_tab_search_field" with "card_center_search_transactions_whitelist_characters"
  Then User expect "card_center_transactions_tab_search_field" equal with "card_center_search_transactions_whitelist_characters"
  And User fill "card_center_transactions_tab_search_field" with "card_center_double_quote_character"
  Then User expect "card_center_transactions_tab_search_field" equal with "card_center_double_quote_character"

@android @ios @uidatabound
Scenario: JENI268-C68174-[Functionality] Verify search field input character limit 
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User change language to "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "in_and_out_filter_search_loupe"
  Then User fill "card_center_transactions_tab_search_field" with "card_center_input_with_more_than_hundred_characters"
  And User expect "card_center_transactions_tab_search_field" equal with 100 characters

@android @uidatabound
Scenario: JENI268-C68175-[Functionality] Verify that Search should be dynamic and should not require user to press enter/done/go on the keyboard 
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User change language to "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "in_and_out_filter_search_loupe"
  And User fill "card_center_transactions_tab_search_field" with "card_center_search_text_2"
  And User wait 3 seconds
  Then User expect "card_center_search_text_2" element displayed

@android @uidatabound
Scenario: JENI268-C68176-[Functionality] Verify that search should NOT be triggered when user has typed less than 3 characters and paused typing 
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User change language to "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "in_and_out_filter_search_loupe"
  And User fill "card_center_transactions_tab_search_field" with "card_center_search_text_3"
  And User wait 3 seconds
  Then User expect "card_center_search_text_2" element not displayed

@android @ios @uidatabound
Scenario: JENI268-C68178-[Layout] Verify that when search is executing there must be a spinner shown to user 
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User change language to "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "in_and_out_filter_search_loupe"
  And User fill "card_center_transactions_tab_search_field" with "card_center_search_text_2"
  Then User expect "card_center_transactions_tab_search_loading_spinner" is exist

@android @ios @uidatabound
Scenario: JENI268-C68180-[Content] Verify that before the user starts typing a search query in the input field, there must be a default text shown e.g. Search 
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User change language to "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "in_and_out_filter_search_loupe"
  Then User expect "in_and_out_filter_search_textfield" is exist

@android @ios @uidatabound
Scenario: JENI268-C68181-[Content] Verify default text shown (Search) should disappear when user type something in search field 
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User change language to "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "in_and_out_filter_search_loupe"
  And User fill "card_center_transactions_tab_search_field" with "card_center_search_text_2"
  # Then User expect "in_and_out_filter_search_textfield" doesn't exist
  Then User expect "card_center_transactions_tab_search_field" is not equal with "in_and_out_filter_text"

@android @ios @uidatabound
Scenario: JENI268-C68182-[Content] Verify that after user cleared search input field, the default text should be shown again 
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User change language to "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "in_and_out_filter_search_loupe"
  Then User expect "in_and_out_filter_search_textfield" is exist
  And User fill "card_center_transactions_tab_search_field" with "card_center_search_text_2"
  Then User expect "in_and_out_filter_search_textfield" doesn't exist
  And User clear "card_center_transactions_tab_search_field"
  Then User expect "in_and_out_filter_search_textfield" is exist

@android @ios @uidatabound
Scenario: JENI268-C68183-[Functionality] There should be a 'Cancel' button once search field appeared 
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User change language to "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "in_and_out_filter_search_loupe"
  Then User expect "in_and_out_filter_search_cancel" is exist

@android @ios @uidatabound
Scenario: JENI268-C68184-[Functionality] Verify that while the search input field is being shown, the magnifying glass icon should not be shown 
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User change language to "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "in_and_out_filter_search_loupe"
  Then User expect "in_and_out_filter_search_textfield" is exist
  Then User expect "in_and_out_filter_search_loupe" doesn't exist

@android @ios @uidatabound
Scenario: JENI268-C68185-[Functionality] Verify that Cancel button should only be shown while a user has NOT input any search text 
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User change language to "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "in_and_out_filter_search_loupe"
  Then User expect "in_and_out_filter_search_cancel" is exist
  And User fill "card_center_transactions_tab_search_field" with "card_center_search_text_2"
  Then User expect "in_and_out_filter_search_cancel" doesn't exist
  And User clear "card_center_transactions_tab_search_field"
  Then User expect "in_and_out_filter_search_cancel" is exist

@android @ios @uidatabound
Scenario: JENI268-C68186-[Functionality] Verify that Clicking the cancel button should close the search input field and begin showing the magnifying glass icon again 
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User change language to "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "in_and_out_filter_search_loupe"
  Then User expect "card_center_transactions_tab_search_field" is exist
  And User click "in_and_out_filter_search_cancel"
  Then User expect "card_center_transactions_tab_search_field" doesn't exist
  Then User expect "in_and_out_filter_search_loupe" is exist

@android @ios @uidatabound
Scenario: JENI268-C68187-[Functionality] Verify that If the user taps/clicks on the magnifying glass icon again, the search input field shown should not have previously typed string 
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User change language to "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "in_and_out_filter_search_loupe"
  Then User expect "card_center_transactions_tab_search_field" is exist
  And User fill "card_center_transactions_tab_search_field" with "card_center_search_text_2"
  And User click "in_and_out_filter_search_clear"
  And User click "in_and_out_filter_search_cancel"
  And User click "in_and_out_filter_search_loupe"
  Then User expect "card_center_transactions_tab_search_field" is not equal with "card_center_search_text_2"

@android @ios @uidatabound
Scenario: JENI268-C68188-[Functionality] Verify that the app should Display a cross icon in the search field as soon as the user begin typing a search query 
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User change language to "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "in_and_out_filter_search_loupe"
  And User fill "card_center_transactions_tab_search_field" with "card_center_search_text_3"
  Then User expect "in_and_out_filter_search_clear" is exist

@android @ios @uidatabound
Scenario: JENI268-C68189-[Functionality] Verify that clicking the 'cross' icon should completely delete the typed text and be replaced by 'Cancel' button 
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User change language to "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "in_and_out_filter_search_loupe"
  And User fill "card_center_transactions_tab_search_field" with "card_center_search_text_2"
  And User click "in_and_out_filter_search_clear"
  Then User expect "card_center_transactions_tab_search_field" is not equal with "card_center_search_text_2"
  Then User expect "in_and_out_filter_search_clear" doesn't exist
  Then User expect "in_and_out_filter_search_cancel" is exist

@android @ios @uidatabound
Scenario: JENI268-C68190-Verify that clicking the 'cross' icon should completely delete the typed text and there should be a grey 'Search' text in the field 
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User check app language is "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "in_and_out_filter_search_loupe"
  And User fill "card_center_transactions_tab_search_field" with "card_center_search_text_2"
  And User click "in_and_out_filter_search_clear"
  Then User expect "card_center_transactions_tab_search_field" is exist
  Then User expect "card_center_transactions_tab_search_field" equal with "in_and_out_filter_text"

@android @ios @uidatabound
# being referred by:
# C68192-[Functionality] User is able to enter valid characters in Bahasa language in the search input field using on-screen keyboard (mobile web/mobile native) 
Scenario: JENI268-C68191#C68192-[Functionality] User is able to enter valid characters in English language in the search input field using on-screen keyboard (mobile web/mobile native) 
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User check app language is "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "in_and_out_filter_search_loupe"
  And User fill "card_center_transactions_tab_search_field" with "card_center_search_text_2"
  Then User expect "card_center_transactions_tab_search_field" equal with "card_center_search_text_2"

@android @uidatabound
Scenario: JENI268-C68198-[Functionality] Verify that Narrative text received OR Name of contact should be searchable 
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User change language to "language"
  And User scroll to "card_center_m_card"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "in_and_out_filter_search_loupe"
  And User fill "card_center_transactions_tab_search_field" with "card_center_search_text_1"
  And User expect there are 5 of "card_center_transactions_tab_search_interest_transaction"

#JENI-270
@android @ios @uidatabound
Scenario: JENI270-C68200-[Functionality] Verify 'DONE' button is enabled when user fill 'From' amount is less than 'To' Amount 
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User change language to "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  # this step is to close the card center tutorial, need to verify it with QA
  # And User click "card_center_close_tutorial"
  And User click "filter_amount_range"
  Then User expect "filter_amount_range_page_title" is exist
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_3"
  # And User set filter for amount range from 1000 to 100000
  And User click "filter_done"
  Then User expect "filter_amount_range_page_title" doesn't exist

@android @ios @uidatabound
@continuous
Scenario: JENI270-C68201-[Functionality] Verify 'DONE' button is enabled if user has cleared an existing applied amount range using 'CLEAR' button 
  And User click "filter_amount_range"
  And User click "filter_clear" 
  And User click "filter_done"
  Then User expect "filter_amount_range_page_title" doesn't exist

@android @ios @uidatabound
# being referred by:
# JENI270-C68208-[Functionality] Verify format amount range applied as a filter should be reflected on the 'Filter landing' page
Scenario: JENI270-C68207#C68208-[Functionality] Clicking 'DONE' button when user input valid amount range 
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User change language to "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  # this step is to close the card center tutorial, need to verify it with QA
  # And User click "card_center_close_tutorial"
  And User click "filter_amount_range"
  Then User expect "filter_amount_range_page_title" is exist
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_3"
  And User click "filter_done"
  Then "filter_screen_landing_page" will be displayed
  Then User expect "filter_amount_range_value_applied" contains "card_center_filter_amount_range_applied_1"

@android @ios @uidatabound
Scenario: JENI270-C68213-[Functionality] Clicking 'DONE' button will take user back to the 'Filters landing' page 
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User change language to "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  # this step is to close the card center tutorial, need to verify it with QA
  # And User click "card_center_close_tutorial"
  And User click "filter_amount_range"
  Then User expect "filter_amount_range_page_title" is exist
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_3"
  And User click "filter_done"
  Then "filter_screen_landing_page" will be displayed

@android @uidatabound
Scenario: JENI270-C68216-[Functionality] Verified 'Active Filter' should indicate if an Amount Range filter is applied 
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User change language to "language"
  And User go to card center landing page from side menu
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_amount_range"
  Then User expect "filter_amount_range_page_title" is exist
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_3"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then "filter_transaction_active_indicator" will be displayed
  Then User expect "filter_transaction_active_indicator" equal with "card_center_filter_active_indicator_1"

@android @uidatabound
Scenario: JENI270-C68217-[Functionality] Clicking back button in the header after user inputs a valid amount range should not save the changes 
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User change language to "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  # this step is to close the card center tutorial, need to verify it with QA
  # And User click "card_center_close_tutorial"
  And User click "filter_amount_range"
  Then User expect "filter_amount_range_page_title" is exist
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_3"
  And User click "back_button"
  Then "filter_screen_landing_page" will be displayed
  Then User expect "filter_amount_range_value_applied" doesn't exist

@android @ios @uidatabound
Scenario: JENI270-C68219-[Functionality] Verify that default amount in 'From' and 'To' should be 0 
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User change language to "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  # this step is to close the card center tutorial, need to verify it with QA
  # And User click "card_center_close_tutorial"
  And User click "filter_amount_range"
  Then User expect "filter_amount_range_page_title" is exist
  Then User expect "filter_amount_range_from_input" equal with "zero_value"
  Then User expect "filter_amount_range_to_input" equal with "zero_value"

@android @ios @uidatabound
# being referred by:
# JENI270-C68221-[Functionality] Verify Bahasa language format when a user types an amount into 'To' and 'From' field
# JENI270-C68222-[Functionality] Verify English language format when a user types an amount into 'To' and 'From' field
Scenario: JENI270-C68220#C68221#C68222-[Functionality] Verify user input should allow for whole numbers only 
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User change language to "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  # this step is to close the card center tutorial, need to verify it with QA
  # And User click "card_center_close_tutorial"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_search_text_2"
  And User expect "filter_amount_range_from_input" equal with "zero_value"
  And User fill "filter_amount_range_to_input" with "card_center_search_text_2"
  And User expect "filter_amount_range_to_input" equal with "zero_value"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_3"
  And User expect "filter_amount_range_from_input" equal with "card_center_filter_amount_range_label_3"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_1"
  And User expect "filter_amount_range_to_input" equal with "card_center_filter_amount_range_label_1"

@android @ios @uidatabound
Scenario: JENI270-C68224-Verify maximum digits number can be added in either of the input fields 
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User change language to "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  # this step is to close the card center tutorial, need to verify it with QA
  # And User click "card_center_close_tutorial"
  And User wait 3 seconds
  And User click "filter_amount_range"
  Then User fill "filter_amount_range_from_input" with "card_center_over_max_number" 
  And User expect "filter_amount_range_from_input" equal with 21 characters

  Then User fill "filter_amount_range_to_input" with "card_center_over_max_number" 
  And User expect "filter_amount_range_to_input" equal with 21 characters  

@android @ios @uidatabound
Scenario: JENI270-C68233-[Functionality] Verify that 'CLEAR' button is enabled only if user input valid amount range 
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User change language to "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  # this step is to close the card center tutorial, need to verify it with QA
  # And User click "card_center_close_tutorial"
  And User wait 5 seconds
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_3"
  And User expect "filter_amount_range_from_input" equal with "card_center_filter_amount_range_label_3"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_1"
  And User expect "filter_amount_range_to_input" equal with "card_center_filter_amount_range_label_1"
  And User click "filter_clear"
  Then User expect "filter_amount_range_from_input" equal with "zero_value"
  Then User expect "filter_amount_range_to_input" equal with "zero_value"

@android @ios @uidatabound
Scenario: JENI270-C68235-[Functionality] Clicking 'CLEAR' button should remove the added value in 'From' and 'To' fields 
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User change language to "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  # this step is to close the card center tutorial, need to verify it with QA
  # And User click "card_center_close_tutorial"
  And User wait 5 seconds
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_3"
  And User expect "filter_amount_range_from_input" equal with "card_center_filter_amount_range_label_3"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_1"
  And User expect "filter_amount_range_to_input" equal with "card_center_filter_amount_range_label_1"
  And User click "filter_clear"
  Then User expect "filter_amount_range_from_input" equal with "zero_value"
  Then User expect "filter_amount_range_to_input" equal with "zero_value"

@android @uidatabound
Scenario: JENI270-C68239-[Functionality] User should be allowed to update the amount range filter to another valid amount range 
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User change language to "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_title"
  # this step is to close the card center tutorial, need to verify it with QA
  And User click "card_center_close_tutorial"
  And User wait 5 seconds
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_3"
  And User click "filter_done"
  And User click "filter_apply_button"
  And User expect there are 5 of "card_center_transactions_tab_search_tax_interest_transaction"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_2"
  Then User expect "filter_amount_range_from_input" equal with "card_center_filter_amount_range_label_1"
  Then User expect "filter_amount_range_to_input" equal with "card_center_filter_amount_range_label_2"

@android @uidatabound
Scenario: JENI270-C68241-[Functionality] New valid amount range should be saved only if user presses 'DONE' 
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User change language to "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_title"
  # this step is to close the card center tutorial, need to verify it with QA
  And User click "card_center_close_tutorial"
  And User wait 5 seconds
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_3"
  And User click "filter_done"
  And User click "filter_apply_button"
  And User expect there are 5 of "card_center_transactions_tab_search_tax_interest_transaction"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_2"
  And User click "filter_done"
  And User expect "filter_amount_range_value_applied" equal with "card_center_filter_amount_range_applied_2"

@android @uidatabound
Scenario: JENI270-C68242-[Functionality] Verify able to clicks 'APPLY FILTER' on landing page after update amount range 
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User change language to "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_title"
  # this step is to close the card center tutorial, need to verify it with QA
  And User click "card_center_close_tutorial"
  And User wait 5 seconds
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_3"
  And User click "filter_done"
  And User click "filter_apply_button"
  And User expect there are 5 of "card_center_transactions_tab_search_tax_interest_transaction"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_2"
  And User click "filter_done"
  And User click "filter_apply_button"
  And User expect there are 1 of "card_center_transactions_tab_search_baru_lagi_transaction"

@android @uidatabound
Scenario: JENI270-C68244-[Functionality] Click back button on landing page after update amount range 
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User change language to "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_title"
  # this step is to close the card center tutorial, need to verify it with QA
  And User click "card_center_close_tutorial"
  And User wait 5 seconds
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_3"
  And User click "filter_done"
  And User click "filter_apply_button"
  And User expect there are 5 of "card_center_transactions_tab_search_tax_interest_transaction"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_2"
  And User click "filter_done"
  And User click "back_button"
  And User expect there are 5 of "card_center_transactions_tab_search_tax_interest_transaction"

@android @uidatabound
Scenario: JENI270-C68248-[Functionality] Remove an existing amount range filter applied 
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User change language to "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_title"
  # this step is to close the card center tutorial, need to verify it with QA
  And User click "card_center_close_tutorial"
  And User wait 3 seconds
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_3"
  And User click "filter_done"
  And User click "filter_apply_button"
  And User expect there are 5 of "card_center_transactions_tab_search_tax_interest_transaction"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User click "filter_clear"
  And User click "filter_done"
  Then User expect "filter_active_counter" equal with "card_center_active_filter_zero"
  And User click "filter_apply_button"
  And User expect there are 3 of "card_center_transactions_tab_search_tax_interest_transaction"
  Then User expect "filter_transaction_active_indicator" doesn't exist

@android @uidatabound
Scenario: JENI270-C68264-[Functionality] Clicking 'RESET' button should remove the amount range filter 
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User change language to "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_title"
  # this step is to close the card center tutorial, need to verify it with QA
  And User click "card_center_close_tutorial"
  And User wait 5 seconds
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_3"
  And User click "filter_done"
  Then User expect "filter_amount_range_value_applied" contains "card_center_filter_amount_range_applied_1"
  And User click "filter_reset"
  Then User expect "filter_amount_range_value_applied" doesn't exist

@android @uidatabound
Scenario: JENI270-C70141-[Functionality]Verify selected Amount range filter indicator 
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User change language to "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_title"
  # this step is to close the card center tutorial, need to verify it with QA
  And User click "card_center_close_tutorial"
  And User wait 5 seconds
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_3"
  And User click "filter_done"
  Then User expect "filter_amount_range_value_applied" contains "card_center_filter_amount_range_applied_1"
  And User click "filter_apply_button"
  And User expect there are 5 of "card_center_transactions_tab_search_tax_interest_transaction"

#JENI-290 
@android @uidatabound 
Scenario: JENI290-C69600-Verify calendar selection component 
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User change language to "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_title"
  # this step is to close the card center tutorial, need to verify it with QA
  And User click "card_center_close_tutorial"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_second_this_week"
  Then User expect "filter_time_range_input_from_date" is first day of current week
  And User click "filter_time_range_third_this_month"
  Then User expect "filter_time_range_input_from_date" is first day of current month
  And User click "filter_time_range_fourth_this_year"
  Then User expect "filter_time_range_input_from_date" is first day of current year
  And User click "filter_time_range_fifth_last_seven_days"
  Then User expect "filter_time_range_input_from_date" equal with 7 days earlier
  And User click "filter_time_range_sixth_last_thirty_days"
  Then User expect "filter_time_range_input_from_date" equal with 30 days earlier

@android @uidatabound
# being referred by:
# JENI290-C69602-Verify there's a functional 'Done' button
# JENI290-C69603-Verify there's a static text 'Select your time range'
Scenario: JENI290-C69601#C69602#C69603-Verify there's a functional 'Clear' button 
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User change language to "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_title"
  # this step is to close the card center tutorial, need to verify it with QA
  And User click "card_center_close_tutorial"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_time_range"
  Then User expect "filter_clear" is exist
  Then User expect "filter_done" is exist
  Then User expect "filter_time_range_select_your_time_range_text" is exist

@android @uidatabound
Scenario: JENI290-C69604-Verify 'Custom' filter: Oldest 'from' or 'to' date that can be selected is 'Jan 1 2000' 
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User change language to "language"
  And User scroll to "card_center_m_card"
  And User click "card_center_title"
  # this step is to close the card center tutorial, need to verify it with QA
  And User click "card_center_close_tutorial"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_input_from_date"
  And User click "filter_time_range_date_picker_header_year"
  And User swipe down until found "filter_time_range_date_picker_minimum_year"
  And User click "filter_time_range_date_picker_minimum_year"
  And User click "filter_time_range_date_picker_previous_month" until "filter_time_range_date_picker_previous_month" gone
  And User click "filter_time_range_date_picker_date_one"
  And User click "filter_time_range_date_picker_ok"
  Then User expect "filter_time_range_input_from_date" equal with "card_center_filter_time_range_minimum_date_selected"

@android @uidatabound
Scenario: JENI290-C69605-Verify 'Custom' filter: Latest 'from' or 'to' date that can be selected is Jan 1 2020 
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User change language to "language"
  And User scroll to "card_center_m_card"
  And User click "card_center_title"
  # this step is to close the card center tutorial, need to verify it with QA
  And User click "card_center_close_tutorial"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_input_from_date"
  And User click "filter_time_range_date_picker_header_year"
  And User swipe down until found "filter_time_range_date_picker_maximum_year"
  And User click "filter_time_range_date_picker_maximum_year"
  Then User expect "filter_time_range_date_picker_next_month" doesn't exist
  And User click "filter_time_range_date_picker_date_one"
  And User click "filter_time_range_date_picker_ok"
  Then User expect "filter_time_range_input_from_date" equal with "card_center_filter_time_range_maximum_date_selected"

@android @uidatabound
# being referred by:
# C69606-Verify 'Custom' filter: 'From' date cannot be later than 'To' date 
Scenario: JENI290-C69606#C69607-Verify 'Custom' filter: Snack bar error notification should appear If 'From' date selected is later than 'To' date and user click 'Done' 
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User change language to "language"
  And User scroll to "card_center_m_card"
  And User click "card_center_title"
  # this step is to close the card center tutorial, need to verify it with QA
  And User click "card_center_close_tutorial"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_input_from_date"
  And User click "filter_time_range_date_picker_ok"
  And User click "filter_time_range_input_to_date"
  And User click "filter_time_range_date_picker_previous_month"
  And User click "filter_time_range_date_picker_date_one"
  And User click "filter_time_range_date_picker_ok"
  And User click "filter_done"
  # Then User expect "top_notification" is exist
  Then User expect "top_notification" equal with "card_center_filter_time_range_starting_date_later_than_end_date_notification"

@android @uidatabound
Scenario: JENI290-C69608-Verify 'Custom' filter: If 'From' date selected is equal/older than 'To' date 
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User change language to "language"
  And User scroll to "card_center_m_card"
  And User click "card_center_title"
  # this step is to close the card center tutorial, need to verify it with QA
  And User click "card_center_close_tutorial"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_input_from_date"
  And User click "filter_time_range_date_picker_previous_month"
  And User click "filter_time_range_date_picker_date_one"
  And User click "filter_time_range_date_picker_ok"
  And User click "filter_time_range_input_to_date"
  And User click "filter_time_range_date_picker_ok"
  And User click "filter_done"
  Then "filter_time_range_value_applied" will be displayed

@android @uidatabound
Scenario: JENI290-C69609-Verify 'Apply filter' button: User should be taken back to the Transactions Tab 
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User change language to "language"
  And User scroll to "card_center_m_card"
  And User click "card_center_title"
  # this step is to close the card center tutorial, need to verify it with QA
  And User click "card_center_close_tutorial"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_input_from_date"
  And User click "filter_time_range_date_picker_previous_month"
  And User click "filter_time_range_date_picker_date_one"
  And User click "filter_time_range_date_picker_ok"
  And User click "filter_time_range_input_to_date"
  And User click "filter_time_range_date_picker_ok"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then "card_center_transactions_tab" will be displayed

@android @uidatabound
Scenario: JENI290-C69610-Verify 'Apply filter' button: Transactions list should be revised based on applied Time Range filter 
  Given User is logged in with cif "card_center_m_card_transaction_history_cif" in selected environment
  And User change language to "language"
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_input_from_date"
  And User select month "card_center_filter_time_range_input_selected_month_1" from Calendar
  And User click "filter_time_range_date_picker_date_one"
  And User click "filter_time_range_date_picker_ok"
  And User click "filter_time_range_input_to_date"
  And User click "filter_time_range_date_picker_ok"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then "card_center_transactions_tab" will be displayed
  Then User expect "card_center_transaction_history_month_1" past month(s) text element from current month displayed

# being referred by T1224951, T1224952
@android @uidatabound
# being referred by:
# JENI290-C69611-Verify 'Apply filter' button: If there exist other filters that have been applied, then the transaction list should get added on for filtration
# JENI290-C69612-Verify 'Apply filter' button: If a search has been performed then the transaction result should get further narrowed down with the applied Time Range filter
Scenario: JENI290-C69611#C69612#C69613-Verify 'Apply filter' button: If a search has been performed & other filter(s) have been already applied, the applied time range filter should further narrow down the transaction list 
  Given User is logged in with cif "card_center_m_card_transaction_history_cif" in selected environment
  And User change language to "language"
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "search_loupe_icon"
  And User fill "in_and_out_filter_search_textfield" with "card_center_search_text_1"
  And User click "filter_icon"
  And User click "filter_category"
  And User swipe up until found "filter_category_uncategorized"
  And User click "filter_category_uncategorized"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then User expect "card_center_transaction_history_month_1" past month(s) text element from current month displayed
  Then User expect "card_center_transaction_history_month_2" past month(s) text element from current month displayed
  Then User expect "card_center_transaction_history_month_3" past month(s) text element from current month displayed
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_input_from_date"
  And User select month "card_center_filter_time_range_input_selected_month_1" from Calendar
  And User click "filter_time_range_date_picker_date_one"
  And User click "filter_time_range_date_picker_ok"
  And User click "filter_time_range_input_to_date"
  And User click "filter_time_range_date_picker_ok"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then "card_center_transactions_tab" will be displayed
  Then User expect "card_center_transaction_history_month_1" past month(s) text element from current month displayed

@android @uidatabound
Scenario: JENI290-C69614-Verify time range filter for 'This week': user should be taken back to the Transactions Tab of 'm-card' landing page after select this time 
  Given User is logged in with cif "card_center_m_card_transaction_history_cif" in selected environment
  And User change language to "language"
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_second_this_week"
  And User click "back_button"
  And User click "filter_apply_button"
  Then "card_center_transactions_tab" will be displayed

@android @uidatabound
# being referred by:
# C69616-Verify time range filter for 'This week': Only transactions between Monday 00:00hrs of the current week and current date/time are shown 
Scenario: JENI290-C69615#C69616-Verify time range filter for 'This week': Transactions list is revised based on applied Time Range filter 
  Given User is logged in with cif "card_center_m_card_transaction_history_cif" in selected environment
  And User change language to "language"
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_second_this_week"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then "card_center_transactions_tab" will be displayed
  Then "no_transaction_message" will be displayed

@android @uidatabound
# referred by:
# JENI290-C69617-Verify time range filter for 'This week': If there exist other filters that have been applied, then the transaction list should get added on for filtration 
# JENI290-C69618-Verify time range filter for 'This week': If a search has been performed then the transaction result should get further narrowed down with the applied Time Range filter 
Scenario: JENI290-C69617#C69618#C69619-Verify time range filter for 'This week': If a search has been performed & other filter(s) have been already applied, the applied time range filter should further narrow down the transaction list 
  Given User is logged in with cif "card_center_m_card_transaction_history_cif" in selected environment
  And User change language to "language"
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "search_loupe_icon"
  And User fill "in_and_out_filter_search_textfield" with "card_center_search_text_5"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_3"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then User expect "card_center_transaction_history_month_1" past month(s) text element from current month displayed
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_second_this_week"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then "card_center_transactions_tab" will be displayed
  And User wait 5 seconds
  Then "no_matches_transaction_found_message" will be displayed

@android @uidatabound
Scenario: JENI290-C69620-Verify time range filter for 'This month': User should be taken back to the Transactions Tab of M-Card transaction landing page 
  Given User is logged in with cif "card_center_m_card_transaction_history_cif" in selected environment
  And User change language to "language"
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_third_this_month"
  And User click "back_button"
  And User click "filter_apply_button"
  Then "card_center_transactions_tab" will be displayed

@android @uidatabound
# referred by:
# JENI290-C69622-Verify time range filter for 'This month': Only transactions made between current date and 1st day of current month (00:00hrs) are shown 
Scenario: JENI290-C69621#C69622-Verify time range filter for 'This month': Transactions list is revised based on applied Time Range filter 
  Given User is logged in with cif "card_center_m_card_transaction_history_cif" in selected environment
  And User change language to "language"
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_third_this_month"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then "card_center_transactions_tab" will be displayed
  Then "no_transaction_message" will be displayed

@android @uidatabound
# referred by:
# JENI290-C69623-Verify time range filter for 'This month': If there exist other filters that have been applied, then the transaction list should get added on for filtration 
# JENI290-C69624-Verify time range filter for 'This month': If a search has been performed then the transaction result should get further narrowed down with the applied Time Range filter 
Scenario: JENI290-C69623#C69624#C69625-Verify time range filter for 'This month': If a search has been performed & other filter(s) have been already applied, the applied time range filter should further narrow down the transaction list 
  Given User is logged in with cif "card_center_m_card_transaction_history_cif" in selected environment
  And User change language to "language"
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "search_loupe_icon"
  And User fill "in_and_out_filter_search_textfield" with "card_center_search_text_5"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_3"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then User expect "card_center_transaction_history_month_1" past month(s) text element from current month displayed
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_third_this_month"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then "card_center_transactions_tab" will be displayed
  Then "no_matches_transaction_found_message" will be displayed

@android @uidatabound
Scenario: JENI290-C69626-Verify time range filter for 'This year': User should be taken back to the Transactions Tab of M-Card Transaction landing page 
  Given User is logged in with cif "card_center_m_card_transaction_history_cif" in selected environment
  And User change language to "language"
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_fourth_this_year"
  And User click "back_button"
  And User click "filter_apply_button"
  Then "card_center_transactions_tab" will be displayed

@android @uidatabound
# being referred by:
# JENI290-C69627-Verify time range filter for 'This year': Transactions list is revised based on applied Time Range filter 
Scenario: JENI290-C69627#C69628-Verify time range filter for 'This year': Only transactions made between current date and 1st Jan of current year (00:00hrs) are shown 
  Given User is logged in with cif "card_center_m_card_transaction_history_cif" in selected environment
  And User change language to "language"
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_fourth_this_year"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then "card_center_transactions_tab" will be displayed
  Then User expect "card_center_transaction_history_month_1" past month(s) text element from current month displayed
  Then User expect "card_center_transaction_history_month_2" past month(s) text element from current month displayed
  And User swipe up to "card_center_transaction_history_month_4" text
  Then User expect "card_center_transaction_history_month_4" past month(s) text element from current month displayed

@android @uidatabound
# being referred by:
# JENI290-C69629-Verify time range filter for 'This year': If there exist other filters that have been applied, then the transaction list should get added on for filtration
# JENI290-C69630-Verify time range filter for 'This year': If a search has been performed then the transaction result should get further narrowed down with the applied Time Range filter
Scenario: JENI290-C69629#C69630#C69631-Verify time range filter for 'This year': If a search has been performed & other filter(s) have been already applied, the applied time range filter should further narrow down the transaction list 
  Given User is logged in with cif "card_center_m_card_transaction_history_cif" in selected environment
  And User change language to "language"
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "search_loupe_icon"
  And User fill "in_and_out_filter_search_textfield" with "card_center_search_text_1"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_3"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then User expect "in_and_out_number_transaction" equal with "card_center_number_transaction_filter_applied_1"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_fourth_this_year"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then "card_center_transactions_tab" will be displayed
  Then User expect "in_and_out_number_transaction" equal with "card_center_number_transaction_filter_applied_2"

@android @uidatabound
Scenario: JENI290-C69632-Verify time range filter for 'Last 7 days': User should be taken back to the Transactions Tab of M-Card Transaction landing page 
  Given User is logged in with cif "card_center_m_card_transaction_history_cif" in selected environment
  And User change language to "language"
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_fifth_last_seven_days"
  And User click "back_button"
  And User click "filter_apply_button"
  Then "card_center_transactions_tab" will be displayed

@android @uidatabound
# being referred by:
# JENI290-C69633-Verify time range filter for 'Last 7 days': Transactions list is revised based on applied Time Range filter
Scenario: JENI290-C69633#C69634-Verify time range filter for 'Last 7 days': Only transactions made between current date and previous 7 days are shown  
  Given User is logged in with cif "card_center_m_card_transaction_history_cif" in selected environment
  And User change language to "language"
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_fifth_last_seven_days"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then "card_center_transactions_tab" will be displayed
  Then "no_transaction_message" will be displayed

@android @uidatabound
# being referred by:
# JENI290-C69635-Verify time range filter for 'Last 7 days': If there exist other filters that have been applied, then the transaction list should get added on for filtration
# JENI290-C69636-Verify time range filter for 'Last 7 days': If a search has been performed then the transaction result should get further narrowed down with the applied Time Range filter
Scenario: JENI290-C69635#C69636#C69637-Verify time range filter for 'Last 7 days': If a search has been performed & other filter(s) have been already applied, the applied time range filter should further narrow down the transaction list 
  Given User is logged in with cif "card_center_m_card_transaction_history_cif" in selected environment
  And User change language to "language"
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "search_loupe_icon"
  And User fill "in_and_out_filter_search_textfield" with "card_center_search_text_4"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_3"
  And User click "filter_done"
  And User click "filter_apply_button"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_fifth_last_seven_days"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then "card_center_transactions_tab" will be displayed
  And User wait 5 seconds
  Then "no_matches_transaction_found_message" will be displayed

@android @uidatabound
Scenario: JENI290-C69638-Verify time range filter for 'Last 30 days': User should be taken back to the Transactions Tab of M-Card Transaction landing page  
  Given User is logged in with cif "card_center_m_card_transaction_history_cif" in selected environment
  And User change language to "language"
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_sixth_last_thirty_days"
  And User click "back_button"
  And User click "filter_apply_button"
  Then "card_center_transactions_tab" will be displayed

@android @uidatabound
# being referred by:
# JENI290-C69639-Verify time range filter for 'Last 30 days': Transactions list is revised based on applied Time Range filter
Scenario: JENI290-C69639#C69640-Verify time range filter for 'Last 30 days': Only transactions made between current date and previous 30 days are shown 
  Given User is logged in with cif "card_center_m_card_transaction_history_cif" in selected environment
  And User change language to "language"
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_sixth_last_thirty_days"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then "card_center_transactions_tab" will be displayed
  Then "no_transaction_message" will be displayed

@android @uidatabound
# being referred by:
# JENI290-C69641-Verify time range filter for 'Last 30 days': If there exist other filters that have been applied, then the transaction list should get added on for filtration 
# JENI290-C69642-Verify time range filter for 'Last 30 days': If a search has been performed then the transaction result should get further narrowed down with the applied Time Range filter
Scenario: JENI290-C69641#C69642#C69643-Verify time range filter for 'Last 30 days': If a search has been performed & other filter(s) have been already applied, the applied time range filter should further narrow down the transaction list 
  Given User is logged in with cif "card_center_m_card_transaction_history_cif" in selected environment
  And User change language to "language"
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "search_loupe_icon"
  And User fill "in_and_out_filter_search_textfield" with "card_center_search_text_1"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_3"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then User expect "in_and_out_number_transaction" equal with "card_center_number_transaction_filter_applied_1"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_sixth_last_thirty_days"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then "card_center_transactions_tab" will be displayed
  Then "no_matches_transaction_found_message" will be displayed

@android @uidatabound
Scenario: JENI290-C69644-Verify selected Time range filter indicator 
  Given User is logged in with cif "card_center_m_card_transaction_history_cif" in selected environment
  And User change language to "language"
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "search_loupe_icon"
  And User fill "in_and_out_filter_search_textfield" with "card_center_search_text_1"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_input_from_date"
  When User select "card_center_filter_time_range_input_selected_month_1" months from today in "card_center_transaction_filter_date_picker" date picker
  And User click "filter_time_range_input_to_date"
  When User select "card_center_filter_time_range_input_selected_month_2" months from today in "card_center_transaction_filter_date_picker" date picker
  And User click "filter_done"
  Then "filter_time_range_value_applied" will be displayed
  Then User expect "card_center_transaction_filter_date_picker" is in range of "card_center_filter_time_range_input_selected_month_1" months and "card_center_filter_time_range_input_selected_month_2" months from today
  And User click "filter_time_range"
  And User click "filter_time_range_second_this_week"
  And User click "filter_done"
  Then "filter_time_range_value_applied" will be displayed
  Then User expect "filter_time_range_value_applied" is current week
  And User click "filter_time_range"
  And User click "filter_time_range_third_this_month"
  And User click "filter_done"
  Then "filter_time_range_value_applied" will be displayed
  Then User expect "filter_time_range_value_applied" is current month
  And User click "filter_time_range"
  And User click "filter_time_range_fourth_this_year"
  And User click "filter_done"
  Then "filter_time_range_value_applied" will be displayed
  Then User expect "filter_time_range_value_applied" is current year
  And User click "filter_time_range"
  And User click "filter_time_range_fifth_last_seven_days"
  And User click "filter_done"
  Then "filter_time_range_value_applied" will be displayed
  Then User expect "filter_time_range_value_applied" is latest 7 days
  And User click "filter_time_range"
  And User click "filter_time_range_sixth_last_thirty_days"
  And User click "filter_done"
  Then "filter_time_range_value_applied" will be displayed
  Then User expect "filter_time_range_value_applied" is latest 30 days

# JENI-291
@android @uidatabound
Scenario: JENI291-C68332-Verify there is should be a functional 'SELECT ALL' button 
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User check app language is "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_title"
  # this step is to close the card center tutorial, need to verify it with QA
  And User click "card_center_close_tutorial"
  And User wait "card_center_loading_screen" will be gone
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_category"
  Then "filter_select_all" will be displayed
  And User click "filter_select_all"
  And User expect there are 10 of "filter_category_selected"
  And User swipe up until found "filter_category_uncategorized"
  And User expect there are 10 of "filter_category_selected"

@android @uidatabound
Scenario: JENI291-C68336-Verify functionality of 'Clear' button 
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User check app language is "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_title"
  # this step is to close the card center tutorial, need to verify it with QA
  And User click "card_center_close_tutorial"
  And User wait "card_center_loading_screen" will be gone
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_category"
  And User click "filter_select_all"
  And User expect there are 10 of "filter_category_selected"
  And User click "filter_clear"
  And User expect there are 0 of "filter_category_selected"
  
@android @ios @uidatabound
Scenario: JENI291-C68337-Verify functionality of 'Done' button 
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User check app language is "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_title"
  # this step is to close the card center tutorial, need to verify it with QA
  And User click "card_center_close_tutorial"
  And User wait "card_center_loading_screen" will be gone
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_category"
  And User click "filter_category_children"
  And User click "filter_done"
  Then "filter_screen_landing_page" will be displayed
  Then "filter_category_applied_counter" will be displayed
  
@android @ios @uidatabound
Scenario: JENI291-C68338-Verify functionality of category filter counter 
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User check app language is "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_title"
  # this step is to close the card center tutorial, need to verify it with QA
  And User click "card_center_close_tutorial"
  And User wait "card_center_loading_screen" will be gone
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_category"
  And User click "filter_category_children"
  And User click "filter_done"
  Then "filter_category_applied_counter" will be displayed
  Then User expect "filter_category_applied_counter" contains "card_center_filter_one_category_applied"

@android @ios @uidatabound
Scenario: JENI291-C68342-Verify Content shown should be based on language preference set by user (English/Bahasa) 
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User check app language is "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_title"
  # this step is to close the card center tutorial, need to verify it with QA
  And User click "card_center_close_tutorial"
  And User wait "card_center_loading_screen" will be gone
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_category"
  # Assertion goes here
  Then User expect "filter_category_children" contains "filter_category_children_label"
  Then User expect "filter_category_credit_card" contains "filter_category_credit_card_label"
  Then User expect "filter_category_education" contains "filter_category_education_label"
  Then User expect "filter_category_entertainment" contains "filter_category_entertainment_label"

@android @uidatabound
Scenario: JENI291-C68343-Verify functionality of back button
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User check app language is "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_title"
  # this step is to close the card center tutorial, need to verify it with QA
  And User click "card_center_close_tutorial"
  And User wait "card_center_loading_screen" will be gone
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_category"
  And User click "filter_select_all"
  And User click "back_button"
  Then "filter_screen_landing_page" will be displayed
  Then User expect "filter_category_applied_counter" doesn't exist

@android @ios @uidatabound
Scenario: JENI291-C68344-Verify functionality of filter counter 
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User check app language is "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_title"
  # this step is to close the card center tutorial, need to verify it with QA
  And User click "card_center_close_tutorial"
  And User wait "card_center_loading_screen" will be gone
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_category"
  And User click "filter_category_children"
  And User click "filter_category_credit_card"
  And User click "filter_category_education"
  And User click "filter_category_entertainment"
  And User click "filter_done"
  Then "filter_category_applied_counter" will be displayed
  Then User expect "filter_category_applied_counter" contains "card_center_filter_four_category_applied"

@android @uidatabound
Scenario: JENI291-C68345-Verify functionality of 'Reset' button
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User check app language is "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_title"
  # this step is to close the card center tutorial, need to verify it with QA
  And User click "card_center_close_tutorial"
  And User wait "card_center_loading_screen" will be gone
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_category"
  And User click "filter_select_all"
  And User click "filter_done"
  Then User expect "filter_category_applied_counter" is exist
  And User click "filter_apply_button"
  And User click "filter_icon_one_applied"
  And User click "filter_reset"
  Then User expect "filter_category_applied_counter" doesn't exist

@android @uidatabound
Scenario: JENI291-C68346-Verify 'Active filter' status of filter landing pop up 
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User check app language is "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_title"
  # this step is to close the card center tutorial, need to verify it with QA
  And User click "card_center_close_tutorial"
  And User wait "card_center_loading_screen" will be gone
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_3"
  And User click "filter_done"
  And User click "filter_category"
  And User click "filter_select_all"
  And User click "filter_done"
  And User click "filter_time_range"
  And User click "filter_time_range_third_this_month"
  And User click "filter_done"
  And User click "filter_transaction_type"
  And User click "filter_select_all"
  And User click "filter_done"
  Then User expect "filter_active_counter" contains "card_center_active_filter_four"

# July 10
@android @uidatabound
# being referred by:
# JENI291-C68341-Verify 'Apply Filter' button when 1 or more categories selected: Only show relevant/qualified transactions when the user navigates to any of these tabs
Scenario: JENI291-C68339#C68341-Verify 'Apply Filter' button when 1 or more categories selected: Apply the filter on listed transactions 
  Given User is logged in with cif "card_center_m_card_transaction_history_uk_cif" in selected environment
  And User change language to "language"
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  Then "in_and_out_number_transaction" will be displayed
  Then User expect there are 1 of "card_center_transactions_tab_income_item"
  And User expect there are 2 of "card_center_transactions_tab_savings_item"
  And User expect there are 1 of "card_center_transactions_tab_taxes_item"
  And User click "filter_icon"
  And User click "filter_category"
  And User click "filter_category_income"
  And User click "filter_done"
  And User click "filter_apply_button"
  And User expect "card_center_transactions_tab_savings_item" doesn't exist
  And User expect "card_center_transactions_tab_taxes_item" doesn't exist
  And User expect "card_center_transactions_tab_income_item" is exist
  And User expect there are 1 of "card_center_transactions_tab_income_item"

@android @uidatabound
Scenario: JENI291-C68340-Verify 'Apply Filter' button when 1 or more categories selected: Take user back to the m-card transactions tab which was opened before applying category filter 
  Given User is logged in with cif "card_center_m_card_transaction_history_uk_cif" in selected environment
  And User change language to "language"
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  Then User expect there are 1 of "card_center_transactions_tab_income_item"
  And User expect there are 2 of "card_center_transactions_tab_savings_item"
  And User expect there are 1 of "card_center_transactions_tab_taxes_item"
  And User click "filter_icon"
  And User click "filter_category"
  And User click "filter_category_income"
  And User click "back_button"
  And User click "filter_apply_button"
  Then User expect there are 1 of "card_center_transactions_tab_income_item"
  And User expect there are 2 of "card_center_transactions_tab_savings_item"
  And User expect there are 1 of "card_center_transactions_tab_taxes_item"

# JENI-292
@android @uidatabound
# being referred by: C68360
Scenario: JENI292-C68348#C68360-[Content] Verify there should be a static text to indicate that a user can select more than 1 transaction 
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User check app language is "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_title"
  # this step is to close the card center tutorial, need to verify it with QA
  And User click "card_center_close_tutorial"
  And User wait "card_center_loading_screen" will be gone
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_transaction_type"
  Then "filter_select_more_than_one_text" will be displayed
  Then User expect "filter_select_more_than_one_text" equal with "card_center_filter_select_more_than_one_static_text"

@android @uidatabound
Scenario: JENI292-C68349-[Functionality] Verify that 'SELECT ALL' button should select all listed transaction types 
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User check app language is "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_title"
  # this step is to close the card center tutorial, need to verify it with QA
  And User click "card_center_close_tutorial"
  And User wait "card_center_loading_screen" will be gone
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_transaction_type"
  And User click "filter_select_all"
  Then User expect there are 10 of "filter_transaction_type_selected"

@continuous @android @uidatabound
Scenario: JENI292-C68352-[Functionality] Verify that Clicking 'Clear' when 1 or more listed transaction type(s) have been selected should cause them become unselected 
  And User click "filter_clear"
  Then User expect there are 10 of "filter_transaction_type_not_selected"

@android @uidatabound
Scenario: JENI292-C68354-[Functionality] Clicking 'Done' when 1 or more transaction is selected should take the user to landing page of filters 
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User check app language is "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_title"
  # this step is to close the card center tutorial, need to verify it with QA
  And User click "card_center_close_tutorial"
  And User wait "card_center_loading_screen" will be gone
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_transaction_type"
  And User click "filter_select_all"
  And User click "filter_done"
  Then "filter_screen_landing_page" will be displayed
  
@continuous @android @uidatabound
# being referred by: C68360
Scenario: JENI292-C68356-[Functionality] If 1 or more transaction types have been selected, the landing page should indicate this number next to the filter option 'Transaction Type' 
  Then "filter_transaction_type_applied_counter" will be displayed
  Then User expect "filter_transaction_type_applied_counter" equal with "card_center_filter_all_transaction_types_applied"

@android @uidatabound
Scenario: JENI292-C68350-[Functionality] Verify that 'Done' button should be disabled/inactive if no transaction is selected 
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User check app language is "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_title"
  # this step is to close the card center tutorial, need to verify it with QA
  And User click "card_center_close_tutorial"
  And User wait "card_center_loading_screen" will be gone
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_transaction_type"
  And User click "filter_done"
  Then User expect "filter_screen_landing_page" doesn't exist
  Then User expect "filter_done" is exist

@android @uidatabound
Scenario: JENI292-C69591-[Functionality] Clicking back button should not save any changes to existing transaction type filter or selection of new filter 
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User check app language is "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_title"
  # this step is to close the card center tutorial, need to verify it with QA
  And User click "card_center_close_tutorial"
  And User wait "card_center_loading_screen" will be gone
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_transaction_type"
  And User click "filter_select_all"
  Then User expect there are 10 of "filter_transaction_type_selected"
  And User click "back_button"
  Then "filter_screen_landing_page" will be displayed
  And User expect "filter_transaction_type_applied_counter" doesn't exist

@android @uidatabound
# being referred by: C68360
Scenario: JENI292-C69592-[Functionality] Verify that Application of transaction filters should increment the 'Active filters' on landing page by 1 
  Given User is logged in with cif "card_center_m_card_transactions_cif"
  And User check app language is "language"
  And User swipe up until found "card_center_m_card_clickable"
  And User click "card_center_title"
  # this step is to close the card center tutorial, need to verify it with QA
  And User click "card_center_close_tutorial"
  And User wait "card_center_loading_screen" will be gone
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  Then User expect "filter_active_counter" equal with "card_center_active_filter_zero"
  And User click "filter_transaction_type"
  And User click "filter_select_all"
  And User click "filter_done"
  Then User expect "filter_active_counter" equal with "card_center_active_filter_one"

@android @uidatabound
@continuous
# being referred by: C68360
Scenario: JENI292-C69594-[Functionality] Verify If all applied transaction types are unselected and changes saved by user, the 'Active filters' count should be reduced by 1 
  And User click "filter_transaction_type"
  And User click "filter_clear"
  And User click "filter_done"
  Then User expect "filter_active_counter" equal with "card_center_active_filter_zero"

@android @uidatabound
# being referred by:
# JENI292-C68359-[Functionality] Clicking 'APPLY FILTER' when 1 or more transaction type(s) have been selected should only show relevant transactions when the user navigates to any of the three tabs 
Scenario: JENI292-C68357#C68359-[Functionality] Clicking 'APPLY FILTER' when 1 or more transaction type(s) have been selected should Apply the filter on listed transactions 
  Given User is logged in with cif "card_center_m_card_transaction_history_uk_cif" in selected environment
  And User change language to "language"
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  Then User expect "in_and_out_number_transaction" equal with "card_center_number_transaction_filter_applied_3"
  And User click "filter_icon"
  And User click "filter_transaction_type"
  And User click "filter_transaction_type_interest"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then User expect "in_and_out_number_transaction" equal with "card_center_number_transaction_filter_applied_4"

@android @uidatabound
Scenario: JENI292-C68358-[[Functionality] Clicking 'APPLY FILTER' when 1 or more transaction type(s) have been selected should Take user back to transaction tab which was opened before applying transaction type filter 
  Given User is logged in with cif "card_center_m_card_transaction_history_uk_cif" in selected environment
  And User change language to "language"
  And User access card center from side menu
  And User click "card_center_close_tutorial"
  And User click "card_center_m_card_clickable"
  And User click "card_center_transactions_tab"
  Then User expect "in_and_out_number_transaction" equal with "card_center_number_transaction_filter_applied_3"
  And User click "filter_icon"
  And User click "filter_transaction_type"
  And User click "filter_transaction_type_interest"
  And User click "back_button"
  And User click "filter_apply_button"
  Then User expect "in_and_out_number_transaction" equal with "card_center_number_transaction_filter_applied_3"

# x-card
#JENI-267
@android @uidatabound
Scenario: JENI267-C75374-[X-Card][Funcionality] Verify user is viewing the "m-card transactions" in the Transactions tab of m-card
  Given User is logged in with cif "card_center_x_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_transactions_tab"
  And User expect "card_center_transaction_list_container" is exist

@android @uidatabound
Scenario: JENI267-C75375-[X-Card][Funcionality] Verify all M-Card transactions are displayed correctly 
  Given User is logged in with cif "card_center_x_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_transactions_tab"
  And User swipe up to "card_center_transaction_history_month_5" text
  Then User expect "card_center_transactions_number_indicator" equal with "card_center_m_card_showing_all_transactions_label"

@android @uidatabound
Scenario: JENI267-C75376-[X-Card][Functionality] Verify each M-Card Transactions contains some information
  Given User is logged in with cif "card_center_x_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_transactions_tab"
  Then User expect "card_center_transcation_first_item_narrative" is exist
  Then User expect "card_center_transcation_first_item_date" is exist
  Then User expect "card_center_transcation_first_item_amount" is exist
  Then User expect "card_center_transcation_first_item_category" is exist
  Then User expect "card_center_transcation_first_item_tax_avatar" is exist

@android @uidatabound
Scenario: JENI267-C75382-[X-Card][Functionality]Verify that transaction list will be grouped by month
  Given User is logged in with cif "card_center_x_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_transactions_tab"
  Then User expect "card_center_transaction_history_month_1" past month(s) text element from current month displayed
  Then User expect "card_center_transaction_history_month_2" past month(s) text element from current month displayed

@android @uidatabound
Scenario: JENI267-C75380-[X-Card][Functionality]Verify that the number of result should be displayed as format "Showing [number] of [total number]"
  Given User is logged in with cif "card_center_x_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_transactions_tab"
  Then User expect "card_center_transactions_number_indicator" equal with "card_center_m_card_showing_ten_transactions_label"

@android @uidatabound
Scenario: JENI267-C75381-[X-Card][Functionality]Verify that the lazy loading function work correctly
  Given User is logged in with cif "card_center_x_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_transactions_tab"
  Then User expect "card_center_transactions_number_indicator" equal with "card_center_m_card_showing_ten_transactions_label"
  And User swipe up to "card_center_transaction_history_month_4" text
  Then User expect "card_center_transactions_number_indicator" equal with "card_center_m_card_showing_twenty_transactions_label"
  And User swipe up to "card_center_transaction_history_month_5" text
  Then User expect "card_center_transactions_number_indicator" equal with "card_center_m_card_showing_all_transactions_label"

#JENI-297
@android @ios @uidatabound
Scenario: JENI297-C75426-[X-Card] [Functionality] Verify 'DONE' button is enabled when user fill 'From' amount is less than 'To' Amount 
  Given User is logged in with cif "card_center_x_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_amount_range"
  Then User expect "filter_amount_range_page_title" is exist
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_3"
  # And User set filter for amount range from 1000 to 100000
  And User click "filter_done"
  Then User expect "filter_amount_range_page_title" doesn't exist

@android @ios @uidatabound @continuous
Scenario: JENI297-C75427-[X-Card] [Functionality] Verify 'DONE' button is enabled if user has cleared an existing applied amount range using 'CLEAR' button 
  And User click "filter_amount_range"
  And User click "filter_clear" 
  And User click "filter_done"
  Then User expect "filter_amount_range_page_title" doesn't exist

@android @ios @uidatabound
Scenario: JENI297-C75428-[X-Card] [Functionality] Verify 'DONE' button is disabled if 'From' and 'To' value are preset to the default value 0 
  Given User is logged in with cif "card_center_x_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_3"
  And User click "filter_done"
  Then User expect "filter_amount_range_page_title" doesn't exist
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "save_it_zero_value"
  And User fill "filter_amount_range_to_input" with "save_it_zero_value"
  And User click "filter_done"
  Then User expect "filter_amount_range_page_title" is exist
  
@android @ios @uidatabound
# being referred by:
# JENI297-C75429-[X-Card] [Functionality] Clicking 'DONE' button when user input valid amount range
# JENI297-C75430-[X-Card] [Functionality] Verify format amount range applied as a filter should be reflected on the 'Filter landing' page
Scenario: JENI297-C75429#C75430-[X-Card] [Functionality] Clicking 'DONE' button when user input valid amount range 
  Given User is logged in with cif "card_center_x_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_3"
  And User click "filter_done"
  Then "filter_screen_landing_page" will be displayed
  Then User expect "filter_amount_range_value_applied" contains "card_center_filter_amount_range_applied_1"

@android @ios @uidatabound
Scenario: JENI297-C75431-[X-Card] [Functionality] Clicking 'DONE' button will take user back to the 'Filters landing' page 
  Given User is logged in with cif "card_center_x_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_amount_range"
  Then User expect "filter_amount_range_page_title" is exist
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_3"
  And User click "filter_done"
  Then "filter_screen_landing_page" will be displayed

@android @uidatabound
Scenario: JENI297-C75433-[X-Card] [Functionality] Verified 'Active Filter' should indicate if an Amount Range filter is applied 
  Given User is logged in with cif "card_center_x_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_amount_range"
  Then User expect "filter_amount_range_page_title" is exist
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_3"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then "filter_transaction_active_indicator" will be displayed
  Then User expect "filter_transaction_active_indicator" equal with "card_center_filter_active_indicator_1"

@android @uidatabound
Scenario: JENI297-C75434-[X-Card] [Functionality] Clicking back button in the header after user inputs a valid amount range should not save the changes 
  Given User is logged in with cif "card_center_x_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_amount_range"
  Then User expect "filter_amount_range_page_title" is exist
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_3"
  And User click "back_button"
  Then "filter_screen_landing_page" will be displayed
  Then User expect "filter_amount_range_value_applied" doesn't exist

@android @ios @uidatabound
Scenario: JENI297-C75435-[X-Card] [Functionality] Verify that default amount in 'From' and 'To' should be 0 
  Given User is logged in with cif "card_center_x_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_amount_range"
  Then User expect "filter_amount_range_page_title" is exist
  Then User expect "filter_amount_range_from_input" equal with "zero_value"
  Then User expect "filter_amount_range_to_input" equal with "zero_value"

@android @ios @uidatabound
Scenario: JENI297-C75436-[X-Card] [Functionality] Verify user input should allow for whole numbers only 
  Given User is logged in with cif "card_center_x_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_search_text_2"
  # And User expect "filter_amount_range_from_input" equal with "zero_value"
  And User fill "filter_amount_range_to_input" with "card_center_search_text_2"
  # And User expect "filter_amount_range_to_input" equal with "zero_value"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_3"
  And User expect "filter_amount_range_from_input" equal with "card_center_filter_amount_range_label_3"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_1"
  And User expect "filter_amount_range_to_input" equal with "card_center_filter_amount_range_label_1"

@continuous @android @ios @uidatabound
Scenario: JENI297-C75438-[X-Card] [Functionality] Verify English language format when a user types an amount into 'To' and 'From' field
  Then User expect format number of "filter_amount_range_from_input" use comma separator
  And User expect format number of "filter_amount_range_to_input" use comma separator

@continuous @android @ios @uidatabound
Scenario: JENI297-C75437-[X-Card] [Functionality] Verify Bahasa language format when a user types an amount into 'To' and 'From' field
  Given User is logged in with cif "card_center_x_card_transaction_history_cif"
  And User change language to "language_id"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User check and click "card_center_close_tutorial" if exist
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_amount_range_id"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_3"
  And User expect "filter_amount_range_from_input" equal with "card_center_filter_amount_range_label_3"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_1"
  And User expect "filter_amount_range_to_input" equal with "card_center_filter_amount_range_label_1"
  Then User expect format number of "filter_amount_range_from_input" use dot separator
  And User expect format number of "filter_amount_range_to_input" use dot separator

@android @ios @uidatabound
Scenario: JENI297-C75439-[X-Card] [Functionality] Verify maximum digits number can be added in either of the input fields 
  Given User is logged in with cif "card_center_x_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_transactions_tab"
  And User click "in_and_out_menu"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User wait 3 seconds
  Then User fill "filter_amount_range_from_input" with "card_center_over_max_number" 
  And User wait 3 seconds
  And User expect "filter_amount_range_from_input" equal with 16 characters
  And User wait 3 seconds
  Then User fill "filter_amount_range_to_input" with "card_center_over_max_number" 
  And User wait 3 seconds
  And User expect "filter_amount_range_to_input" equal with 16 characters  

@android @ios @uidatabound
# JENI297-C75444-[X-Card] [Functionality] Verify that 'CLEAR' button is enabled only if user input valid amount range
# JENI297-C75445-[X-Card] [Functionality] Clicking 'CLEAR' button should remove the added value in 'From' and 'To' fields
Scenario: JENI297-C75444#C75445-[X-Card] [Functionality] Verify that 'CLEAR' button is enabled only if user input valid amount range 
  Given User is logged in with cif "card_center_x_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_3"
  And User expect "filter_amount_range_from_input" equal with "card_center_filter_amount_range_label_3"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_1"
  And User expect "filter_amount_range_to_input" equal with "card_center_filter_amount_range_label_1"
  And User click "filter_clear"
  Then User expect "filter_amount_range_from_input" equal with "zero_value"
  Then User expect "filter_amount_range_to_input" equal with "zero_value"

@android @ios @uidatabound
Scenario: JENI297-C75445-[X-Card] [Functionality] Clicking 'CLEAR' button should remove the added value in 'From' and 'To' fields 
  Given User is logged in with cif "card_center_x_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_3"
  And User expect "filter_amount_range_from_input" equal with "card_center_filter_amount_range_label_3"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_1"
  And User expect "filter_amount_range_to_input" equal with "card_center_filter_amount_range_label_1"
  And User click "filter_clear"
  Then User expect "filter_amount_range_from_input" equal with "zero_value"
  Then User expect "filter_amount_range_to_input" equal with "zero_value"

@android @uidatabound
Scenario: JENI297-C75446-[X-Card] [Functionality] User should be allowed to update the amount range filter to another valid amount range 
  Given User is logged in with cif "card_center_x_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_3"
  And User click "filter_done"
  And User click "filter_apply_button"
  # And User expect there are 5 of "card_center_transactions_tab_search_tax_interest_transaction"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_2"
  Then User expect "filter_amount_range_from_input" equal with "card_center_filter_amount_range_label_1"
  Then User expect "filter_amount_range_to_input" equal with "card_center_filter_amount_range_label_2"

@android @uidatabound
Scenario: JENI297-C75447-[X-Card] [Functionality] New valid amount range should be saved only if user presses 'DONE' 
  Given User is logged in with cif "card_center_x_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_3"
  And User click "filter_done"
  And User click "filter_apply_button"
  # And User expect there are 5 of "card_center_transactions_tab_search_tax_interest_transaction"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_2"
  And User click "filter_done"
  And User expect "filter_amount_range_value_applied" equal with "card_center_filter_amount_range_applied_2"

@android @uidatabound
Scenario: JENI297-C75448-[X-Card] [Functionality] Verify able to clicks 'APPLY FILTER' on landing page after update amount range 
  Given User is logged in with cif "card_center_x_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_3"
  And User click "filter_done"
  And User click "filter_apply_button"
  And User expect there are 5 of "card_center_transactions_tab_search_tax_interest_transaction"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_2"
  And User click "filter_done"
  And User click "filter_apply_button"
  And User expect there are 1 of "card_center_transactions_tab_search_baru_lagi_transaction"

@android @uidatabound
Scenario: JENI297-C75449-[X-Card] [Functionality] Click back button on landing page after update amount range 
  Given User is logged in with cif "card_center_x_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_3"
  And User click "filter_done"
  And User click "filter_apply_button"
  And User expect there are 5 of "card_center_transactions_tab_search_tax_interest_transaction"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_2"
  And User click "filter_done"
  And User click "back_button"
  And User expect there are 5 of "card_center_transactions_tab_search_tax_interest_transaction"

@android @uidatabound
Scenario: JENI297-C75450-[X-Card] [Functionality] Remove an existing amount range filter applied 
  Given User is logged in with cif "card_center_x_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_3"
  And User click "filter_done"
  Then User expect "filter_active_counter" equal with "card_center_active_filter_one"
  And User click "filter_apply_button"
  Then User expect "filter_transaction_active_indicator" is exist
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User click "filter_clear"
  And User click "filter_done"
  Then User expect "filter_active_counter" equal with "card_center_active_filter_zero"
  And User click "filter_apply_button"
  Then User expect "filter_transaction_active_indicator" doesn't exist

@android @uidatabound
Scenario: JENI297-C75451-[X-Card] [Functionality] Clicking 'RESET' button should remove the amount range filter 
  Given User is logged in with cif "card_center_x_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_3"
  And User click "filter_done"
  Then User expect "filter_amount_range_value_applied" contains "card_center_filter_amount_range_applied_1"
  And User click "filter_reset"
  Then User expect "filter_amount_range_value_applied" doesn't exist

@android @uidatabound
Scenario: JENI297-C75453-[X-Card] [Functionality]Verify selected Amount range filter indicator 
  Given User is logged in with cif "card_center_x_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_3"
  And User click "filter_done"
  Then User expect "filter_amount_range_value_applied" contains "card_center_filter_amount_range_applied_1"

#JENI-298
@android @uidatabound 
Scenario: JENI298-C75458-[X-Card] Verify calendar selection component 
  Given User is logged in with cif "card_center_x_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_second_this_week"
  Then User expect "filter_time_range_input_from_date" is first day of current week
  And User click "filter_time_range_third_this_month"
  Then User expect "filter_time_range_input_from_date" is first day of current month
  And User click "filter_time_range_fourth_this_year"
  Then User expect "filter_time_range_input_from_date" is first day of current year
  And User click "filter_time_range_fifth_last_seven_days"
  Then User expect "filter_time_range_input_from_date" equal with 7 days earlier
  And User click "filter_time_range_sixth_last_thirty_days"
  Then User expect "filter_time_range_input_from_date" equal with 30 days earlier

@android @uidatabound
# JENI298-C75459-[X-Card] Verify there's a functional 'Clear' button 
# JENI298-C75460-[X-Card] Verify there's a functional 'Done' button
# JENI298-C75461-[X-Card] Verify there's a static text 'Select your time range'
Scenario: JENI298-C75459#C69602#C69603-[X-Card] Verify there's a functional 'Clear' button, 'Done' button, and static text 
  Given User is logged in with cif "card_center_x_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_time_range"
  Then User expect "filter_clear" is exist
  Then User expect "filter_done" is exist
  Then User expect "filter_time_range_select_your_time_range_text" is exist

@android @uidatabound
Scenario: JENI298-C75462-[X-Card] Verify 'Custom' filter: Oldest 'from' or 'to' date that can be selected is 'Jan 1 2000' 
  Given User is logged in with cif "card_center_x_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_input_from_date"
  And User click "filter_time_range_date_picker_header_year"
  And User swipe down until found "filter_time_range_date_picker_minimum_year"
  And User click "filter_time_range_date_picker_minimum_year"
  And User click "filter_time_range_date_picker_previous_month" until "filter_time_range_date_picker_previous_month" gone
  And User click "filter_time_range_date_picker_date_one"
  And User click "filter_time_range_date_picker_ok"
  Then User expect "filter_time_range_input_from_date" equal with "card_center_filter_time_range_minimum_date_selected"

@android @uidatabound
Scenario: JENI298-C75463-[X-Card] Verify 'Custom' filter: Latest 'from' or 'to' date that can be selected is Jan 1 2020 
  Given User is logged in with cif "card_center_x_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_input_from_date"
  And User click "filter_time_range_date_picker_header_year"
  And User swipe down until found "filter_time_range_date_picker_maximum_year"
  And User click "filter_time_range_date_picker_maximum_year"
  Then User expect "filter_time_range_date_picker_next_month" doesn't exist
  And User click "filter_time_range_date_picker_date_one"
  And User click "filter_time_range_date_picker_ok"
  Then User expect "filter_time_range_input_from_date" equal with "card_center_filter_time_range_maximum_date_selected"

@android @uidatabound
# being referred by:
# JENI298-C75464-[X-Card] Verify 'Custom' filter: 'From' date cannot be later than 'To' date 
# JENI298-C75465-[X-Card] Verify 'Custom' filter: Snack bar error notification should appear If 'From' date selected is later than 'To' date and user click 'Done' 
Scenario: JENI298-C75464#C75465-[X-Card] Verify 'Custom' filter: 'From' cannot be later than 'To'
  Given User is logged in with cif "card_center_x_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_input_from_date"
  And User click "filter_time_range_date_picker_ok"
  And User click "filter_time_range_input_to_date"
  And User click "filter_time_range_date_picker_previous_month"
  And User click "filter_time_range_date_picker_date_one"
  And User click "filter_time_range_date_picker_ok"
  And User click "filter_done"
  # Then User expect "top_notification" is exist
  Then User expect "top_notification" equal with "card_center_filter_time_range_starting_date_later_than_end_date_notification"

@android @uidatabound
Scenario: JENI298-C75466-[X-Card] Verify 'Custom' filter: If 'From' date selected is equal/older than 'To' date 
  Given User is logged in with cif "card_center_x_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_input_from_date"
  And User click "filter_time_range_date_picker_previous_month"
  And User click "filter_time_range_date_picker_date_one"
  And User click "filter_time_range_date_picker_ok"
  And User click "filter_time_range_input_to_date"
  And User click "filter_time_range_date_picker_ok"
  And User click "filter_done"
  Then "filter_time_range_value_applied" will be displayed

@android @uidatabound
Scenario: JENI298-C75467-[X-Card] Verify 'Apply filter' button: User should be taken back to the Transactions Tab 
  Given User is logged in with cif "card_center_x_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_input_from_date"
  And User click "filter_time_range_date_picker_previous_month"
  And User click "filter_time_range_date_picker_date_one"
  And User click "filter_time_range_date_picker_ok"
  And User click "filter_time_range_input_to_date"
  And User click "filter_time_range_date_picker_ok"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then "card_center_transactions_tab" will be displayed

@android @uidatabound
Scenario: JENI298-C75468-[X-Card] Verify 'Apply filter' button: Transactions list should be revised based on applied Time Range filter 
  Given User is logged in with cif "card_center_x_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_input_from_date"
  And User select month "card_center_filter_time_range_input_selected_month_1" from Calendar
  And User click "filter_time_range_date_picker_date_one"
  And User click "filter_time_range_date_picker_ok"
  And User click "filter_time_range_input_to_date"
  And User click "filter_time_range_date_picker_ok"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then "card_center_transactions_tab" will be displayed
  Then User expect "card_center_transaction_history_month_1" past month(s) text element from current month displayed

@android @uidatabound
# JENI298-C75469-[X-Card] Verify 'Apply filter' button: If there exist other filters that have been applied, then the transaction list should get added on for filtration
# JENI298-C75470-[X-Card] Verify 'Apply filter' button: If a search has been performed then the transaction result should get further narrowed down with the applied Time Range filter
# JENI298-C75471-[X-Card] Verify 'Apply filter' button: If a search has been performed & other filter(s) have been already applied, the applied time range filter should further narrow down the transaction list
Scenario: JENI298-C75469#C75470#C75471-[X-Card] Verify 'Apply filter' button on x-card transaction history 'Time Range' filter
  Given User is logged in with cif "card_center_x_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_transactions_tab"
  And User click "search_loupe_icon"
  And User fill "in_and_out_filter_search_textfield" with "card_center_search_text_1"
  And User click "filter_icon"
  And User click "filter_category"
  And User swipe up until found "filter_category_uncategorized"
  And User click "filter_category_uncategorized"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then User expect "card_center_transaction_history_month_1" past month(s) text element from current month displayed
  Then User expect "card_center_transaction_history_month_2" past month(s) text element from current month displayed
  Then User expect "card_center_transaction_history_month_3" past month(s) text element from current month displayed
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_input_from_date"
  And User select month "card_center_filter_time_range_input_selected_month_1" from Calendar
  And User click "filter_time_range_date_picker_date_one"
  And User click "filter_time_range_date_picker_ok"
  And User click "filter_time_range_input_to_date"
  And User click "filter_time_range_date_picker_ok"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then "card_center_transactions_tab" will be displayed
  Then User expect "card_center_transaction_history_month_1" past month(s) text element from current month displayed

@android @uidatabound
Scenario: JENI298-C75472-[X-Card] Verify time range filter for 'This week': user should be taken back to the Transactions Tab of 'X-Card' landing page after select this time
  Given User is logged in with cif "card_center_x_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_second_this_week"
  And User click "back_button"
  And User click "filter_apply_button"
  Then "card_center_transactions_tab" will be displayed

@android @uidatabound
# C75473-[X-Card] Verify time range filter for 'This week': Transactions list is revised based on applied Time Range filter
# C75474-[X-Card] Verify time range filter for 'This week': Only transactions between Monday 00:00hrs of the current week and current date/time are shown
Scenario: JENI298-C75473#C75474-[X-Card] Verify time range filter for 'This week'
  Given User is logged in with cif "card_center_x_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_second_this_week"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then "card_center_transactions_tab" will be displayed
  Then "no_transaction_message" will be displayed

@android @uidatabound
# JENI298-C75475-[X-Card] Verify time range filter for 'This week': If there exist other filters that have been applied, then the transaction list should get added on for filtration 
# JENI298-C75476-[X-Card] Verify time range filter for 'This week': If a search has been performed then the transaction result should get further narrowed down with the applied Time Range filter 
# JENI298-C75477-[X-Card] Verify time range filter for 'This week': If a search has been performed & other filter(s) have been already applied, the applied time range filter should further narrow down the transaction list
Scenario: JENI298-C75475#C75476#C75477-[X-Card] Verify time range filter for 'This week': Apply filter with another filter and search applied
  Given User is logged in with cif "card_center_x_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_transactions_tab"
  And User click "search_loupe_icon"
  And User fill "in_and_out_filter_search_textfield" with "card_center_search_text_5"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_3"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then User expect "card_center_transaction_history_month_1" past month(s) text element from current month displayed
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_second_this_week"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then "card_center_transactions_tab" will be displayed
  And User wait 5 seconds
  Then "no_matches_transaction_found_message" will be displayed

@android @uidatabound
Scenario: JENI298-C75478-[X-Card] Verify time range filter for 'This month': User should be taken back to the Transactions Tab of X-Card transaction landing page 
  Given User is logged in with cif "card_center_x_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_third_this_month"
  And User click "back_button"
  And User click "filter_apply_button"
  Then "card_center_transactions_tab" will be displayed

@android @uidatabound
# JENI298-C75479-[X-Card] Verify time range filter for 'This month': Transactions list is revised based on applied Time Range filter
# JENI290-C75480-[X-Card] Verify time range filter for 'This month': Only transactions made between current date and 1st day of current month (00:00hrs) are shown 
Scenario: JENI298-C75479#C75480-[X-Card] Verify time range filter for 'This month' 
  Given User is logged in with cif "card_center_x_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_third_this_month"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then "card_center_transactions_tab" will be displayed
  Then "no_transaction_message" will be displayed

@android @uidatabound
# JENI298-C75481-[X-Card] Verify time range filter for 'This month': If there exist other filters that have been applied, then the transaction list should get added on for filtration 
# JENI298-C75482-Verify time range filter for 'This month': If a search has been performed then the transaction result should get further narrowed down with the applied Time Range filter 
# JENI298-C75483-Verify time range filter for 'This month': If a search has been performed & other filter(s) have been already applied, the applied time range filter should further narrow down the transaction list
Scenario: JENI298-C75481#C75482#C75483-[X-Card] Verify time range filter for 'This month': Apply filter with another filter and search applied
  Given User is logged in with cif "card_center_x_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_transactions_tab"
  And User click "search_loupe_icon"
  And User fill "in_and_out_filter_search_textfield" with "card_center_search_text_5"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_3"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then User expect "card_center_transaction_history_month_1" past month(s) text element from current month displayed
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_third_this_month"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then "card_center_transactions_tab" will be displayed
  Then "no_matches_transaction_found_message" will be displayed

@android @uidatabound
Scenario: JENI298-C75484-[X-Card] Verify time range filter for 'This year': User should be taken back to the Transactions Tab of X-Card Transaction landing page 
  Given User is logged in with cif "card_center_x_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_fourth_this_year"
  And User click "back_button"
  And User click "filter_apply_button"
  Then "card_center_transactions_tab" will be displayed

@android @uidatabound
# JENI298-C75485-[X-Card] Verify time range filter for 'This year': Transactions list is revised based on applied Time Range filter
# JENI298-C75486-[X-Card] Verify time range filter for 'This year': Only transactions made between current date and 1st Jan of current year (00:00hrs) are shown
Scenario: JENI298-C75485#C75486-Verify time range filter for 'This year'
  Given User is logged in with cif "card_center_x_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_fourth_this_year"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then "card_center_transactions_tab" will be displayed
  Then User expect "card_center_transaction_history_month_1" past month(s) text element from current month displayed
  Then User expect "card_center_transaction_history_month_2" past month(s) text element from current month displayed
  And User swipe up to "card_center_transaction_history_month_4" text
  Then User expect "card_center_transaction_history_month_4" past month(s) text element from current month displayed

@android @uidatabound
# JENI298-C75487-[X-Card] Verify time range filter for 'This year': If there exist other filters that have been applied, then the transaction list should get added on for filtration
# JENI298-C75488-[X-Card] Verify time range filter for 'This year': If a search has been performed then the transaction result should get further narrowed down with the applied Time Range filter
# JENI298-C75489-[X-Card] Verify time range filter for 'This year': If a search has been performed & other filter(s) have been already applied, the applied time range filter should further narrow down the transaction list 
Scenario: JENI298-C75487#C75488#C75489-[X-Card] Verify time range filter for 'This year': Apply filter with another filter and search applied
  Given User is logged in with cif "card_center_x_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_transactions_tab"
  And User click "search_loupe_icon"
  And User fill "in_and_out_filter_search_textfield" with "card_center_search_text_1"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_3"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then User expect "in_and_out_number_transaction" equal with "card_center_number_transaction_filter_applied_1"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_fourth_this_year"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then "card_center_transactions_tab" will be displayed
  Then User expect "in_and_out_number_transaction" equal with "card_center_number_transaction_filter_applied_2"

@android @uidatabound
Scenario: JENI298-C75490-[X-Card] Verify time range filter for 'Last 7 days': User should be taken back to the Transactions Tab of X-Card Transaction landing page 
  Given User is logged in with cif "card_center_x_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_fifth_last_seven_days"
  And User click "back_button"
  And User click "filter_apply_button"
  Then "card_center_transactions_tab" will be displayed

@android @uidatabound
# JENI298-C75491-[X-Card] Verify time range filter for 'Last 7 days': Transactions list is revised based on applied Time Range filter
# JENI298-C75492-[X-Card] Verify time range filter for 'Last 7 days': Only transactions made between current date and previous 7 days are shown
Scenario: JENI298-C75491#C75492-[X-Card] Verify time range filter for 'Last 7 days'
  Given User is logged in with cif "card_center_x_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_fifth_last_seven_days"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then "card_center_transactions_tab" will be displayed
  Then "no_transaction_message" will be displayed

@android @uidatabound
# JENI298-C75493-[X-Card] Verify time range filter for 'Last 7 days': If there exist other filters that have been applied, then the transaction list should get added on for filtration
# JENI298-C75494-[X-Card] Verify time range filter for 'Last 7 days': If a search has been performed then the transaction result should get further narrowed down with the applied Time Range filter
# JENI298-C75495-[X-Card] Verify time range filter for 'Last 7 days': If a search has been performed & other filter(s) have been already applied, the applied time range filter should further narrow down the transaction list 
Scenario: JENI298-C75493#C75494#C75495-[X-Card] Verify time range filter for 'Last 7 days': Apply filter with another filter and search applied
  Given User is logged in with cif "card_center_x_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_transactions_tab"
  And User click "search_loupe_icon"
  And User fill "in_and_out_filter_search_textfield" with "card_center_search_text_4"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_3"
  And User click "filter_done"
  And User click "filter_apply_button"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_fifth_last_seven_days"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then "card_center_transactions_tab" will be displayed
  And User wait 5 seconds
  Then "no_matches_transaction_found_message" will be displayed

@android @uidatabound
Scenario: JENI298-C75496-[X-Card] Verify time range filter for 'Last 30 days': User should be taken back to the Transactions Tab of M-Card Transaction landing page  
  Given User is logged in with cif "card_center_x_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_sixth_last_thirty_days"
  And User click "back_button"
  And User click "filter_apply_button"
  Then "card_center_transactions_tab" will be displayed

@android @uidatabound
# JENI298-C75497-[X-Card] Verify time range filter for 'Last 30 days': Transactions list is revised based on applied Time Range filter
# JENI298-C75498-[X-Card] Verify time range filter for 'Last 30 days': Only transactions made between current date and previous 30 days are shown 
Scenario: JENI298-C75497#C75498-Verify time range filter for 'Last 30 days'
  Given User is logged in with cif "card_center_x_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_sixth_last_thirty_days"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then "card_center_transactions_tab" will be displayed
  Then "no_transaction_message" will be displayed

@android @uidatabound
# JENI298-C75499-[X-Card] Verify time range filter for 'Last 30 days': If there exist other filters that have been applied, then the transaction list should get added on for filtration 
# JENI298-C75500-[X-Card] Verify time range filter for 'Last 30 days': If a search has been performed then the transaction result should get further narrowed down with the applied Time Range filter
# JENI298-C75501-[X-Card] Verify time range filter for 'Last 30 days': If a search has been performed & other filter(s) have been already applied, the applied time range filter should further narrow down the transaction list 
Scenario: JENI298-C75499#C75500#C75501-[X-Card] Verify time range filter for 'Last 30 days': Apply filter with another filter and search applied
  Given User is logged in with cif "card_center_x_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_transactions_tab"
  And User click "search_loupe_icon"
  And User fill "in_and_out_filter_search_textfield" with "card_center_search_text_1"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_3"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then User expect "in_and_out_number_transaction" equal with "card_center_number_transaction_filter_applied_1"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_sixth_last_thirty_days"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then "card_center_transactions_tab" will be displayed
  Then "no_matches_transaction_found_message" will be displayed

@android @uidatabound
Scenario: JENI298-C75502-[X-Card] Verify selected Time range filter indicator 
  Given User is logged in with cif "card_center_x_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_first_x_card_dashboard"
  And User click "card_center_transactions_tab"
  And User click "search_loupe_icon"
  And User fill "in_and_out_filter_search_textfield" with "card_center_search_text_1"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_input_from_date"
  When User select "card_center_filter_time_range_input_selected_month_1" months from today in "card_center_transaction_filter_date_picker" date picker
  And User click "filter_time_range_input_to_date"
  When User select "card_center_filter_time_range_input_selected_month_2" months from today in "card_center_transaction_filter_date_picker" date picker
  And User click "filter_done"
  Then "filter_time_range_value_applied" will be displayed
  Then User expect "card_center_transaction_filter_date_picker" is in range of "card_center_filter_time_range_input_selected_month_1" months and "card_center_filter_time_range_input_selected_month_2" months from today
  And User click "filter_time_range"
  And User click "filter_time_range_second_this_week"
  And User click "filter_done"
  Then "filter_time_range_value_applied" will be displayed
  Then User expect "filter_time_range_value_applied" is current week
  And User click "filter_time_range"
  And User click "filter_time_range_third_this_month"
  And User click "filter_done"
  Then "filter_time_range_value_applied" will be displayed
  Then User expect "filter_time_range_value_applied" is current month
  And User click "filter_time_range"
  And User click "filter_time_range_fourth_this_year"
  And User click "filter_done"
  Then "filter_time_range_value_applied" will be displayed
  Then User expect "filter_time_range_value_applied" is current year
  And User click "filter_time_range"
  And User click "filter_time_range_fifth_last_seven_days"
  And User click "filter_done"
  Then "filter_time_range_value_applied" will be displayed
  Then User expect "filter_time_range_value_applied" is latest 7 days
  And User click "filter_time_range"
  And User click "filter_time_range_sixth_last_thirty_days"
  And User click "filter_done"
  Then "filter_time_range_value_applied" will be displayed
  Then User expect "filter_time_range_value_applied" is latest 30 days



# E-Card
#JENI-266
@android @uidatabound
Scenario: JENI266-C75328-[E-Card][Funcionality] Verify user is viewing the "E-Card transactions" in the Transactions tab of E-Card
  Given User is logged in with cif "card_center_e_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_e_card_element"
  And User click "card_center_transactions_tab"
  And User expect "card_center_transaction_list_container" is exist

@android @uidatabound
Scenario: JENI266-C75329-[E-Card][Funcionality] Verify all E-Card transactions are displayed correctly
  Given User is logged in with cif "card_center_e_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_e_card_element"
  And User click "card_center_transactions_tab"
  And User swipe up to "card_center_transaction_history_month_5" text
  Then User expect "card_center_transactions_number_indicator" equal with "card_center_e_card_showing_all_transactions_label"

@android @uidatabound
Scenario: JENI266-C75330-[E-Card][Functionality] Verify each E-Card Transactions contains some information
  Given User is logged in with cif "card_center_e_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_e_card_element"
  And User click "card_center_transactions_tab"
  Then User expect "card_center_transcation_first_item_narrative" is exist
  Then User expect "card_center_transcation_first_item_date" is exist
  Then User expect "card_center_transcation_first_item_amount" is exist
  Then User expect "card_center_transcation_first_item_category" is exist
  Then User expect "card_center_transcation_first_item_tax_avatar" is exist

@android @uidatabound
Scenario: JENI266-C75334-[E-Card][Functionality]Verify that the number of result should be displayed as format "Showing [number] of [total number]"
  Given User is logged in with cif "card_center_e_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_e_card_element"
  And User click "card_center_transactions_tab"
  Then User expect "card_center_transactions_number_indicator" equal with "card_center_m_card_showing_ten_transactions_label"

@android @uidatabound
Scenario: JENI266-C75335-[E-Card][Functionality]Verify that the lazy loading function work correctly
  Given User is logged in with cif "card_center_e_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_e_card_element"
  And User click "card_center_transactions_tab"
  Then User expect "card_center_transactions_number_indicator" equal with "card_center_m_card_showing_ten_transactions_label"
  And User swipe up to "card_center_transaction_history_month_4" text
  Then User expect "card_center_transactions_number_indicator" equal with "card_center_m_card_showing_twenty_transactions_label"
  And User swipe up to "card_center_transaction_history_month_5" text
  Then User expect "card_center_transactions_number_indicator" equal with "card_center_m_card_showing_all_transactions_label"

@android @uidatabound
Scenario: JENI266-C75336-[E-Card][Functionality]Verify that transaction list will be grouped by month
  Given User is logged in with cif "card_center_e_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_e_card_element"
  And User click "card_center_transactions_tab"
  Then User expect "card_center_transaction_history_month_1" past month(s) text element from current month displayed
  Then User expect "card_center_transaction_history_month_2" past month(s) text element from current month displayed

#JENI-294
@android @ios @uidatabound
Scenario: JENI294-C75555-[E-Card][Functionality] Verify 'DONE' button is enabled when user fill 'From' amount is less than 'To' Amount 
  Given User is logged in with cif "card_center_e_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_e_card_element"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_3"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_1"
  And User click "filter_done"
  Then User expect "filter_amount_range_page_title" is exist
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_3"
  And User click "filter_done"
  Then User expect "filter_amount_range_page_title" doesn't exist

@android @ios @uidatabound @continuous
Scenario: JENI294-C75556-[E-Card][Functionality] Verify 'DONE' button is enabled if user has cleared an existing applied amount range using 'CLEAR' button 
  And User click "filter_amount_range"
  And User click "filter_done"
  Then User expect "filter_amount_range_page_title" is exist
  And User click "filter_clear" 
  And User click "filter_done"
  Then User expect "filter_amount_range_page_title" doesn't exist

@android @ios @uidatabound
Scenario: JENI294-C75557-[E-Card][Functionality] Verify 'DONE' button is disabled if 'From' and 'To' value are preset to the default value 0 
  Given User is logged in with cif "card_center_e_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_e_card_element"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_3"
  And User click "filter_done"
  Then User expect "filter_amount_range_page_title" doesn't exist
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "save_it_zero_value"
  And User fill "filter_amount_range_to_input" with "save_it_zero_value"
  And User click "filter_done"
  Then User expect "filter_amount_range_page_title" is exist
  
@android @ios @uidatabound
# JENI294-C75558-[E-Card][Functionality] Clicking 'DONE' button when user input valid amount range
# JENI294-C75559-[E-Card][Functionality] Verify format amount range applied as a filter should be reflected on the 'Filter landing' page
Scenario: JENI294-C75558#C75559-[X-Card] [Functionality] Clicking 'DONE' button when user input valid amount range 
  Given User is logged in with cif "card_center_e_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_e_card_element"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_3"
  And User click "filter_done"
  Then "filter_screen_landing_page" will be displayed
  Then User expect "filter_amount_range_value_applied" contains "card_center_filter_amount_range_applied_1"

@android @ios @uidatabound
Scenario: JENI294-C75560-[E-Card][Functionality] Clicking 'DONE' button will take user back to the 'Filters landing' page 
  Given User is logged in with cif "card_center_e_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_e_card_element"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_amount_range"
  Then User expect "filter_amount_range_page_title" is exist
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_3"
  And User click "filter_done"
  Then "filter_screen_landing_page" will be displayed

@android @uidatabound
Scenario: JENI294-C75561-[E-Card][Functionality] Click APPLY FILTER' button on filters landing page
  Given User is logged in with cif "card_center_e_card_transaction_history_cif"
  And User change language to "language"
  And User access card center from side menu
  And User check and click "tutorial_close" if exist
  And User click "card_center_e_card"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_3"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then "card_center_transactions_tab" will be displayed
  Then User expect all "card_center_transaction_history_amount_item" displayed, have value between "card_center_filter_amount_range_1" until "card_center_filter_amount_range_3"

@android @uidatabound
Scenario: JENI294-C75562-[E-Card][Functionality] Verified 'Active Filter' should indicate if an Amount Range filter is applied 
  Given User is logged in with cif "card_center_e_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_e_card_element"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_amount_range"
  Then User expect "filter_amount_range_page_title" is exist
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_3"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then "filter_transaction_active_indicator" will be displayed
  Then User expect "filter_transaction_active_indicator" equal with "card_center_filter_active_indicator_1"

@android @uidatabound
Scenario: JENI294-C75563-[E-Card][Functionality] Clicking back button in the header after user inputs a valid amount range should not save the changes 
  Given User is logged in with cif "card_center_e_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_e_card_element"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_amount_range"
  Then User expect "filter_amount_range_page_title" is exist
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_3"
  And User click "back_button"
  Then "filter_screen_landing_page" will be displayed
  Then User expect "filter_amount_range_value_applied" doesn't exist

@android @ios @uidatabound
Scenario: JENI294-C75564-[E-Card][Functionality] Verify that default amount in 'From' and 'To' should be 0 
  Given User is logged in with cif "card_center_e_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_e_card_element"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_amount_range"
  Then User expect "filter_amount_range_page_title" is exist
  Then User expect "filter_amount_range_from_input" equal with "zero_value"
  Then User expect "filter_amount_range_to_input" equal with "zero_value"

@android @ios @uidatabound
Scenario: JENI294-C75565-[E-Card][Functionality] Verify user input should allow for whole numbers only 
  Given User is logged in with cif "card_center_e_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_e_card_element"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_search_text_2"
  # And User expect "filter_amount_range_from_input" equal with "zero_value"
  And User expect "filter_amount_range_from_input" equal with "in_and_out_search_empty"
  And User fill "filter_amount_range_to_input" with "card_center_search_text_2"
  # And User expect "filter_amount_range_to_input" equal with "zero_value"
  And User expect "filter_amount_range_to_input" equal with "in_and_out_search_empty"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_3"
  And User expect "filter_amount_range_from_input" equal with "card_center_filter_amount_range_label_3"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_1"
  And User expect "filter_amount_range_to_input" equal with "card_center_filter_amount_range_label_1"

@continuous @android @ios @uidatabound
Scenario: JENI294-C75567-[E-Card][Functionality] Verify English language format when a user types an amount into 'To' and 'From' field
  Then User expect format number of "filter_amount_range_from_input" use comma separator
  And User expect format number of "filter_amount_range_to_input" use comma separator

@android @ios @uidatabound
Scenario: JENI294-C75566-[E-Card][Functionality] Verify Bahasa language format when a user types an amount into 'To' and 'From' field
  Given User is logged in with cif "card_center_e_card_transaction_history_cif"
  And User change language to "language_id"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_e_card_element"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_amount_range_id"
  And User fill "filter_amount_range_from_input_id" with "card_center_filter_amount_range_3"
  # And User expect "filter_amount_range_from_input_id" equal with "card_center_filter_amount_range_label_3"
  And User fill "filter_amount_range_to_input_id" with "card_center_filter_amount_range_1"
  # And User expect "filter_amount_range_to_input" equal with "card_center_filter_amount_range_label_1"
  Then User expect format number of "filter_amount_range_from_input_id" use dot separator
  And User expect format number of "filter_amount_range_to_input_id" use dot separator

@android @ios @uidatabound
Scenario: JENI294-C75568-[E-Card][Functionality] Verify maximum digits number can be added in either of the input fields 
  Given User is logged in with cif "card_center_e_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_e_card_element"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User wait 3 seconds
  Then User fill "filter_amount_range_from_input" with "card_center_over_max_number" 
  And User wait 3 seconds
  And User expect "filter_amount_range_from_input" equal with 16 characters
  And User wait 3 seconds
  Then User fill "filter_amount_range_to_input" with "card_center_over_max_number" 
  And User wait 3 seconds
  And User expect "filter_amount_range_to_input" equal with 16 characters  

@android @ios @uidatabound
# JENI294-C75573-[E-Card][Functionality] Verify that 'CLEAR' button is enabled only if user input valid amount range
# JENI294-C75574-[E-Card][Functionality] Clicking 'CLEAR' button should remove the added value in 'From' and 'To' fields
Scenario: JENI294-C75573#C75574-[E-Card][Functionality] Verify that 'CLEAR' button
  Given User is logged in with cif "card_center_e_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_e_card_element"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_3"
  And User expect "filter_amount_range_from_input" equal with "card_center_filter_amount_range_label_3"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_1"
  And User expect "filter_amount_range_to_input" equal with "card_center_filter_amount_range_label_1"
  And User click "filter_clear"
  Then User expect "filter_amount_range_from_input" equal with "zero_value"
  Then User expect "filter_amount_range_to_input" equal with "zero_value"

@android @uidatabound
Scenario: JENI294-C75575-[E-Card][Functionality] User should be allowed to update the amount range filter to another valid amount range 
  Given User is logged in with cif "card_center_e_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_e_card_element"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_3"
  And User click "filter_done"
  And User click "filter_apply_button"
  # And User expect there are 5 of "card_center_transactions_tab_search_tax_interest_transaction"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_2"
  Then User expect "filter_amount_range_from_input" equal with "card_center_filter_amount_range_label_1"
  Then User expect "filter_amount_range_to_input" equal with "card_center_filter_amount_range_label_2"

@android @uidatabound
Scenario: JENI294-C75576-[E-Card][Functionality] New valid amount range should be saved only if user presses 'DONE' 
  Given User is logged in with cif "card_center_e_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_e_card_element"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_3"
  And User click "filter_done"
  And User click "filter_apply_button"
  # And User expect there are 5 of "card_center_transactions_tab_search_tax_interest_transaction"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_2"
  And User click "filter_done"
  And User expect "filter_amount_range_value_applied" equal with "card_center_filter_amount_range_applied_2"

@android @uidatabound
Scenario: JENI294-C75577-[E-Card][Functionality] Verify able to clicks 'APPLY FILTER' on landing page after update amount range 
  Given User is logged in with cif "card_center_e_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_e_card_element"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_3"
  And User click "filter_done"
  And User click "filter_apply_button"
  # And User expect there are 5 of "card_center_transactions_tab_search_tax_interest_transaction"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_2"
  And User click "filter_done"
  And User click "filter_apply_button"
  And User expect there are 1 of "card_center_transactions_tab_search_baru_lagi_transaction"

@android @uidatabound
Scenario: JENI294-C75578-[E-Card][Functionality] Click back button on landing page after update amount range 
  Given User is logged in with cif "card_center_e_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_e_card_element"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_3"
  And User click "filter_done"
  And User click "filter_apply_button"
  And User expect there are 5 of "card_center_transactions_tab_search_tax_interest_transaction"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_2"
  And User click "filter_done"
  And User click "back_button"
  And User expect there are 5 of "card_center_transactions_tab_search_tax_interest_transaction"

@android @uidatabound
Scenario: JENI294-C75579-[E-Card][Functionality] Remove an existing amount range filter applied 
  Given User is logged in with cif "card_center_e_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_e_card_element"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_3"
  And User click "filter_done"
  Then User expect "filter_active_counter" equal with "card_center_active_filter_one"
  And User click "filter_apply_button"
  Then User expect "filter_transaction_active_indicator" is exist
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User click "filter_clear"
  And User click "filter_done"
  Then User expect "filter_active_counter" equal with "card_center_active_filter_zero"
  And User click "filter_apply_button"
  Then User expect "filter_transaction_active_indicator" doesn't exist

@android @uidatabound
Scenario: JENI294-C75580-[E-Card][Functionality] Clicking 'RESET' button should remove the amount range filter 
  Given User is logged in with cif "card_center_e_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_e_card_element"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_3"
  And User click "filter_done"
  Then User expect "filter_amount_range_value_applied" contains "card_center_filter_amount_range_applied_1"
  And User click "filter_reset"
  Then User expect "filter_amount_range_value_applied" doesn't exist

@android @uidatabound
Scenario: JENI294-C75582-[E-Card][Functionality]Verify selected Amount range filter indicator 
  Given User is logged in with cif "card_center_e_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User click "card_center_close_tutorial"
  And User click "card_center_e_card_element"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_3"
  And User click "filter_done"
  Then User expect "filter_amount_range_value_applied" contains "card_center_filter_amount_range_applied_1"  

#JENI-295
@android @uidatabound
Scenario: JENI295-C75587-[E-Card] Verify calendar selection component
  Given User is logged in with cif "card_center_e_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User check and click "tutorial_close" if exist
  And User click "card_center_e_card"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_second_this_week"
  Then User expect "filter_time_range_input_from_date_content" is first day of current week
  And User click "filter_time_range_third_this_month"
  Then User expect "filter_time_range_input_from_date_content" is first day of current month
  And User click "filter_time_range_fourth_this_year"
  Then User expect "filter_time_range_input_from_date_content" is first day of current year
  And User click "filter_time_range_fifth_last_seven_days"
  Then User expect "filter_time_range_input_from_date_content" equal with 7 days earlier
  And User click "filter_time_range_sixth_last_thirty_days"
  Then User expect "filter_time_range_input_from_date_content" equal with 30 days earlier

@android @uidatabound
# JENI295-C75588-[E-Card] Verify there's a functional 'Clear' button 
# JENI295-C75589-[E-Card] Verify there's a functional 'Done' button
# JENI295-C75590-[E-Card] Verify there's a static text 'Select your time range'
Scenario: JENI295-C75588#C75589#C75590-[E-Card] Verify there's a functional 'Clear' button, 'Done' button, and static text
  Given User is logged in with cif "card_center_e_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User check and click "tutorial_close" if exist
  And User click "card_center_e_card"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_time_range"
  Then User expect "filter_clear" is exist
  Then User expect "filter_done" is exist
  Then User expect "filter_time_range_select_your_time_range_text" is exist

@android @uidatabound
Scenario: JENI295-C75591-[E-Card] Verify 'Custom' filter: Oldest 'from' or 'to' date that can be selected is 'Jan 1 2000'
  Given User is logged in with cif "card_center_e_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User check and click "tutorial_close" if exist
  And User click "card_center_e_card"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_input_from_date"
  And User click "filter_time_range_date_picker_header_year"
  And User swipe down until found "filter_time_range_date_picker_minimum_year"
  And User click "filter_time_range_date_picker_minimum_year"
  And User click "filter_time_range_date_picker_previous_month" until "filter_time_range_date_picker_previous_month" gone
  And User click "filter_time_range_date_picker_date_one"
  And User click "filter_time_range_date_picker_ok"
  Then User expect "filter_time_range_input_from_date_content" equal with "card_center_filter_time_range_minimum_date_selected"

@android @uidatabound
Scenario: JENI295-C75592-[E-Card] Verify 'Custom' filter: Latest 'from' or 'to' date that can be selected is Jan 1 2020
  Given User is logged in with cif "card_center_e_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User check and click "tutorial_close" if exist
  And User click "card_center_e_card"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_input_from_date"
  And User click "filter_time_range_date_picker_header_year"
  And User swipe down until found "filter_time_range_date_picker_maximum_year"
  And User click "filter_time_range_date_picker_maximum_year"
  Then User expect "filter_time_range_date_picker_next_month" doesn't exist
  And User click "filter_time_range_date_picker_date_one"
  And User click "filter_time_range_date_picker_ok"
  Then User expect "filter_time_range_input_from_date_content" equal with "card_center_filter_time_range_maximum_date_selected"

@android @uidatabound
# being referred by:
# JENI295-C75593-[E-Card] Verify 'Custom' filter: 'From' date cannot be later than 'To' date
# JENI295-C75594-[E-Card] Verify 'Custom' filter: Snack bar error notification should appear If 'From' date selected is later than 'To' date and user click 'Done'
Scenario: JENI295-C75593#C75594-[E-Card] Verify 'Custom' filter: 'From' cannot be later than 'To'
  Given User is logged in with cif "card_center_e_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User check and click "tutorial_close" if exist
  And User click "card_center_e_card"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_input_from_date"
  And User click "filter_time_range_date_picker_ok"
  And User click "filter_time_range_input_to_date"
  And User click "filter_time_range_date_picker_previous_month"
  And User click "filter_time_range_date_picker_date_one"
  And User click "filter_time_range_date_picker_ok"
  And User click "filter_done"
  # Then User expect "top_notification" is exist
  Then User expect "top_notification" equal with "card_center_filter_time_range_starting_date_later_than_end_date_notification"

@android @uidatabound
Scenario: JENI295-C75595-[E-Card] Verify 'Custom' filter: If 'From' date selected is equal/older than 'To' date
  Given User is logged in with cif "card_center_e_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User check and click "tutorial_close" if exist
  And User click "card_center_e_card"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_input_from_date"
  And User click "filter_time_range_date_picker_previous_month"
  And User click "filter_time_range_date_picker_date_one"
  And User click "filter_time_range_date_picker_ok"
  And User click "filter_time_range_input_to_date"
  And User click "filter_time_range_date_picker_ok"
  And User click "filter_done"
  Then "filter_time_range_value_applied" will be displayed

@android @uidatabound
Scenario: JENI295-C75596-[E-Card] Verify 'Apply filter' button: User should be taken back to the Transactions Tab
  Given User is logged in with cif "card_center_e_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User check and click "tutorial_close" if exist
  And User click "card_center_e_card"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_input_from_date"
  And User click "filter_time_range_date_picker_previous_month"
  And User click "filter_time_range_date_picker_date_one"
  And User click "filter_time_range_date_picker_ok"
  And User click "filter_time_range_input_to_date"
  And User click "filter_time_range_date_picker_ok"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then "card_center_transactions_tab" will be displayed

@android @uidatabound
Scenario: JENI295-C75597-[E-Card] Verify 'Apply filter' button: Transactions list should be revised based on applied Time Range filter
  Given User is logged in with cif "card_center_e_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User check and click "tutorial_close" if exist
  And User click "card_center_e_card"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_input_from_date"
  And User select month "card_center_filter_time_range_input_selected_month_1" from Calendar
  And User click "filter_time_range_date_picker_date_one"
  And User click "filter_time_range_date_picker_ok"
  And User click "filter_time_range_input_to_date"
  And User click "filter_time_range_date_picker_ok"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then "card_center_transactions_tab" will be displayed
  Then User expect "card_center_transaction_history_month_1" past month(s) text element from current month displayed

@android @uidatabound
# JENI295-C75598-[E-Card] Verify 'Apply filter' button: If there exist other filters that have been applied, then the transaction list should get added on for filtration
# JENI295-C75599-[E-Card] Verify 'Apply filter' button: If a search has been performed then the transaction result should get further narrowed down with the applied Time Range filter
# JENI295-C75600-[E-Card] Verify 'Apply filter' button: If a search has been performed & other filter(s) have been already applied, the applied time range filter should further narrow down the transaction list
Scenario: JENI295-C75598#C75599#C75600-[E-Card] Verify 'Apply filter' button on E-Card transaction history 'Time Range' filter
  Given User is logged in with cif "card_center_e_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User check and click "tutorial_close" if exist
  And User click "card_center_e_card"
  And User click "card_center_transactions_tab"
  And User click "search_loupe_icon"
  And User fill "in_and_out_filter_search_textfield" with "card_center_search_text_1"
  And User click "filter_icon"
  And User click "filter_category"
  And User swipe up until found "filter_category_uncategorized"
  And User click "filter_category_uncategorized"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then User expect "card_center_transaction_history_month_1" past month(s) text element from current month displayed
  Then User expect "card_center_transaction_history_month_2" past month(s) text element from current month displayed
  Then User expect "card_center_transaction_history_month_3" past month(s) text element from current month displayed
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_input_from_date"
  And User select month "card_center_filter_time_range_input_selected_month_1" from Calendar
  And User click "filter_time_range_date_picker_date_one"
  And User click "filter_time_range_date_picker_ok"
  And User click "filter_time_range_input_to_date"
  And User click "filter_time_range_date_picker_ok"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then "card_center_transactions_tab" will be displayed
  Then User expect "card_center_transaction_history_month_1" past month(s) text element from current month displayed

@android @uidatabound
Scenario: JENI295-C75601-[E-Card] Verify time range filter for 'This week': user should be taken back to the Transactions Tab of 'E-Card' landing page after select this time
  Given User is logged in with cif "card_center_e_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User check and click "tutorial_close" if exist
  And User click "card_center_e_card"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_second_this_week"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then "card_center_transactions_tab" will be displayed

@android @uidatabound
# C75602-[E-Card] Verify time range filter for 'This week': Transactions list is revised based on applied Time Range filter
# C75603-[E-Card] Verify time range filter for 'This week': Only transactions between Monday 00:00hrs of the current week and current date/time are shown
Scenario: JENI295-C75602#C75603-[E-Card] Verify time range filter for 'This week'
  Given User is logged in with cif "card_center_e_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User check and click "tutorial_close" if exist
  And User click "card_center_e_card"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_second_this_week"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then "card_center_transactions_tab" will be displayed
  Then "no_transaction_message" will be displayed

@android @uidatabound
# JENI295-C75604-[E-Card] Verify time range filter for 'This week': If there exist other filters that have been applied, then the transaction list should get added on for filtration 
# JENI295-C75605-[E-Card] Verify time range filter for 'This week': If a search has been performed then the transaction result should get further narrowed down with the applied Time Range filter 
# JENI295-C75606-[E-Card] Verify time range filter for 'This week': If a search has been performed & other filter(s) have been already applied, the applied time range filter should further narrow down the transaction list
Scenario: JENI295-C75604#C75605#C75606-[E-Card] Verify time range filter for 'This week': Apply filter with another filter and search applied
  Given User is logged in with cif "card_center_e_card_transaction_history_cif"
  And User change language to "language"
  And User click "dashboard_hamburger_icon"
  And User click "card_center_menu"
  And User check and click "tutorial_close" if exist
  And User click "card_center_e_card"
  And User click "card_center_transactions_tab"
  And User click "search_loupe_icon"
  And User fill "in_and_out_filter_search_textfield" with "card_center_search_text_5"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_3"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then User expect "card_center_transaction_history_month_1" past month(s) text element from current month displayed
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_second_this_week"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then "card_center_transactions_tab" will be displayed
  And User wait 5 seconds
  Then "no_matches_transaction_found_message" will be displayed

@android @uidatabound
Scenario: JENI295-C75607-Verify time range filter for 'This month': User should be taken back to the Transactions Tab of E-Card transaction landing page
  Given User is logged in with cif "card_center_e_card_transaction_history_cif"
  And User change language to "language"
  And User access card center from side menu
  And User check and click "tutorial_close" if exist
  And User click "card_center_e_card"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_third_this_month"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then "card_center_transactions_tab" will be displayed

@android @uidatabound
# referred by:
# JENI295-C75608-Verify time range filter for 'This month': Only transactions made between current date and 1st day of current month (00:00hrs) are shown 
Scenario: JENI295-C75608#C75609-Verify time range filter for 'This month': Transactions list is revised based on applied Time Range filter
  Given User is logged in with cif "card_center_e_card_transaction_history_cif"
  And User change language to "language"
  And User access card center from side menu
  And User check and click "tutorial_close" if exist
  And User click "card_center_e_card"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_third_this_month"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then "card_center_transactions_tab" will be displayed
  Then "no_transaction_message" will be displayed

@android @uidatabound
# referred by:
# JENI295-C75610-Verify time range filter for 'This month': If there exist other filters that have been applied, then the transaction list should get added on for filtration 
# JENI295-C75611-Verify time range filter for 'This month': If a search has been performed then the transaction result should get further narrowed down with the applied Time Range filter 
Scenario: JENI295-C75610#C75611#C75612-Verify time range filter for 'This month': If a search has been performed & other filter(s) have been already applied, the applied time range filter should further narrow down the transaction list
  Given User is logged in with cif "card_center_e_card_transaction_history_cif"
  And User change language to "language"
  And User access card center from side menu
  And User check and click "tutorial_close" if exist
  And User click "card_center_e_card"
  And User click "card_center_transactions_tab"
  And User click "search_loupe_icon"
  And User fill "in_and_out_filter_search_textfield" with "card_center_search_text_5"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_3"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then User expect "card_center_transaction_history_month_1" past month(s) text element from current month displayed
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_third_this_month"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then "card_center_transactions_tab" will be displayed
  Then "no_matches_transaction_found_message" will be displayed

@android @uidatabound
Scenario: JENI295-C75613-Verify time range filter for 'This year': User should be taken back to the Transactions Tab of E-Card Transaction landing page
  Given User is logged in with cif "card_center_e_card_transaction_history_cif"
  And User change language to "language"
  And User access card center from side menu
  And User check and click "tutorial_close" if exist
  And User click "card_center_e_card"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_fourth_this_year"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then "card_center_transactions_tab" will be displayed

@android @uidatabound
# being referred by:
# JENI295-C75614-Verify time range filter for 'This year': Transactions list is revised based on applied Time Range filter
Scenario: JENI295-C75614#C75615-Verify time range filter for 'This year': Only transactions made between current date and 1st Jan of current year (00:00hrs) are shown
  Given User is logged in with cif "card_center_e_card_transaction_history_cif"
  And User change language to "language"
  And User access card center from side menu
  And User check and click "tutorial_close" if exist
  And User click "card_center_e_card"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_fourth_this_year"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then "card_center_transactions_tab" will be displayed
  Then User expect "card_center_transaction_history_month_1" past month(s) text element from current month displayed
  Then User expect "card_center_transaction_history_month_2" past month(s) text element from current month displayed
  And User swipe up to "card_center_transaction_history_month_4" text
  Then User expect "card_center_transaction_history_month_4" past month(s) text element from current month displayed

@android @uidatabound
# being referred by:
# JENI295-C75616-Verify time range filter for 'This year': If there exist other filters that have been applied, then the transaction list should get added on for filtration
# JENI295-C75617-Verify time range filter for 'This year': If a search has been performed then the transaction result should get further narrowed down with the applied Time Range filter
Scenario: JENI295-C75616#C75617#C75618-Verify time range filter for 'This year': If a search has been performed & other filter(s) have been already applied, the applied time range filter should further narrow down the transaction list
  Given User is logged in with cif "card_center_e_card_transaction_history_cif"
  And User change language to "language"
  And User access card center from side menu
  And User check and click "tutorial_close" if exist
  And User click "card_center_e_card"
  And User click "card_center_transactions_tab"
  And User click "search_loupe_icon"
  And User fill "in_and_out_filter_search_textfield" with "card_center_search_text_1"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_3"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then User expect "in_and_out_number_transaction" equal with "card_center_number_transaction_filter_applied_1"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_fourth_this_year"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then "card_center_transactions_tab" will be displayed
  Then User expect "in_and_out_number_transaction" equal with "card_center_number_transaction_filter_applied_2"

@android @uidatabound
Scenario: JENI295-C75619-Verify time range filter for 'Last 7 days': User should be taken back to the Transactions Tab of E-Card Transaction landing page
  Given User is logged in with cif "card_center_e_card_transaction_history_cif"
  And User change language to "language"
  And User access card center from side menu
  And User check and click "tutorial_close" if exist
  And User click "card_center_e_card"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_fifth_last_seven_days"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then "card_center_transactions_tab" will be displayed

@android @uidatabound
# being referred by:
# JENI295-C75620-Verify time range filter for 'Last 7 days': Transactions list is revised based on applied Time Range filter
Scenario: JENI295-C75620#C75621-Verify time range filter for 'Last 7 days': Only transactions made between current date and previous 7 days are shown
  Given User is logged in with cif "card_center_e_card_transaction_history_cif"
  And User change language to "language"
  And User access card center from side menu
  And User check and click "tutorial_close" if exist
  And User click "card_center_e_card"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_fifth_last_seven_days"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then "card_center_transactions_tab" will be displayed
  Then "no_transaction_message" will be displayed

@android @uidatabound
# being referred by:
# JENI295-C75622-Verify time range filter for 'Last 7 days': If there exist other filters that have been applied, then the transaction list should get added on for filtration
# JENI295-C75623-Verify time range filter for 'Last 7 days': If a search has been performed then the transaction result should get further narrowed down with the applied Time Range filter
Scenario: JENI295-C75622#C75623#C75624-Verify time range filter for 'Last 7 days': If a search has been performed & other filter(s) have been already applied, the applied time range filter should further narrow down the transaction list
  Given User is logged in with cif "card_center_e_card_transaction_history_cif"
  And User change language to "language"
  And User access card center from side menu
  And User check and click "tutorial_close" if exist
  And User click "card_center_e_card"
  And User click "card_center_transactions_tab"
  And User click "search_loupe_icon"
  And User fill "in_and_out_filter_search_textfield" with "card_center_search_text_4"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_3"
  And User click "filter_done"
  And User click "filter_apply_button"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_fifth_last_seven_days"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then "card_center_transactions_tab" will be displayed
  And User wait 5 seconds
  Then "no_matches_transaction_found_message" will be displayed

@android @uidatabound
Scenario: JENI295-C75625-Verify time range filter for 'Last 30 days': User should be taken back to the Transactions Tab of M-Card Transaction landing page  
  Given User is logged in with cif "card_center_e_card_transaction_history_cif"
  And User change language to "language"
  And User access card center from side menu
  And User check and click "tutorial_close" if exist
  And User click "card_center_e_card"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_sixth_last_thirty_days"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then "card_center_transactions_tab" will be displayed

@android @uidatabound
# being referred by:
# JENI295-C75626-Verify time range filter for 'Last 30 days': Transactions list is revised based on applied Time Range filter
Scenario: JENI295-C75626#C75627-Verify time range filter for 'Last 30 days': Only transactions made between current date and previous 30 days are shown 
  Given User is logged in with cif "card_center_e_card_transaction_history_cif"
  And User change language to "language"
  And User access card center from side menu
  And User check and click "tutorial_close" if exist
  And User click "card_center_e_card"
  And User click "card_center_transactions_tab"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_sixth_last_thirty_days"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then "card_center_transactions_tab" will be displayed
  Then "no_transaction_message" will be displayed

@android @uidatabound
# being referred by:
# JENI295-C75628-Verify time range filter for 'Last 30 days': If there exist other filters that have been applied, then the transaction list should get added on for filtration 
# JENI295-C75629-Verify time range filter for 'Last 30 days': If a search has been performed then the transaction result should get further narrowed down with the applied Time Range filter
Scenario: JENI295-C75628#C75629#C75630-Verify time range filter for 'Last 30 days': If a search has been performed & other filter(s) have been already applied, the applied time range filter should further narrow down the transaction list 
  Given User is logged in with cif "card_center_e_card_transaction_history_cif"
  And User change language to "language"
  And User access card center from side menu
  And User check and click "tutorial_close" if exist
  And User click "card_center_e_card"
  And User click "card_center_transactions_tab"
  And User click "search_loupe_icon"
  And User fill "in_and_out_filter_search_textfield" with "card_center_search_text_1"
  And User click "filter_icon"
  And User click "filter_amount_range"
  And User fill "filter_amount_range_from_input" with "card_center_filter_amount_range_1"
  And User fill "filter_amount_range_to_input" with "card_center_filter_amount_range_3"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then User expect "in_and_out_number_transaction" equal with "card_center_number_transaction_filter_applied_1"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_sixth_last_thirty_days"
  And User click "filter_done"
  And User click "filter_apply_button"
  Then "card_center_transactions_tab" will be displayed
  Then "no_matches_transaction_found_message" will be displayed

@android @uidatabound
Scenario: JENI295-C75631-Verify selected Time range filter indicator 
  Given User is logged in with cif "card_center_e_card_transaction_history_cif"
  And User change language to "language"
  And User access card center from side menu
  And User check and click "tutorial_close" if exist
  And User click "card_center_e_card"
  And User click "card_center_transactions_tab"
  And User click "search_loupe_icon"
  And User fill "in_and_out_filter_search_textfield" with "card_center_search_text_1"
  And User click "filter_icon"
  And User click "filter_time_range"
  And User click "filter_time_range_input_from_date"
  When User select "card_center_filter_time_range_input_selected_month_1" months from today in "card_center_transaction_filter_date_picker" date picker
  And User click "filter_time_range_input_to_date"
  When User select "card_center_filter_time_range_input_selected_month_2" months from today in "card_center_transaction_filter_date_picker" date picker
  And User click "filter_done"
  Then "filter_time_range_value_applied" will be displayed
  Then User expect "card_center_transaction_filter_date_picker" is in range of "card_center_filter_time_range_input_selected_month_1" months and "card_center_filter_time_range_input_selected_month_2" months from today
  And User click "filter_time_range"
  And User click "filter_time_range_second_this_week"
  And User click "filter_done"
  Then "filter_time_range_value_applied" will be displayed
  Then User expect "filter_time_range_value_applied" is current week
  And User click "filter_time_range"
  And User click "filter_time_range_third_this_month"
  And User click "filter_done"
  Then "filter_time_range_value_applied" will be displayed
  Then User expect "filter_time_range_value_applied" is current month
  And User click "filter_time_range"
  And User click "filter_time_range_fourth_this_year"
  And User click "filter_done"
  Then "filter_time_range_value_applied" will be displayed
  Then User expect "filter_time_range_value_applied" is current year
  And User click "filter_time_range"
  And User click "filter_time_range_fifth_last_seven_days"
  And User click "filter_done"
  Then "filter_time_range_value_applied" will be displayed
  Then User expect "filter_time_range_value_applied" is latest 7 days
  And User click "filter_time_range"
  And User click "filter_time_range_sixth_last_thirty_days"
  And User click "filter_done"
  Then "filter_time_range_value_applied" will be displayed
  Then User expect "filter_time_range_value_applied" is latest 30 days