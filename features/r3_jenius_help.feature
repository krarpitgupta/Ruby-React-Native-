@r3_****help
Feature: R3 **** Help

# JENI-6303
@uispecific	@android
Scenario: JENI6303-C103068-[Scenario] Accessing **** Help page

  Given User is logged in with cif "card_center_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User access **** help from side menu
  Then element with "help_page" text will be displayed

@uispecific @android
Scenario: JENI6303-C109173-Information of the **** Help landing page

  Given User is logged in with cif "card_center_active_m_card_cif"
  And User change language to "language"
  Then "dashboard" will be displayed
  And User access **** help from side menu
  Then element with "help_page" text will be displayed
  Then "dashboard_hamburger_icon" will be displayed
  Then "****_help_tab_contact" will be displayed
  Then "****_help_tab_faq" will be displayed
  Then "****_help_avatar" will be displayed
  Then "****_help_greeting" will be displayed
  Then "****_help_action_call" will be displayed
  Then "****_help_action_chat" will be displayed
  Then "****_help_action_email" will be displayed
  Then "****_help_tnc" will be displayed
  And User swipe up until found "****_help_feedback"

# JENI-5722
@uispecific @android
Scenario: JENI6303-C103068-[Scenario] Accessing **** Help page

  Given User is logged in with cif "card_center_active_m_card_cif"
  #And User change language to "language"
  Then "dashboard" will be displayed
  And User access **** help from side menu
  And User click "****_help_tab_faq"
  Then "****_help_faq_page" will be displayed


