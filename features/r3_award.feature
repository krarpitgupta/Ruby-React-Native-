@r3_awards_registration @run  
Feature: Release 3 - AWARDS module

  #JENI934
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

  @android @ios @uispecific 
  Scenario:JENI934-C48011-Verify 'Award' link signed in w/ active account
    # Waiting CIF No for Active Account
    Given User is on dashboard page in English language with "awards_active_account"
    And User swipe up until found "awards_invite_someone_en"
    And User click "dashboard_awards_title"
    Then "awards_title" will be displayed

  @android @ios @uispecific 
  Scenario:JENI934-C48012-Verify Layout and Navigation to 'Awards Landing Page' signed in w/ in-progress account
    # Waiting CIF No w/ in-progress account
    Given User is on dashboard page in English language with "awards_inprogress_account"
    And User swipe up until found "dashboard_awards_title"
    And User click "dashboard_awards_title"
    Then "awards_title" will be displayed
    And "awards_invite_friend_en" will be displayed
    And "awards_invite_now" will be displayed
    And "awards_free_transaction" will be displayed
    And "awards_free_trans_see_detail" will be displayed

  @android @ios @uispecific
  Scenario:JENI1039-C47977-Verify user is able to click 'Send Invitation' button
    Given User is on dashboard page in English language with "awards_inactive_account" 
    And User swipe up until found "awards_invite_someone_en"
    And User click "awards_invite_someone_en"
    Then "awards_title_screen_en" will be displayed
    And User click "awards_invite_someone_en"

  @android @ios @uispecific
  Scenario:JENI934-C48014-Verify 'Award' link signed in w/ in-progress account
    # Waiting CIF No for In-progress Account
    Given User is on dashboard page in English language with "awards_inprogress_account"
    And User swipe up until found "dashboard_awards_title"
    And User click "dashboard_awards_title"
    Then "awards_title" will be displayed


  @android @ios @uispecific 
  Scenario:JENI934-C48015-Verify Layout and Navigation to 'Awards Landing Page' signed in w/ inactive account
    # Waiting CIF No w/ inactive account
    Given User is on dashboard page in English language with "awards_inactive_account"
    And User swipe up until found "dashboard_awards_title"
    And User click "dashboard_awards_title"
    Then "awards_title" will be displayed
    And "awards_invite_friend_en" will be displayed
    And "awards_invite_now" will be displayed
    And "awards_free_transaction" will be displayed
    And "awards_free_trans_see_detail" will be displayed


   @android @ios @uispecific 
  Scenario:JENI934-C48018-Verify 'Awards' link signed in w/ inactive account
    # Waiting CIF No for Inactive Account
    Given User is on dashboard page in English language with "awards_inactive_account"
    And User swipe up until found "dashboard_awards_title"
    And User click "dashboard_awards_title"
    Then "awards_title" will be displayed


#[JENI-1228]/[JENI-3143]
  @android @ios @uispecific 
  Scenario:JENI1228-C47755-[Functionality][Mobile] Verify if a preset text with my cashtag should get populated
    Given User is on dashboard page in English language with "awards_inactive_account" 
    And User click "dashboard_hamburger_icon"
    And User click "awards_menu"
    And User click "awards_invite_now"
    And User swipe up until found "awards_detail_text_three"
    Then "awards_detail_cashtag" will be displayed

#[JENI-1039]/[JENI-3143]
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
    And User wait 5 seconds
    And User click "awards_invite_someone_id"
    Then User expect "awards_title_screen_id" equal with "awards_title_screen_id"
    And User expect "awards_description_id" equal with "awards_description_id"
    And User expect "awards_how_id" equal with "awards_how_id"
 
  @android @ios @uispecific
  Scenario:JENI1039-C47979-Verify the Back button when user comes from Dashboard
    Given User is on dashboard page in English language with "awards_inactive_account" 
    And User swipe up until found "awards_invite_someone_en"
    And User click "awards_invite_someone_en"
    Then "awards_invite_someone_en" will be displayed
    When User click "back_button"
    Then "dashboard_****_logo" will be displayed


  @android @ios @uispecific 
  Scenario:JENI1039-C48079-Verify the Back button when user comes from Award Landing page
    Given User is on dashboard page in English language with "awards_inactive_account" 
    And User click "dashboard_hamburger_icon"
    And User click "awards_menu"
    Then "awards_invite_friend_en" will be displayed

    When User click "awards_invite_now"
    Then "awards_invite_someone_en" will be displayed

    When User click "back_button"
    Then "awards_title" will be displayed


#[JENI-1034]

  @android @ios @uispecific 
  Scenario:JENI1034-C47859-Verify free transactions section
    Given User is on dashboard page in English language with "awards_inactive_account"
    And User swipe up until found "awards_invite_someone_en"
    And User wait 5 seconds
    And User click "dashboard_awards_title"
    And User click "awards_free_trans_see_detail"
    Then "back_button" will be displayed
    And User expect "awards_free_trans_happy" is exist
    And User expect "awards_free_trans_your_quota" is exist
    And User expect "awards_free_trans_interbank" is exist
    And User expect "awards_free_trans_atm_cash" is exist

    When User click "back_button"
    Then "awards_title" will be displayed


  @android @ios @uispecific 
  Scenario:JENI1034-C47860-Verify the number of free transaction changed
    Given User is on dashboard page in English language with "awards_inactive_account"
    And User swipe up until found "awards_invite_someone_en"
    And User wait 5 seconds
    And User click "dashboard_awards_title"
    And User click "awards_free_trans_see_detail"
    Then "back_button" will be displayed
    And User expect "awards_free_trans_happy" is exist
    And User expect "awards_free_trans_your_quota" is exist
    And User expect "awards_free_trans_interbank" is exist
    And User expect "awards_free_trans_atm_cash" is exist
    #Will continue after awards back-end has been implemented
