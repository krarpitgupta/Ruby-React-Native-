@smoketest
Feature: Testing for Smoke Test Purpose

  #Authentication
  @android @ios @uispecific
  Scenario:JENI2731-C70279-[Functionality] Dormant user login using email and password (Mobile Phone)(BLOCKED)
    Given User is on authentication page
    When User fill "authentication_email_textfield" with "authentication_active_email_account"
    And User click "authentication_password_eye"
    And User fill "authentication_password_textfield" with "authentication_active_password_account"
    And User click "onboarding_next_button"
    When User fill "correct_otp" for OTP or PIN
    And User fill "correct_pin" for OTP or PIN
    And User click "authentication_create_pin_next_button"
    And User fill "correct_pin" for OTP or PIN
    And User click "authentication_confirm_pin_next_button"
    And User wait 4 seconds
    Then "****_top_logo" will be displayed
    And User change language to "language"

  #ONBOARDING
  @android @ios @uispecific
  Scenario:JENI353-C43173-[Functionality] The 'REGISTER' button can redirect to the 'About You' screen
    Given User is on application screen
    And User check and click 2 times if allow or ok button exist
    And User check and click "onboarding_cif_submit_button" if exist 
    When User click "onboarding_register_button"
    When User change language into "english_language"
    Then User expect "onboarding_language_page_title" equal with "language_page_title"

  @continuous @android @ios @uispecific
  Scenario:JENI354-C43215-[Functionality] User can select English
    When User change language into "english_language"
    And User click "onboarding_language_ok_next_button"
    Then User expect "onboarding_about_you_page_title" equal with "about_you_page_title"

  @continuous @android @ios @uispecific
  Scenario:JENI346-C42149-[Functionality] The LET'S START button can redirect to the 'Input your email and phone number' screen
    And User click "onboarding_lets_start_button"
    Then User expect "onboarding_emailandphone_page_title" equal with "emailandphone_page_title"

  @continuous @android @ios @uispecific
  Scenario:JENI1598-C63984-[Functionality] Open the 'Help' form for Phone Number 
    When User click "onboarding_help_button"
    Then User expect "onboarding_help_page" equal with "help_page"

  @continuous @android @ios @uispecific
  Scenario:JENI1598-C67439-[Functionality] Expand the question box
    When User click "onboarding_emailandphone_help_second_message"
    Then User expect "onboarding_emailandphone_help_sub_content_1" equal with "help_second_message_sub_content"

  @continuous @android @ios @uispecific
  Scenario:JENI1598-C67446-[Functionality] Collapse/close the already expanded question box
    Then User expect "onboarding_emailandphone_help_content_minus" equal with "help_second_message"

  @continuous @android @ios @uispecific
  Scenario:JENI1879-C67466-[Functionality] Navigate back using the top-left button of the 'Input your mailing address' form(help page)
    When User click "onboarding_emailandphone_help_close_button"
    Then User expect "onboarding_emailandphone_page_title" equal with "emailandphone_page_title"
  
  @continuous @android @ios @uispecific
  Scenario:JENI373-C23399-[Functionality] Input a phone number that uses "+62" prefix
    And User fill "onboarding_phone_number_textfield" with "phone_number_with_+62"
    And User click "onboarding_next_button"
    Then User expect "onboarding_otp_page_title" equal with "authentication_page_title"
  
  @continuous @android @ios @uispecific
  Scenario:JENI1266-C41110-[Functionality] User can re-send the OTP
    And User click "onboarding_otp_resend_code_button"

  @continuous @android @ios @uispecific
  Scenario:JENI1266-C41104-[Functionality] Input the sent OTP code
    And User fill "correct_otp" for OTP or PIN
    Then User expect "onboarding_photo_page_title" equal with "photo_page_title"
  
  @continuous @android @ios @uispecific
  Scenario:JENI1272-C63234-[Functionality] The helpful image for KTP is displayed
    When User click "onboarding_your_ktp_photo_button"
    Then User expect "onboarding_your_ktp_photo_popup" equal with "ktp_photo_page_popup"
    And "onboarding_your_ktp_photo_ok_button" will be displayed

  @continuous @android @ios @uispecific
  Scenario:JENI1272-C63236-[Functionality] The OK! button on the helpful image for KTP can activate the rear camera
    And User click "onboarding_your_ktp_photo_ok_button"
    And User check and click allow or ok button if exist
    Then User expect "onboarding_ktp_photo_page" equal with "ktp_photo_page"

  @continuous @android @ios @uispecific
  Scenario:JENI379-C43450-[Functionality] User can re-take photo of his/her KTP card
    And User click "onboarding_camera_button"
    And User click "onboarding_retake_photo_button"
    Then "onboarding_camera_button" will be displayed
    And User click "onboarding_camera_button"

  @continuous @android @ios @uispecific
  Scenario:JENI379-C43448-[Functionality] The KTP can be photographed properly
    And User click "onboarding_confirm_photo_button"
    Then User expect "onboarding_photo_page_title" equal with "photo_page_title" 

  @continuous @android @ios @uispecific
  Scenario:JENI1272-C63561-[Functionality] The helpful image for 'Selfie with KTP' is displayed
    When User click "onboarding_selfie_with_your_ktp_photo_button"
    Then User expect "onboarding_selfie_with_your_ktp_popup" equal with "selfie_ktp_photo_page_popup"
    And "onboarding_selfie_with_your_ktp_ok_got_it_button" will be displayed

  @continuous @android @ios @uispecific
  Scenario:JENI1272-C48366-[Functionality] The OK! button on the helpful image for 'Selfie with KTP' can activate the front camera
    And User click "onboarding_selfie_with_your_ktp_ok_got_it_button"
    And User check and click allow or ok button if exist
    Then "onboarding_selfie_with_ktp_photo_page" will be displayed

  @continuous @android @ios @uispecific
  Scenario:JENI380-C48366-[Layout] Verify screen of KTP Selfie  
    Then "onboarding_close_button" will be displayed
    And "onboarding_help_button" will be displayed
    And "onboarding_selfie_with_ktp_photo_page" will be displayed

  @continuous @android @ios @uispecific
  Scenario:JENI380-XXX 
    When User click "onboarding_camera_button"
    And User click "onboarding_retake_photo_button"
    Then "onboarding_camera_button" will be displayed
    And User click "onboarding_camera_button"

  @continuous @android @ios @uispecific
  Scenario:JENI380-XXX  X
    And User click "onboarding_confirm_photo_button"
    Then User expect "onboarding_photo_page_title" equal with "photo_page_title" 

  @continuous @android @ios @uispecific
  Scenario:JENI376-C43428-[Functionality] User can re-take photo of his/her signature
    When User click "onboarding_your_signature_photo_button"
    And User click "onboarding_your_signature_ok_button"
    And User check and click allow or ok button if exist
    And User click "onboarding_camera_button"
    And User click "onboarding_retake_photo_button"
    Then "onboarding_camera_button" will be displayed
    And User click "onboarding_camera_button"

  @continuous @android @ios @uispecific
  Scenario:JENI376-C43427-[Functionality] The signature can be photographed properly
    And User click "onboarding_confirm_photo_button"
    Then User expect "onboarding_photo_page_title" equal with "photo_page_title" 
    And User click "onboarding_next_button"
    Then User expect "onboarding_identity_page_title" equal with "identity_page_title"

  @continuous @run @android @ios @uispecific
  Scenario:JENI1270-C59770-[Functionality] Input Full Name, Date Of Birth and KTP Number  
    When User click "onboarding_identity_date_field"
    And User click "onboarding_calendar_ok_button"
    And User click "onboarding_next_button"
    Then User expect "onboarding_identity_date_underline_text" equal with "lower_than_valid_age"
    And User expect "onboarding_identity_page_title" equal with "identity_page_title"

  @continuous @android @ios @uispecific
  Scenario:JENI1270-C59796-[Functionality] Leave the 'KTP Number' textbox empty and proceed to the next registration step
    And User swipe up until found "onboarding_identity_ktp_textfield"
    When User click "onboarding_identity_ktp_textfield"
    And User click "onboarding_identity_fullname_textfield"
    And User swipe down until found "onboarding_identity_ktp_underline_text"
    And User fill "onboarding_email_address_textfield" with "valid_email"
    And User swipe up until found "onboarding_identity_ktp_underline_text"
    Then User expect "onboarding_identity_ktp_underline_text" equal with "blank_ktp_field"
    And User swipe down until found "onboarding_identity_page_title"
    And User expect "onboarding_identity_page_title" equal with "identity_page_title"

  @continuous @android @ios @uispecific
  Scenario:JENI1270-C59763-[Functionality] Input Full Name, Date Of Birth and KTP Number
    When User fill "onboarding_email_address_textfield" with "valid_email"
    And User fill "onboarding_identity_fullname_textfield" with "valid_full_name"
    And User click "onboarding_identity_page_title"
    And User select "onboarding_identity_date_field" field and put "day" as day "month" as month "year" as year
    And User swipe up until found "onboarding_identity_ktp_textfield"
    And User fill "onboarding_identity_ktp_textfield" with "valid_ktp"
    And User click "onboarding_identity_fullname_underline_text"
    And User click "onboarding_next_button"
    Then User expect "onboarding_mailing_page_title" equal with "mailing_page_title"

  @continuous @android @ios @uispecific
  Scenario:JENI1509-C63209-[Functionality] Input valid data into 'Mailing Address'form and proceed to the next step
    And User select "onboarding_mailing_build_dropdown" dropdown with "onboarding_mailing_build_dropdown"
    When User fill "onboarding_mailing_address_textfield" with "valid_address" 
    And User fill "onboarding_mailing_no" with "house_number" 
    And User fill "onboarding_mailing_rt_rw" with "house_rt_rw"
    And User swipe up until found "onboarding_mailing_zipcode_dropdown"
    And User select "onboarding_mailing_province_dropdown" dropdown with "onboarding_mailing_province_dropdown"
    And User select "onboarding_mailing_city_dropdown" dropdown with "onboarding_mailing_city_dropdown"
    And User select "onboarding_mailing_districts_dropdown" dropdown with "onboarding_mailing_districts_dropdown"
    And User select "onboarding_mailing_kelurahan_dropdown" dropdown with "onboarding_mailing_kelurahan_dropdown"
    And User select "onboarding_mailing_zipcode_dropdown" dropdown with "onboarding_mailing_zipcode_dropdown"
    And User click "onboarding_next_button"
    Then User expect "onboarding_question_page_title" equal with "question_page_title"
 
  @continuous @android @ios @uispecific
  Scenario:JENI776-C63604-[Functionality] User with BO and no NPWP input valid data and proceed to the next step bug
    When User click "onboarding_question_no_radio_button"
    And User select "onboarding_question_purpose_dropdown" dropdown with "onboarding_question_purpose_dropdown_value_1"
    And User select "onboarding_question_income_dropdown" dropdown with "onboarding_question_income_dropdown_value_2"
    And User select "onboarding_question_spending_dropdown" dropdown with "onboarding_question_income_dropdown_value_2"
    And User swipe up until found "onboarding_question_source_dropdown"
    And User select "onboarding_question_source_dropdown" dropdown with "onboarding_question_source_dropdown_value_2"
    And User swipe up until found "onboarding_question_occupation_dropdown"
    And User select "onboarding_question_related_dropdown" dropdown with "onboarding_question_related_dropdown_value_1"
    And User select "onboarding_question_occupation_dropdown" dropdown with "onboarding_question_occupation_dropdown_value_1"
    And User swipe up until found "onboarding_question_related_npwp_radio_button"
    And User click "onboarding_question_ktp_button"
    And User click "onboarding_question_choose_camera"
    And User click "onboarding_proceed_button"
    And User click "onboarding_camera_button"
    And User click "onboarding_confirm_photo_button"
    And User click "onboarding_question_other_npwp_button"
    And User click "onboarding_question_choose_camera"
    And User click "onboarding_proceed_button"
    And User click "onboarding_camera_button"
    And User click "onboarding_confirm_photo_button"
    And User click "onboarding_next_button"
    Then User expect "onboarding_owner_page_title" equal with "owner_page_title"

  @continuous @android @ios @uispecific
  Scenario:JENI1714-C63562-[Functionality] Ensure that the options of the monthly spending are lower than monthly income
    And User swipe up until found "onboarding_owner_spending_dropdown"
    And User select "onboarding_owner_income_dropdown" dropdown with "onboarding_question_income_dropdown_value_1"
    And User click "onboarding_owner_spending_dropdown"
    Then User expect "onboarding_owner_spending_value_2" doesn't exist
    And User click "onboarding_owner_spending_value_1"

  @continuous @android @ios @uispecific
  Scenario:JENI1714-C63565-[Functionality] User input valid data into 'Your Beneficial Owner's Information' form and proceed to the next step
    Given User swipe down until found "onboarding_owner_page_title"
    When User fill "onboarding_owner_fullname_textfield" with "valid_full_name"
    And User click "onboarding_owner_industry_dropdown"
    And User click "onboarding_first_dropdown"
    And User click "onboarding_first_dropdown"
    And User click "onboarding_owner_position_dropdown"
    And User click "onboarding_first_dropdown"
    And User swipe up until found "onboarding_owner_source_dropdown"
    And User click "onboarding_owner_source_dropdown"
    And User click "onboarding_first_dropdown"
    And User swipe up until found "onboarding_owner_companyname_textfield"
    And User fill "onboarding_owner_companyname_textfield" with "valid_company_name"
    And User swipe up until found "onboarding_owner_officephone_textfield"
    And User fill "onboarding_owner_companyaddress_textfield" with "valid_company_address"
    And User fill "onboarding_owner_city_textfield" with "valid_city"
    And User fill "onboarding_owner_officephone_textfield" with "valid_office_phone"
    And User click "onboarding_next_button"
    Then User expect "onboarding_termandcondition_page_title" equal with "termandcondition_page_title"
 
  @continuous @android @ios @uispecific
  Scenario:JENI779-C59693-[Funcionality] Expand Terms and conditions form to see deatils
    And User swipe up until found "onboarding_termandcondition_showall_button"
    When User click "onboarding_termandcondition_showall_button"
    And User swipe up until found "onboarding_termandcondition_showall_content"
    Then User expect "onboarding_termandcondition_showall_content" equal with "termandcondition_showall_content"

  @continuous @android @ios @uispecific
  Scenario:JENI779-C45232-[Functionality] User must accept the Terms and Conditions provided
    When User swipe up until found "onboarding_termandcondition_approval_2"
    And User click "onboarding_termandcondition_approval_1"
    And User click "onboarding_termandcondition_approval_2"
    And User click "onboarding_next_button"
    Then User expect "onboarding_personalized_page_title" equal with "personalized_page_title"

  @continuous @android @ios @uispecific
  Scenario:JENI346-C43149-[Functionality] The LET'S START button can redirect to the 'Create your Unique **** Cashtag' screen
    And User click "onboarding_lets_start_button"
    Then User expect "onboarding_cashtag_page_title" equal with "cashtag_page_title"

  @continuous @android @ios @uispecific
  Scenario:JENI358-C48368-[Functionality] Cashtag consist only letter and number
    When User fill "onboarding_cashtag_textfield" with "correct_cashtag_1"
    And User click "onboarding_next_button"
    Then User expect "onboarding_card_page_title" equal with "card_page_title"
    When User click "onboarding_back_button"
    When User fill "onboarding_cashtag_textfield" with "correct_cashtag_2"
    And User click "onboarding_next_button"
    Then User expect "onboarding_card_page_title" equal with "card_page_title"

  @continuous @android @ios @uispecific
  Scenario:JENI358-C48367-[Functionality] Verify for Input cashtag minimum 4 characters
    When User click "onboarding_back_button"
    And User fill "onboarding_cashtag_textfield" with "correct_cashtag_3"
    And User click "onboarding_next_button"
    Then User expect "onboarding_card_page_title" equal with "card_page_title"

  @continuous @android @ios @uispecific
  Scenario:JENI358-C23407-[Functionality] Create a unique **** cashtag
    When User click "onboarding_back_button"
    And User fill "onboarding_cashtag_textfield" with "correct_cashtag_1"
    And User click "onboarding_next_button"
    Then User expect "onboarding_card_page_title" equal with "card_page_title"

  @continuous @android @ios @uispecific
  Scenario:JENI366-C67713-[Functionality] Verify that the list of the name card complies with the provided design
    When User click "onboarding_card_name_dropdown"
    Then User expect "onboarding_card_selection_fullname" equal with "onboarding_card_selection_fullname"
    Then User expect "onboarding_card_selection_middle_last_initial" equal with "onboarding_card_selection_middle_last_initial"
    Then User expect "onboarding_card_selection_first_middle_initial" equal with "onboarding_card_selection_first_middle_initial"
    When User swipe up "onboarding_first_dropdown" until found "onboarding_card_selection_middle_initial"
    Then User expect "onboarding_card_selection_middle_initial" equal with "onboarding_card_selection_middle_initial"

  @continuous @android @ios @uispecific
  Scenario:JENI366-C41075-[Functionality] Choose name on debit card
    And User click "onboarding_card_selection_middle_initial"
    And User click "onboarding_card_selection_middle_initial"
    And User click "onboarding_next_button"
    Then User expect "onboarding_create_password_page_title" equal with "create_password_page_title"

  @continuous @android @ios @uispecific
  Scenario:JENI359-C70621-[Functionality] User can move the focus to the 'Confirm Password' textbox
    And User fill "onboarding_password_textfield" with "correct_password"
    And User fill "onboarding_confirm_password_textfield" with "correct_password"

  @continuous @android @ios @uispecific
  Scenario:JENI359-C23396-[Functionality] User can create and confirm password  
    And User click "onboarding_next_button"
    Then User expect "onboarding_pin_page_title" equal with "pin_page_title" 

  @continuous @android @ios @uispecific
  Scenario:JENI361-C40922-[Functionality] Input a unique passcode
    When User fill "correct_pin" for OTP or PIN
    And User click "onboarding_next_button"
    Then User expect "onboarding_confirm_pin_page_title" equal with "confirm_pin_page_title"

  @continuous @android @ios @uispecific
  Scenario:JENI380-XXX confirm pin
    When User fill "correct_pin" for OTP or PIN
    And User click "onboarding_next_button"
    Then User expect "onboarding_success_page_title" equal with "success_page_title"

  @continuous @android @ios @uispecific
  Scenario:JENI1668-C63605-[Layout] Ensure that the layout for Registration success complies with the provided design  
    Then "onboarding_success_page_account_number" will be displayed
    And "onboarding_success_page_cashtag" will be displayed
    And "onboarding_success_page_change_button" will be displayed
  
  @continuous @android @ios @endtoend
  Scenario:JENI1668-C63606-[Functionality] Ensure user can change his/her nickname
    When User click "onboarding_success_page_change_button" until "onboarding_success_page_nickname_textfield" displayed
    And User fill "onboarding_success_page_nickname_textfield" with "card_selection_middle_last_initial"
    And User click "onboarding_success_page_title"
    Then User expect "onboarding_success_page_nickname_label" equal with "card_selection_middle_last_initial"

  @android @uispecific
  Scenario:JENI1879-C67469-[Functionality] Navigate back using the default back button on Android device on the 'Input your mailing address' form(pin page)
    Given User is on onboarding pin page
    When User press back button on device
    And User swipe down until found "onboarding_secureaccount_page_title"
    Then User expect "onboarding_secureaccount_page_title" equal with "secureaccount_page_title"

  @android @ios @uispecific
  Scenario:JENI1879-C67469-[Functionality] Navigate back using the default back button on Android device on the 'Input your mailing address' form(pin page)
    Given User is on onboarding pin page
    When User click "onboarding_back_button"
    And User swipe down until found "onboarding_secureaccount_page_title"
    Then User expect "onboarding_secureaccount_page_title" equal with "secureaccount_page_title"

  @android @uispecific
  Scenario:JENI1879-C67469-[Functionality] Navigate back using the default back button on Android device on the 'Input your mailing address' form(card page)
    Given User is on onboarding card page
    When User press back button on device
    And User swipe down until found "onboarding_secureaccount_page_title"
    Then User expect "onboarding_cashtag_page_title" equal with "cashtag_page_title"

  @android @ios @uispecific
  Scenario:JENI1879-C67469-[Functionality] Navigate back using the default back button on Android device on the 'Input your mailing address' form(pin page)
    Given User is on onboarding card page
    When User click "onboarding_back_button"
    And User swipe down until found "onboarding_secureaccount_page_title"
    Then User expect "onboarding_cashtag_page_title" equal with "cashtag_page_title"

  @continuous @android @ios @uispecific
  Scenario:JENI1879-C67466-[Functionality] Navigate back using the top-left button of the 'Input your mailing address' form(About you)
    When User click "onboarding_back_button"
    Then "onboarding_register_button" will be displayed

  @android @ios @id
  Scenario:JENI354-C59679-[Functionality] User can select Bahasa Indonesia FAILED BECAUSE LANGUAGE
    Given User is on onboarding language page
    And User change language into "indonesian_language"
    And User click "onboarding_language_ok_next_button"
    Then User expect "onboarding_about_you_page_title" equal with "about_you_page_title"

  @continuous @android @ios @uispecific
  Scenario:JENI1879-C67466-[Functionality] Navigate back using the top-left button of the 'Input your mailing address' form(phone page)
    When User click "onboarding_back_button"
    Then User expect "onboarding_about_you_page_title" equal with "about_you_page_title"

  @continuous @android @uispecific
  Scenario:JENI1879-C67469-[Functionality] Navigate back using the default back button on Android device on the 'Input your mailing address' form(about you)
    When User press back button on device
    Then "onboarding_register_button" will be displayed

  @continuous @android @uispecific
  Scenario:JENI1879-C67469-[Functionality] Navigate back using the default back button on Android device on the 'Input your mailing address' form(phone page)
    When User press back button on device
    Then User expect "onboarding_about_you_page_title" equal with "about_you_page_title"
  
  @android @uispecific
  Scenario:JENI1879-C67469-[Functionality] Navigate back using the default back button on Android device on the 'Input your mailing address' form(help page)
    Given User is on onboarding phone page
    When User click "onboarding_help_button"
    Then User expect "onboarding_help_page" equal with "help_page"
    When User press back button on device
    Then User expect "onboarding_emailandphone_page_title" equal with "emailandphone_page_title"

  @android @ios @uispecific
  Scenario:JENI1879-C67466-[Functionality] Navigate back using the top-left button of the 'Input your mailing address' form(otp page)
    Given User is on onboarding OTP page
    When User click "onboarding_back_button"
    #put inside command till the design fixed And User fill "onboarding_email_address_textfield" with "valid_email" 
    And User expect "onboarding_emailandphone_page_title" equal with "emailandphone_page_title"

  @continuous @android @uispecific
  Scenario:JENI1879-C67469-[Functionality] Navigate back using the default back button on Android device on the 'Input your mailing address' form(photo page)
    When User press back button on device
    Then User expect "onboarding_otp_page_title" equal with "authentication_page_title"

  @android @ios @uispecific
  Scenario:JENI1879-C67466-[Functionality] Navigate back using the top-left button of the 'Input your mailing address' form(photo page)
    Given User is on onboarding photo page
    When User click "onboarding_back_button" 
    And User expect "onboarding_emailandphone_page_title" equal with "emailandphone_page_title"

  @continuous @android @ios @uispecific
  Scenario:JENI1879-C67466-[Functionality] Navigate back using the top-left button of the 'Input your mailing address' form(identity page)
    When User click "onboarding_back_button"
    Then User expect "onboarding_photo_page_title" equal with "photo_page_title"

  @continuous @android @uispecific
  Scenario:JENI1879-C67469-[Functionality] Navigate back using the default back button on Android device on the 'Input your mailing address' form(identity page)
    And User click "onboarding_next_button"
    When User press back button on device
    Then User expect "onboarding_photo_page_title" equal with "photo_page_title"

  @android @ios @uispecific
  Scenario:JENI1879-C67466-[Functionality] Navigate back using the top-left button of the 'Input your mailing address' form(question page)
    Given User is on onboarding mailing page
    When User click "onboarding_back_button"
    Then User expect "onboarding_identity_page_title" equal with "identity_page_title"

  @android @uispecific
  Scenario:JENI1879-C67469-[Functionality] Navigate back using the default back button on Android device on the 'Input your mailing address' form(question page)
    Given User is on onboarding mailing page
    When User press back button on device
    Then User expect "onboarding_identity_page_title" equal with "identity_page_title"

  @android @ios @uispecific
  Scenario:JENI1879-C67466-[Functionality] Navigate back using the top-left button of the 'Input your mailing address' form(question page) BUG
    Given User is on onboarding question page
    When User click "onboarding_back_button"
    Then User expect "onboarding_identity_page_title" equal with "identity_page_title"

  @android @uispecific
  Scenario:JENI1879-C67469-[Functionality] Navigate back using the default back button on Android device on the 'Input your mailing address' form(question page)
    Given User is on onboarding question page
    When User press back button on device
    Then User expect "onboarding_identity_page_title" equal with "identity_page_title"

  @continuous @android @ios @uispecific
  Scenario:JENI1879-C67466-[Functionality] Navigate back using the top-left button of the 'Input your mailing address' form(term and condition page)
    When User click "onboarding_back_button"
    And User swipe down until found "onboarding_owner_page_title"
    Then User expect "onboarding_owner_page_title" equal with "owner_page_title"

  @android @uispecific
  Scenario:JENI1879-C67469-[Functionality] Navigate back using the default back button on Android device on the 'Input your mailing address' form(owner page)
    Given User is on onboarding owner page
    When User press back button on device
    And User swipe down until found "onboarding_question_page_title"
    Then User expect "onboarding_question_page_title" equal with "question_page_title"

  @android @ios @uispecific
  Scenario:JENI1879-C67469-[Functionality] Navigate back using the default back button on Android device on the 'Input your mailing address' form(owner page)
    Given User is on onboarding owner page
    When User click "onboarding_back_button"
    And User swipe down until found "onboarding_question_page_title"
    Then User expect "onboarding_question_page_title" equal with "question_page_title"

  @android @ios @uispecific    
  Scenario:JENI1879-C67469-[Functionality] Navigate back using the default back button on Android device on the 'Input your mailing address' form(personalize page)
    Given User is on onboarding personalize page
    When User click "onboarding_back_button"
    And User swipe down until found "onboarding_termandcondition_page_title"
    Then User expect "onboarding_termandcondition_page_title" equal with "termandcondition_page_title"

  @android @uispecific
  Scenario:JENI1879-C67469-[Functionality] Navigate back using the default back button on Android device on the 'Input your mailing address' form(personalize page)
    Given User is on onboarding personalize page
    When User press back button on device
    And User swipe down until found "onboarding_termandcondition_page_title"
    Then User expect "onboarding_termandcondition_page_title" equal with "termandcondition_page_title"

  @android @uispecific
  Scenario:JENI1879-C67469-[Functionality] Navigate back using the default back button on Android device on the 'Input your mailing address' form(password page)
    Given User is on onboarding password page
    When User press back button on device
    And User swipe down until found "onboarding_termandcondition_page_title"
    Then User expect "onboarding_termandcondition_page_title" equal with "termandcondition_page_title"

  @android @ios @uispecific
  Scenario:JENI1879-C67469-[Functionality] Navigate back using the default back button on Android device on the 'Input your mailing address' form(password page)
    Given User is on onboarding password page
    When User click "onboarding_back_button"
    And User swipe down until found "onboarding_termandcondition_page_title"
    Then User expect "onboarding_termandcondition_page_title" equal with "termandcondition_page_title"

  @android @ios @uispecific
  Scenario:JENI1879-C67469-[Functionality] Navigate back using the default back button on Android device on the 'Input your mailing address' form(cashtag page)
    Given User is on onboarding cashtag page
    When User click "onboarding_back_button"
    Then User expect "onboarding_personalized_page_title" equal with "personalized_page_title"

  @android @uispecific
  Scenario:JENI1879-C67469-[Functionality] Navigate back using the default back button on Android device on the 'Input your mailing address' form(cashtag page)
    Given User is on onboarding cashtag page
    When User press back button on device
    Then User expect "onboarding_personalized_page_title" equal with "personalized_page_title"

  @android @ios @id
  Scenario:JENI354-C59679-[Functionality] User can select Bahasa Indonesia FAILED BECAUSE LANGUAGE
    Given User is on onboarding language page
    And User change language into "indonesian_language"
    And User click "onboarding_language_ok_next_button"
    Then User expect "onboarding_about_you_page_title" equal with "about_you_page_title"

  #Card Center
  # JENI-38
  #JENI38-C17735-Access to Card Center from Dashboard Widget
  #JENI38-C17736-Access to Card Center from side menu
  #JENI38-C17882-Check to make sure the first time tutorial shows as an overlay
  #JENI38-C17883-[Layout]Check it layout: Logo, Title, subtitle
  #JENI38-C17885-Check the first time tutorial has 4 dots to indicate 4 pages
  #JENI38-C18566-Check "OK, Got it" button at the last screen of tutorial overlay
  @uispecific @android @ios
  Scenario: JENI38-C17735#C17736#C17882#C17883#C17885#C18566-Tutorial
    Given User is on dashboard
    Then "dashboard" will be displayed
    And User change language to "language"
    And User swipe up until found "card_center_widget"
    And User click "card_center_widget" until "card_center_tutorial_frame" displayed

    Then "card_center_tutorial_frame" will be displayed
    Then "card_center_tutorial_logo" will be displayed
    Then "card_center_tutorial_header" will be displayed
    Then "card_center_tutorial_subtitle" will be displayed

    #Then "card_center_tutorial_bullet_1" will be displayed
    #Then "card_center_tutorial_bullet_2" will be displayed
    #Then "card_center_tutorial_bullet_3" will be displayed
    #Then "card_center_tutorial_bullet_4" will be displayed

    And User expect "card_center_tutorial_header" equal with "card_center_tutorial_1"
    And User click "card_center_tutorial_next"
    And User expect "card_center_tutorial_header" equal with "card_center_tutorial_2"
    And User click "card_center_tutorial_next"
    And User expect "card_center_tutorial_header" equal with "card_center_tutorial_3"
    And User click "card_center_tutorial_next"
    And User expect "card_center_tutorial_header" equal with "card_center_tutorial_4"
    And User expect "card_center_tutorial_ok" equal with "card_center_tutorial_ok"

  @uispecific @android @ios @C17887
  Scenario:JENI38-C17887-Swipe right to left/Next to view the next page

    Given User is on dashboard
    And User access card center from side menu

    And User expect "card_center_tutorial_header" equal with "card_center_tutorial_1"
    And User swipe "card_center_tutorial_frame" to the left
    And User expect "card_center_tutorial_header" equal with "card_center_tutorial_2"
    And User swipe "card_center_tutorial_frame" to the left
    And User expect "card_center_tutorial_header" equal with "card_center_tutorial_3"
    And User swipe "card_center_tutorial_frame" to the left
    And User expect "card_center_tutorial_header" equal with "card_center_tutorial_4"
    And User expect "card_center_tutorial_ok" equal with "card_center_tutorial_ok"

  @uispecific @android @ios
  Scenario:JENI38-C17890-Close the first time tutorial by X button

    Given User is on dashboard
    And User access card center from side menu

    And User click "card_center_close_tutorial"
    Then User expect "card_center_tutorial_frame" doesn't exist

    #tear down
    And User go to dashboard from card center list


  @uispecific @android @ios
  @continuous
  Scenario:JENI38-C17886-Does the first time tutorial carousel?
    
    And User access card center from side menu
    Then User expect "card_center_tutorial_frame" doesn't exist

    #tear down
    And User go to dashboard from card center list

  @uispecific @android @ios
  @continuous
  Scenario:JENI38-C17888-Log-in again, the first time tutorial doesn't show
    
    Given User press back button on device
    Given User is on dashboard
    And User access card center from side menu
    Then User expect "card_center_tutorial_frame" doesn't exist

  @uispecific @android @ios
  Scenario:JENI38-C18568-Check if close the tutorial at the first page

    Given User is on dashboard
    And User access card center from side menu
    And User expect "card_center_tutorial_header" equal with "card_center_tutorial_1"
    And User click "card_center_close_tutorial"
    Then User expect "card_center_tutorial_frame" doesn't exist

  @uispecific @android @ios
  Scenario:JENI38-C18569-Check if close the tutorial at the second page

    Given User is on dashboard
    And User access card center from side menu
    And User expect "card_center_tutorial_header" equal with "card_center_tutorial_1"
    And User click "card_center_tutorial_next"
    And User expect "card_center_tutorial_header" equal with "card_center_tutorial_2"
    And User click "card_center_close_tutorial"
    Then User expect "card_center_tutorial_frame" doesn't exist

  @uispecific @android @ios
  Scenario:JENI38-C18570-Check if close the tutorial at the third page

    Given User is on dashboard
    And User access card center from side menu
    And User expect "card_center_tutorial_header" equal with "card_center_tutorial_1"
    And User click "card_center_tutorial_next"
    And User expect "card_center_tutorial_header" equal with "card_center_tutorial_2"
    And User click "card_center_tutorial_next"
    And User expect "card_center_tutorial_header" equal with "card_center_tutorial_3"
    And User click "card_center_close_tutorial"
    Then User expect "card_center_tutorial_frame" doesn't exist

  @uispecific @android @ios
  Scenario:JENI38-C18571-Check if close the tutorial at the fourth page

    Given User is on dashboard
    And User access card center from side menu
    And User expect "card_center_tutorial_header" equal with "card_center_tutorial_1"
    And User click "card_center_tutorial_next"
    And User expect "card_center_tutorial_header" equal with "card_center_tutorial_2"
    And User click "card_center_tutorial_next"
    And User expect "card_center_tutorial_header" equal with "card_center_tutorial_3"
    And User click "card_center_tutorial_next"
    And User expect "card_center_tutorial_header" equal with "card_center_tutorial_4"
    And User click "card_center_close_tutorial"
    Then User expect "card_center_tutorial_frame" doesn't exist

  #DASHBOARD
  @android @ios @uispecific
  Scenario:JENI15-C47855-The profile picture is appear
    # Waiting CIF No for Inactive Account
    Given User is on dashboard page in English language with "dashboard_active_account"
    Then "dashboard_profil_picture" will be displayed

  @android @ios @uispecific
  Scenario:JENI15-C47857-Content shown on the widget is based on language selected by user (ENG/BAHASA)
    # Waiting CIF No for Inactive Account
    Given User is on dashboard page in English language with "dashboard_active_account"
    And User swipe up until found "awards_widget_free_trans_interbank_en"
    Then "awards_invite_friend_en" will be displayed
    And "awards_widget_invite_desc_en" will be displayed
    And "awards_invite_someone_en" will be displayed
    And "awards_widget_free_transaction" will be displayed
    And "awards_widget_free_trans_interbank_en" will be displayed
    And "awards_widget_free_trans_atm_cash_en" will be displayed

    When User change language to "language_id"
    And User swipe up until found "awards_widget_free_trans_interbank_id"
    Then "awards_invite_friend_id" will be displayed
    And "awards_widget_invite_desc_id" will be displayed
    And "awards_invite_someone_id" will be displayed
    And "awards_widget_free_transaction" will be displayed
    And "awards_widget_free_trans_interbank_id" will be displayed
    And "awards_widget_free_trans_atm_cash_id" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI15-C16827-Check GUI of Top Header when user already logged in
    When User change language to "language_en"
    Then "dashboard_hamburger_icon" will be displayed
    And "dashboard_****_logo" will be displayed
    And "dashboard_notification_icon" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI20-C47842-Verify award widget is enabled for displaying on dashboard for Active User
    And User swipe up until found "awards_invite_someone_en"
    Then "dashboard_awards_title" will be displayed
    And "awards_invite_friend_en" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI20-C47843-Verify award widget is enabled for displaying on dashboard for Inactive User
    And User swipe up until found "awards_invite_someone_en"
    Then "dashboard_awards_title" will be displayed
    And "awards_invite_friend_en" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI20-C47844-Verify award widget is enabled for displaying on dashboard for In-progress User
    And User swipe up until found "awards_invite_someone_en"
    Then "dashboard_awards_title" will be displayed
    And "awards_invite_friend_en" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI20-C47845-Verify award widget is enabled for displaying on dashboard
    And User swipe up until found "awards_widget_free_trans_interbank_en"
    Then "dashboard_awards_title" will be displayed
    And "awards_invite_friend_en" will be displayed
    And "awards_widget_invite_desc_en" will be displayed
    And "awards_invite_someone_en" will be displayed
    And "awards_widget_free_transaction" will be displayed
    And "awards_widget_free_trans_your_quota_en" will be displayed
    And "awards_widget_free_trans_interbank_en" will be displayed
    And "awards_widget_free_trans_atm_cash_en" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI65-C16899-Check Side-panel in mobile should slide out on tapping the hamburger icon
    And User click "dashboard_hamburger_icon"
    And User swipe down until found "dashboard_side_panel"
    Then "dashboard_side_panel" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI65-C16902-Check Hamburger icon should be hidden when Side-panel is sliding out
    When User expect "dashboard_side_panel" is exist
    # And User expect "dashboard_hamburger_icon" doesn't exist

  @android @ios @uispecific @continuous
  Scenario:JENI65-C16903-Check Hamburger icon should be visible when Side-panel is sliding in
    And User click "dashboard_menu"
    Then "dashboard_hamburger_icon" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI65-C16905-Check the side-panel items are clickable and work correctly
    # Given User is on dashboard page in English language with "dashboard_active_account"
    Then "dashboard_****_logo" will be displayed

    When User click "dashboard_hamburger_icon"
    And User click "card_center_menu"
    And User click "tutorial_close"
    Then "card_center_title" will be displayed
    
    When User click "dashboard_hamburger_icon"
    And User click "save_it_side_menu"
    And User click "tutorial_close"
    Then "save_it_title" will be displayed

    When User click "dashboard_hamburger_icon"
    And User click "awards_menu"
    Then "awards_title" will be displayed

    # Currently not available, will use on next build
    # When User click "dashboard_hamburger_icon"
    # And User click "flexi_credit_menu"
    # Then "flexi_credit_title" will be displayed

    When User click "dashboard_hamburger_icon"
    And User click "send_it_menu"
    Then "send_it_page_title" will be displayed

    When User click "dashboard_hamburger_icon"
    And User click "split_bill_menu"
    Then "split_bill_title" will be displayed

    When User click "dashboard_hamburger_icon"
    And User click "pay_me_menu"
    And User click "tutorial_close"
    Then "pay_me_payme_title" will be displayed

    # Currently crash, will use on next build
    # When User click "dashboard_hamburger_icon"
    # And User click "in_and_out_menu"
    # Then "in_and_out_title" will be displayed

    When User click "dashboard_hamburger_icon"
    And User swipe up until found "****_contact_menu"
    And User click "****_contact_menu"
    Then "****_contacts_title" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI65-C16906-Check the side-panel item icons are clickable and work correctly
    When User click "dashboard_hamburger_icon"
    And User swipe down until found "dashboard_menu"
    And User click "dashboard_menu"
    Then "dashboard_****_logo" will be displayed

    When User click "dashboard_hamburger_icon"
    And User click "card_center_menu"
    And User click "tutorial_close"
    Then "card_center_title" will be displayed
    
    When User click "dashboard_hamburger_icon"
    And User click "save_it_side_menu"
    And User click "tutorial_close"
    Then "save_it_title" will be displayed

    When User click "dashboard_hamburger_icon"
    And User click "awards_menu"
    Then "awards_title" will be displayed

    # Currently not available, will use on next build
    # When User click "dashboard_hamburger_icon"
    # And User click "flexi_credit_menu"
    # Then "flexi_credit_title" will be displayed

    When User click "dashboard_hamburger_icon"
    And User click "send_it_menu"
    Then "send_it_page_title" will be displayed

    When User click "dashboard_hamburger_icon"
    And User click "split_bill_menu"
    Then "split_bill_title" will be displayed

    When User click "dashboard_hamburger_icon"
    And User click "pay_me_menu"
    And User click "tutorial_close"
    Then "pay_me_payme_title" will be displayed

    # Currently crash, will use on next build
    # When User click "dashboard_hamburger_icon"
    # And User click "in_and_out_menu"
    # Then "in_and_out_title" will be displayed

    When User click "dashboard_hamburger_icon"
    And User swipe up until found "****_contact_menu"
    And User click "****_contact_menu"
    Then "****_contacts_title" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI287-C18567-[EN]Check "See how to fund your ****" button when user account status is inactive and total balance=0
    #The user's **** account is 'inactive'
    When User click "dashboard_hamburger_icon"
    And User swipe down until found "dashboard_menu"
    And User click "dashboard_menu"
    When User swipe up until found "dashboard_wealth_widget_top_up_tutorial_button"
    And User click "dashboard_wealth_widget_top_up_tutorial_button"
    Then "how_top_up_page_title" will be displayed
    And User wait 5 seconds
    And "how_top_up_page" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI287-C18568-[EN]Check "See how to fund your ****" button when user account status is inprogress and total balance=0
    #The user's **** account is 'inprogress'
    When User click "back_button"
    And User click "dashboard_hamburger_icon"
    And User click "dashboard_menu"
    When User swipe up until found "dashboard_wealth_widget_top_up_tutorial_button"
    And User click "dashboard_wealth_widget_top_up_tutorial_button"
    Then "how_top_up_page_title" will be displayed
    And User wait 5 seconds
    And "how_top_up_page" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI287-C18575-[EN]Check "See how to fund your ****" button when user account status is active and total balance=0
    #The user's **** account is 'active'
    When User click "back_button"
    And User click "dashboard_hamburger_icon"
    And User click "dashboard_menu"
    # Given User is on dashboard page in English language with "dashboard_active_account"
    When User swipe up until found "dashboard_wealth_widget_top_up_tutorial_button"
    And User click "dashboard_wealth_widget_top_up_tutorial_button"
    Then "how_top_up_page_title" will be displayed
    And User wait 5 seconds
    And "how_top_up_page" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI287-C18573-[ID]Check "See how to fund your ****" button when user account status is inactive and total balance=0
    #The user's **** account is 'inactive'
    When User click "back_button"
    And User click "dashboard_hamburger_icon"
    And User swipe up until found "language_label"
    And User check app language is "language_id"
    And User swipe down until found "dashboard_menu"
    And User click "dashboard_menu"
    When User swipe up until found "dashboard_wealth_widget_top_up_tutorial_button_id"
    And User click "dashboard_wealth_widget_top_up_tutorial_button_id"
    Then "how_top_up_page_title" will be displayed
    And User wait 5 seconds
    And "how_top_up_page_id" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI287-C18574-[ID]Check "See how to fund your ****" button when user account status is inprogress and total balance=0
    #The user's **** account is 'inprogress'
    When User click "back_button"
    And User click "dashboard_hamburger_icon"
    And User click "dashboard_menu"
    When User swipe up until found "dashboard_wealth_widget_top_up_tutorial_button_id"
    And User click "dashboard_wealth_widget_top_up_tutorial_button_id"
    Then "how_top_up_page_title" will be displayed
    And User wait 5 seconds
    And "how_top_up_page_id" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI287-C18576-[ID]Check "See how to fund your ****" button when user account status is active and total balance=0
    #The user's **** account is 'active'
    When User click "back_button"
    And User click "dashboard_hamburger_icon"
    And User click "dashboard_menu"
    When User swipe up until found "dashboard_wealth_widget_top_up_tutorial_button_id"
    And User click "dashboard_wealth_widget_top_up_tutorial_button_id"
    Then "how_top_up_page_title" will be displayed
    And User wait 5 seconds
    And "how_top_up_page_id" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI933-C47849-The profile picture is appear
    # Waiting CIF No w/ in-progress account
    When User click "back_button"
    And User click "dashboard_hamburger_icon"
    And User click "dashboard_menu"
    Then "dashboard_profil_picture" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI933-C47850-Verify the Account status shown reads 'Activation in progress' (or Bahasa equivalent)
    # Waiting CIF No w/ in-progress account
    And User click "dashboard_hamburger_icon"
    And User click "awards_menu"
    And User change language to "language_en"
    Then "dashboard_account_inprogress_en" will be displayed

    When User change language to "language_id"
    Then "dashboard_account_inprogress_id" will be displayed   

  @android @ios @uispecific @continuous
  Scenario:JENI933-C47851-Content shown on the widget is based on language selected by user (ENG/BAHASA)
    # Waiting CIF No w/ in-progress account
    When User change language to "language_en"
    Then "dashboard_account_en" will be displayed
    And "dashboard_account_inprogress_en" will be displayed
    And "dashboard_profil_picture" will be displayed

    When User change language to "language_id"
    Then "dashboard_account_id" will be displayed
    And "dashboard_account_inprogress_id" will be displayed
    And "dashboard_profil_picture" will be displayed
  
  @android @ios @uispecific @continuous
  Scenario:JENI933-C47846-Verify Account Activation Widget which Status is 'Activation in progress'
    # Waiting CIF No w/ in-progress account
    When User change language to "language_en"
    Then "dashboard_account_inprogress_en" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI933-C47847-Verify Account Activation Widget which Status is 'Activation in progress'
    # Waiting CIF No w/ in-progress account
    Then "dashboard_account_inprogress_en" will be displayed
  
    When User change language to "language_id"
    Then "dashboard_account_inprogress_id" will be displayed
    And "dashboard_profil_picture" will be displayed
    And User expect "dashboard_account_active_button" doesn't exist

  @android @uispecific @continuous
  Scenario:JENI1904-C67786-[Functionality] Verify Saving Balance: Error returns when retrieving Saving Balance from API
    When User turn off network connection for data and wifi
    Then User expect "dashboard_connection_loss_notification" equal with "connection_loss_notification"
    And User turn on network connection for data and wifi

  @android @uispecific @continuous
  Scenario:JENI1904-C47714-[Functionality] Verify Active Balance: Error returns when retrieving Active Balance from API
    When User turn off network connection for data and wifi
    Then User expect "dashboard_connection_loss_notification" equal with "connection_loss_notification"
    And User turn on network connection for data and wifi

  @android @uispecific @continuous
  Scenario:JENI1904-C67795-[Functionality] Verify Total Balance: Error returns when retrieving Total Balance from API
    When User turn off network connection for data and wifi
    Then User expect "dashboard_connection_loss_notification" equal with "connection_loss_notification"
    And User turn on network connection for data and wifi

  @android @uispecific @continuous
  Scenario:JENI1904-C67798-[Functionality] Verify Active Balance: Error returns when retrieving Active Balance from API
    When User turn off network connection for data and wifi
    Then User expect "dashboard_connection_loss_notification" equal with "connection_loss_notification"
    And User turn on network connection for data and wifi

  @android @uispecific @continuous
  Scenario:JENI1643-C68318-Server is not responding
    When User turn off network connection for data and wifi
    Then User expect "dashboard_connection_loss_notification" equal with "connection_loss_notification"
    And User turn on network connection for data and wifi
  
  @android @uispecific @continuous
  Scenario:JENI1643-C68319-Server stopped responding
    When User turn off network connection for data and wifi
    Then User expect "dashboard_connection_loss_notification" equal with "connection_loss_notification"
    And User turn on network connection for data and wifi
  
  @android @uispecific @continuous
  Scenario:JENI1643-C68320-Internet connection lost while using the app
    When User turn off network connection for data and wifi
    Then User expect "dashboard_connection_loss_notification" equal with "connection_loss_notification"
    And User turn on network connection for data and wifi
  
  @android @uispecific @continuous
  Scenario:JENI1643-C68322-Server timed out
    When User turn off network connection for data and wifi
    Then User expect "dashboard_connection_loss_notification" equal with "connection_loss_notification"
    And User turn on network connection for data and wifi

  #SEND IT
  @android @ios @uispecific
  Scenario:x-x-open send it menu
    Given User is logged in with cif "send_it_credential"
    When User click "dashboard_hamburger_icon"
    And User change language to "language"
    And User wait 4 seconds
    And User access send it from side menu
    Then "send_it_page_add" will be displayed

  @android @ios @uispecific
  Scenario:x-x-open send it menu title 
  	Then "send_it_page_title" will be displayed

  @android @ios @uispecific @continuous
  Scenario:x-x-No contact, tab transfer, favorite, and payment will be displayed
    Then "send_it_tab_transfer" will be displayed
    And "send_it_tab_favorites" will be displayed
    And "send_it_tab_payment" will be displayed

  @android @ios @uispecific @continuous
  Scenario:x-x-No contact, image no contact will be displayed
    Then "send_it_transfer_tab_no_contact_image" will be displayed

  @android @ios @uispecific @continuous
  Scenario:x-x-No contact, message no contact will be displayed
    Then User expect "send_it_transfer_tab_no_contact_message" equal with "send_it_transfer_tab_no_contact_message"

  @android @ios @uispecific @continuous
  Scenario:x-x-transfer tab page
  	And User click "send_it_tab_favorites"
    Then User expect "send_it_tab_payment_no_bill_title" doesn't exist
    And User expect "send_it_page_add" doesn't exist
  
  @android @ios @uispecific @continuous
  Scenario:x-x-payment tab page
  	And User click "send_it_tab_payment"
    Then "send_it_tab_payment_no_bill_title" will be displayed

 #SAVE-IT
 @continuous @android @ios @uispecific
  Scenario:JENI2440-C69815#C69816#C69857-CREATE NEW DEPOSIT button in the Save It overview screen 
  	And User swipe the left menu to the right
  	And User click "save_it_side_menu"
  	And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
  	And User swipe up until found "save_it_create_new_maxi_saver"
  	Then User expect "save_it_create_new_maxi_saver" is exist
  	And User click "save_it_create_new_maxi_saver"
  	And User wait "save_it_create_new_maxi_saver" will be gone
  	And User click "save_it_maxi_saver_overview_ok_got_it_button" until "save_it_maxi_saver_overview_ok_got_it_button" gone
  	Then "save_it_maxi_saver_creation_screen" will be displayed

  @continuous @android @ios @uispecific
  Scenario:JENI2440-C69910-Verify user should be able to see the TD Creation Overview pop-up when user click CREATE NEW DEPOSIT button if user does not have TD
    And User click "back_button" 
  	# And User swipe the left menu to the right
  	# And User click "save_it_side_menu"
  	# And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
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

  @continuous @android @ios @uispecific
  Scenario:JENI2440-C69919-Verify there should be an "i" button for information in the TD initial screen
    And User click "back_button"
  	And User click "hamburger"
  	And User click "save_it_side_menu"
  	And User check and click "card_center_close_tutorial" if exist
  	And User swipe up until found "save_it_create_new_maxi_saver"
  	And User click "save_it_create_new_maxi_saver"
  	And User wait "save_it_create_new_maxi_saver" will be gone
  	And User check and click "save_it_maxi_saver_overview_ok_got_it_button" if exist
  	Then "save_it_maxi_saver_creation_screen" will be displayed
  	And User expect "save_it_maxi_saver_i_button" is exist

  # being refererd by:
  # JENI2440-C69920-Verify user should be able to click "i" button in the TD initial screen 
  # JENI2440-C69921-Verify user will be directed to the TD Creation Overview pop-up after click "i" button in the TD initial screen
  # passes
  @continuous @android @ios @uispecific
  Scenario:JENI2440-C69920#C69921-Verify TD Creation Overview pop-up after click "i" button in the TD initial screen 
  	And User click "save_it_maxi_saver_i_button"
  	Then "save_it_maxi_saver_overview" will be displayed

# being referred by:
# JENI2440-C69922-[Mobile] Verify there should be back arrow button in the TD initial screen
# JENI2440-C69923-[Mobile] Verify user should be able to click the back arrow button in the TD initial screen 
# JENI2440-C69924-[Mobile] Verify user will be directed to the Save It Overview screen after click the back arrow button
  @continuous @android @ios @uispecific
  Scenario:JENI2440-C69922#C69923#C69924-User will be directed to the Save It Overview screen after click the back arrow button
    And User check and click "save_it_maxi_saver_overview_ok_got_it_button" if exist
    And User click "back_button"
    # And User click "hamburger"
    # And User click "dashboard_menu"
    And User click "hamburger"
  	And User click "save_it_side_menu"
  	And User check and click "card_center_close_tutorial" if exist
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
# JENI2550-C69846-Verify widget is empty 
# JENI2550-C69847-Verify widget when user don't have DS saving 
# JENI2550-C69848-Verify widget when user don't have TD saving 
@continuous @android @ios @uispecific
Scenario:JENI2550-C69846#C69847#C69848-Verify Save It Widget UI when user don't have any saving
  And User click "hamburger"
  And User click "dashboard_menu"
  Then User expect "wealth_widget_total_balance" equal with "wealth_widget_total_balance_zero_balance"
  And User swipe up until found "save_it_widget_create_maxi_saver"
  Then User expect "save_it_widget_create_flexi_saver" is exist
  Then User expect "save_it_widget_dream_saver_balance" doesn't exist
  Then User expect "save_it_widget_create_dream_saver" is exist
  Then User expect "save_it_widget_maxi_saver_balance" doesn't exist
  Then User expect "save_it_widget_create_maxi_saver" is exist


 #JENI 2541
@continuous @android @ios @uispecific
Scenario:JENI2541-C70374-[Functional] Access 'Save it's first time tutorial from navigation menu 
  And User click "hamburger"
  And User click "dashboard_menu"
  And User click "hamburger"
  And User click "save_it_side_menu"
  Then "card_center_tutorial_frame" will be displayed
  
@continuous @android @ios @uispecific
Scenario:JENI2541-C70375-[Functional] Access 'Save it's first time tutorial from widget 
  And User click "hamburger"
  And User click "dashboard_menu"
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

# JENI 2651
@continuous @android @ios @uispecific
Scenario:JENI2651-C70454-Access product overview when create MS from navigation menu 
  And User check and click "tutorial_close" if exist
  And User click "hamburger"
  And User click "save_it_side_menu"
  And User click "tutorial_close" until "card_center_tutorial_frame" gone
  And User swipe up until found "save_it_create_new_maxi_saver"
  And User click "save_it_create_new_maxi_saver"
  Then "save_it_maxi_saver_overview" will be displayed

@continuous @android @ios @uispecific
Scenario:JENI2651-C75715-Access product overview when create MS from widget 
  And User click "save_it_maxi_saver_overview_ok_got_it_button"
  And User click "back_button"
  And User click "hamburger"
  And User click "dashboard_menu"
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
  And User click "back_button"
  And User swipe the left menu to the right
  Then "dashboard_menu" will be displayed
  And User click "dashboard_menu"

#SPLIT BILL
  @android @ios @uispecific @continuous
  Scenario:JENI1446-C47566-Check Done button will disable by default when go to Split Bill contact list
    Given User click "dashboard_hamburger_icon"
    And User click "split_bill_label"
    #This commenting out since the enabled atrribute always appear as true
    #And User expect "split_bill_done_button" is disabled

  @android @ios @uispecific @continuous
  Scenario:JENI2118-C63977-Verify Input manually screen
    Given User click "dashboard_hamburger_icon"
    And User click "split_bill_label"
    When User click "split_bill_input_manually_button"
    Then User expect "split_bill_input_manualy_description_text_lable" is exist
    And User expect "split_bill_input_manually_textfield" is exist
    And User expect "split_bill_add_button" is exist
    #This commenting-out since this is not develop yet by developer
    #And User expect "split_bill_add_button" is disable
    And User expect "split_bill_cancel_button" is exist
    #This additional steps for smoke test needs and not included in testrail
    And User click "split_bill_cancel_button"

  @android @ios @uispecific @continuous
  Scenario:JENI2118-C63978-Pop-up window will be close if user click cancel button
    Given User click "dashboard_hamburger_icon"
    And User click "split_bill_label"
    When User click "split_bill_input_manually_button"
    Then User expect "split_bill_input_manualy_description_text_lable" is exist
    And User click "split_bill_cancel_button"
    Then User expect "split_bill_input_manualy_description_text_lable" doesn't exist

  @android @ios @uispecific @continuous
  Scenario:JENI1547-C67437-Verify search button available in the split bill contact screen
    Given User click "dashboard_hamburger_icon"
    And User click "split_bill_label"
    And User expect "search_loupe_icon" is exist

  @android @ios @uispecific @continuous
  Scenario:JENI1547-C67458-Search field bar will be expand after click search icon
    Given User click "dashboard_hamburger_icon"
    And User click "split_bill_label"
    Then User expect "search_loupe_icon" is exist
    And User click "search_loupe_icon"
    Then User expect "split_bill_search_textfield" is exist
    #This additional steps for smoke test needs and not included in testrail
    And User click "split_bill_cancel_search_button"

  @android @ios @uispecific @continuous
  Scenario:JENI1547-C67462-User able to types character in the search field bar
    Given User click "dashboard_hamburger_icon"
    And User click "split_bill_label"
    Then User expect "search_loupe_icon" is exist
    And User click "search_loupe_icon"
    Then User expect "split_bill_search_textfield" is exist
    And User fill "split_bill_search_textfield" with "split_bill_add_note_textfield"
    #This additional steps for smoke test needs and not included in testrail
    Then User click "split_bill_clear_search_button"
    And User click "split_bill_cancel_search_button"

  @android @ios @uispecific @continuous
  Scenario:JENI1547-C67468-Click cancel button to close search bar field
    Given User click "dashboard_hamburger_icon"
    And User click "split_bill_label"
    Then User expect "search_loupe_icon" is exist
    And User click "search_loupe_icon"
    Then User expect "split_bill_search_textfield" is exist
    And User click "split_bill_cancel_search_button"
    Then User expect "split_bill_search_textfield" doesn't exist

  @android @ios @uispecific @continuous
  Scenario:JENI1547-C67474-Verify "Cancel" button available in the search bar field
    Given User click "dashboard_hamburger_icon"
    And User click "split_bill_label"
    Then User expect "search_loupe_icon" is exist
    And User click "search_loupe_icon"
    Then User expect "split_bill_cancel_search_button" is exist
    #This additional steps for smoke test needs and not included in testrail
    Then User click "split_bill_cancel_search_button"

  @android @ios @uispecific @continuous
  Scenario:JENI1547-C67476-Click "Cancel" button to close search bar field
    Given User click "dashboard_hamburger_icon"
    And User click "split_bill_label"
    Then User expect "search_loupe_icon" is exist
    And User click "search_loupe_icon"
    Then User expect "split_bill_cancel_search_button" is exist
    And User click "split_bill_cancel_search_button"
    Then User expect "split_bill_search_textfield" doesn't exist
    And User expect "search_loupe_icon" is exist
    #This additional steps for smoke test needs and not included in testrail
    Given User click "dashboard_hamburger_icon"
    And User click "dashboard_menu"

#JENI-5099
  @android @uispecific @continuous
  Scenario:JENI5099-C93236-Scenario : see "x" clear button
    Given User click "dashboard_hamburger_icon"
    And User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_user_cashtag_4"
    And User click "split_bill_add_button"
    And User click "split_bill_input_manually_button"
    And User fill "split_bill_input_manually_textfield" with "split_bill_user_cashtag_5"
    And User click "split_bill_add_button"
    And User click "split_bill_done_button"
    And User fill "split_bill_total_amount_field" with "split_bill_amount_150000"
    And User click "split_bill_amount_field_recipient_1"
    And User expect "split_bill_close_amount_field_button_1" is exist
    Then User fill "split_bill_amount_field_recipient_1" with "split_bill_amount_100000"

  @android @uispecific @continuous
  Scenario:JENI5099-C93237-Scenario : see "x" clear button
    And User fill "split_bill_total_amount_field" with "split_bill_amount_150000"
    And User click "split_bill_amount_field_recipient_1"
    And User click "split_bill_close_amount_field_button_1" 
    Then User expect "split_bill_amount_field_recipient_1" equal with "split_bill_amount_0"
    Then User expect "split_bill_amount_field_recipient_2" equal with "split_bill_amount_75000"

  @android @uispecific @continuous
  Scenario:JENI5099-C93238-Scenario : Can't make all recipient's amount to 0
    And User fill "split_bill_total_amount_field" with "split_bill_amount_150000"
    And User click "split_bill_amount_field_recipient_1"
    And User click "split_bill_close_amount_field_button_1"
    And User click "split_bill_amount_field_recipient_2"
    And User click "split_bill_close_amount_field_button_2"
    And User click "split_bill_send_request_button"
    Then "top_notification" will be displayed

  @android @uispecific @continuous
  Scenario:JENI5099-C93239-Scenario : Disable Send Money button
    And User fill "split_bill_total_amount_field" with "split_bill_amount_0"
    And User click "split_bill_send_request_button"
    Then User expect "split_bill_title_text" doesn't exist
    And User click "back_button"
    And User click "dashboard_hamburger_icon"
    Then User click "dashboard_menu"

#FLEXI SAVER
  @android @ios @uispecific @continuous
  Scenario: JENI3076-C75842-Never create Flexi Saver account - Dashboard Widget
    Given User swipe up until found "save_it_title_widget_menu"
    And User expect "save_it_flexi_saver_start_button_widget" is exist

  @android @ios @uispecific @continuous
  Scenario: JENI3076-C75844-Click Dashboard Widget
    Given User swipe up until found "save_it_title_widget_menu"
    And User click "save_it_flexi_saver_title_dashboard"
    And User click "tutorial_close"
    And User expect "save_it_flexi_saver_title_screen" is exist
    #This additional steps for smoke test needs and not included in testrail
    Then User click "save_it_flexi_saver_back_button"

  @android @ios @uispecific @continuous
  Scenario: JENI3076-C75845-Click header of Save It Dashboard Widget
    Given User click "dashboard_hamburger_icon"
    And User click "dashboard_menu"
    And User swipe up until found "save_it_title_widget_menu"
    And User click "save_it_title_widget_menu"
    #And User click "tutorial_close"
    Then User expect "save_it_title" is exist
    #This additional steps for smoke test needs and not included in testrail
    Given User click "dashboard_hamburger_icon"
    And User click "dashboard_menu"

  #NOTIFICATION CENTER
  @android @ios @uispecific
  Scenario:JENI328-C47595-Able to open the bell icon
    Given User is on dashboard page in English language with "dashboard_active_account"
    And User click "dashboard_notification_icon"
    Then "notification_title" will be displayed
    And "notification_request_tab" will be displayed
    And "notification_news_tab" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI328-CC47607-Able to open the bell icon
    Then "notification_title" will be displayed
    And "notification_request_tab" will be displayed
    And "notification_news_tab" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI328-C47608-Descriptive text shown while apps has 0 notification
    Then "notification_empty_image" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI328-CC47609-The bell icon shown while apps has 0 notification
    Then "notification_empty_image" will be displayed

  #AWARDS
  @android @ios @uispecific
  Scenario:JENI934-C48009-Verify Layout and Navigation to 'Awards Landing Page' signed in w/ active account
    # Waiting CIF No w/ active account
    Given User is on dashboard page in English language with "awards_active_account"
    And User swipe up until found "dashboard_awards_title"
    And User click "dashboard_awards_title"
    Then "awards_title" will be displayed
    And "awards_invite_friend_en" will be displayed
    And "awards_invite_now" will be displayed
    And "awards_free_transaction" will be displayed
    And "awards_free_trans_see_detail" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI934-C48011-Verify 'Award' link signed in w/ active account
    # Waiting CIF No for Active Account
    Then "awards_title" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI934-C48012-Verify Layout and Navigation to 'Awards Landing Page' signed in w/ in-progress account
    # Waiting CIF No w/ in-progress account
    Then "awards_title" will be displayed
    And "awards_invite_friend_en" will be displayed
    And "awards_invite_now" will be displayed
    And "awards_free_transaction" will be displayed
    And "awards_free_trans_see_detail" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI934-C48014-Verify 'Award' link signed in w/ in-progress account
    # Waiting CIF No for In-progress Account
    Then "awards_title" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI934-C48015-Verify Layout and Navigation to 'Awards Landing Page' signed in w/ inactive account
    # Waiting CIF No w/ inactive account
    Then "awards_title" will be displayed
    And "awards_invite_friend_en" will be displayed
    And "awards_invite_now" will be displayed
    And "awards_free_transaction" will be displayed
    And "awards_free_trans_see_detail" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI934-C48018-Verify 'Awards' link signed in w/ inactive account
    # Waiting CIF No for Inactive Account
    Then "awards_title" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI1034-C47859-Verify free transactions section
    And User click "awards_free_trans_see_detail"
    Then "back_button" will be displayed
    And User expect "awards_free_trans_happy" is exist
    And User expect "awards_free_trans_your_quota" is exist
    And User expect "awards_free_trans_interbank" is exist
    And User expect "awards_free_trans_atm_cash" is exist

    When User click "back_button"
    Then "awards_title" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI1034-C47860-Verify the number of free transaction changed
    And User click "awards_free_trans_see_detail"
    Then "back_button" will be displayed
    And User expect "awards_free_trans_happy" is exist
    And User expect "awards_free_trans_your_quota" is exist
    And User expect "awards_free_trans_interbank" is exist
    And User expect "awards_free_trans_atm_cash" is exist
    #Will continue after awards back-end has been implemented

  @android @ios @uispecific @continuous
  Scenario:JENI1039-C47979-Verify the Back button when user comes from Dashboard
    When User click "back_button"
    And User click "dashboard_hamburger_icon"
    And User click "dashboard_menu"
    And User swipe up until found "awards_invite_someone_en"
    And User click "awards_invite_someone_en"
    Then "awards_invite_someone_en" will be displayed
    When User click "back_button"
    Then "dashboard_****_logo" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI1039-C48079-Verify the Back button when user comes from Award Landing page
    And User click "dashboard_hamburger_icon"
    And User click "awards_menu"
    Then "awards_invite_friend_en" will be displayed

    When User click "awards_invite_now"
    Then "awards_invite_someone_en" will be displayed

    When User click "back_button"
    Then "awards_title" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI1039-C47977-Verify user is able to click 'Send Invitation' button
    And User click "dashboard_hamburger_icon"
    And User click "dashboard_menu"
    And User swipe up until found "awards_invite_someone_en"
    And User click "awards_invite_someone_en"

    Then "awards_title_screen_en" will be displayed
    And User click "awards_invite_someone_en"

  @android @ios @uispecific
  Scenario:JENI1039-C47978-Verify user is able to read content based on selected language
    Given User is on dashboard page in English language with "awards_inactive_account" 
    And User swipe up until found "awards_invite_someone_en"
    And User click "awards_invite_someone_en"
    Then User expect "awards_title_screen_en" equal with "awards_title_screen_en"
    And User expect "awards_description_en" equal with "awards_description_en"
    And User expect "awards_how_en" equal with "awards_how_en"

    When User click "back_button"
    And User change language to "language_id"
    And User swipe up until found "awards_invite_someone_id"
    And User click "awards_invite_someone_id"
    Then User expect "awards_title_screen_id" equal with "awards_title_screen_id"
    And User expect "awards_description_id" equal with "awards_description_id"
    And User expect "awards_how_id" equal with "awards_how_id"

#DREAM SAVER
  @android @ios @uispecific @continuous
  # JENI4186-C80943-[Scenario] Create Name for Dream Saver
  # JENI4186-C81067-[Function] Verify The DS Name will be Cut Off if User Input More Than 30 Characters
  # JENI4186-C81068-[Function] Verify There is an Error Notification if User leave the field blank
  Scenario:JENI4186-C80943#C81067#C81068-Create Name for Dream Saver
    And User click "hamburger"
    And User click "save_it_side_menu"
    And User click "card_center_close_tutorial" until "card_center_close_tutorial" gone
    And User click "save_it_create_new_dream_saver"
    And User check and click "save_it_maxi_saver_overview_ok_got_it_button" if exist
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

  @android @ios @uispecific @continuous
  Scenario:JENI4186-C81069-[Function] Verify The Next Button is Disable when User Input more than 30 char or field is blank
    And User fill "save_it_dream_saver_name_input_field" with "save_it_dream_saver_empty"
    And User click "save_it_dream_saver_next_button"
    Then User expect "save_it_dream_saver_name_input_hint" equal with "save_it_dream_saver_name_field_blank_notification"

  @android @ios @uispecific @continuous
  # also include for other scenarios, which:
  # JENI4195-C80944-[Scenario] Verify Dream Saver Target Amount
  # JENI4195-C81070-[Function] Verify User cannot input the Target Amount less than Minimum Target Amount (Currently Min. Target Amount is 100,000) 
  # JENI4195-C81071-[Function] Verify User cannot input the Target Amount more than Maximum Target Amount (Currently Min. Target Amount is 1,000,000,000) 
  Scenario:JENI4195-C80944#C81070#C81071-Verify Dream Saver Target Amount
    When User fill "save_it_dream_saver_name_input_field" with "save_it_dream_saver_name_input_1"
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

  @android @ios @uispecific @continuous
  Scenario:JENI4195-C81072-[Function] Verify User only able input the Numeric Characters     
    And User fill "save_it_dream_saver_target_amount_input_field" with "save_it_dream_saver_target_amount_input"
    Then User expect "save_it_dream_saver_target_amount_hint" doesn't exist
    And User fill "save_it_dream_saver_target_amount_input_field" with "save_it_dream_saver_name_input_1"
    Then User expect "save_it_dream_saver_target_amount_hint" is exist
    And User expect "save_it_dream_saver_target_amount_hint" equal with "save_it_dream_saver_target_amount_minimum_notification"  

  @android @ios @uispecific @continuous
  Scenario:JENI4195-C80945-[Scenario] Verify the activate of Next Button
    When User fill "save_it_dream_saver_name_input_field" with "save_it_dream_saver_name_input_1"
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
    # blocked by issue, still in progress  

  # JENI-4393
  @android @ios @uispecific @continuous
  Scenario:JENI41393-C80946-[Scenario] Upload picture for new Dream Saver 
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
    #This additional steps for smoke test needs and not included in testrail
    Then User click "back_button"

   #PAYME
  @ios @android @uispecific
  Scenario:JENI824-C45930-Check Tutorial will show when **** User come to "Pay Me" screen in the first time
    Given User is logged in with cif "pay_me_cif"
    And User click "dashboard_hamburger_icon"
    And User scroll to "pay_me_****_help_menu"
    And User check app language is "language"
    And User click "pay_me_menu"
    Then User expect "pay_me_close_button_on_popup_tutorial" is exist
    And User expect "pay_me_next_tutorial_button" displayed 3 times with the last button "pay_me_ok_got_tutorial_button" equal with text "pay_me_ok_got_tutorial_text"
    Then User click "dashboard_hamburger_icon"
    And User click "logout_menu"

  @ios @android @uispecific
  Scenario:JENI824-C45931-Check X icon in "PayMe first time Tutorial" overlay
    Given User is logged in with cif "pay_me_cif"
    And User click "dashboard_hamburger_icon"
    And User scroll to "pay_me_****_help_menu"
    And User check app language is "language"
    And User click "pay_me_menu"
    And User click "pay_me_close_button_on_popup_tutorial"
    Then User expect "pay_me_payme_title" is exist
    When User click "dashboard_hamburger_icon"
    And User click "logout_menu"

  @ios @android @uispecific
  Scenario:JENI824-C45932-Check "OK, GOT IT!" button in "Payme first time Tutorial" overlay
    Given User is logged in with cif "pay_me_cif"
    And User click "dashboard_hamburger_icon"
    And User scroll to "pay_me_****_help_menu"
    And User check app language is "language"
    And User click "pay_me_menu"
    Then User expect "pay_me_close_button_on_popup_tutorial" is exist
    And User expect "pay_me_next_tutorial_button" displayed 3 times with the last button "pay_me_ok_got_tutorial_button" equal with text "pay_me_ok_got_tutorial_text"
    Then User expect "pay_me_close_button_on_popup_tutorial" doesn't exist
    And User expect "pay_me_payme_title" is exist
    When User click "dashboard_hamburger_icon"
    And User click "logout_menu"

  @android @uispecific
  Scenario:JENI824-C45933-Check Swipe Left/Right in "Payme first time Tutorial" overlay
    Given User is logged in with cif "pay_me_cif"
    And User click "dashboard_hamburger_icon"
    And User scroll to "pay_me_****_help_menu"
    And User check app language is "language"
    And User click "pay_me_menu"
    Then User expect "pay_me_close_button_on_popup_tutorial" is exist
    And User swipe "pay_me_tutorial_frame" to the left
    Then User expect "pay_me_second_page_tutorial_text" is exist
    When User swipe "pay_me_tutorial_frame" to the left
    Then User expect "pay_me_third_page_tutorial_text" is exist
    And User swipe "pay_me_tutorial_frame" to the right
    Then User expect "pay_me_second_page_tutorial_text" is exist
    And User swipe "pay_me_tutorial_frame" to the right
    Then User expect "pay_me_first_page_tutorial_text" is exist
    And User click "pay_me_close_button_on_popup_tutorial"
    When User click "dashboard_hamburger_icon"
    And User click "logout_menu"

  @ios @android @uispecific
  Scenario:JENI824-C45934-Check Next/Previous button in "Payme first time Turorial" overlay
    Given User is logged in with cif "pay_me_cif"
    And User click "dashboard_hamburger_icon"
    And User scroll to "pay_me_****_help_menu"
    And User check app language is "language"
    And User click "pay_me_menu"
    Then User expect "pay_me_close_button_on_popup_tutorial" is exist
    And User click "pay_me_next_tutorial_button"
    Then User expect "pay_me_second_page_tutorial_text" is exist
    When User click "pay_me_next_tutorial_button"
    Then User expect "pay_me_third_page_tutorial_text" is exist
    And User click "pay_me_prev_tutorial_button"
    Then User expect "pay_me_second_page_tutorial_text" is exist
    When User click "pay_me_prev_tutorial_button"
    Then User expect "pay_me_first_page_tutorial_text" is exist

  @android @ios @uispecific  @continuous
  Scenario:JENI628-C45275-Check Character counter will count down when input chars in Notes field
    And User click "pay_me_close_button_on_popup_tutorial"
    Then User expect "pay_me_payme_title" is exist

  @android @ios @uispecific  @continuous
  Scenario:JENI648-C45281-Check "Input Manually" popup from PayMe Contact Screen
    When User click "pay_me_input_manually_button"
    Then User expect "pay_me_input_manually_pop_up" is exist

  @android @ios @uispecific @continuous
  Scenario:JENI648-C45284-Check Cancel button in "Input Manually" popup
    And User expect "pay_me_cancel_button" is exist
    When User click "pay_me_cancel_button"
    Then User expect "pay_me_input_manualy_description_text_lable" doesn't exist
    And User expect "pay_me_input_textfield" doesn't exist
    And User expect "pay_me_input_manualy_information_text_lable" doesn't exist

  @android @ios @uispecific @continuous
  Scenario:JENI648-C45287-Check Layout "Input Manually" popup
    When User click "pay_me_input_manually_button"
    Then User expect "pay_me_input_manualy_text_lable" is exist
    And User expect "pay_me_input_manualy_description_text_lable" is exist
    And User expect "pay_me_input_textfield" is exist
    And User expect "pay_me_input_manualy_information_text_lable" is exist
    And User expect "pay_me_add_button" is exist
    And User expect "pay_me_cancel_button" is exist

  @android @ios @uispecific @continuous
  Scenario:JENI648-C45309-Check ADD button only enable when input a valid email
    And User fill "pay_me_input_textfield" with "pay_me_****_recipient_user_email"
    #This commenting out since the button attribute is not yet implemented
    #Then User expect "pay_me_add_button" is clickable
    Then User click "pay_me_cancel_button"

  @android @ios @uispecific @continuous
  Scenario:JENI631-C45962-Check Search field bar appear when click on Search icon
    And User click "search_loupe_icon"
    Then User expect "cancel_button_search" is exist
    And User click "cancel_button_search"

  @android @ios @uispecific @continuous
  Scenario:JENI631-C45967-Check Cancel button in Search field bar
    And User click "search_loupe_icon"
    Then User expect "cancel_button_search" is exist
    When User click "cancel_button_search"
    Then User expect "pay_me_search_textfield" doesn't exist

  @android @ios @uispecific @continuous
  Scenario:JENI631-C45968-Check Close icon in Search field bar
    And User click "search_loupe_icon"
    When User fill "pay_me_search_textfield" with "pay_me_cashtag_1"
    And User click "payme_clear_button_search"
    Then User expect "cancel_button_search" is exist
    And User click "cancel_button_search"
    Then User click "dashboard_hamburger_icon"

  #**** CONTACT
  @android @ios @uispecific @continuous
  Scenario: JENI3900-C81076-add contact manually option (mobile version)
    And User click "****_contacts_menu"
    When User click "****_contacts_add_contacts_button"
    Then User expect "****_contacts_add_new_bank_contacts_button" is exist
    And User expect "****_contacts_add_from_phone_contacts_button" is exist
    Then User click "****_contacts_button_cancel"

  @android @ios @uispecific @continuous
  Scenario: JENI3900-C81078-add new bank contact screen
    When User click "****_contacts_add_contacts_button"
    Then User expect "****_contacts_add_new_bank_contacts_button" is exist
    And User click "****_contacts_add_new_bank_contacts_button"
    Then User expect "****_contacts_bank_dropdown_list" is exist
    And User expect "****_contacts_bank_accounts_text_field" is exist
    #This is commenting out since to check enable/disabled button is not implemented yet by developer
    #And User expect "****_contacts_next_button" is disabled
    #And User expect "****_contacts_check_bank_account_button" is disabled
    And User click "****_contacts_back_button"

  @android @ios @uispecific @continuous
  Scenario: JENI3900-C81079-bank selection field
    When User click "****_contacts_add_contacts_button"
    Then User expect "****_contacts_add_new_bank_contacts_button" is exist
    And User click "****_contacts_add_new_bank_contacts_button"
    Then User expect "****_contacts_bank_dropdown_list" is exist
    And User click "****_contacts_bank_dropdown_list"
    Then User expect "****_contacts_search_bank_list" is exist
    And User hide the keyboard
    Then User click "****_contacts_search_icon"
    And User click "****_contacts_back_button"

  @android @ios @uispecific @continuous
  Scenario: JENI3900-C81080-search bank
    When User click "****_contacts_add_contacts_button"
    Then User expect "****_contacts_add_new_bank_contacts_button" is exist
    And User click "****_contacts_add_new_bank_contacts_button"
    Then User expect "****_contacts_bank_dropdown_list" is exist
    And User click "****_contacts_bank_dropdown_list"
    Then User expect "****_contacts_search_bank_list" is exist
    #User search bank account with search criteria as "BCA"
    And User fill "****_contacts_search_bank_list" with "****_contacts_selected_bank_from_search_field"
    Then User click "****_contacts_search_icon"
    And User click "****_contacts_back_button"

  @android @ios @uispecific @continuous
  Scenario: JENI3899-C84104-add from device contact option
    And User click "****_contacts_add_contacts_button"
    Then User expect "****_contacts_add_new_bank_contacts_button" is exist
    Then User expect "****_contacts_add_from_phone_contacts_button" is exist
    And User click "****_contacts_button_cancel"

  @android @ios @uispecific @continuous
  Scenario: JENI3899-C84106-no device contact
    And User click "****_contacts_add_contacts_button"
    And User click "****_contacts_add_from_phone_contacts_button"
    Then User expect "****_contact_no_device_contact_label" is exist
    And User click "****_contacts_back_button"

  @android @ios @uispecific @continuous
  Scenario: JENI1201-C80919-Empty **** Contact screen
    Then User expect "****_contact_no_device_contact_label" is exist

  @android @ios @uispecific @continuous
  Scenario: JENI1201-C80924/C80925-[Translation]Content of **** Contact list show correctly with EN/Bahasa version
    Then User expect "****_contacts_contact_tab" equal with "****_contacts_title_text"
    Then User expect "****_contacts_bills_tab" equal with "****_contatcs_bills_text"
    Then User expect "****_contacts_add_contact_button" equal with "****_contatcs_add_contact_button_text"

#JENI-5175
  @android @uispecific @continuous
  Scenario: JENI5175-C92500-**** Bank - Valid Account Number - begin with 900
    And User click "****_contacts_add_contacts_button"
    And User click "****_contacts_add_new_bank_contacts_button"
    And User click "****_contacts_bank_dropdown_list"
    And User click "****_contacts_header_search_input"
    And User hide the keyboard
    Then User select "****_contacts_dropdown_list" dropdown with "****_contacts_bank_dropdown_list_****"
    And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_account_number_begin_with_900"
    Then User expect "****_contacts_check_bank_account_button" is exist

  @android @uispecific @continuous
  Scenario: JENI5175-C92500-**** Bank - Valid Account Number - begin with 001
    And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_account_number_begin_with_001"
    Then User expect "****_contacts_check_bank_account_button" is exist  

  @android @uispecific @continuous
  Scenario: JENI5175-C92501-Scenario : **** Bank - Enable Check button - **** account number
    And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_****_account_number"
    Then User expect "****_contacts_check_bank_account_button" is exist  

  @android @uispecific @continuous
  Scenario: JENI5175-C92501-Scenario : **** Bank - Enable Check button - begin with 08
    And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_****_account_number"
    Then User expect "****_contacts_check_bank_account_button" is exist 

  @android @uispecific @continuous
  Scenario: JENI5175-C92501-Scenario : **** Bank - Enable Check button - begin with 628
    And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_phone_number_begin_with_628"
    Then User expect "****_contacts_check_bank_account_button" is exist  

  @android @uispecific @continuous
  Scenario: JENI5175-C92501-Scenario : **** Bank - Enable Check button - begin with +628
    And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_phone_number_begin_with_+628"
    Then User expect "****_contacts_check_bank_account_button" is exist 

  @android @uispecific @continuous
  Scenario: JENI5175-C92502-Scenario : Other Bank - Enable Check button
    And User click "****_contacts_bank_dropdown_list"
    And User click "****_contacts_header_search_input"
    And User hide the keyboard
    Then User select "****_contacts_dropdown_list" dropdown with "****_contacts_bank_dropdown_list_bca"
    And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_phone_number_begin_with_+628"
    Then User expect "****_contacts_check_bank_account_button" is exist 

#****-3900
  @android @uispecific @continuous
  Scenario: JENI3900-C81086-Scenario : rename Friendly Name (Display Name) 
    And User click "****_contacts_add_contacts_button"
    And User click "****_contacts_add_new_bank_contacts_button"
    And User click "****_contacts_bank_dropdown_list"
    And User click "****_contacts_header_search_input"
    And User hide the keyboard
    Then User select "****_contacts_dropdown_list" dropdown with "****_contacts_bank_dropdown_list_****"
    And User fill "****_contacts_bank_accounts_text_field" with "****_contacts_****_account_number_2"
    And User click "****_contacts_check_bank_account_button"
    And User click "****_contacts_add_****_bank_contact_submit"
    And User check and click "****_contacts_move_here_button" if exist
    And User fill "****_contacts_friendly_name_text_field" with "****_contacts_friendly_name_35_char"
    Then User expect "****_contacts_note_countdown_text" equal with "****_contacts_note_countdown_text_zero"

  @android @uispecific @continuous
  Scenario: JENI3900-C81087-Scenario : empty name field
    And User fill "****_contacts_friendly_name_text_field" with "****_contacts_friendly_name_0_char"
    And User click "****_contacts_edit_contact_save_button"
    Then User expect "****_contacts_password_verification_form" doesn't exist

  @android @uispecific @continuous
  Scenario: JENI3900-C81090-Scenario : select Back button
    And User click "back_button"
    Then User expect "****_contacts_discard_popup_window" is exist
    Then User expect "****_contacts_discard_changes_cancel_button" is exist
    Then User expect "****_contacts_discard_changes_yes_button" is exist

  @android @uispecific @continuous
  Scenario: JENI3900-C81091-Scenario : Discard Change
    And User fill "****_contacts_friendly_name_text_field" with "****_contacts_friendly_name_aaa_char"
    And User click "back_button"
    And User click "****_contacts_discard_changes_yes_button" 
    Then "****_contacts_menu_screen" will be displayed
    Then User expect "****_contacts_selected_contact_list" doesn't exist 

  #INANDOUT
  @android @ios @uispecific
  Scenario:JENI1153-C17904-Check the arrow link on the top right of In & Out Widget
    Given User is on in and out page in English language with "in_and_out_static"
    Then "in_and_out_title" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI1153-C47766-Verify that Rp/IDR is prefixed to the active balance to indicate currency name in Bahasa/English respectively
    Then "in_and_out_currency" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI1159-C67380-[Functionality] Verify 'DONE' button is enabled when user fill 'From' amount is less than 'To' amount
    When User click "in_and_out_filter_button"
    And User set filter for amount range from 999 to 912134566
    Then "in_and_out_filter_category" will be displayed
 
  @android @ios @uispecific @continuous
  Scenario:JENI1159-C67388-[Functionality] Verify 'DONE' button is disabled if 'From' and 'To' value are preset to the default value 0
    And User click "back_button"
    When User click "in_and_out_filter_button"
    And User click "in_and_out_amount_menu"
    Then User click "in_and_out_done_button" until "in_and_out_amount_from_texfield" displayed

  @android @ios @uispecific @continuous
  Scenario:JENI1159-C67382-[Functionality] Verify 'DONE' button is enabled if user has cleared an existing applied amount range using 'CLEAR' button  
    And User fill "in_and_out_amount_from_texfield" with "in_and_out_amount_from"
    And User fill "in_and_out_amount_to_texfield" with "in_and_out_amount_to"
    And User click "in_and_out_clear_button"
    Then User click "in_and_out_done_button" until "in_and_out_filter_category" displayed

  @android @uispecific @continuous
  Scenario:JENI1159-C67403-[Functionality] Clicking back button in the header after user inputs a valid amount range should not save the changes
    And User click "back_button"
    When User click "in_and_out_filter_button"
    And User click "in_and_out_amount_menu"
    And User fill "in_and_out_amount_from_texfield" with "in_and_out_amount_from"
    And User fill "in_and_out_amount_to_texfield" with "in_and_out_amount_to"
    And User press back button on device
    Then User expect "in_and_out_amount_filter_text" doesn't exist

  @android @ios @uispecific @continuous
  Scenario:JENI1159-C67406-[Functionality] Verify that 'From' and 'To' fields meet the desired requirements
    And User click "back_button"
    When User click "in_and_out_filter_button"
    And User click "in_and_out_amount_menu"
    Then User expect "in_and_out_amount_from_texfield" equal with "zero_value"
    And User expect "in_and_out_amount_to_texfield" equal with "zero_value"
    When User fill "in_and_out_amount_from_texfield" with "correct_cashtag_1"
    And User expect "in_and_out_amount_from_texfield" equal with "in_and_out_amount_range_zero"  
    Then User fill "in_and_out_amount_to_texfield" with "correct_cashtag_1"
    And User expect "in_and_out_amount_to_texfield" equal with "in_and_out_amount_range_zero" 
    And User fill "in_and_out_amount_from_texfield" with "in_and_out_amount_range_overlimit"
    # Commented until bug fixing
    # And User expect "in_and_out_amount_from_texfield" equal with 20 characters
    And User fill "in_and_out_amount_to_texfield" with "in_and_out_amount_range_overlimit" 
    # And User expect "in_and_out_amount_to_texfield" equal with 20 characters
    Then "in_and_out_fieldtext_comma" will be displayed
    Then User click "in_and_out_amount_from_texfield"
    And User hide the keyboard
    Then User click "in_and_out_amount_to_texfield"
    And User hide the keyboard

  @android @ios @uispecific @continuous
  Scenario:JENI1159-C67408-[Functionality] Verify that 'CLEAR' button is enabled only if user input valid amount range
    And User click "back_button"
    And User click "back_button"
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

  @android @uispecific @continuous
  Scenario:JENI1159-C67420-[Functionality] Clicking 'DONE' button after user update the amount range filter to another valid amount
    And User click "back_button"
    And User click "back_button"
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

  @android @uispecific @continuous
  Scenario:JENI1159-C67438-[Functionality] Clicking back button in the header after user update the amount range filter to another valid amount
    And User click "back_button"
    And User click "back_button"
    When User click "in_and_out_filter_button"
    And User set filter for amount range from 111 to 111111111
    And User click "back_button"

    When User click "in_and_out_filter_button"
    And User click "in_and_out_amount_menu" until "in_and_out_amount_from_texfield" displayed
    And User fill "in_and_out_amount_from_texfield" with "in_and_out_amount_range_from_222"
    And User fill "in_and_out_amount_to_texfield" with "in_and_out_amount_range_to_222222222"

    When User press back button on device
    # Commented until bug fixing
    # Then User expect "in_and_out_amount_filter_text" equal with "in_and_out_filter_amount_range_from_111_to_111111111"

  @android @uispecific @continuous
  Scenario:JENI1159-C67440-[Functionality] Remove an existing amount range filter applied
    And User click "back_button"
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

  @android @ios @uispecific @continuous
  Scenario:JENI1538-C48087-[Content] Verify the labels of tabs should be in English if user select English as language preference
    Then User expect "in_and_out_history_tab" equal with "in_and_out_history_tab_text"
    Then User expect "in_and_out_upcoming_tab" equal with "in_and_out_upcoming_tab_text"
    # Commented until bug fixing
    # Then User expect "in_and_out_request_tab" equal with "in_and_out_request_tab_text"

  @android @ios @uispecific @continuous
  Scenario:JENI1538-C48088-[Content] Verify the labels of tabs should be in Bahasa Indonesia if user select Bahasa Indonesia as language preference
    When User change language to "language_id"
    And User click "dashboard_hamburger_icon"
    And User click "in_and_out_menu"
    # Commented until bug fixing
    # Then User expect "in_and_out_history_tab_id" equal with "in_and_out_history_tab_text_id"
    # Then User expect "in_and_out_upcoming_tab_id" equal with "in_and_out_upcoming_tab_text_id"
    # Then User expect "in_and_out_request_tab_id" equal with "in_and_out_request_tab_text_id"


  @android @ios @uispecific @continuous
  Scenario:JENI1152-C48305-Verify search field input character limit
    When User change language to "language"
    And User click "dashboard_hamburger_icon"
    And User click "in_and_out_menu"
    And User click "in_and_out_filter_search_loupe"
    Then User fill "in_and_out_filter_search_textfield" with "in_and_out_search_overlimit"
    And User expect "in_and_out_filter_search_textfield" equal with 100 characters

  @android @ios @uispecific @continuous
  Scenario:JENI1152-C48313-Verify that search field should appear when user clicks on the magnifying glass icon
    And User click "in_and_out_filter_search_clear"
    And User click "in_and_out_filter_search_cancel"
    And User click "in_and_out_filter_search_loupe"
    Then "in_and_out_filter_search_textfield" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI1152-C48310-Verify that before the user starts typing a search query in the input field, there must be a default text shown e.g. Search
    And User click "in_and_out_filter_search_cancel"
    And User click "in_and_out_filter_search_loupe"
    Then User expect "in_and_out_filter_search_textfield" equal with "in_and_out_filter_text"

  @android @ios @uispecific @continuous
  Scenario:JENI1152-C48311-Verify default text shown (Search) should disappear when user type something in search field
    And User click "in_and_out_filter_search_cancel"
    And User click "in_and_out_filter_search_loupe"
    Then User expect "in_and_out_filter_search_textfield" equal with "in_and_out_filter_text"

    When User fill "in_and_out_filter_search_textfield" with "in_and_out_search_c"
    Then User expect "in_and_out_filter_search_textfield_default" doesn't exist

  @android @ios @uispecific @continuous
  Scenario:JENI1152-C48312-Verify that after user cleared search input field, the default text should be shown again
    And User click "in_and_out_filter_search_clear"
    And User click "in_and_out_filter_search_cancel"
    And User click "in_and_out_filter_search_loupe"
    When User fill "in_and_out_filter_search_textfield" with "in_and_out_search_c"
    Then User expect "in_and_out_filter_search_textfield_default" doesn't exist
    And User click "in_and_out_filter_search_clear"
    Then User expect "in_and_out_filter_search_textfield" equal with "in_and_out_filter_text"

  @android @ios @uispecific @continuous
  Scenario:JENI1152-C48314-There should be a 'Cancel' button once search field appeared
    And User click "in_and_out_filter_search_cancel"
    And User click "in_and_out_filter_search_loupe"
    Then "in_and_out_filter_search_cancel" will be displayed  

  @android @ios @uispecific @continuous
  Scenario:JENI1152-C48315-Verify that while the search input field is being shown, the magnifying glass icon should not be shown
    And User click "in_and_out_filter_search_cancel"
    And User click "in_and_out_filter_search_loupe"
    
    When User fill "in_and_out_filter_search_textfield" with "in_and_out_search_c"
    Then User expect "in_and_out_filter_search_loupe" doesn't exist 

  @android @ios @uispecific @continuous
  Scenario:JENI1152-C48316-Verify that Clicking the cancel button should close the search input field and begin showing the magnifying glass icon again
    And User click "in_and_out_filter_search_clear"
    And User click "in_and_out_filter_search_cancel"
    And User click "in_and_out_filter_search_loupe"
    
    When User fill "in_and_out_filter_search_textfield" with "in_and_out_search_c"
    And User click "in_and_out_filter_search_clear"
    And User click "in_and_out_filter_search_cancel"
    Then "in_and_out_filter_search_loupe" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI1152-C48317-Verify that 'Cancel' button should only be shown while a user has NOT input any search text
    And User click "in_and_out_filter_search_loupe"
    Then "in_and_out_filter_search_cancel" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI1152-C48318-Verify that If the user taps/clicks on the magnifying glass icon again, the search input field shown should not have previously typed string
    And User click "in_and_out_filter_search_cancel"
    And User click "in_and_out_filter_search_loupe"
    
    When User fill "in_and_out_filter_search_textfield" with "in_and_out_search_cashtag"
    And User click "in_and_out_filter_search_clear"
    And User click "in_and_out_filter_search_cancel"

    When User click "in_and_out_filter_search_loupe"
    Then User expect "in_and_out_search_cashtag" doesn't exist 
    And User expect "in_and_out_filter_search_textfield" equal with "in_and_out_filter_text"

  @android @ios @uispecific @continuous
  Scenario:JENI1152-C48319-Verify that the app should Display a cross icon in the search field as soon as the user begin typing a search query
    And User click "in_and_out_filter_search_cancel"
    And User click "in_and_out_filter_search_loupe"
    
    When User fill "in_and_out_filter_search_textfield" with "in_and_out_search_c"
    And "in_and_out_filter_search_clear" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI1152-C48320-Verify that clicking the 'cross' icon should completely delete the typed text and be replaced by 'Cancel' button
    And User click "in_and_out_filter_search_clear"
    And User click "in_and_out_filter_search_cancel"
    And User click "in_and_out_filter_search_loupe"
    
    When User fill "in_and_out_filter_search_textfield" with "in_and_out_search_c"
    And User click "in_and_out_filter_search_clear"
    Then User expect "in_and_out_filter_search_textfield" equal with "in_and_out_filter_text"
    And "in_and_out_filter_search_cancel" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI1646-C48301-Verify that what user inputted in search bar will be displayed as well between two ' sign
    And User click "in_and_out_filter_search_cancel"
    And User click "in_and_out_filter_search_loupe"

    When User fill "in_and_out_filter_search_textfield" with 123
    Then "in_and_out_history_no_matches" will be displayed
    And "in_and_out_result_aphostrope" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI1650-C48294-When user applies 0 filter, there should be no numbers shown
    And User click "in_and_out_filter_search_clear"
    And User click "in_and_out_filter_search_cancel"
    And User click "in_and_out_filter_button"
    Then "in_and_out_number_active_filter_0" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI649-C48080-User should be shown the empty state message in English/Bahasa based on their language preference
    When User click "back_button"
    And User click "in_and_out_upcoming_tab"
    And User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with 123
    Then "in_and_out_upcoming_no_matches" will be displayed

    When User click "in_and_out_filter_search_clear"
    And User click "in_and_out_filter_search_cancel"
    When User change language to "language_id"
    And User click "dashboard_hamburger_icon"
    And User click "in_and_out_menu"
    # And User click "in_and_out_upcoming_tab_id"
    # Comment until bug fixed
    And User click "in_and_out_upcoming_tab"
    
    When User click "in_and_out_filter_search_loupe" 
    And User fill "in_and_out_filter_search_textfield_id" with 123
    Then "in_and_out_upcoming_no_matches_id" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI649-C48081-User should be shown the empty state message when there are no upcoming transactions 
    And User click "in_and_out_filter_search_clear"
    And User click "in_and_out_filter_search_cancel"
    When User change language to "language"
    And User click "dashboard_hamburger_icon"
    And User click "in_and_out_menu"
    And User click "in_and_out_upcoming_tab"
    And User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with 123
    Then "in_and_out_upcoming_no_matches" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI1650-C48293-[Functionality] Verify when the number being shown is equal to numbers of filters applied
    When User click "in_and_out_filter_button"
    And User set filter for amount range from 111 to 1111111
    And User set filter for time range to this week
    Then "in_and_out_number_active_filter_2" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI1651-C48124-[Functional] Verify 'Apply Filter' button at the bottom should be disabled when no filter is applied 
    When User click "back_button"
    And User click "in_and_out_filter_button"
    And User click "in_and_out_filter_apply_button"
    Then "in_and_out_filter_screen" will be displayed
    And "in_and_out_filter_counter" will be displayed
    And "in_and_out_filter_apply_button" will be displayed
    And "in_and_out_category_menu" will be displayed
    And "in_and_out_amount_menu" will be displayed
    And "in_and_out_time_menu" will be displayed
    And "in_and_out_transaction_menu" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI1651-C48125-[Content] Verify There must be 4 filter options listed 
    When User click "back_button"
    And User click "in_and_out_filter_button"
    Then "in_and_out_category_menu" will be displayed
    And "in_and_out_amount_menu" will be displayed
    And "in_and_out_time_menu" will be displayed
    And "in_and_out_transaction_menu" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI1651-C48126-[Functionality] Verify there must be a 'Reset' button shown in inactive state when user has not selected any options 
    When User click "back_button"
    And User click "in_and_out_filter_button"
    # Still not find a way to assert the disable/inactive 'Reset' button in the screen yet

  @android @ios @uispecific @continuous
  Scenario:JENI1651-C48129-[Functional] Verify the default state for active filter counter should be 0
    When User click "back_button"
    And User click "in_and_out_filter_button"  
    Then User expect "in_and_out_filter_counter" equal with "in_and_out_filter_counter_zero"

  @android @ios @uispecific @continuous
  Scenario:JENI1651-C48212-[Functional] Verify that back button should redirect user to In & Out landing page
    And User click "back_button"
    And User click "in_and_out_filter_button"  
    And User click "back_button"
    #  assert that in out landing page is displayed
    Then "in_and_out_page" will be displayed   

  @android @ios @uispecific @continuous
  Scenario:JENI1653-C48033-[Content] Verify there should be a static text to indicate that a user can select more than 1 transaction
    And User click "in_and_out_filter_button"
    And User click "in_and_out_transaction_menu"
    Then "in_and_out_filter_select_more_than_one" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI1648-C67470-[Functionality] Verify that there should be an error message when no result found in searching requested transaction
    And User click "back_button"
    And User click "back_button"
    When User click "in_and_out_request_tab"
    And User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with 123
    And "in_and_out_request_no_matches" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI1648-C67477-[Functionality] Verify search field input character limit for search requested transaction
    And User click "in_and_out_filter_search_clear"
    And User click "in_and_out_filter_search_cancel"
    When User click "in_and_out_request_tab"
    And User click "in_and_out_filter_search_loupe"
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_overlimit_with_symbols" 
    And User expect "in_and_out_filter_search_textfield" equal with 100 characters

  @android @ios @uispecific @continuous
  Scenario:JENI1648-C67499-[Functionality] Verify that Clicking the cancel button should close the search input field and begin showing the magnifying glass icon again
    And User click "in_and_out_filter_search_clear"
    And User click "in_and_out_filter_search_cancel"
    When User click "in_and_out_request_tab"
    And User click "in_and_out_filter_search_loupe" until "in_and_out_filter_search_textfield" displayed
    And User fill "in_and_out_filter_search_textfield" with "in_and_out_search_win"
    And User click "in_and_out_filter_search_clear"
    And User click "in_and_out_filter_search_cancel"
    Then "in_and_out_filter_search_loupe" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI2143-C69669-Clicking 'APPLY FILTER' button when 'Amount Range' filter is applied
    When User click "in_and_out_upcoming_tab"
    And User click "in_and_out_filter_button"
    And User set filter for amount range from 100000 to 1000
    Then "in_and_out_amount_from_texfield" will be displayed
    And "in_and_out_amount_to_texfield" will be displayed 

  @android @uispecific @continuous
  Scenario:JENI2143-C67537-Verify 'Custom' filter: If 'From' date selected is equal/older than 'To' date
    And User click "back_button"
    And User click "back_button"
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
    
  @android @ios @uispecific @continuous
  Scenario:JENI2143-C67544-Verify time range filter for 'This week': user should be taken back to the Transactions Tab of 'In & Out' landing page
    And User click "back_button"
    And User click "in_and_out_filter_button"
    And User click "in_and_out_time_menu"
    And User click "filter_time_range_second_this_week"
    And User click "in_and_out_filter_done"
    And User click "in_and_out_filter_apply_button"
    Then "in_and_out_history_tab" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI2143-C67550-Verify time range filter for 'This month': User should be taken back to the Transactions Tab of 'In & Out' landing page 
    And User click "in_and_out_filter_button"
    And User click "in_and_out_time_menu"
    And User click "filter_time_range_third_this_month"
    And User click "in_and_out_filter_done"
    And User click "in_and_out_filter_apply_button"
    Then "in_and_out_history_tab" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI2143-C67556-Verify time range filter for 'This year': User should be taken back to the Transactions Tab of 'In & Out' landing page 
    And User click "in_and_out_filter_button"
    And User click "in_and_out_time_menu"
    And User click "filter_time_range_fourth_this_year"
    And User click "in_and_out_filter_done"
    And User click "in_and_out_filter_apply_button"
    Then "in_and_out_history_tab" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI2143-C67562-Verify time range filter for 'Last 7 days': User should be taken back to the Transactions Tab of 'In & Out' landing page
    And User click "in_and_out_filter_button"
    And User click "in_and_out_time_menu"
    And User click "filter_time_range_fifth_last_seven_days"
    And User click "in_and_out_done_button"
    And User click "in_and_out_filter_apply_button"
    Then "in_and_out_history_tab" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI2143-C67569-Verify time range filter for 'Last 30 days': User should be taken back to the Transactions Tab of 'In & Out' landing page
    And User click "in_and_out_filter_button"
    And User click "in_and_out_time_menu"
    And User click "filter_time_range_sixth_last_thirty_days"
    And User click "in_and_out_done_button"
    And User click "in_and_out_filter_apply_button"
    Then "in_and_out_history_tab" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI2143-C67575-Verify selected Time range filter indicator
    And User click "in_and_out_filter_button"
    And User click "in_and_out_time_menu"
    And User click "filter_time_range_fifth_last_seven_days"
    And User click "in_and_out_done_button"
    Then "in_and_out_filter_screen" will be displayed
    Then User expect "in_and_out_filter_counter" equal with "in_and_out_filter_counter_one"

  @android @uispecific @continuous
  Scenario:JENI2141-C70306-Verify 'Custom' filter: If 'From' date selected is equal/older than 'To' date
    And User click "back_button"
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

  @android @uispecific @continuous
  Scenario:JENI2141-C70307-Verify 'Apply filter' button: User should be taken back to the Transactions Tab of 'In & Out'
    And User click "back_button"
    When User click "in_and_out_request_tab"
    And User click "in_and_out_filter_button"
    And User set filter for time range to this month
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_request_tab" will be displayed

#In and Out Faisal
  @android @ios @uispecific @continuous
  Scenario:JENI2141-C70301-Clicking 'APPLY FILTER' button when 'Amount Range' filter is applied
    And User click "in_and_out_filter_button"
    When User click "in_and_out_filter_reset_button"
    And User click "in_and_out_apply_filter_button"
    And User click "in_and_out_filter_button"
    And User set filter for amount range from 100000 to 1000
    Then "in_and_out_amount_from_texfield" will be displayed
    And "in_and_out_amount_to_texfield" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI2141-C70311-Verify time range filter for 'This week': user should be taken back to the Transactions Tab of 'In & Out' landing page 
    When User click "back_button"
    And User click "in_and_out_filter_button"
    And User set filter for time range to this week
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_request_tab" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI2141-C70317-Verify time range filter for 'This month': User should be taken back to the Transactions Tab of 'In & Out' landing page 
    And User click "in_and_out_filter_button"
    And User set filter for time range to this month
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_request_tab" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI2141-C70329-Verify time range filter for 'Last 7 days': User should be taken back to the Transactions Tab of 'In & Out' landing page 
    When User click "in_and_out_filter_button"
    And User set filter for time range to last seven days
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_request_tab" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI2141-C70335-Verify time range filter for 'Last 30 days': User should be taken back to the Transactions Tab of 'In & Out' landing page  
    And User click "in_and_out_filter_button"
    And User set filter for time range to last thirty days
    And User click "in_and_out_apply_filter_button"
    Then "in_and_out_request_tab" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI2141-C70341-Verify selected Time range filter indicator 
    And User click "in_and_out_filter_button"
    And User set filter for time range to last thirty days
    Then "in_and_out_apply_filter_button" will be displayed
    Then User expect "in_and_out_filter_counter" equal with "in_and_out_filter_counter_one"

  @android @ios @uispecific @continuous
  Scenario:JENI2160-C67770-User should be shown the empty state message when there are no Request (Pay-me or Split bill)
    #Use CIF without In & Out - Request transaction
    When User click "back_button"
    When User click "in_and_out_filter_reset_button"
    And User click "in_and_out_apply_filter_button"
    When User click "in_and_out_request_tab"
    Then "in_and_out_request_empty_state_message" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI2160-C67771-User should be shown the empty state message in English/Bahasa based on their language preference
    #Use CIF without In & Out - Request transaction
    When User click "in_and_out_request_tab"
    Then "in_and_out_request_empty_state_message" will be displayed
