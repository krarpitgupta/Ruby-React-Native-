@sendit_bill_payment @****contacts_biller  
Feature: Send It - Bill Payment

# JENI-5090
@android @uispecific 
Scenario:JENI5090-C85003-Payment - Landing page
  Given User is on dashboard page in English language with "bill_payment_user_active"
    And User go to sent it bill payment landing page from side menu
    Then "send_it_page_title" will be displayed
    Then User expect "bill_payment_text_header_text" equal with "bill_payment_text_header_detail"
    #Then User expect "bill_payment_text_header_text" equal with "bill_payment_text_header_detail"
    Then User expect "bill_payment_icon_card_center_button" equal with "bill_payment_icon_card_center_text"
    Then User expect "bill_payment_icon_insurance_button" equal with "bill_payment_icon_insurance_text"
    Then User expect "bill_payment_mobile_top_up_button" equal with "bill_payment_mobile_top_up_text"
    Then User expect "bill_payment_phone_bill_button" equal with "bill_payment_phone_bill_text"
    Then User expect "bill_payment_transportation_button" equal with "bill_payment_transportation_text"
    And User swipe up until found "bill_payment_tv_and_iternet_button"
    Then User expect "bill_payment_tv_and_iternet_button" equal with "bill_payment_tv_and_iternet_text"
    Then User expect "bill_payment_bill_utilities_button" equal with "bill_payment_bill_utilities_text"

@android @uispecific
Scenario:JENI5090-C102071-[Functionality] Navigate to view providers in a category and content 
  Given User is on dashboard page in English language with "bill_payment_user_active"
  And User go to sent it bill payment landing page from side menu
    Then "send_it_page_title" will be displayed
    Then User expect "bill_payment_header_search_button" is exist

    Then User click "bill_payment_icon_card_center_button"
    Then User expect "bill_payment_header_search_button" is exist
    And User wait 5 seconds
    And User click "back_button_icon"
    And User click "send_it_bill_payment_tab" 


    Then User click "bill_payment_icon_insurance_button"
    Then User expect "bill_payment_header_search_button" is exist
    And User wait 5 seconds
    And User click "back_button_icon"
    And User click "send_it_bill_payment_tab" 

    Then User click "bill_payment_mobile_top_up_button"
    Then User expect "bill_payment_header_search_button" is exist
    And User wait 5 seconds
    And User click "back_button_icon"
    And User click "send_it_bill_payment_tab" 

    Then User click "bill_payment_phone_bill_button"
    Then User expect "bill_payment_header_search_button" is exist
    And User wait 5 seconds
    And User click "back_button_icon"
    And User click "send_it_bill_payment_tab" 

    Then User click "bill_payment_transportation_button"
    Then User expect "bill_payment_header_search_button" is exist
    And User wait 5 seconds
    And User click "back_button_icon"
    And User click "send_it_bill_payment_tab" 

    And User swipe up until found "bill_payment_tv_and_iternet_button"

    Then User click "bill_payment_tv_and_iternet_button"
    Then User expect "bill_payment_header_search_button" is exist
    And User wait 5 seconds
    And User click "back_button_icon"
    And User click "send_it_bill_payment_tab" 

    And User swipe up until found "bill_payment_tv_and_iternet_button"

    Then User click "bill_payment_bill_utilities_button"
    Then User expect "bill_payment_header_search_button" is exist
    And User wait 5 seconds
    And User click "back_button_icon"


@android @uispecific 
Scenario:JENI5090-C84975-[Functionality] Verify Biller Category List 
  Given User is on dashboard page in English language with "bill_payment_user_active"
  
    And User go to sent it bill payment landing page from side menu
    Then "send_it_page_title" will be displayed
    Then User expect "bill_payment_text_header_text" equal with "bill_payment_text_header_detail"
    #Then User expect "bill_payment_text_header_text" equal with "bill_payment_text_header_detail"
    Then User expect "bill_payment_icon_card_center_button" equal with "bill_payment_icon_card_center_text"
    Then User expect "bill_payment_icon_insurance_button" equal with "bill_payment_icon_insurance_text"
    Then User expect "bill_payment_mobile_top_up_button" equal with "bill_payment_mobile_top_up_text"
    Then User expect "bill_payment_phone_bill_button" equal with "bill_payment_phone_bill_text"
    Then User expect "bill_payment_transportation_button" equal with "bill_payment_transportation_text"
    And User swipe up until found "bill_payment_tv_and_iternet_button"
    Then User expect "bill_payment_tv_and_iternet_button" equal with "bill_payment_tv_and_iternet_text"
    Then User expect "bill_payment_bill_utilities_button" equal with "bill_payment_bill_utilities_text"


@android @uispecific
Scenario:JENI5090-C84978-[Functionality] Verify behavior's system if no wifi or call API failure
  Given User is on dashboard page in English language with "bill_payment_user_active"
  
    And User go to sent it bill payment landing page from side menu
    Then "send_it_page_title" will be displayed
    And User turn off network connection for data and wifi
    Then User expect "offline_popup_header_text" equal with "offline_popup_header_text_data"
    Then User expect "offline_popup_detail_text" equal with "offline_popup_detail_text_data"
    And User turn on network connection for data and wifi
    And User expect "offline_popup_header_text" doesn't exist 

@android @uispecific 
Scenario:JENI5090-C84977-[Layout] Verify the translation text between Bahasa and EN
    Given User is on application screen
    And User fill "correct_pin" for OTP or PIN
    And User change language to "language"

    And User go to sent it bill payment landing page from side menu

# JENI-5091 And JENI-5588 
@android @uispecific
Scenario:JENI5091-C84972-[Functionality] Initiate search
    Given User is on dashboard page in English language with "bill_payment_user_active"
    And User go to sent it bill payment landing page from side menu
    Then "send_it_page_title" will be displayed 
    And User click "bill_payment_header_search_button"
    And User expect "bill_payment_header_search_field" equal with "bill_payment_header_search_text_placeholder" 
    And User expect "send_it_bill_favorites_tab" is exist
    And User expect "send_it_bill_transfer_tab" is exist
    And User expect "send_it_bill_payment_tab" is exist

@android @uispecific
Scenario:JENI5091-C84979-[Functionality] Listing results matching search string entered 
  Given User is on dashboard page in English language with "bill_payment_user_active"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_data" 
  And User expect "bill_payment_avatar_icon" is exist
  And User expect "bill_payment_text_finpay" is exist

@android @uispecific 
Scenario:JENI5091-C102217-[Functionality] Scenario: From payment landing page, click to search results and direct to correct template (Template1)
  Given User is on dashboard page in English language with "bill_payment_user_active"
  And User go to sent it bill payment landing page from side menu
    Then "send_it_page_title" will be displayed 
    And User click "bill_payment_header_search_button"  
    And User fill "bill_payment_header_search_field" with "bill_payment_search_data_mobile_top_up"
    And User wait 5 seconds 
    And User click "bill_payment_text_smartfren_mobile_top_up"
    And User expect "bill_payment_text_header_mobile_top_up" is exist
    Then User expect "bill_payment_text_detail_mobile_top_up" equal with "bill_payment_text_detail_mobile_top_up"

@android @uispecific 
Scenario:JENI5091-C102217-[Functionality] Scenario: From payment landing page, click to search results and direct to correct template (Template2)
  Given User is on dashboard page in English language with "bill_payment_user_active"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_data_mobile_top_up"
  And User wait 5 seconds 
  And User click "bill_payment_text_smartfren_phone_bill"
  And User expect "bill_payment_text_header_pay_phone_bill" is exist
  Then User expect "bill_payment_text_detail_pay_phone_bill" equal with "bill_payment_text_detail_pay_phone_bill_smartfren"

@android @uispecific 
Scenario:JENI5091-C102217-[Functionality] Scenario: From payment landing page, click to search results and direct to correct template (Template3)
  Given User is on dashboard page in English language with "bill_payment_user_active"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_data_credit_card"
  And User wait 5 seconds 
  And User click "bill_payment_text_click_search_credit_card"
  And User expect "bill_payment_text_header_credit_card" is exist
  Then User expect "bill_payment_text_detail_credit_card" equal with "bill_payment_text_detail_credit_card_citibank"

@android @uispecific 
Scenario:JENI5588-C102439-[Functionality] Scenario: From provider selection page, click to search results and direct to correct screen under selected category
  Given User is on dashboard page in English language with "bill_payment_user_active"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_data_mobile_top_up"
  And User wait 5 seconds 
  And User click "bill_payment_text_smartfren_mobile_top_up"
  And User expect "bill_payment_text_header_mobile_top_up" is exist
  Then User expect "bill_payment_text_detail_mobile_top_up" equal with "bill_payment_text_detail_mobile_top_up"
  

@android @uispecific 
Scenario:JENI5588-C84980-[Functionality] Display favorite/transfer/payments tabs 
  Given User is on dashboard page in English language with "bill_payment_user_active"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"
  And User fill "bill_payment_header_search_field" with "bill_payment_search_data_kereta_api"
  And User click "send_it_bill_favorites_tab"
  Then User expect "bill_payment_header_search_input" equal with "bill_payment_search_data_kereta_api_result"
  And User click "send_it_bill_transfer_tab"
  Then User expect "bill_payment_header_search_input" equal with "bill_payment_search_data_kereta_api_result"
  And User click "send_it_bill_payment_tab"
  Then User expect "bill_payment_header_search_input" equal with "bill_payment_search_data_kereta_api_result"

@android @uispecific
Scenario:JENI5091-C84981-[Functionality] Display favorite/transfer/payments tabs
  Given User is on dashboard page in English language with "bill_payment_user_active"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User expect "bill_payment_header_search_input" equal with "bill_payment_header_search_text_placeholder"

@android @uispecific 
Scenario:JENI5091-C84982-[Functionality] Cancel continuing a search
  Given User is on dashboard page in English language with "bill_payment_user_active"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_data_credit_card"
  And User click "bill_payment_header_search_clear_button" 
  And User click "bill_payment_header_search_cancel_button"
  And User expect "bill_payment_header_search_field" doesn't exist

@android @uispecific 
Scenario:JENI5091-C84983-[Functionality] Clearing entered text in search field
  Given User is on dashboard page in English language with "bill_payment_user_active"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_data_credit_card"
  And User click "bill_payment_header_search_clear_button" 
  And User expect "bill_payment_header_search_input" equal with "bill_payment_header_search_text_placeholder" 
  And User click "bill_payment_header_search_cancel_button"
  And User expect "bill_payment_header_search_field" doesn't exist
  And User expect "send_it_bill_payment_tab" is exist
  And User expect "send_it_bill_transfer_tab" is exist
  And User expect "send_it_bill_favorites_tab" is exist

@android @uispecific 
Scenario:JENI5091-C84984-[Functionality] Displaying 'No results found' page
  Given User is on dashboard page in English language with "bill_payment_user_active"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_wrong_text"
  And User wait 5 seconds 
  And User expect "bill_payment_text_matches_text" equal with "bill_payment_text_matches" 
  And User expect "bill_payment_text_matches_input_text" equal with "bill_payment_search_wrong_text_result" 

@android @uispecific 
Scenario:JENI5093-C84988-[Functionality] Navigate to view providers in a category and content
  Given User is on dashboard page in English language with "bill_payment_user_active"
  And User go to sent it bill payment landing page from side menu
    Then "send_it_page_title" will be displayed 
    And User click "bill_payment_header_search_button"  
    And User fill "bill_payment_header_search_field" with "bill_payment_search_data_mobile_top_up"
    And User wait 5 seconds 
    And User click "bill_payment_text_smartfren_mobile_top_up"
    And User expect "bill_payment_text_header_mobile_top_up" is exist
    Then User expect "bill_payment_text_detail_mobile_top_up" equal with "bill_payment_text_detail_mobile_top_up"

    @android @uispecific 
Scenario:JENI5093-C84987-[Functionality] Verify behavior's system if no wifi or call API failure
    Given User is on dashboard page in English language with "bill_payment_user_active"
    And User go to sent it bill payment landing page from side menu
    Then "send_it_page_title" will be displayed 
    And User click "bill_payment_header_search_button"  
    And User fill "bill_payment_header_search_field" with "bill_payment_search_data_mobile_top_up"
    And User wait 5 seconds 
    And User turn off network connection for data and wifi
    Then User expect "offline_popup_header_text" equal with "offline_popup_header_text_data"
    Then User expect "offline_popup_detail_text" equal with "offline_popup_detail_text_data"
    And User turn on network connection for data and wifi
    And User expect "offline_popup_header_text" doesn't exist 

#JENI-5502
@android @uispecific
Scenario:JENI5502-C92445-[Functionality] Initiate search
    Given User is on dashboard page in English language with "bill_payment_user_active"
    And User go to sent it bill payment landing page from side menu
    Then "send_it_page_title" will be displayed 
    And User click "bill_payment_header_search_button"
    And User expect "bill_payment_header_search_field" equal with "bill_payment_header_search_text_placeholder" 
    And User expect "send_it_bill_favorites_tab" is exist
    And User expect "send_it_bill_transfer_tab" is exist
    And User expect "send_it_bill_payment_tab" is exist

@android @uispecific
Scenario:JENI5502-C92446-[Functionality] Listing results matching search string entered 
  Given User is on dashboard page in English language with "bill_payment_user_active"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_data" 
  And User expect "bill_payment_avatar_icon" is exist
  And User expect "bill_payment_text_finpay" is exist


@android @uispecific 
Scenario:JENI5502-C92446-[Functionality] Always display default text when there's no search string entered by user
  Given User is on dashboard page in English language with "bill_payment_user_active"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_data" 
  And User clear "bill_payment_header_search_input"
  And User expect "bill_payment_header_search_input" equal with "bill_payment_header_search_text_placeholder" 

@android @uispecific 
Scenario:JENI5502-C92448-[Functionality] Cancel continuing a search
  Given User is on dashboard page in English language with "bill_payment_user_active"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_data_credit_card"
  And User click "bill_payment_header_search_clear_button" 
  And User click "bill_payment_header_search_cancel_button"
  And User expect "bill_payment_header_search_field" doesn't exist

@android @uispecific 
Scenario:JENI5502-C92449-[Functionality] Clearing entered text in search field
  Given User is on dashboard page in English language with "bill_payment_user_active"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_data_credit_card"
  And User click "bill_payment_header_search_clear_button" 
  And User expect "bill_payment_header_search_input" equal with "bill_payment_header_search_text_placeholder" 
  And User click "bill_payment_header_search_cancel_button"
  And User expect "bill_payment_header_search_field" doesn't exist
  And User expect "send_it_bill_payment_tab" is exist
  And User expect "send_it_bill_transfer_tab" is exist
  And User expect "send_it_bill_favorites_tab" is exist

@android @uispecific 
Scenario:JENI5502-C92450-[Functionality] Displaying 'No results found' page
  Given User is on dashboard page in English language with "bill_payment_user_active"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_wrong_text"
  And User wait 5 seconds 
  And User expect "bill_payment_text_matches_text" equal with "bill_payment_text_matches" 
  And User expect "bill_payment_text_matches_input_text" equal with "bill_payment_search_wrong_text_result" 


    @android @uispecific 
Scenario:JENI5502-C92453-[Functionality] Verify behavior's system if no wifi or call API failure
    Given User is on dashboard page in English language with "bill_payment_user_active"
    And User go to sent it bill payment landing page from side menu
    Then "send_it_page_title" will be displayed 
    And User click "bill_payment_header_search_button"  
    And User fill "bill_payment_header_search_field" with "bill_payment_search_data_mobile_top_up"
    And User wait 5 seconds 
    And User turn off network connection for data and wifi
    Then User expect "offline_popup_header_text" equal with "offline_popup_header_text_data"
    Then User expect "offline_popup_detail_text" equal with "offline_popup_detail_text_data"
    And User turn on network connection for data and wifi
    And User expect "offline_popup_header_text" doesn't exist 


#JENI-5572
@android @uispecific
Scenario:JENI5572-C92454-[Functionality] Scenario: Enter mobile number field
  Given User is on dashboard page in English language with "bill_payment_user_active"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_data_mobile_top_up"
  And User wait 5 seconds 
  And User click "bill_payment_text_smartfren_mobile_top_up"
  And User expect "bill_payment_text_header_mobile_top_up" is exist
  Then User expect "bill_payment_text_detail_mobile_top_up" equal with "bill_payment_text_detail_mobile_top_up"
  And User fill "bill_payment_text_field_input_phone" with "phone_number_active_user"

@android @uispecific 
Scenario:JENI5572-C92455-[Functionality] Scenario: Verify Indonesian Mobile Number Format
  Given User is on dashboard page in English language with "bill_payment_user_active"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_data_mobile_top_up"
  And User wait 5 seconds 
  And User click "bill_payment_text_smartfren_mobile_top_up"
  And User expect "bill_payment_text_header_mobile_top_up" is exist
  Then User expect "bill_payment_text_detail_mobile_top_up" equal with "bill_payment_text_detail_mobile_top_up"
  #using phone number standard
  And User fill "bill_payment_text_field_input_phone" with "bill_payment_phone_number_smart"
  And User wait 3 seconds 
  And User expect "bill_payment_text_wording_error_phone_number_text" doesn't exist 
  #using phone number with +628
  And User fill "bill_payment_text_field_input_phone" with "bill_payment_phone_number_smart_with+628"
  And User wait 3 seconds 
  And User expect "bill_payment_text_wording_error_phone_number_text" doesn't exist
  #using phone number with 628
  And User fill "bill_payment_text_field_input_phone" with "bill_payment_phone_number_smart_with628"
  And User wait 3 seconds 
  And User expect "bill_payment_text_wording_error_phone_number_text" doesn't exist 


@android @uispecific 
Scenario:JENI5572-C92456#C102443-[Functionality] Scenario: Verify Mobile Number Format with selected provider
  Given User is on dashboard page in English language with "bill_payment_user_active"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_data_mobile_top_up"
  And User wait 5 seconds 
  And User click "bill_payment_text_smartfren_mobile_top_up"
  And User expect "bill_payment_text_header_mobile_top_up" is exist
  Then User expect "bill_payment_text_detail_mobile_top_up" equal with "bill_payment_text_detail_mobile_top_up"

  #using phone number standard
  And User fill "bill_payment_text_field_input_phone" with "bill_payment_phone_number_smart"
  And User wait 3 seconds 
  And User expect "bill_payment_text_wording_error_phone_number_text" doesn't exist 
  #using phone number standard with wrong provider
  And User fill "bill_payment_text_field_input_phone" with "bill_payment_phone_number_thee"
  And User wait 3 seconds 
  And User expect "bill_payment_text_wording_error_phone_number" equal with "bill_payment_wording_error_message1" 

  #using phone number with +628
  And User fill "bill_payment_text_field_input_phone" with "bill_payment_phone_number_smart_with+628"
  And User wait 3 seconds 
  And User expect "bill_payment_text_wording_error_phone_number_text" doesn't exist
  #using phone number with +628 with wrong provider
  And User fill "bill_payment_text_field_input_phone" with "bill_payment_phone_number_thee_with+628"
  And User wait 3 seconds 
  And User expect "bill_payment_text_wording_error_phone_number" equal with "bill_payment_wording_error_message1" 

  #using phone number with 628
  And User fill "bill_payment_text_field_input_phone" with "bill_payment_phone_number_smart_with628"
  And User wait 3 seconds 
  And User expect "bill_payment_text_wording_error_phone_number_text" doesn't exist 
  #using phone number with 628 with wrong provider
  And User fill "bill_payment_text_field_input_phone" with "bill_payment_phone_number_thee_with628"
  And User wait 3 seconds 
  And User expect "bill_payment_text_wording_error_phone_number" equal with "bill_payment_wording_error_message1" 

@android @uispecific 
Scenario:JENI5573-C92478-[Functionality] Scenario: Initial state 
  Given User is on dashboard page in English language with "bill_payment_user_active"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_data_mobile_top_up"
  And User wait 5 seconds 
  And User click "bill_payment_text_smartfren_mobile_top_up"
  And User expect "bill_payment_text_header_mobile_top_up" is exist
  Then User expect "bill_payment_text_detail_mobile_top_up" equal with "bill_payment_text_detail_mobile_top_up"
  #input phone number with special Character
  And User fill "bill_payment_text_field_input_phone" with "bill_payment_phone_number_smart"
  And User wait 3 seconds 
  And User expect "bill_payment_text_field_top_up_amount" is exist
  And User expect "bill_payment_text_field_actual_balance" is exist


@android @uispecific
Scenario:JENI5573-C92482-[Functionality] Scenario: Show top-up amount options based on selected provider
  Given User is on dashboard page in English language with "bill_payment_user_active"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_data_mobile_top_up"
  And User wait 5 seconds 
  And User click "bill_payment_text_smartfren_mobile_top_up"
  And User expect "bill_payment_text_header_mobile_top_up" is exist
  Then User expect "bill_payment_text_detail_mobile_top_up" equal with "bill_payment_text_detail_mobile_top_up"
  #input phone number with special Character
  And User fill "bill_payment_text_field_input_phone" with "bill_payment_phone_number_smart"
  And User wait 3 seconds 
  And User click "bill_payment_text_field_top_up_amount"

@android @uispecific 
Scenario:JENI5573-C92483#C102098-[Functionality] Scenario: Select top-up option more than available active balance
  Given User is on dashboard page in English language with "bill_payment_user_active_balance_0"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_data_mobile_top_up"
  And User wait 5 seconds 
  And User click "bill_payment_text_smartfren_mobile_top_up"
  And User expect "bill_payment_text_header_mobile_top_up" is exist
  Then User expect "bill_payment_text_detail_mobile_top_up" equal with "bill_payment_text_detail_mobile_top_up"
  #input phone number with special Character
  And User fill "bill_payment_text_field_input_phone" with "bill_payment_phone_number_smart"
  And User wait 3 seconds 
  And User select "bill_payment_text_field_top_up_amount" dropdown with "bill_payment_amount_100k"
  And User expect "bill_payment_text_field_top_up_amount" doesn't exist 




#[JENI-5472][JENI-7046]
@android @uispecific 
Scenario:JENI5574-C92473-[Functionality] Scenario - View top-up details
  Given User is on dashboard page in English language with "bill_payment_user_active"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_data_mobile_top_up"
  And User wait 5 seconds 
  And User click "bill_payment_text_smartfren_mobile_top_up"
  And User expect "bill_payment_text_header_mobile_top_up" is exist
  Then User expect "bill_payment_text_detail_mobile_top_up" equal with "bill_payment_text_detail_mobile_top_up"
  #input phone number with special Character
  And User fill "bill_payment_text_field_input_phone" with "bill_payment_phone_number_smart"
  And User wait 3 seconds 
  And User select "bill_payment_text_field_top_up_amount" dropdown with "bill_payment_amount_100k"
  And User click "next_button"
  Then User expect "bill_payment_detail_transaction_provider_text" equal with "bill_payment_search_data_mobile_top_up"
  Then User expect "bill_payment_detail_transaction_phoneno_text" equal with "bill_payment_phone_number_smart"
  Then User expect "bill_payment_detail_transaction_amount_topup" equal with "bill_payment_amount_100k"
  Then User expect "bill_payment_detail_transaction_amount_free" equal with "bill_payment_amount_fee"
  Then User expect "bill_payment_detail_transaction_total_amount" equal with "bill_payment_total_amount_100k"



@android @uispecific 
Scenario:JENI5574-C92473-[Functionality] Scenario - View top-up details
  Given User is on dashboard page in English language with "bill_payment_user_active"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_data_mobile_top_up"
  And User wait 5 seconds 
  And User click "bill_payment_text_smartfren_mobile_top_up"
  And User expect "bill_payment_text_header_mobile_top_up" is exist
  Then User expect "bill_payment_text_detail_mobile_top_up" equal with "bill_payment_text_detail_mobile_top_up"
  #input phone number with special Character
  And User fill "bill_payment_text_field_input_phone" with "bill_payment_phone_number_smart"
  And User wait 3 seconds 
  And User select "bill_payment_text_field_top_up_amount" dropdown with "bill_payment_amount_100k"
  And User expect "bill_payment_text_field_top_up_amount" is exist
  And User expect "bill_payment_text_field_actual_balance" is exist


@android @uispecific 
Scenario:JENI5574-C92492-[Functionality] Scenario: Enter valid mobile number and top-up amount options based on selected provider
  Given User is on dashboard page in English language with "bill_payment_user_active"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_data_mobile_top_up"
  And User wait 5 seconds 
  And User click "bill_payment_text_smartfren_mobile_top_up"
  And User expect "bill_payment_text_header_mobile_top_up" is exist
  Then User expect "bill_payment_text_detail_mobile_top_up" equal with "bill_payment_text_detail_mobile_top_up"
  #input phone number with special Character
  And User fill "bill_payment_text_field_input_phone" with "bill_payment_phone_number_smart"
  And User wait 3 seconds 
  And User select "bill_payment_text_field_top_up_amount" dropdown with "bill_payment_amount_100k"
  And User expect "bill_payment_text_field_top_up_amount" is exist
  And User expect "bill_payment_text_field_actual_balance" is exist
  And User click "next_button"



@android @uispecific 
Scenario:JENI5574-C92493-[Functionality] Scenario - Proceed to view top-up details and confirm
  Given User is on dashboard page in English language with "bill_payment_user_active"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_data_mobile_top_up"
  And User wait 5 seconds 
  And User click "bill_payment_text_smartfren_mobile_top_up"
  And User expect "bill_payment_text_header_mobile_top_up" is exist
  Then User expect "bill_payment_text_detail_mobile_top_up" equal with "bill_payment_text_detail_mobile_top_up"
  #input phone number with special Character
  And User fill "bill_payment_text_field_input_phone" with "bill_payment_phone_number_smart"
  And User wait 3 seconds 
  And User select "bill_payment_text_field_top_up_amount" dropdown with "bill_payment_amount_100k"
  And User click "next_button"
  Then User expect "bill_payment_detail_transaction_provider_text" equal with "bill_payment_search_data_mobile_top_up"
  Then User expect "bill_payment_detail_transaction_phoneno_text" equal with "bill_payment_phone_number_smart"
  Then User expect "bill_payment_detail_transaction_amount_topup" equal with "bill_payment_amount_100k"
  Then User expect "bill_payment_detail_transaction_amount_free" equal with "bill_payment_amount_fee"
  Then User expect "bill_payment_detail_transaction_total_amount" equal with "bill_payment_total_amount_100k"




 @android @uispecific 
Scenario:JENI5720-C102265-[Functionality] Complete payment on confirmation page and navigate to dashboard  
  Given User is on dashboard page in English language with "bill_payment_user_active"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_data_mobile_top_up"
  And User wait 5 seconds 
  And User click "bill_payment_text_smartfren_mobile_top_up"
  And User expect "bill_payment_text_header_mobile_top_up" is exist
  Then User expect "bill_payment_text_detail_mobile_top_up" equal with "bill_payment_text_detail_mobile_top_up"
  #input phone number with special Character
  And User fill "bill_payment_text_field_input_phone" with "bill_payment_phone_number_smart"
  And User wait 3 seconds 
  And User select "bill_payment_text_field_top_up_amount" dropdown with "bill_payment_amount_100k"
  And User click "next_button"

  And User click "bill_payment_paynow_button"
  And User fill "bill_payment_confrm_password_field" with "bill_payment_password_confirm"
  And User click "bill_payment_confrm_password_submit"
  And User wait 5 seconds 
  And User expect "bill_payment_dashboard_popup_header_top_up" equal with "bill_payment_dashboard_success_header_text_top_up"
  And User expect "bill_payment_dashboard_popup_amount" equal with "bill_payment_dashboard_success_amount_mobile_topup"
  And User expect "bill_payment_dashboard_popup_customer_id" equal with "bill_payment_phone_number_smart"


@android @uispecific 
Scenario:JENI5580-C92525-[Functionality] Scenario: Enter credit card number field
  Given User is on dashboard page in English language with "bill_payment_user_active"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_data_credit_card"
  And User wait 5 seconds 
  And User click "bill_payment_text_click_search_credit_card"
  And User fill "bill_payment_input_credit_card" with "bill_payment_phone_number_smart"


@android @uispecific
Scenario:JENI5580-C92529-[Functionality] Scenario: Verify Credit Card Number Format
  Given User is on dashboard page in English language with "bill_payment_user_active"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_data_credit_card"
  And User wait 5 seconds 
  And User click "bill_payment_text_click_search_credit_card"
  And User fill "bill_payment_input_credit_card" with "bill_payment_phone_number_special_character"
  And User fill "bill_payment_input_credit_card" with "bill_payment_credit_card_>21"
  And User expect "bill_payment_input_credit_card" equal with "bill_payment_credit_card_20"
  And User fill "bill_payment_input_credit_card" with "bill_payment_credit_card_<20"
  And User expect "bill_payment_text_error_message" equal with "bill_payment_credit_card_message_minimumchar"


@android @uispecific 
Scenario:JENI5580-C102101-[Functionality] Scenario: Cannot paste special characters for credit card number
  Given User is on dashboard page in English language with "bill_payment_user_active"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_data_credit_card"
  And User wait 5 seconds 
  And User click "bill_payment_text_click_search_credit_card"
  And User fill "bill_payment_input_credit_card" with "bill_payment_phone_number_special_character"


@android @uispecific 
Scenario:JENI5581-C92556-[Functionality] Scenario: Check default state
  Given User is on dashboard page in English language with "bill_payment_user_active"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_data_credit_card"
  And User wait 5 seconds 
  And User click "bill_payment_text_click_search_credit_card"
  And User expect "bill_payment_header_text_credit_card" is exist
  And User expect "bill_payment_detail_text_credit_card" is exist 
  And User expect "bill_payment_input_credit_card" is exist 


@android @uispecific
Scenario:JENI5581-C92533-[Functionality] Scenario: Enter credit card bill amount
  Given User is on dashboard page in English language with "bill_payment_user_have_balance_high_50juta"
   # Given User is on application screen
   # And User fill "correct_pin" for OTP or PIN
   # And User change language to "language"

  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_data_credit_card"
  And User wait 5 seconds 
  And User click "bill_payment_text_click_search_credit_card"
  And User fill "bill_payment_input_credit_card" with "bill_payment_credit_card_20"
  And User click "next_button"
  And User wait 3 seconds 
  And User clear "bill_payment_text_field_amount_credit_card"
  And User fill "bill_payment_text_field_amount_credit_card" with "bill_payment_input<10"
  And User expect "bill_payment_text_error_input_amount_credit_card" equal with "bill_payment_credit_card_error_input_amount_minimum"
  And User wait 3 seconds 
  And User clear "bill_payment_text_field_amount_credit_card"
  And User fill "bill_payment_text_field_amount_credit_card" with "bill_payment_input_60_mil"
  And User expect "bill_payment_text_error_input_amount_credit_card" equal with "bill_payment_credit_card_error_input_amount_>50juta"



@android @uispecific 
Scenario:JENI5581-C92534-[Functionality] Scenario: Add optional notes
  Given User is on dashboard page in English language with "bill_payment_user_have_balance_high_50juta"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_data_credit_card"
  And User wait 5 seconds 
  And User click "bill_payment_text_click_search_credit_card"
  And User fill "bill_payment_input_credit_card" with "bill_payment_credit_card_20"
  And User click "next_button"
  And User wait 3 seconds 
  And User clear "bill_payment_text_field_amount_credit_card"
  And User fill "bill_payment_text_field_amount_credit_card" with "bill_payment_input_20_mil"
  And User fill "bill_payment_text_field_notes_credit_card" with "bill_payment_text_notes" 

  @android @uispecific 
Scenario:JENI5581-C92554-[Functionality] Scenario: Remaining characters update when user types
  Given User is on dashboard page in English language with "bill_payment_user_have_balance_high_50juta"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_data_credit_card"
  And User wait 5 seconds 
  And User click "bill_payment_text_click_search_credit_card"
  And User fill "bill_payment_input_credit_card" with "bill_payment_credit_card_20"
  And User click "next_button"
  And User wait 3 seconds 
  And User clear "bill_payment_text_field_amount_credit_card"
  And User fill "bill_payment_text_field_amount_credit_card" with "bill_payment_input_20_mil"
  And User expect "bill_payment_text_count_notes" equal with "bill_payment_count_fist"
  And User fill "bill_payment_text_field_notes_credit_card" with "bill_payment_text_notes"  
  And User expect "bill_payment_text_count_notes" equal with "bill_payment_count_after"

  @android @uispecific 
Scenario:JENI5581-C92555-[Functionality] Scenario: Cannot add special characters for note
  Given User is on dashboard page in English language with "bill_payment_user_have_balance_high_50juta"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_data_credit_card"
  And User wait 5 seconds 
  And User click "bill_payment_text_click_search_credit_card"
  And User fill "bill_payment_input_credit_card" with "bill_payment_credit_card_20"
  And User click "next_button"
  And User wait 3 seconds 
  And User clear "bill_payment_text_field_amount_credit_card"
  And User fill "bill_payment_text_field_amount_credit_card" with "bill_payment_phone_number_special_character"
  And User expect "bill_payment_text_count_notes" equal with "bill_payment_count_fist"

  @android @uispecific 
Scenario:JENI5581-C102102-[Functionality] Scenario: Cannot paste special characters for note
  Given User is on dashboard page in English language with "bill_payment_user_have_balance_high_50juta"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_data_credit_card"
  And User wait 5 seconds 
  And User click "bill_payment_text_click_search_credit_card"
  And User fill "bill_payment_input_credit_card" with "bill_payment_credit_card_20"
  And User click "next_button"
  And User wait 3 seconds 
  And User clear "bill_payment_text_field_amount_credit_card"
  And User fill "bill_payment_text_field_amount_credit_card" with "bill_payment_phone_number_special_character"
  And User expect "bill_payment_text_count_notes" equal with "bill_payment_count_fist"



  @android @uispecific 
Scenario:JENI5582-C92544-[Functionality] Scenario - View credit card bill details
  Given User is on dashboard page in English language with "bill_payment_user_have_balance_high_50juta"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_data_credit_card"
  And User wait 5 seconds 
  And User click "bill_payment_text_click_search_credit_card"
  And User fill "bill_payment_input_credit_card" with "bill_payment_credit_card_20"
  And User click "next_button"
  And User wait 3 seconds 
  And User clear "bill_payment_text_field_amount_credit_card"
  And User fill "bill_payment_text_field_amount_credit_card" with "bill_payment_input_20_mil"
  And User expect "bill_payment_text_count_notes" equal with "bill_payment_count_fist"
  And User click "next_button"
  Then User expect "bill_payment_detail_transaction_provider_text" equal with "bill_payment_search_data_credit_card"
  Then User expect "bill_payment_detail_transaction_phoneno_text" equal with "bill_payment_credit_card_20"
  Then User expect "bill_payment_detail_transaction_amount_topup" equal with "bill_payment_amount_20juta"
  Then User expect "bill_payment_detail_transaction_amount_free" equal with "bill_payment_amount_fee"
  Then User expect "bill_payment_detail_transaction_total_amount" equal with "bill_payment_total_amount_20juta"



#[JENI-5480][JENI-7046]
  @android @uispecific
Scenario:JENI5480#JENI7046-C92541-[Functionality] Scenario: Navigate to input credit card number
  Given User is on dashboard page in English language with "bill_payment_user_active"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_data_credit_card"
  And User wait 5 seconds 
  And User click "bill_payment_text_click_search_credit_card"
  And User expect "bill_payment_text_header_credit_card" is exist
  Then User expect "bill_payment_text_detail_credit_card" equal with "bill_payment_text_detail_credit_card_citibank"
  Then User expect "bill_payment_input_credit_card" is exist
  Then User expect "next_button" is exist


  @android @uispecific
Scenario:JENI5480#JENI7046-C92558-[Functionality] Scenario - View credit card bill details
  Given User is on dashboard page in English language with "bill_payment_user_have_balance_high_50juta"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_data_credit_card"
  And User wait 5 seconds 
  And User click "bill_payment_text_click_search_credit_card"
  And User fill "bill_payment_input_credit_card" with "bill_payment_valid_credit_card"
  And User click "next_button"


  @android @uispecific 
Scenario:JENI5480#JENI7046-C92559-[Functionality] Scenario: View Input Credit Card Bill Amount page
  Given User is on dashboard page in English language with "bill_payment_user_have_balance_high_50juta"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_data_credit_card"
  And User wait 5 seconds 
  And User click "bill_payment_text_click_search_credit_card"
  And User fill "bill_payment_input_credit_card" with "bill_payment_valid_credit_card"
  And User click "next_button"
  And User clear "bill_payment_text_field_amount_credit_card"
  And User fill "bill_payment_text_field_amount_credit_card" with "bill_payment_total_amount_20juta"
  And User expect "bill_payment_text_count_notes" equal with "bill_payment_count_fist"
  And User fill "bill_payment_text_field_notes_credit_card" with "bill_payment_text_notes"  
  And User expect "bill_payment_text_count_notes" equal with "bill_payment_count_after"
   

  @android @uispecific 
Scenario:JENI5480#JENI7046-C92560-[Functionality] Scenario: Enter valid credit card bill amount
  Given User is on dashboard page in English language with "bill_payment_user_have_balance_high_50juta"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_data_credit_card"
  And User wait 5 seconds 
  And User click "bill_payment_text_click_search_credit_card"
  And User fill "bill_payment_input_credit_card" with "bill_payment_valid_credit_card"
  And User click "next_button"
  And User expect "bill_payment_text_header_credit_card" is exist

  @android @uispecific 
Scenario:JENI5480#JENI7046-C92561-[Functionality] Scenario - Proceed to view credit card bill amount and confirm
  Given User is on dashboard page in English language with "bill_payment_user_have_balance_high_50juta"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_data_credit_card"
  And User wait 5 seconds 
  And User click "bill_payment_text_click_search_credit_card"
  And User fill "bill_payment_input_credit_card" with "bill_payment_valid_credit_card"
  And User click "next_button"
  And User expect "bill_payment_text_header_credit_card" is exist
  And User clear "bill_payment_text_field_amount_credit_card"
  And User fill "bill_payment_text_field_amount_credit_card" with "bill_payment_total_amount_20juta"
  And User expect "bill_payment_text_count_notes" equal with "bill_payment_count_fist"
  And User fill "bill_payment_text_field_notes_credit_card" with "bill_payment_text_notes"  
  And User expect "bill_payment_text_count_notes" equal with "bill_payment_count_after"
  And User click "next_button"
  Then User expect "bill_payment_detail_transaction_provider_text" equal with "bill_payment_search_data_credit_card"
  Then User expect "bill_payment_detail_transaction_phoneno_text" equal with "bill_payment_valid_credit_card"
  Then User expect "bill_payment_detail_transaction_amount_topup" equal with "bill_payment_amount_20juta"
  Then User expect "bill_payment_detail_transaction_amount_free" equal with "bill_payment_amount_fee"
  Then User expect "bill_payment_detail_transaction_total_amount" equal with "bill_payment_total_amount_20juta"

  
#JENI-5576
@android @uispecific 
Scenario:JENI5576-C102120-[Functionality] Scenario: Enter mobile number field
  Given User is on dashboard page in English language with "bill_payment_user_active"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_data_mobile_top_up"
  And User wait 5 seconds 
  And User click "bill_payment_text_smartfren_phone_bill"
  And User expect "bill_payment_text_header_pay_phone_bill" is exist
  Then User expect "bill_payment_text_detail_pay_phone_bill" equal with "bill_payment_text_detail_pay_phone_bill_smartfren"
  And User fill "bill_payment_pay_phone_bill_text_field_phone" with "bill_payment_phone_number_smart"

@android @uispecific 
Scenario:JENI5576-C102135-[Functionality] Scenario: Verify Number Format
  Given User is on dashboard page in English language with "bill_payment_user_active"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_data_mobile_top_up"
  And User wait 5 seconds 
  And User click "bill_payment_text_smartfren_phone_bill"
  And User expect "bill_payment_text_header_pay_phone_bill" is exist
  Then User expect "bill_payment_text_detail_pay_phone_bill" equal with "bill_payment_text_detail_pay_phone_bill_smartfren"
  And User fill "bill_payment_pay_phone_bill_text_field_phone" with "bill_payment_phone_number_special_character"


@android @uispecific
Scenario:JENI5576-C102136-[Functionality] Scenario: Cannot paste special characters for mobile number
  Given User is on dashboard page in English language with "bill_payment_user_active"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_data_mobile_top_up"
  And User wait 5 seconds 
  And User click "bill_payment_text_smartfren_phone_bill"
  And User expect "bill_payment_text_header_pay_phone_bill" is exist
  Then User expect "bill_payment_text_detail_pay_phone_bill" equal with "bill_payment_text_detail_pay_phone_bill_smartfren"
  And User fill "bill_payment_pay_phone_bill_text_field_phone" with "bill_payment_phone_number_special_character"



#JENI-5577
@android @uispecific 
Scenario:JENI5577-C102138-[Functionality] Scenario - View outstanding bill summary page
  Given User is on dashboard page in English language with "bill_payment_user_active"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_data_mobile_top_up"
  And User wait 5 seconds 
  And User click "bill_payment_text_smartfren_phone_bill"
  And User expect "bill_payment_text_header_pay_phone_bill" is exist
  Then User expect "bill_payment_text_detail_pay_phone_bill" equal with "bill_payment_text_detail_pay_phone_bill_smartfren"
  And User fill "bill_payment_pay_phone_bill_text_field_phone" with "bill_payment_phone_number_smart"
  And User click "next_button"
  And User wait 5 seconds 
  Then User expect "bill_payment_pay_phone_bill_avatar" is exist
  Then User expect "bill_payment_pay_phone_bill_text_provider" equal with "bill_payment_search_data_mobile_top_up"
  Then User expect "bill_payment_pay_phone_bill_text_phone_number" equal with "bill_payment_phone_number_smart"
  Then User expect "bill_payment_pay_phone_bill_text_amount_outstanding" is exist
  Then User expect "bill_payment_pay_phone_bill_text_amount_balance" is exist
  Then User expect "bill_payment_pay_phone_bill_text_customer_id" is exist
  Then User expect "bill_payment_pay_phone_bill_text_text_field_notes" is exist 


@android @uispecific 
Scenario:JENI5577-C102140-[Functionality] Scenario: Add optional notes
  Given User is on dashboard page in English language with "bill_payment_user_active"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_data_mobile_top_up"
  And User wait 5 seconds 
  And User click "bill_payment_text_smartfren_phone_bill"
  And User expect "bill_payment_text_header_pay_phone_bill" is exist
  Then User expect "bill_payment_text_detail_pay_phone_bill" equal with "bill_payment_text_detail_pay_phone_bill_smartfren"
  And User fill "bill_payment_pay_phone_bill_text_field_phone" with "bill_payment_phone_number_smart"
  And User click "next_button"
  And User wait 5 seconds 
  Then User fill "bill_payment_pay_phone_bill_text_text_field_notes" with "bill_payment_text_notes"

@android @uispecific 
Scenario:JENI5577-C102141-[Functionality] Scenario: Remaining characters update when user types
  Given User is on dashboard page in English language with "bill_payment_user_active"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_data_mobile_top_up"
  And User wait 5 seconds 
  And User click "bill_payment_text_smartfren_phone_bill"
  And User expect "bill_payment_text_header_pay_phone_bill" is exist
  Then User expect "bill_payment_text_detail_pay_phone_bill" equal with "bill_payment_text_detail_pay_phone_bill_smartfren"
  And User fill "bill_payment_pay_phone_bill_text_field_phone" with "bill_payment_phone_number_smart"
  And User click "next_button"
  And User wait 5 seconds 
  And User expect "bill_payment_text_count_notes" equal with "bill_payment_count_fist"
  And User fill "bill_payment_pay_phone_bill_text_text_field_notes" with "bill_payment_text_notes"  
  And User expect "bill_payment_text_count_notes" equal with "bill_payment_count_after"

@android @uispecific
Scenario:JENI5577-C102141#C102154-[Functionality] Scenario: Remaining characters update when user types
  Given User is on dashboard page in English language with "bill_payment_user_active"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_data_mobile_top_up"
  And User wait 5 seconds 
  And User click "bill_payment_text_smartfren_phone_bill"
  And User expect "bill_payment_text_header_pay_phone_bill" is exist
  Then User expect "bill_payment_text_detail_pay_phone_bill" equal with "bill_payment_text_detail_pay_phone_bill_smartfren"
  And User fill "bill_payment_pay_phone_bill_text_field_phone" with "bill_payment_phone_number_smart"
  And User click "next_button"
  And User wait 5 seconds 
  And User expect "bill_payment_text_count_notes" equal with "bill_payment_count_fist"
  And User fill "bill_payment_pay_phone_bill_text_text_field_notes" with "bill_payment_phone_number_special_character"
  And User wait 5 seconds   
  And User expect "bill_payment_pay_phone_bill_text_text_field_notes" equal with "bill_payment_default_text_notes"


  @android @uispecific
Scenario:JENI5480#JENI7046-C92561-[Functionality] Scenario - Proceed to view credit card bill amount and confirm
  Given User is on dashboard page in English language with "bill_payment_user_have_balance_high_50juta"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_data_mobile_top_up"
  And User wait 5 seconds 
  And User click "bill_payment_text_smartfren_phone_bill"
  And User expect "bill_payment_text_header_pay_phone_bill" is exist
  Then User expect "bill_payment_text_detail_pay_phone_bill" equal with "bill_payment_text_detail_pay_phone_bill_smartfren"
  And User fill "bill_payment_pay_phone_bill_text_field_phone" with "bill_payment_phone_number_smart"
  And User click "next_button"
  And User wait 5 seconds 
  And User expect "bill_payment_text_count_notes" equal with "bill_payment_count_fist"
  And User click "next_button"
  Then User expect "bill_payment_detail_transaction_provider_text" equal with "bill_payment_search_data_mobile_top_up"
  Then User expect "bill_payment_detail_transaction_phoneno_text" equal with "bill_payment_phone_number_smart"
  Then User expect "bill_payment_detail_transaction_amount_topup" is exist
  Then User expect "bill_payment_detail_transaction_amount_free" equal with "bill_payment_amount_fee"
  Then User expect "bill_payment_detail_transaction_total_amount" is exist

#[JENI-5479][JENI-7046][JENI-7045]
  @android @uispecific
Scenario:JENI5479-C102185-[Functionality] Scenario: Navigate to input details page for post paid mobile bill
  Given User is on dashboard page in English language with "bill_payment_user_have_balance_high_50juta"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User expect "bill_payment_text_detail_pay_phone_bill" equal with "bill_payment_text_detail_pay_phone_bill_smartfren"
  And User expect "bill_payment_header_search_field" is exist
  And User expect "next_button" is exist

  @android @uispecific
Scenario:JENI5479-C102186-[Functionality] Scenario: Enter valid phone number based on selected provider
  Given User is on dashboard page in English language with "bill_payment_user_have_balance_high_50juta"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_data_mobile_top_up"
  And User wait 5 seconds 
  And User click "bill_payment_text_smartfren_phone_bill"
  And User expect "bill_payment_text_header_pay_phone_bill" is exist
  Then User expect "bill_payment_text_detail_pay_phone_bill" equal with "bill_payment_text_detail_pay_phone_bill_smartfren"
  And User fill "bill_payment_pay_phone_bill_text_field_phone" with "bill_payment_phone_number_smart"
  And User click "next_button"

  @android @uispecific
Scenario:JENI5479-C102194-[Functionality] Scenario - Proceed to view credit card bill amount and confirm
  Given User is on dashboard page in English language with "bill_payment_user_active_balance_<20k"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_data_mobile_top_up"
  And User wait 5 seconds 
  And User click "bill_payment_text_smartfren_phone_bill"
  And User expect "bill_payment_text_header_pay_phone_bill" is exist
  Then User expect "bill_payment_text_detail_pay_phone_bill" equal with "bill_payment_text_detail_pay_phone_bill_smartfren"
  And User fill "bill_payment_pay_phone_bill_text_field_phone" with "bill_payment_phone_number_smart"
  And User click "next_button"
  And User click "bill_payment_pay_phone_bill_popup_insufficient_cancel_button"
  And User expect "next_button" is exist

  @android @uispecific 
Scenario:JENI5479-C102196-[Functionality] Scenario - Proceed to view credit card bill amount and confirm
  Given User is on dashboard page in English language with "bill_payment_user_have_balance_high_50juta"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_data_mobile_top_up"
  And User wait 5 seconds 
  And User click "bill_payment_text_smartfren_phone_bill"
  And User expect "bill_payment_text_header_pay_phone_bill" is exist
  Then User expect "bill_payment_text_detail_pay_phone_bill" equal with "bill_payment_text_detail_pay_phone_bill_smartfren"
  And User fill "bill_payment_pay_phone_bill_text_field_phone" with "bill_payment_phone_number_smart"
  And User click "next_button"
  And User wait 5 seconds 
  And User expect "bill_payment_text_count_notes" equal with "bill_payment_count_fist"
  And User click "next_button"
  Then User expect "bill_payment_detail_transaction_provider_text" equal with "bill_payment_search_data_mobile_top_up"
  Then User expect "bill_payment_detail_transaction_phoneno_text" equal with "bill_payment_phone_number_smart"
  Then User expect "bill_payment_detail_transaction_amount_topup" is exist
  Then User expect "bill_payment_detail_transaction_amount_free" equal with "bill_payment_amount_fee"
  Then User expect "bill_payment_detail_transaction_total_amount" is exist

    @android @uispecific 
Scenario:JENI5479-C102184-[Functionality] Verify behavior's system if no wifi 
  Given User is on dashboard page in English language with "bill_payment_user_have_balance_high_50juta"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_e_commerce"
  And User wait 5 seconds 
  And User click "bill_payment_text_finpay"
  And User expect "bill_payment_text_header_ecommerce" is exist
  Then User expect "bill_payment_text_detail_ecommerce" equal with "bill_payment_text_detail_ecommerce_bill"
  And User fill "bill_payment_pay_phone_bill_text_field_phone" with "bill_payment_ecommerce_no"
  And User click "next_button"
  And User wait 5 seconds 
  And User expect "bill_payment_text_count_notes" equal with "bill_payment_count_fist"
  And User click "next_button"
  And User turn off network connection for data and wifi
  Then User expect "offline_popup_header_text" equal with "offline_popup_header_text_data"
  Then User expect "offline_popup_detail_text" equal with "offline_popup_detail_text_data"
  And User turn on network connection for data and wifi
  And User expect "offline_popup_header_text" doesn't exist 


#[JENI-5584][JENI-7046][JENI-7045]
  @android @uispecific 
Scenario:JENI5584-C102224-[Functionality] Scenario: Navigate to input details page for e-Commerce bill
  Given User is on dashboard page in English language with "bill_payment_user_have_balance_high_50juta"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_e_commerce"
  And User wait 5 seconds 
  And User click "bill_payment_text_finpay"
  And User expect "bill_payment_text_header_ecommerce" is exist
  Then User expect "bill_payment_text_detail_ecommerce" equal with "bill_payment_text_detail_ecommerce_bill"
  And User fill "bill_payment_pay_phone_bill_text_field_phone" with "bill_payment_phone_number_smart"


  @android @uispecific 
Scenario:JENI5584-C102225-[Functionality] Scenario: Enter valid Payment Code based on selected provider
  Given User is on dashboard page in English language with "bill_payment_user_have_balance_high_50juta"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_e_commerce"
  And User wait 5 seconds 
  And User click "bill_payment_text_finpay"
  And User expect "bill_payment_text_header_ecommerce" is exist
  Then User expect "bill_payment_text_detail_ecommerce" equal with "bill_payment_text_detail_ecommerce_bill"
  And User fill "bill_payment_pay_phone_bill_text_field_phone" with "bill_payment_ecommerce_no"
  And User click "next_button"
  And User wait 5 seconds 


    @android @uispecific 
Scenario:JENI5584-C102231-[Functionality] Scenario: Display confirmation page for making payment
  Given User is on dashboard page in English language with "bill_payment_user_have_balance_high_50juta"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_e_commerce"
  And User wait 5 seconds 
  And User click "bill_payment_text_finpay"
  And User expect "bill_payment_text_header_ecommerce" is exist
  Then User expect "bill_payment_text_detail_ecommerce" equal with "bill_payment_text_detail_ecommerce_bill"
  And User fill "bill_payment_pay_phone_bill_text_field_phone" with "bill_payment_ecommerce_no"
  And User click "next_button"
  And User wait 5 seconds 
  And User expect "bill_payment_text_count_notes" equal with "bill_payment_count_fist"
  And User click "next_button"
  Then User expect "bill_payment_detail_transaction_provider_text" equal with "bill_payment_search_e_commerce"
  Then User expect "bill_payment_detail_transaction_phoneno_text" equal with "bill_payment_ecommerce_no"
  Then User expect "bill_payment_detail_transaction_amount_topup" is exist
  Then User expect "bill_payment_detail_transaction_amount_free" equal with "bill_payment_amount_fee"
  Then User expect "bill_payment_detail_transaction_total_amount" is exist

    @android @uispecific 
Scenario:JENI5584-C102223-[Functionality] Verify behavior's system if no wifi
  Given User is on dashboard page in English language with "bill_payment_user_have_balance_high_50juta"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_e_commerce"
  And User wait 5 seconds 
  And User click "bill_payment_text_finpay"
  And User expect "bill_payment_text_header_ecommerce" is exist
  Then User expect "bill_payment_text_detail_ecommerce" equal with "bill_payment_text_detail_ecommerce_bill"
  And User fill "bill_payment_pay_phone_bill_text_field_phone" with "bill_payment_ecommerce_no"
  And User click "next_button"
  And User wait 5 seconds 
  And User expect "bill_payment_text_count_notes" equal with "bill_payment_count_fist"
  And User click "next_button"
  And User turn off network connection for data and wifi
  Then User expect "offline_popup_header_text" equal with "offline_popup_header_text_data"
  Then User expect "offline_popup_detail_text" equal with "offline_popup_detail_text_data"
  And User turn on network connection for data and wifi
  And User expect "offline_popup_header_text" doesn't exist 


#[JENI-5719][JENI-7046][JENI-7045]
  @android @uispecific
Scenario:JENI5719-C102225-[Functionality] Scenario: Enter valid Payment Code based on selected provider
  Given User is on dashboard page in English language with "bill_payment_user_have_balance_high_50juta"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_transportation"
  And User wait 5 seconds 
  And User click "bill_payment_text_transportation"
  And User expect "bill_payment_text_header_credit_card" is exist
  Then User expect "bill_payment_text_detail_credit_card" equal with "bill_payment_text_detail_train_tikets"
  And User fill "bill_payment_input_ticket_train" with "bill_payment_train_ticket"


  @android @uispecific
Scenario:JENI5719-C102243-[Functionality] Scenario: Enter valid ticket number/ booking number based on selected provider
  Given User is on dashboard page in English language with "bill_payment_user_have_balance_high_50juta"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_transportation"
  And User wait 5 seconds 
  And User click "bill_payment_text_transportation"
  And User expect "bill_payment_text_header_credit_card" is exist
  Then User expect "bill_payment_text_detail_credit_card" equal with "bill_payment_text_detail_train_tikets"
  And User fill "bill_payment_input_ticket_train" with "bill_payment_train_ticket"
  And User click "next_button"

  @android @uispecific 
Scenario:JENI5719-C102248-[Functionality] Scenario: Check outstanding bill for ticket number/ booking number, customers do have sufficient balance
  Given User is on dashboard page in English language with "bill_payment_user_active_balance_0"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_transportation"
  And User wait 5 seconds 
  And User click "bill_payment_text_transportation"
  And User expect "bill_payment_text_header_credit_card" is exist
  Then User expect "bill_payment_text_detail_credit_card" equal with "bill_payment_text_detail_train_tikets"
  And User fill "bill_payment_input_ticket_train" with "bill_payment_train_ticket"
  And User click "next_button"
  And User click "bill_payment_pay_phone_bill_popup_insufficient_cancel_button"
  And User expect "next_button" is exist

  @android @uispecific 
Scenario:JENI5719-C102249-[Functionality] Scenario: Display confirmation page for making payment
  Given User is on dashboard page in English language with "bill_payment_user_have_balance_high_50juta"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_transportation"
  And User wait 5 seconds 
  And User click "bill_payment_text_transportation"
  And User expect "bill_payment_text_header_credit_card" is exist
  Then User expect "bill_payment_text_detail_credit_card" equal with "bill_payment_text_detail_train_tikets"
  And User fill "bill_payment_input_ticket_train" with "bill_payment_train_ticket"
  And User click "next_button"
  And User expect "bill_payment_text_count_notes" equal with "bill_payment_count_fist"
  And User click "next_button"
  Then User expect "bill_payment_detail_transaction_provider_text" equal with "bill_payment_search_transportation"
  Then User expect "bill_payment_detail_transaction_phoneno_text" equal with "bill_payment_train_ticket"
  Then User expect "bill_payment_detail_transaction_amount_topup" is exist
  Then User expect "bill_payment_detail_transaction_amount_free" equal with "bill_payment_amount_fee"
  Then User expect "bill_payment_detail_transaction_total_amount" is exists

    @android @uispecific 
Scenario:JENI5719-C102241-[Functionality] Verify behavior's system if no wifi
  Given User is on dashboard page in English language with "bill_payment_user_have_balance_high_50juta"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_transportation"
  And User wait 5 seconds 
  And User click "bill_payment_text_transportation"
  And User expect "bill_payment_text_header_credit_card" is exist
  Then User expect "bill_payment_text_detail_credit_card" equal with "bill_payment_text_detail_train_tikets"
  And User fill "bill_payment_input_ticket_train" with "bill_payment_train_ticket"
  And User click "next_button"
  And User expect "bill_payment_text_count_notes" equal with "bill_payment_count_fist"
  And User click "next_button"
  And User turn off network connection for data and wifi
  Then User expect "offline_popup_header_text" equal with "offline_popup_header_text_data"
  Then User expect "offline_popup_detail_text" equal with "offline_popup_detail_text_data"
  And User turn on network connection for data and wifi
  And User expect "offline_popup_header_text" doesn't exist 


#[JENI-5720][JENI-7046][JENI-7045]
  @android @uispecific 
Scenario:JENI5720-C102257-[Functionality] Scenario: Navigate to input details page for TV & Internet bill
  Given User is on dashboard page in English language with "bill_payment_user_have_balance_high_50juta"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_television"
  And User wait 5 seconds 
  And User click "bill_payment_text_television"
  And User expect "bill_payment_text_header_television" is exist
  Then User expect "bill_payment_text_detail_television" equal with "bill_payment_text_detail_customer_id_television"
  And User fill "bill_payment_input_customer_id_television" with "bill_payment_customer_id_active_television"


  @android @uispecific 
Scenario:JENI5720-C102258-[Functionality] Scenario: Enter valid customer ID based on selected provider
  Given User is on dashboard page in English language with "bill_payment_user_have_balance_high_50juta"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_television"
  And User wait 5 seconds 
  And User click "bill_payment_text_television"
  And User expect "bill_payment_text_header_television" is exist
  Then User expect "bill_payment_text_detail_television" equal with "bill_payment_text_detail_customer_id_television"
  And User fill "bill_payment_input_customer_id_television" with "bill_payment_customer_id_active_television"
  And User click "next_button"
 

   @android @uispecific 
Scenario:JENI5720-C102263-[Functionality] Scenario: Check outstanding bill for customer ID, customers do have sufficient balance
  Given User is on dashboard page in English language with "bill_payment_user_active_balance_0"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_television"
  And User wait 5 seconds 
  And User click "bill_payment_text_television"
  And User expect "bill_payment_text_header_television" is exist
  Then User expect "bill_payment_text_detail_television" equal with "bill_payment_text_detail_customer_id_television"
  And User fill "bill_payment_input_customer_id_television" with "bill_payment_customer_id_active_television"
  And User click "next_button"
  And User click "bill_payment_pay_phone_bill_popup_insufficient_cancel_button"
  And User expect "next_button" is exist


   @android @uispecific
Scenario:JENI5720-C102263-[Functionality] Scenario: Check outstanding bill for customer ID, customers do have sufficient balance  
  Given User is on dashboard page in English language with "bill_payment_user_have_balance_high_50juta"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_television"
  And User wait 5 seconds 
  And User click "bill_payment_text_television"
  And User expect "bill_payment_text_header_television" is exist
  Then User expect "bill_payment_text_detail_television" equal with "bill_payment_text_detail_customer_id_television"
  And User fill "bill_payment_input_customer_id_television" with "bill_payment_customer_id_active_television"
  And User click "next_button"
  Then User expect "bill_payment_detail_transaction_provider_television_text" equal with "bill_payment_search_television"
  Then User expect "bill_payment_detail_transaction_television_text" equal with "bill_payment_customer_id_active_television"
  Then User expect "bill_payment_detail_transaction_amount_television" is exist
  Then User expect "bill_payment_detail_transaction_balance" is exist


 @android @uispecific 
Scenario:JENI5720-C102265-[Functionality] Complete payment on confirmation page and navigate to dashboard  
  Given User is on dashboard page in English language with "bill_payment_user_have_balance_high_50juta"
  And System save balance "dashboard_wealth_widget_total_balance" value
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_television"
  And User wait 5 seconds 
  And User click "bill_payment_text_television"
  And User expect "bill_payment_text_header_television" is exist
  Then User expect "bill_payment_text_detail_television" equal with "bill_payment_text_detail_customer_id_television"
  And User fill "bill_payment_input_customer_id_television" with "bill_payment_customer_id_active_television"
  And User click "next_button"
  Then User expect "bill_payment_detail_transaction_provider_television_text" equal with "bill_payment_search_television"
  Then User expect "bill_payment_detail_transaction_television_text" equal with "bill_payment_customer_id_active_television"
  Then User expect "bill_payment_detail_transaction_amount_television" is exist
  Then User expect "bill_payment_detail_transaction_balance" is exist
  And User fill "bill_payment_text_field_notes_credit_card" with "bill_payment_text_notes"
  And User click "next_button"
  And User click "bill_payment_paynow_button"
  And User click "card_center_password_field_eye"
  And User fill "bill_payment_confrm_password_field" with "bill_payment_password_confirm"
  And User click "bill_payment_confrm_password_submit"
  And User wait 5 seconds 
  And User expect "bill_payment_dashboard_popup_header" equal with "bill_payment_dashboard_success_header_text"
  And User expect "bill_payment_dashboard_popup_amount" equal with "bill_payment_dashboard_success_amount_television"
  And User expect "bill_payment_dashboard_popup_notes" equal with "bill_payment_text_notes"
  And User expect "bill_payment_dashboard_popup_customer_id" equal with "bill_payment_customer_id_active_television"
  And User expect "dashboard_wealth_widget_total_balance" will be minus with "bill_payment_amount_10k"


    @android @uispecific 
Scenario:JENI5719-C102241-[Functionality] Verify behavior's system if no wifi
  Given User is on dashboard page in English language with "bill_payment_user_have_balance_high_50juta"
  And User go to sent it bill payment landing page from side menu
  Then "send_it_page_title" will be displayed 
  And User click "bill_payment_header_search_button"  
  And User fill "bill_payment_header_search_field" with "bill_payment_search_television"
  And User wait 5 seconds 
  And User click "bill_payment_text_television"
  And User expect "bill_payment_text_header_television" is exist
  Then User expect "bill_payment_text_detail_television" equal with "bill_payment_text_detail_customer_id_television"
  And User fill "bill_payment_input_customer_id_television" with "bill_payment_customer_id_active_television"
  And User click "next_button"
  And User turn off network connection for data and wifi
  Then User expect "offline_popup_header_text" equal with "offline_popup_header_text_data"
  Then User expect "offline_popup_detail_text" equal with "offline_popup_detail_text_data"
  And User turn on network connection for data and wifi
  And User expect "offline_popup_header_text" doesn't exist 


