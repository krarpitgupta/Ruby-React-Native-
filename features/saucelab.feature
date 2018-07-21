@saucelab
Feature: SauceLab UI Specific

  # DASHBOARD
  @android @ios @uispecific
  Scenario:JENI15-C47855-The profile picture is appear
    Given User is logged in with cif "cif_requestor_3_merge"
    And User change language to "language"

  @android @uidatabound @not_ready
  Scenario:JENI5711-C133971-Scenario: Group confirmation screen
    Given User can access **** contacts menu with "****_contacts_create_group"
    And User click "tutorial_close"
    And User click "****_contacts_favorite_tab"
    And User click "****_contacts_favorite_add"
    And User click "****_contacts_favorite_add_popup_add_group"
    And User click "****_contacts_create_group_contact_1_circle"
    And System save "****_contacts_create_group_contact_1_name" value
    And User click "****_contacts_create_group_contact_2_circle"
    And System save "****_contacts_create_group_contact_2_name" value
    And User click "****_contacts_create_group_create_button"
    Then User expect "****_contacts_create_group_page_field" is exist
    And User expect "****_contacts_create_group_page_field" equal with "****_contacts_create_group_page_field_default"
    And User expect "****_contacts_create_group_page_count" equal with "****_contacts_create_group_page_count_default"
    Then User expect "****_contacts_create_group_page_account_name" is exist
    Then User expect "****_contacts_create_group_page_****" is exist
    Given User is logged in with cif "card_center_special_card_delete_with_balance"
    And User change language to "language"
