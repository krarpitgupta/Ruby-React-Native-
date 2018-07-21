@onboarding @awards_registration
Feature: on Boarding Module
  @android @ios @uispecific
  Scenario:JENI354-C93539-[Functionality] The Pilot form can be accessed
    Given User is on application screen
    And User check and click 2 times if allow or ok button exist
    Then "onboarding_introduction_container" will be displayed

  @continuous @android @ios @uispecific
  Scenario:JENI353-C43173-[Functionality] The 'REGISTER' button can redirect to the 'About You' screen
    When User click "onboarding_register_button"
    When User change language into "english_language"
    Then User expect "onboarding_language_page_title" equal with "language_page_title"

  @continuous @android @ios @uispecific
  Scenario:JENI354-C43215-[Functionality] User can select English
    And User click "onboarding_language_ok_next_button"
    Then User expect "onboarding_about_you_page_title" equal with "about_you_page_title"
  
  @android @ios @id
  Scenario:JENI354-C59679-[Functionality] User can select Bahasa Indonesia FAILED BECAUSE LANGUAGE
    Given User is on onboarding language page
    And User change language into "indonesian_language"
    And User click "onboarding_language_ok_next_button"
    Then User expect "onboarding_about_you_page_title" equal with "about_you_page_title"

  @continuous @android @ios @uispecific
  Scenario:JENI1879-C67466-[Functionality] Navigate back using the top-left button of the 'Input your mailing address' form(About you)
    When User click "onboarding_back_button"
    Then "onboarding_register_button" will be displayed

  @android @ios @uispecific
  Scenario:JENI346-C42149-[Functionality] The LET'S START button can redirect to the 'Input your email and phone number' screen
    Given User is on onboarding language page
    When User change language into "english_language"
    When User click "onboarding_language_ok_next_button"
    And User click "onboarding_lets_start_button"
    Then User expect "onboarding_emailandphone_page_title" equal with "emailandphone_page_title"

  @android @ios @uispecific
  Scenario:JENI1879-C67466-[Functionality] Navigate back using the top-left button of the 'Input your mailing address' form(phone page)
    Given User is on onboarding phone page
    When User click "onboarding_back_button"
    Then User expect "onboarding_about_you_page_title" equal with "about_you_page_title"

  @continuous @android @uispecific
  Scenario:JENI1879-C67469-[Functionality] Navigate back using the default back button on Android device on the 'Input your mailing address' form(about you)
    Given User is on onboarding about you page
    When User press back button on device
    Then "onboarding_register_button" will be displayed

  @android @ios @uispecific
  Scenario:JENI1598-C63984-[Functionality] Open the 'Help' form for Phone Number 
    Given User is on onboarding phone page
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

  @android @uispecific
  Scenario:JENI1879-C67469-[Functionality] Navigate back using the default back button on Android device on the 'Input your mailing address' form(phone page)
    Given User is on onboarding phone page
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
  Scenario:JENI372-C28063-[Functionality] Leave the email address empty and try to proceed to the next step
    Given User is on onboarding phone page
    #put inside command till the design fixed When User fill "onboarding_email_address_textfield" with "empty" 
    And User fill "onboarding_phone_number_textfield" with random "valid_phone_number"
    #put inside command till the design fixed Then User expect "onboarding_email_address_underline_text" equal with "email_address_underline_text_empty"

  @continuous @android @ios @uispecific
  Scenario:JENI372-C23393-[Functionality] Input an invalid email address
    #put inside command till the design fixed When User fill "onboarding_email_address_textfield" with "invalid_email_1"
    And User fill "onboarding_phone_number_textfield" with random "valid_phone_number"
    #put inside command till the design fixed Then User expect "onboarding_email_address_underline_text" equal with "email_address_underline_text_wrong"

  @continuous @android @ios @uispecific
  Scenario:JENI373-C48030-[Functionality] Input a phone number that uses "021" prefix
    #put inside command till the design fixed When User fill "onboarding_email_address_textfield" with "valid_email" 
    And User fill "onboarding_phone_number_textfield" with random "phone_number_with_021"
    And User click "onboarding_next_button"
    Then User expect "onboarding_emailandphone_page_title" equal with "emailandphone_page_title"
  
  @android @ios @uispecific
  Scenario:JENI373-C23399-[Functionality] Input a phone number that uses "+62" prefix
    Given User is on onboarding phone page
    And User fill "onboarding_phone_number_textfield" with random "phone_number_with_+62"
    And User click "onboarding_next_button"
    Then User expect "onboarding_otp_page_title" equal with "authentication_page_title"

  @android @ios @uidatabound
  Scenario:JENI373-C23398-[Functionality] Input an email address that belongs to rejected/closed account users
    Given User is on onboarding phone page
    #put inside command till the design fixed And User fill "onboarding_email_address_textfield" with "email_rejected"    
    And User fill "onboarding_phone_number_textfield" with random "phone_number_with_+62"
    And User click "onboarding_next_button"
    Then User expect "onboarding_otp_page_title" equal with "authentication_page_title"

  @android @ios @uidatabound
  Scenario:JENI373-C23398-[Functionality] Input an email address that belongs to rejected/closed account users
    Given User is on onboarding phone page
    #put inside command till the design fixed And User fill "onboarding_email_address_textfield" with "email_closed"
    And User fill "onboarding_phone_number_textfield" with random "phone_number_with_+62"
    And User click "onboarding_next_button"
    Then User expect "onboarding_otp_page_title" equal with "authentication_page_title"

  @android @ios @uidatabound  
  Scenario:JENI373-C23395-[Functionality] Input an email address that belongs to active/semi-active/dormant users
    Given User is on onboarding phone page
    #put inside command till the design fixed And User fill "onboarding_email_address_textfield" with "valid_email"
    And User fill "onboarding_phone_number_textfield" with random "phone_number_with_+62"
    And User click "onboarding_next_button"
    Then User expect "onboarding_otp_page_title" equal with "authentication_page_title"

  @android @ios @uidatabound
  Scenario:JENI373-C48071-[Functionality] Input a phone number that belongs to active/semi-active/dormant users
    Given User is on onboarding phone page
    And User fill "onboarding_phone_number_textfield" with "phone_number_active_user"
    And User click "onboarding_next_button"
    Then User expect "top_notification_snackbar" equal with "onboarding_notification_phone_number_registered"

  @android @ios @uispecific
  Scenario:JENI373-C48031-[Functionality] Input a phone number that uses "62" prefix
    Given User is on onboarding phone page
    And User fill "onboarding_phone_number_textfield" with random "phone_number_with_62"
    And User click "onboarding_next_button"
    Then User expect "onboarding_otp_page_title" equal with "authentication_page_title"
  
  @android @ios @uispecific
  Scenario:JENI373-C48035-[Functionality] Input a phone number that is less than 10 digits
    Given User is on onboarding phone page
    #put inside command till the design fixed And User fill "onboarding_email_address_textfield" with "valid_email"
    And User fill "onboarding_phone_number_textfield" with "phone_number_overlimit"
    Then User expect "onboarding_phone_number_underline_text" equal with "incorrect_phone_number"

  @continuous @android @ios @uispecific
  Scenario:JENI373-C48334-[Functionality] Input non-numeric values into the Phone Number textbox
    And User fill "onboarding_phone_number_textfield" with "non_numeric_phone_number"
    Then User expect "onboarding_phone_number_underline_text" equal with "incorrect_phone_number"

  @continuous @android @ios @uispecific
  Scenario:JENI373-C48335-[Functionality] Input a non-Indonesian phone number
    And User fill "onboarding_phone_number_textfield" with "non_indonesia_phone_number"
    Then User expect "onboarding_phone_number_underline_text" equal with "incorrect_phone_number"

  @continuous @android @ios @uispecific
  Scenario:JENI373-C48078-[Functionality] Input a phone number that belongs to rejected/closed account users
    #put inside command till the design fixed And User fill "onboarding_email_address_textfield" with "valid_email" 
    And User fill "onboarding_phone_number_textfield" with "phone_number_closed_user"
    And User click "onboarding_next_button"
    Then User expect "onboarding_otp_page_title" equal with "authentication_page_title"

  @continuous @android @ios @uispecific
  Scenario:JENI373-C48078-[Functionality] Input a phone number that belongs to rejected/closed account users
    #put inside command till the design fixed And User fill "onboarding_email_address_textfield" with "valid_email" 
    And User fill "onboarding_phone_number_textfield" with "phone_number_rejected_user"
    And User click "onboarding_next_button"
    Then User expect "onboarding_otp_page_title" equal with "authentication_page_title"

  @android @ios @uispecific
  Scenario:JENI1879-C67466-[Functionality] Navigate back using the top-left button of the 'Input your mailing address' form(otp page)
    Given User is on onboarding OTP page
    When User click "onboarding_otp_back_button"
    #put inside command till the design fixed And User fill "onboarding_email_address_textfield" with "valid_email" 
    And User expect "onboarding_emailandphone_page_title" equal with "emailandphone_page_title"

  @android @ios @uispecific
  Scenario:JENI372-C23374-[Functionality] Input an email address and phone number
    Given User is on onboarding OTP page
    Then User expect "onboarding_otp_page_title" equal with "authentication_page_title"

  @android @ios @uispecific
  Scenario:JENI1266-C41106-[Functionality] Input the incorrect OTP code until 3 times
    Given User is on onboarding OTP page
    When User fill "incorrect_otp_1" for OTP or PIN
    Then User expect "onboarding_otp_notification" equal with "incorrect_otp_notification"
    When User fill "incorrect_otp_2" for OTP or PIN
    Then User expect "onboarding_otp_notification" equal with "incorrect_otp_notification"
    When User fill "incorrect_otp_3" for OTP or PIN
    Then User expect "onboarding_otp_notification" equal with "incorrect_otp_notification"
    And User expect "onboarding_emailandphone_page_title" equal with "emailandphone_page_title"
  
  @android @ios @uispecific
  Scenario:JENI1266-C41110-[Functionality] User can re-send the OTP
    Given User is on onboarding OTP page
    And User click "onboarding_otp_resend_code_button"

  @continuous @android @ios @uispecific
  Scenario:JENI1266-C41146-[Functionality] User can only receive the OTP code until 3 times
    When User click "onboarding_otp_resend_code_button"
    And User click "onboarding_otp_resend_code_button"
    And User click "onboarding_otp_resend_code_button"
    Then User expect "onboarding_emailandphone_page_title" equal with "emailandphone_page_title"
  
  @android @ios @uispecific
  Scenario:JENI371-C102538-[Functionality] Ensure that the sent OTP is valid for only 3 minutes
    Given User is on onboarding OTP page
    When User wait 175 seconds
    And User fill "incorrect_otp_1" for OTP or PIN
    Then User expect "onboarding_otp_notification" equal with "otp_expired_message_notification"

  @continuous @android @ios @uispecific
  Scenario:JENI1267-C41111-[Functionality] Check whether the OTP expires after 180 seconds
    When User wait 180 seconds
    Then User expect "onboarding_otp_welcome_back_page_title" equal with "otp_expired_message_page"

  @continuous @android @ios @uispecific
  Scenario:JENI1266-C41104-[Functionality] Input the sent OTP code
    When User click "onboarding_otp_welcome_back_resend_code_button"
    And User fill "correct_otp" for OTP or PIN
    Then User expect "onboarding_photo_page_title" equal with "photo_page_title"

  @continuous @android @uispecific
  Scenario:JENI1879-C67469-[Functionality] Navigate back using the default back button on Android device on the 'Input your mailing address' form(photo page)
    Given User is on onboarding photo page
    When User press back button on device
    Then User expect "onboarding_otp_page_title" equal with "authentication_page_title"

  @android @ios @uispecific
  Scenario:JENI1879-C67466-[Functionality] Navigate back using the top-left button of the 'Input your mailing address' form(photo page)
    Given User is on onboarding photo page
    When User click "onboarding_back_button"
    And User click "onboarding_yes_proceed_button"
    Then User expect "onboarding_emailandphone_page_title" equal with "emailandphone_page_title"
  
  @android @ios @uispecific
  Scenario:JENI1272-C63234-[Functionality] The helpful image for KTP is displayed
    Given User is on onboarding photo page
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

  @continuous @android @ios @uispecific
  Scenario:JENI1879-C67466-[Functionality] Navigate back using the top-left button of the 'Input your mailing address' form(identity page)
    When User click "onboarding_back_button"
    Then User expect "onboarding_photo_page_title" equal with "photo_page_title"

  @continuous @android @uispecific
  Scenario:JENI1879-C67469-[Functionality] Navigate back using the default back button on Android device on the 'Input your mailing address' form(identity page)
    Given User is on onboarding identity page
    When User press back button on device
    Then User expect "onboarding_photo_page_title" equal with "photo_page_title"

  @run @android @ios @uispecific
  Scenario:JENI1270-C59770-[Functionality] Input Full Name, Date Of Birth and KTP Number  
    Given User is on onboarding identity page
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
    And User swipe down until found "onboarding_email_address_textfield"
    And User fill "onboarding_email_address_textfield" with random "valid_email"
    And User swipe up until found "onboarding_identity_ktp_underline_text"
    Then User expect "onboarding_identity_ktp_underline_text" equal with "blank_ktp_field"
    And User swipe down until found "onboarding_identity_page_title"
    And User expect "onboarding_identity_page_title" equal with "identity_page_title"

  @continuous @android @ios @uispecific
  Scenario:JENI1270-C59806-[Functionality] Input Full Name which is containing number
    When User fill "onboarding_identity_fullname_textfield" with "invalid_full_name"
    And User click "onboarding_identity_page_title"
    Then User expect "onboarding_identity_fullname_underline_text" equal with "invalid_full_name_notification"

  @continuous @android @ios @uispecific
  Scenario:JENI1270-C59763-[Functionality] Input Full Name, Date Of Birth and KTP Number
    When User fill "onboarding_email_address_textfield" with random "valid_email"
    And User fill "onboarding_identity_fullname_textfield" with "valid_full_name"
    And User click "onboarding_identity_page_title"
    And User select "onboarding_identity_date_field" field and put "day" as day "month" as month "year" as year
    And User swipe up until found "onboarding_identity_ktp_textfield"
    And User fill "onboarding_identity_ktp_textfield" with "valid_ktp"
    And User click "onboarding_identity_fullname_underline_text"
    And User click "onboarding_next_button"
    Then User expect "onboarding_mailing_page_title" equal with "mailing_page_title"

  @android @ios @uispecific
  Scenario:JENI1509-C63209-[Functionality] Input valid data into 'Mailing Address'form and proceed to the next step
    Given User is on onboarding mailing page
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

  @android @ios @uispecific
  Scenario:JENI1879-C67466-[Functionality] Navigate back using the top-left button of the 'Input your mailing address' form(mailing page)
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
    Then "onboarding_mailing_zipcode_dropdown" will be displayed

  @android @uispecific
  Scenario:JENI1879-C67469-[Functionality] Navigate back using the default back button on Android device on the 'Input your mailing address' form(question page)
    Given User is on onboarding question page
    When User press back button on device
    Then User expect "onboarding_identity_page_title" equal with "identity_page_title"

  @android @ios @uispecific
  Scenario:JENI358-C63219-[Functionality] Input valid data into 'Mandatory Question' form and skip uploading NPWP photo Bug
    Given User is on onboarding question page
    When User click "onboarding_question_yes_radio_button"
    And User select "onboarding_question_purpose_dropdown" dropdown with "onboarding_question_purpose_dropdown_value_1"
    And User select "onboarding_question_income_dropdown" dropdown with "onboarding_question_income_dropdown_value_2"
    And User select "onboarding_question_spending_dropdown" dropdown with "onboarding_question_spending_dropdown_value_1"
    And User swipe up until found "onboarding_question_source_dropdown"
    And User select "onboarding_question_source_dropdown" dropdown with "onboarding_question_source_dropdown_value_1"
    And User swipe up until found "onboarding_question_position_dropdown"
    And User select "onboarding_question_industry_dropdown" dropdown with "onboarding_question_industry_dropdown_value_1"
    And User select "onboarding_question_position_dropdown" dropdown with "onboarding_question_position_dropdown_value_1"
    And User swipe up until found "onboarding_question_city_textfield"
    And User fill "onboarding_question_company_name_textfield" with "valid_company_name"
    And User fill "onboarding_question_company_address_textfield" with "valid_company_address"
    And User fill "onboarding_question_city_textfield" with "valid_city"
    And User swipe up until found "onboarding_question_phone_textfield"
    And User fill "onboarding_question_phone_textfield" with "valid_office_phone"
    And User swipe up until found "onboarding_question_npwp_button"
    And User swipe up until found "onboarding_question_not_bring_npwp_radio_button"
    And User click "onboarding_question_not_bring_npwp_radio_button"
    And User click "onboarding_next_button"
    Then User expect "onboarding_question_npwp_popup_agreement" equal with "npwp_notification"
    And "onboarding_proceed_button" will be displayed
    And "onboarding_cancel_button" will be displayed
    When User click "onboarding_proceed_button"
    Then User expect "onboarding_termandcondition_page_title" equal with "termandcondition_page_title"
 
  @android @ios @uispecific
  Scenario:JENI776-C63227-[Functionality] The NPWP can be photographed properly
    Given User is on onboarding question page
    When User swipe up until found "onboarding_question_not_bring_npwp_radio_button"
    And User click "onboarding_question_npwp_button"
    And User click "onboarding_question_choose_camera"
    And User click "onboarding_proceed_button"
    And User click "onboarding_camera_button"
    And User click "onboarding_retake_photo_button"
    And User click "onboarding_camera_button"
    When User click "onboarding_confirm_photo_button"
    Then "onboarding_question_not_bring_npwp_radio_button" will be displayed
 
  @android @ios @uispecific
  Scenario:JENI358-C63229-[Functionality] Input valid data into 'Mandatory Question' form, upload NPWP and proceed to the next step
    Given User is on onboarding question page
    When User swipe down until found "onboarding_question_page_title"
    And User click "onboarding_question_yes_radio_button"
    And User select "onboarding_question_purpose_dropdown" dropdown with "onboarding_question_purpose_dropdown_value_1"
    And User select "onboarding_question_income_dropdown" dropdown with "onboarding_question_income_dropdown_value_2"
    And User swipe up until found "onboarding_question_source_dropdown"
    And User select "onboarding_question_spending_dropdown" dropdown with "onboarding_question_spending_dropdown_value_3"
    And User select "onboarding_question_source_dropdown" dropdown with "onboarding_question_source_dropdown_value_1"
    And User swipe up until found "onboarding_question_position_dropdown"
    And User select "onboarding_question_industry_dropdown" dropdown with "onboarding_question_industry_dropdown_value_1"
    And User select "onboarding_question_position_dropdown" dropdown with "onboarding_question_position_dropdown_value_1"
    And User swipe up until found "onboarding_question_city_textfield"
    And User fill "onboarding_question_company_name_textfield" with "valid_company_name"
    And User fill "onboarding_question_company_address_textfield" with "valid_company_address"
    And User fill "onboarding_question_city_textfield" with "valid_city"
    And User fill "onboarding_question_phone_textfield" with "valid_office_phone"
    And User swipe up until found "onboarding_question_npwp_button"
    And User swipe up until found "onboarding_question_not_bring_npwp_radio_button"
    And User click "onboarding_question_npwp_button"
    And User click "onboarding_question_choose_camera"
    And User click "onboarding_proceed_button"
    And User click "onboarding_camera_button"
    And User click "onboarding_confirm_photo_button"
    And User click "onboarding_next_button"
    Then User expect "onboarding_termandcondition_page_title" equal with "termandcondition_page_title"

  @android @ios @uispecific
  Scenario:JENI776-C63230-[Functionality] User with no NPWP and Non Tax Subject input valid data into 'Mandatory Question' form and proceed to the next step
    Given User is on onboarding question page
    When User click "onboarding_question_no_radio_button"
    And User select "onboarding_question_purpose_dropdown" dropdown with "onboarding_question_purpose_dropdown_value_1"
    And User select "onboarding_question_income_dropdown" dropdown with "onboarding_question_income_dropdown_value_1"
    And User select "onboarding_question_spending_dropdown" dropdown with "onboarding_question_spending_dropdown_value_3"
    And User swipe up until found "onboarding_question_source_dropdown"
    And User select "onboarding_question_source_dropdown" dropdown with "onboarding_question_source_dropdown_value_1"
    And User swipe up until found "onboarding_question_position_dropdown"
    And User select "onboarding_question_industry_dropdown" dropdown with "onboarding_question_industry_dropdown_value_1"
    And User select "onboarding_question_position_dropdown" dropdown with "onboarding_question_position_dropdown_value_1"
    And User swipe up until found "onboarding_question_city_textfield"
    And User fill "onboarding_question_company_name_textfield" with "valid_company_name"
    And User fill "onboarding_question_company_address_textfield" with "valid_company_address"
    And User fill "onboarding_question_city_textfield" with "valid_city"
    And User fill "onboarding_question_phone_textfield" with "valid_office_phone"
    And User swipe down until found "onboarding_question_npwp_button"
    And User swipe up until found "onboarding_question_not_bring_npwp_radio_button"
    And User click "onboarding_question_not_bring_npwp_radio_button"
    And User click "onboarding_next_button"
    Then User expect "onboarding_termandcondition_page_title" equal with "termandcondition_page_title"
 
  @android @ios @uispecific
  Scenario:JENI776-C63604-[Functionality] User with BO and no NPWP input valid data and proceed to the next step bug
    Given User is on onboarding question page
    When User click "onboarding_question_no_radio_button"
    And User select "onboarding_question_purpose_dropdown" dropdown with "onboarding_question_purpose_dropdown_value_1"
    And User select "onboarding_question_income_dropdown" dropdown with "onboarding_question_income_dropdown_value_2"
    And User select "onboarding_question_spending_dropdown" dropdown with "onboarding_question_income_dropdown_value_2"
    And User swipe up until found "onboarding_question_source_dropdown"
    And User select "onboarding_question_source_dropdown" dropdown with "onboarding_question_source_dropdown_value_2"
    # And User swipe up until found "onboarding_question_position_dropdown"
    # And User select "onboarding_question_industry_dropdown" dropdown with "onboarding_question_industry_dropdown_value_1"
    # And User select "onboarding_question_position_dropdown" dropdown with "onboarding_question_position_dropdown_value_1"
    And User swipe up until found "onboarding_question_related_dropdown"
    And User select "onboarding_question_related_dropdown" dropdown with "onboarding_question_related_dropdown_value_1"
    And User select "onboarding_question_occupation_dropdown" dropdown with "onboarding_question_occupation_dropdown_value_1"
    # And User swipe up until found "onboarding_question_city_textfield"
    # And User fill "onboarding_question_company_name_textfield" with "valid_company_name"
    # And User fill "onboarding_question_company_address_textfield" with "valid_company_address"
    # And User fill "onboarding_question_city_textfield" with "valid_city"
    # And User fill "onboarding_question_phone_textfield" with "valid_office_phone"
    And User swipe down until found "onboarding_question_other_npwp_button"
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
    # Then User expect "onboarding_owner_page_title" equal with "owner_page_title"
    Then User expect "onboarding_termandcondition_page_title" equal with "termandcondition_page_title"
 
  @android @ios @uispecific
  Scenario:JENI358-C63602-[Functionality] User with salary and BO Others input valid data and proceed to the next step
    Given User is on onboarding question page
    When User click "onboarding_question_no_radio_button"
    And User select "onboarding_question_purpose_dropdown" dropdown with "onboarding_question_purpose_dropdown_value_1"
    And User select "onboarding_question_income_dropdown" dropdown with "onboarding_question_income_dropdown_value_2"
    And User select "onboarding_question_spending_dropdown" dropdown with "onboarding_question_spending_dropdown_value_3"
    And User swipe up until found "onboarding_question_source_dropdown"
    And User select "onboarding_question_source_dropdown" dropdown with "onboarding_question_source_dropdown_value_1"
    And User swipe up until found "onboarding_question_position_dropdown"
    And User select "onboarding_question_industry_dropdown" dropdown with "onboarding_question_industry_dropdown_value_1"
    And User select "onboarding_question_position_dropdown" dropdown with "onboarding_question_position_dropdown_value_1"
    And User swipe up until found "onboarding_question_city_textfield"
    And User fill "onboarding_question_company_name_textfield" with "valid_company_name"
    And User fill "onboarding_question_company_address_textfield" with "valid_company_address"
    And User fill "onboarding_question_city_textfield" with "valid_city"
    And User swipe up until found "onboarding_question_related_dropdown"
    And User fill "onboarding_question_phone_textfield" with "valid_office_phone"
    And User select "onboarding_question_related_dropdown" dropdown with "onboarding_question_related_dropdown_value_1"
    And User swipe down until found "onboarding_question_other_npwp_button"
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
    # Then User expect "onboarding_owner_page_title" equal with "owner_page_title"
    Then User expect "onboarding_termandcondition_page_title" equal with "termandcondition_page_title"

  @android @ios @uispecific
  Scenario:JENI1714-C63562-[Functionality] Ensure that the options of the monthly spending are lower than monthly income
    Given User is on onboarding owner page
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
  Scenario:JENI1879-C67466-[Functionality] Navigate back using the top-left button of the 'Input your mailing address' form(term and condition page)
    Given User is on onboarding term and condition page
    When User click "onboarding_back_button"
    And User swipe down until found "onboarding_owner_page_title"
    Then User expect "onboarding_owner_page_title" equal with "owner_page_title"
 
  @android @ios @uispecific
  Scenario:JENI1879-C67469-[Functionality] Navigate back using the default back button on Android device on the 'Input your mailing address' form(term and condition page)
    Given User is on onboarding term and condition page
    When User press back button on device
    And User swipe down until found "onboarding_question_page_title"
    Then User expect "onboarding_question_page_title" equal with "question_page_title"

  @android @uispecific
  Scenario:JENI1879-C67469-[Functionality] Navigate back using the default back button on Android device on the 'Input your mailing address' form(owner page)
    Given User is on onboarding owner page
    When User press back button on device
    And User swipe down until found "onboarding_question_page_title"
    Then User expect "onboarding_question_page_title" equal with "question_page_title"

  @android @ios @uispecific
  Scenario:JENI1879-C67466-[Functionality] Navigate back using the top-left button of the 'Input your mailing address' form(owner page)
    Given User is on onboarding owner page
    When User click "onboarding_back_button"
    And User swipe down until found "onboarding_question_page_title"
    Then User expect "onboarding_question_page_title" equal with "question_page_title"

  @android @ios @uispecific
  Scenario:JENI776-C63232-[Functionality] User with salary and BO input valid data and proceed to the next step(BLOCKED) 
    Given User is on onboarding question page
    When User click "onboarding_question_no_radio_button" until "onboarding_question_no_radio_button_checked" displayed
    And User select "onboarding_question_purpose_dropdown" dropdown with "onboarding_question_purpose_dropdown_value_1"
    And User swipe up until found "onboarding_question_source_dropdown"    
    And User select "onboarding_question_income_dropdown" dropdown with "onboarding_question_income_dropdown_value_2"
    And User select "onboarding_question_spending_dropdown" dropdown with "onboarding_question_spending_dropdown_value_3"
    And User select "onboarding_question_source_dropdown" dropdown with "onboarding_question_source_dropdown_value_1"
    And User swipe up until found "onboarding_question_position_dropdown"
    And User select "onboarding_question_industry_dropdown" dropdown with "onboarding_question_industry_dropdown_value_1"
    And User select "onboarding_question_position_dropdown" dropdown with "onboarding_question_position_dropdown_value_1"
    And User swipe up until found "onboarding_question_phone_textfield"
    And User fill "onboarding_question_company_name_textfield" with "valid_company_name"
    And User fill "onboarding_question_company_address_textfield" with "valid_company_address"
    And User fill "onboarding_question_city_textfield" with "valid_city"
    And User fill "onboarding_question_phone_textfield" with "valid_office_phone"
    And User swipe down until found "onboarding_question_purpose_dropdown"
    And User swipe up until found "onboarding_question_related_npwp_radio_button"
    And User select "onboarding_question_related_dropdown" dropdown with "onboarding_question_related_dropdown_value_1"
    And User click "onboarding_next_button"
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
    # Then "onboarding_owner_page_title" will be displayed
    Then User expect "onboarding_termandcondition_page_title" equal with "termandcondition_page_title"
 
  @android @ios @uispecific
  Scenario:JENI779-C59693-[Funcionality] Expand Terms and conditions form to see deatils
    Given User is on onboarding term and condition page
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

  @android @ios @uispecific
  Scenario:JENI346-C43149-[Functionality] The LET'S START button can redirect to the 'Create your Unique **** Cashtag' screen
    Given User is on onboarding personalize page
    And User click "onboarding_lets_start_button"
    Then User expect "onboarding_cashtag_page_title" equal with "cashtag_page_title"

  @android @ios @uispecific    
  Scenario:JENI1879-C67466-[Functionality] Navigate back using the top-left button of the 'Input your mailing address' form(personalize page)
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

  @android @ios @uispecific
  Scenario:JENI1879-C67466-[Functionality] Navigate back using the top-left button of the 'Input your mailing address' form(cashtag page)
    Given User is on onboarding cashtag page
    When User click "onboarding_back_button"
    Then User expect "onboarding_personalized_page_title" equal with "personalized_page_title"

  @android @uispecific
  Scenario:JENI1879-C67469-[Functionality] Navigate back using the default back button on Android device on the 'Input your mailing address' form(cashtag page)
    Given User is on onboarding cashtag page
    When User press back button on device
    Then User expect "onboarding_personalized_page_title" equal with "personalized_page_title"

  @android @uispecific
  Scenario:JENI358-C59683-[Functionality] Leave field cashtag blank then error message will appears
    Given User is on onboarding cashtag page
    When User fill "onboarding_cashtag_textfield" with "empty"
    And User click "onboarding_cashtag_page_title"
    Then User expect "onboarding_cashtag_underline_text" equal with "cashtag_empty_notification"

  @continuous @android @ios @uispecific
  Scenario:JENI358-C48371-[Functionality] Cashtag must not contain any additional such as $ or spaces
    When User fill "onboarding_cashtag_textfield" with "incorrect_cashtag_1"
    And User click "onboarding_next_button"
    Then User expect "onboarding_cashtag_page_title" equal with "cashtag_page_title"
  
  @continuous @android @ios @uispecific
  Scenario:JENI358-C45270-[Functionality] The maximum length for Cashtag is 15 characters
    And User fill "onboarding_cashtag_textfield" with "cashtag_overlimit"
    And User expect "onboarding_cashtag_textfield" equal with 15 characters

  @continuous @android @ios @uispecific
  Scenario:JENI358-Cash Tagm les minimum xxx
    And User fill "onboarding_cashtag_textfield" with "incorrect_cashtag_2"
    Then User expect "onboarding_cashtag_underline_text" equal with "cashtag_below_minimum_notification"

  @continuous @android @ios @uispecific
  Scenario:JENI358-C70457-[Functionality] The Cashtag can not be inserted with only numeric values
    And User fill "onboarding_cashtag_textfield" with "incorrect_cashtag_4"
    Then User expect "onboarding_cashtag_underline_text" equal with "cashtag_only_numeric_notification"

  @continuous @android @ios @uispecific
  Scenario:JENI358-C48370-[Functionality] Unable to create cashtag identical to existing user cashtag
    And User fill "onboarding_cashtag_textfield" with "registered_cashtag"
    Then User expect "onboarding_cashtag_underline_text" equal with "cashtag_already_registered_notification"

  @continuous @android @ios @uispecific
  Scenario:JENI358-C70461-[Functionality] The Cashtag can not be empty
    And User fill "onboarding_cashtag_textfield" with "empty"
    Then User expect "onboarding_cashtag_underline_text" equal with "cashtag_empty_notification"

  @continuous @android @ios @uispecific
  Scenario:JENI361-C67700-[Functionality] Verify that there should be an error message when creating cashtag using bad words
    And User fill "onboarding_cashtag_textfield" with "incorrect_cashtag_3"
    Then User expect "onboarding_cashtag_underline_text" equal with "cashtag_bad_word_notification"

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

  @android @ios @uispecific
  Scenario:JENI366-C67713-[Functionality] Verify that the list of the name card complies with the provided design
    Given User is on onboarding card page
    And User swipe up until found "onboarding_card_name_dropdown"
    When User click "onboarding_card_name_dropdown"
    Then User expect "onboarding_card_selection_fullname" equal with "onboarding_card_selection_fullname"
    Then User expect "onboarding_card_selection_middle_last_initial" equal with "onboarding_card_selection_middle_last_initial"
    Then User expect "onboarding_card_selection_first_middle_initial" equal with "onboarding_card_selection_first_middle_initial"
    When User swipe up "onboarding_first_dropdown" until found "onboarding_card_selection_middle_initial"
    Then User expect "onboarding_card_selection_middle_initial" equal with "onboarding_card_selection_middle_initial"

  @continuous @android @ios @uispecific
  Scenario:JENI366-C41075-[Functionality] Choose name on debit card
    And User click "onboarding_card_selection_middle_initial"
    And User click "onboarding_next_button"
    Then "onboarding_password_introduction_container" will be displayed

  @android @ios @uispecific
  Scenario:JENI3205-C102599-[Scenario] Entering password for authentication
    Given User is on onboarding password page
    When User click "onboarding_view_password"
    And User fill "onboarding_password_textfield" with "incorrect_password_1"
    Then User expect "onboarding_password_underline_text" equal with "incorrect_password_notification_1"
    When User fill "onboarding_password_textfield" with "incorrect_password_2"
    Then User expect "onboarding_password_underline_text" equal with "incorrect_password_notification_2"
    And User fill "onboarding_password_textfield" with "incorrect_password_3"
    Then User expect "onboarding_password_underline_text" equal with "incorrect_password_notification_3"
    And User fill "onboarding_password_textfield" with "incorrect_password_4"
    Then User expect "onboarding_password_underline_text" equal with "incorrect_password_notification_4"
    And User fill "onboarding_password_textfield" with "incorrect_password_5"
    Then User expect "onboarding_password_underline_text" equal with "incorrect_password_notification_5"

  @continuous @android @ios @uispecific
  Scenario:JENI359-C59694-[Funcionality] Input password which doesn't match the minimum requirements
    Then User expect "onboarding_password_underline_text" equal with "incorrect_password_notification_5"

  @continuous @android @ios @uispecific
  Scenario:JENI359-C45229-[Functionality] The maximum length for Password is 30 characters
    Then User fill "onboarding_password_textfield" with "password_overlimit"
    And User expect "onboarding_password_textfield" equal with 30 characters
    And User click "onboarding_view_confirm_password"
    Then User fill "onboarding_confirm_password_textfield" with "password_overlimit" 
    And User expect "onboarding_confirm_password_textfield" equal with 30 characters

  @continuous @android @ios @uispecific
  Scenario:JENI359-C70621-[Functionality] User can move the focus to the 'Confirm Password' textbox
    And User fill "onboarding_password_textfield" with "correct_password"
    And User fill "onboarding_confirm_password_textfield" with "correct_password"

  @continuous @android @ios @uispecific
  Scenario:JENI3205-C84817-[Scenario] Creating password
    And User fill "onboarding_password_textfield" with "correct_password"
    And User fill "onboarding_confirm_password_textfield" with "correct_password"

  @continuous @android @ios @uispecific
  Scenario:JENI359-C23396-[Functionality] User can create and confirm password  
    And User click "onboarding_next_button"
    Then User expect "onboarding_pin_page_title" equal with "pin_page_title" 

  @android @ios @uispecific
  Scenario:JENI359-C59694-[Funcionality] Input password which doesn't match the minimum requirements
    Then User expect "onboarding_password_underline_text" equal with "incorrect_password_notification_5"

  @continuous @android @ios @uispecific
  Scenario:JENI359-C45229-[Functionality] The maximum length for Password is 30 characters
    Then User fill "onboarding_password_textfield" with "password_overlimit"
    And User expect "onboarding_password_textfield" equal with 30 characters
    And User click "onboarding_view_confirm_password"
    Then User fill "onboarding_confirm_password_textfield" with "password_overlimit" 
    And User expect "onboarding_confirm_password_textfield" equal with 30 characters

  @continuous @android @ios @uispecific
  Scenario:JENI359-C70621-[Functionality] User can move the focus to the 'Confirm Password' textbox
    And User fill "onboarding_password_textfield" with "correct_password"
    And User fill "onboarding_confirm_password_textfield" with "correct_password"

  @continuous @android @ios @uispecific
  Scenario:JENI3205-C84817-[Scenario] Creating password
    And User fill "onboarding_password_textfield" with "correct_password"
    And User fill "onboarding_confirm_password_textfield" with "correct_password"

  @continuous @android @ios @uispecific
  Scenario:JENI359-C23396-[Functionality] User can create and confirm password  
    And User click "onboarding_next_button"
    Then User expect "onboarding_pin_page_title" equal with "pin_page_title" 

  @android @uispecific
  Scenario:JENI1879-C67469-[Functionality] Navigate back using the default back button on Android device on the 'Input your mailing address' form(password page)
    Given User is on onboarding password page
    When User press back button on device
    Then "onboarding_password_introduction_container" will be displayed

  @android @ios @uispecific
  Scenario:JENI1879-C67466-[Functionality] Navigate back using the top-left button of the 'Input your mailing address' form(password page)
    Given User is on onboarding password page
    When User click "onboarding_back_button"
    Then "onboarding_password_introduction_container" will be displayed

  @android @ios @uispecific
  Scenario:JENI361-C40922-[Functionality] Input a unique passcode
    Given User is on onboarding pin page
    When User fill "correct_pin" for OTP or PIN
    And User click "onboarding_next_button"
    Then User expect "onboarding_confirm_pin_page_title" equal with "confirm_pin_page_title"

  @continuous @android @ios @uispecific
  Scenario:JENI380-XXX confirm pin
    When User fill "correct_pin" for OTP or PIN
    And User click "onboarding_next_button"
    Then User expect "onboarding_success_page_title" equal with "success_page_title"

  @android @uispecific
  Scenario:JENI1879-C67469-[Functionality] Navigate back using the default back button on Android device on the 'Input your mailing address' form(pin page)
    Given User is on onboarding pin page
    When User press back button on device
    Then User expect "onboarding_create_password_page_title" equal with "create_password_page_title"

  @android @ios @uispecific
  Scenario:JENI1879-C67466-[Functionality] Navigate back using the top-left button of the 'Input your mailing address' form(pin page)
    Given User is on onboarding pin page
    When User click "onboarding_back_button"
    Then User expect "onboarding_create_password_page_title" equal with "create_password_page_title"

  @android @uispecific
  Scenario:JENI1879-C67469-[Functionality] Navigate back using the default back button on Android device on the 'Input your mailing address' form(card page)
    Given User is on onboarding card page
    When User press back button on device
    Then "onboarding_password_introduction_container" will be displayed

  @android @ios @uispecific
  Scenario:JENI1879-C67466-[Functionality] Navigate back using the top-left button of the 'Input your mailing address' form(card page)
    Given User is on onboarding card page
    When User click "onboarding_back_button"
    Then "onboarding_password_introduction_container" will be displayed

  @android @ios @endtoend
  Scenario:JENI1668-C63605-[Layout] Ensure that the layout for Registration success complies with the provided design
    Given User is on onboarding success page 
    Then "onboarding_success_page_account_number" will be displayed
    And "onboarding_success_page_cashtag" will be displayed
    And "onboarding_success_page_change_button" will be displayed
  
  @continuous @android @ios @endtoend
  Scenario:JENI1668-C63606-[Functionality] Ensure user can change his/her nickname
    When User click "onboarding_success_page_change_button" until "onboarding_success_page_nickname_textfield" displayed
    And User fill "onboarding_success_page_nickname_textfield" with "card_selection_middle_last_initial"
    And User click "onboarding_success_page_title"
    Then User expect "onboarding_success_page_nickname_label" equal with "card_selection_middle_last_initial"

  @android @ios @uispecific
  Scenario:JENI8154-C117741-[Scenario] Redirect to request OTP
    Given User is on onboarding OTP page
    And User wait 305 seconds
    Then "onboarding_otp_welcome_back_page_title" will be displayed

  @android @ios @uispecific
  Scenario:JENI8154-C117739-[Scenario] Sending The First OTP
    Given User is on onboarding OTP page
    Then User expect "onboarding_otp_notification" equal with "otp_notification_message"
    When User wait 172 seconds
    And User fill "correct_otp_1" for OTP or PIN
    Then User expect "onboarding_otp_notification" equal with "otp_expired_message_page"

  @android @ios @uispecific @continuous
  Scenario:JENI8154-C117740-[Scenario] Resend OTP for 1st time
    When User click "onboarding_otp_resend_code_button"
    Then User expect "onboarding_otp_notification" equal with "otp_notification_message"

  @android @ios @uispecific @continuous
  Scenario:JENI8154-C117830-[Scenario] Resend OTP for 2nd time
    When User click "onboarding_otp_resend_code_button"
    Then User expect "onboarding_otp_notification" equal with "otp_notification_message"

  @android @ios @uispecific @continuous
  Scenario:JENI8154-C117831-[Scenario] Resend OTP for 3rd time
    When User click "onboarding_otp_resend_code_button"
    Then User expect "onboarding_otp_notification" equal with "otp_notification_message"

  @android @ios @uispecific @continuous
  Scenario:JENI8154-C117832-[Scenario] Resend OTP for more than 3 Times
    When User click "onboarding_otp_resend_code_button"
    Then User expect "onboarding_otp_notification" equal with "otp_notification_message"
    And "onboarding_delete_button" will be displayed

  @android @ios @uispecific
  Scenario:JENI6595-C125063-[Scenario] User onboard with valid email and phone number 1
    Given User is on onboarding phone page
    When User fill "onboarding_email_address_textfield" with random "valid_email" 
    And User fill "onboarding_phone_number_textfield" with random "phone_number_with_+62"
    And User click "onboarding_next_button"
    Then "onboarding_otp_1_box" will be displayed

  @android @ios @uispecific
  Scenario:JENI6595-C125063-[Scenario] User onboard with valid email and phone number 2
    Given User is on onboarding phone page
    When User fill "onboarding_email_address_textfield" with random "valid_email" 
    And User fill "onboarding_phone_number_textfield" with random "valid_phone_number"
    And User click "onboarding_next_button"
    Then "onboarding_otp_1_box" will be displayed

  @android @ios @uispecific
  Scenario:JENI6595-C125064-[Scenario] User onboard with invalid email 1
    Given User is on onboarding phone page
    When User fill "onboarding_email_address_textfield" with "invalid_email_1" 
    And User fill "onboarding_phone_number_textfield" with "valid_phone_number"
    And User click "onboarding_next_button"
    Then "onboarding_emailandphone_page_title" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI6595-C125064-[Scenario] User onboard with invalid email 2
    When User fill "onboarding_email_address_textfield" with "valid_email" 
    And User fill "onboarding_phone_number_textfield" with random "phone_number_with_021"
    And User click "onboarding_next_button"
    Then "onboarding_emailandphone_page_title" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI6595-C125064-[Scenario] User onboard with invalid email 3
    When User fill "onboarding_email_address_textfield" with "invalid_email_3" 
    And User fill "onboarding_phone_number_textfield" with "valid_phone_number"
    And User click "onboarding_next_button"
    Then "onboarding_emailandphone_page_title" will be displayed

  @android @ios @uispecific @continuous
  Scenario:JENI6595-C125065-[Scenario] User onboard with invalid phone number
    When User fill "onboarding_email_address_textfield" with "valid_email" 
    And User fill "onboarding_phone_number_textfield" with "phone_number_rejected_user"
    And User click "onboarding_next_button"
    Then "onboarding_emailandphone_page_title" will be displayed

  @android @ios @uispecific
  Scenario:JENI6595-C125067-[Scenario] User onboard with registered email
    Given User is on onboarding phone page
    When User fill "onboarding_email_address_textfield" with "valid_email"
    And User fill "onboarding_phone_number_textfield" with random "phone_number_with_+62"
    And User click "onboarding_next_button"
    When User fill "correct_otp" for OTP or PIN
    And User click "onboarding_next_button"
    Then User expect "onboarding_email_address_underline_text" equal with "onboarding_notification_email_registered"
    When User fill "onboarding_email_address_textfield" with random "valid_email"
    And User click "onboarding_next_button"
    Then "onboarding_photo_page_title" will be displayed

  @android @ios @uispecific
  Scenario:JENI6595-C125068-[Scenario] User onboard with registered phone number
    Given User is on onboarding phone page
    When User fill "onboarding_email_address_textfield" with random "valid_email"
    And User fill "onboarding_phone_number_textfield" with "phone_number_active_user"
    And User click "onboarding_next_button"
    Then "onboarding_emailandphone_page_title" will be displayed

  @android @ios @uispecific
  Scenario:JENI6595-C125067-[Scenario] User onboard with registered email/phone
    Given User is on onboarding phone page
    When User fill "onboarding_email_address_textfield" with random "valid_email"
    And User fill "onboarding_phone_number_textfield" with random "phone_number_with_+62"
    And User click "onboarding_next_button"
    When User fill "correct_otp" for OTP or PIN
    Then "onboarding_photo_page_title" will be displayed

  @android @uispecific
  Scenario:JENI6595-C125066-[Scenario] User onboard with invalid email and phone number
    Given User is on onboarding phone page
    When User fill "onboarding_email_address_textfield" with random "invalid_email_1"
    And User fill "onboarding_phone_number_textfield" with random "phone_number_rejected_user"
    And User click "onboarding_next_button"
    Then "onboarding_emailandphone_page_title" will be displayed

  @android @uispecific
  Scenario:JENI6297-C127289-[Scenario] Check when user killed the app on Input Identity Information screen
    Given User is on onboarding identity page
    When User fill "onboarding_identity_fullname_textfield" with "valid_full_name"
    And User select "onboarding_identity_date_field" field and put "day" as day "month" as month "year" as year
    And User fill "onboarding_identity_ktp_textfield" with "valid_ktp"
    And User click "onboarding_next_button"
    And User wait 5 seconds
    And User kill app and reopen app
    And User is on application screen
    When User click "onboarding_register_button"
    When User change language into "english_language"
    And User click "onboarding_language_ok_next_button"
    Then "onboarding_mailing_build_dropdown" will be displayed
    And User click "back_button"
    And User expect "onboarding_identity_fullname_textfield" equal with "valid_full_name"
    And User expect "onboarding_identity_ktp_textfield" equal with "valid_ktp"
    And User expect "onboarding_identity_date_field_2" contains "day"

  @android @uispecific
  Scenario:JENI6297-C127290-[Scenario] Check when user killed the app on NPWP Information screen
    Given User is on onboarding question page
    When User click "onboarding_question_no_radio_button"
    And User select "onboarding_question_purpose_dropdown" dropdown with "onboarding_question_purpose_dropdown_value_1"
    And User select "onboarding_question_income_dropdown" dropdown with "onboarding_question_income_dropdown_value_2"
    And User swipe up until found "onboarding_question_source_dropdown"  
    And User select "onboarding_question_spending_dropdown" dropdown with "onboarding_question_spending_dropdown_value_1"
    And User select "onboarding_question_source_dropdown" dropdown with "onboarding_question_source_dropdown_value_1"
    And User swipe up until found "onboarding_question_position_dropdown"
    And User select "onboarding_question_industry_dropdown" dropdown with "onboarding_question_industry_dropdown_value_1"
    And User select "onboarding_question_position_dropdown" dropdown with "onboarding_question_position_dropdown_value_1"
    And User swipe up until found "onboarding_question_phone_textfield"
    And User fill "onboarding_question_company_name_textfield" with "valid_company_name"
    And User fill "onboarding_question_company_address_textfield" with "valid_company_address"
    And User fill "onboarding_question_city_textfield" with "valid_city"
    And User fill "onboarding_question_phone_textfield" with "valid_office_phone"
    And User swipe up until found "onboarding_question_related_npwp_radio_button"
    And User select "onboarding_question_related_dropdown" dropdown with "onboarding_question_related_dropdown_value_1"
    And User click "onboarding_question_related_ktp_radio_button"
    And User click "onboarding_question_related_npwp_radio_button"
    And User click "onboarding_next_button"
    And User wait 5 seconds
    And User kill app and reopen app
    And User is on application screen
    When User click "onboarding_register_button"
    When User change language into "english_language"
    And User click "onboarding_language_ok_next_button"
    And "onboarding_termandcondition_page_title" will be displayed
    And User click "back_button"
    And User swipe down until found "onboarding_question_no_radio_button"
    And User expect "onboarding_question_purpose_dropdown_default_value" equal with "onboarding_question_purpose_dropdown_value_1"
    And User expect "onboarding_question_income_dropdown_default_value" equal with "onboarding_question_income_dropdown_value_2"
    And User swipe up until found "onboarding_question_source_dropdown"  
    And User expect "onboarding_question_spending_dropdown_default_value" equal with "onboarding_question_spending_dropdown_value_1"
    And User expect "onboarding_question_source_dropdown_default_value" equal with "onboarding_question_source_dropdown_value_1"
    And User swipe up until found "onboarding_question_position_dropdown"
    And User expect "onboarding_question_industry_dropdown_default_value" equal with "onboarding_question_industry_dropdown_value_1"
    And User expect "onboarding_question_position_dropdown_default_value" equal with "onboarding_question_position_dropdown_value_1"
    And User swipe up until found "onboarding_question_phone_textfield"
    And User expect "onboarding_question_company_name_textfield_default_value" equal with "valid_company_name"
    And User expect "onboarding_question_company_address_textfield_default_value" equal with "valid_company_address"
    And User expect "onboarding_question_city_textfield" equal with "valid_city"
    And User expect "onboarding_question_phone_textfield" equal with "valid_office_phone"
    And User swipe up until found "onboarding_question_related_npwp_radio_button"
    And User expect "onboarding_question_related_dropdown_default_value" equal with "onboarding_question_related_dropdown_value_1"

  @android @uispecific
  Scenario:JENI6297-C127291-[Scenario] Check when user killed the app on Terms and Condition screen
    Given User is on onboarding term and condition page
    When User swipe up until found "onboarding_termandcondition_approval_2"
    And User click "onboarding_termandcondition_approval_1"
    And User click "onboarding_termandcondition_approval_2"
    And User click "onboarding_next_button"
    And User wait 5 seconds
    And User kill app and reopen app
    And User is on application screen
    When User click "onboarding_register_button"
    When User change language into "english_language"
    And User click "onboarding_language_ok_next_button"
    When User swipe up until found "onboarding_termandcondition_approval_2"
    And User expect "onboarding_termandcondition_approval_1_icon" equal with "save_it_checkbox_unticked"
    And User expect "onboarding_termandcondition_approval_2_icon" equal with "save_it_checkbox_unticked"
    And User click "back_button"
    And User swipe down until found "onboarding_question_no_radio_button"
    And User expect "onboarding_question_purpose_dropdown_default_value" equal with "onboarding_question_purpose_dropdown_value_1"
    And User expect "onboarding_question_income_dropdown_default_value" equal with "onboarding_question_income_dropdown_value_2"
    And User swipe up until found "onboarding_question_source_dropdown"  
    And User expect "onboarding_question_spending_dropdown_default_value" equal with "onboarding_question_spending_dropdown_value_1"
    And User expect "onboarding_question_source_dropdown_default_value" equal with "onboarding_question_source_dropdown_value_1"
    And User swipe up until found "onboarding_question_position_dropdown"
    And User expect "onboarding_question_industry_dropdown_default_value" equal with "onboarding_question_industry_dropdown_value_1"
    And User expect "onboarding_question_position_dropdown_default_value" equal with "onboarding_question_position_dropdown_value_1"
    And User swipe up until found "onboarding_question_phone_textfield"
    And User expect "onboarding_question_company_name_textfield_default_value" equal with "valid_company_name"
    And User expect "onboarding_question_company_address_textfield_default_value" equal with "valid_company_address"
    And User expect "onboarding_question_city_textfield" equal with "valid_city"
    And User expect "onboarding_question_phone_textfield" equal with "valid_office_phone"
    And User swipe up until found "onboarding_question_related_npwp_radio_button"
    And User expect "onboarding_question_related_dropdown_default_value" equal with "onboarding_question_related_dropdown_value_1"

  @android @uispecific
  Scenario:JENI6297-C127327-[Scenario] Check when user killed the app on Create Cashtag screen
    Given User is on onboarding cashtag page
    And User fill "onboarding_cashtag_textfield" with random "correct_cashtag_1"
    And User click "onboarding_next_button"
    And User wait 5 seconds
    And User kill app and reopen app
    And User is on application screen
    When User click "onboarding_register_button"
    When User change language into "english_language"
    And User click "onboarding_language_ok_next_button"
    When User swipe up until found "onboarding_termandcondition_approval_2"
    And User expect "onboarding_termandcondition_approval_1_icon" equal with "save_it_checkbox_unticked"
    And User expect "onboarding_termandcondition_approval_2_icon" equal with "save_it_checkbox_unticked"
    And User click "back_button"
    And User swipe down until found "onboarding_question_no_radio_button"
    And User expect "onboarding_question_purpose_dropdown_default_value" equal with "onboarding_question_purpose_dropdown_value_1"
    And User expect "onboarding_question_income_dropdown_default_value" equal with "onboarding_question_income_dropdown_value_2"
    And User swipe up until found "onboarding_question_source_dropdown"  
    And User expect "onboarding_question_spending_dropdown_default_value" equal with "onboarding_question_spending_dropdown_value_1"
    And User expect "onboarding_question_source_dropdown_default_value" equal with "onboarding_question_source_dropdown_value_1"
    And User swipe up until found "onboarding_question_position_dropdown"
    And User expect "onboarding_question_industry_dropdown_default_value" equal with "onboarding_question_industry_dropdown_value_1"
    And User expect "onboarding_question_position_dropdown_default_value" equal with "onboarding_question_position_dropdown_value_1"
    And User swipe up until found "onboarding_question_phone_textfield"
    And User expect "onboarding_question_company_name_textfield_default_value" equal with "valid_company_name"
    And User expect "onboarding_question_company_address_textfield_default_value" equal with "valid_company_address"
    And User expect "onboarding_question_city_textfield" equal with "valid_city"
    And User expect "onboarding_question_phone_textfield" equal with "valid_office_phone"
    And User swipe up until found "onboarding_question_related_npwp_radio_button"
    And User expect "onboarding_question_related_dropdown_default_value" equal with "onboarding_question_related_dropdown_value_1"

  @android @uispecific
  Scenario:JENI6297-C127327-[Scenario] Check when user killed the app on Create Cashtag screen
    Given User is on onboarding card page
    And User swipe up until found "onboarding_card_name_dropdown"
    When User select "onboarding_card_name_dropdown" dropdown with "onboarding_card_name_dropdown_middle_last_initial"
    And User wait 5 seconds
    And User kill app and reopen app
    And User is on application screen
    When User click "onboarding_register_button"
    When User change language into "english_language"
    And User click "onboarding_language_ok_next_button"
    When User swipe up until found "onboarding_termandcondition_approval_2"
    And User expect "onboarding_termandcondition_approval_1_icon" equal with "save_it_checkbox_unticked"
    And User expect "onboarding_termandcondition_approval_2_icon" equal with "save_it_checkbox_unticked"
    And User click "back_button"
    And User swipe down until found "onboarding_question_no_radio_button"
    And User expect "onboarding_question_purpose_dropdown_default_value" equal with "onboarding_question_purpose_dropdown_value_1"
    And User expect "onboarding_question_income_dropdown_default_value" equal with "onboarding_question_income_dropdown_value_2"
    And User swipe up until found "onboarding_question_source_dropdown"  
    And User expect "onboarding_question_spending_dropdown_default_value" equal with "onboarding_question_spending_dropdown_value_1"
    And User expect "onboarding_question_source_dropdown_default_value" equal with "onboarding_question_source_dropdown_value_1"
    And User swipe up until found "onboarding_question_position_dropdown"
    And User expect "onboarding_question_industry_dropdown_default_value" equal with "onboarding_question_industry_dropdown_value_1"
    And User expect "onboarding_question_position_dropdown_default_value" equal with "onboarding_question_position_dropdown_value_1"
    And User swipe up until found "onboarding_question_phone_textfield"
    And User expect "onboarding_question_company_name_textfield_default_value" equal with "valid_company_name"
    And User expect "onboarding_question_company_address_textfield_default_value" equal with "valid_company_address"
    And User expect "onboarding_question_city_textfield" equal with "valid_city"
    And User expect "onboarding_question_phone_textfield" equal with "valid_office_phone"
    And User swipe up until found "onboarding_question_related_npwp_radio_button"
    And User expect "onboarding_question_related_dropdown_default_value" equal with "onboarding_question_related_dropdown_value_1" 

  @android @uispecific
  Scenario:JENI6297-C127291-[Scenario] Check when user killed the app on Terms and Condition screen
    Given User is on onboarding term and condition page
    And User wait 5 seconds
    And User kill app and reopen app
    And User is on application screen
    When User click "onboarding_register_button"
    When User change language into "english_language"
    And User click "onboarding_language_ok_next_button"
    When User swipe up until found "onboarding_termandcondition_approval_2"
    And User expect "onboarding_termandcondition_approval_1_icon" equal with "save_it_checkbox_unticked"
    And User expect "onboarding_termandcondition_approval_2_icon" equal with "save_it_checkbox_unticked"
    And User click "back_button"
    And User swipe down until found "onboarding_question_no_radio_button"
    And User expect "onboarding_question_purpose_dropdown_default_value" equal with "onboarding_question_purpose_dropdown_value_1"
    And User expect "onboarding_question_income_dropdown_default_value" equal with "onboarding_question_income_dropdown_value_2"
    And User swipe up until found "onboarding_question_source_dropdown"  
    And User expect "onboarding_question_spending_dropdown_default_value" equal with "onboarding_question_spending_dropdown_value_1"
    And User expect "onboarding_question_source_dropdown_default_value" equal with "onboarding_question_source_dropdown_value_1"
    And User swipe up until found "onboarding_question_position_dropdown"
    And User expect "onboarding_question_industry_dropdown_default_value" equal with "onboarding_question_industry_dropdown_value_1"
    And User expect "onboarding_question_position_dropdown_default_value" equal with "onboarding_question_position_dropdown_value_1"
    And User swipe up until found "onboarding_question_phone_textfield"
    And User expect "onboarding_question_company_name_textfield_default_value" equal with "valid_company_name"
    And User expect "onboarding_question_company_address_textfield_default_value" equal with "valid_company_address"
    And User expect "onboarding_question_city_textfield" equal with "valid_city"
    And User expect "onboarding_question_phone_textfield" equal with "valid_office_phone"
    And User swipe up until found "onboarding_question_related_npwp_radio_button"
    And User expect "onboarding_question_related_dropdown_default_value" equal with "onboarding_question_related_dropdown_value_1" 