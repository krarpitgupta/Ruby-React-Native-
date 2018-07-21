@notification @run  
Feature: Notification Center Module

  #JENI328
  @android @ios @uispecific
  Scenario:JENI328-C47595-Able to open the bell icon
    Given User is on dashboard page in English language with "dashboard_active_account"
    And User click "dashboard_notification_icon"
    Then "notification_title" will be displayed
    And "notification_request_tab" will be displayed
    And "notification_news_tab" will be displayed

  @android @ios @uidatabound
  Scenario:JENI328-C47598-Availability of In-App Notifications List
    Given User is on dashboard page in English language with "notification_various"
    And User click "dashboard_notification_icon"
    Then "notification_title" will be displayed
    And "notification_request_tab" will be displayed
    And "notification_news_tab" will be displayed
    And "notification_decline_button" will be displayed
    And "notification_send_money_button" will be displayed
  
  @android @ios @uidatabound
  Scenario:JENI328-C47749-Number of notification shown in red
    Given User is on dashboard page in English language with "notification_various"
    Then "notification_red_number_six_two" will be displayed
 
  @android @ios @uispecific
  Scenario:JENI328-C47607-Able to open the bell icon
    Given User is on dashboard page in English language with "dashboard_active_account"
    And User click "dashboard_notification_icon"
    Then "notification_title" will be displayed
    And "notification_request_tab" will be displayed
    And "notification_news_tab" will be displayed

  @android @ios @uispecific
  Scenario:JENI328-C47608-Descriptive text shown while apps has 0 notification
    Given User is on dashboard page in English language with "dashboard_active_account"
    And User click "dashboard_notification_icon"
    Then "notification_empty_image" will be displayed

  @android @ios @uispecific
  Scenario:JENI328-C47609-The bell icon shown while apps has 0 notification
    Given User is on dashboard page in English language with "dashboard_active_account"
    And User click "dashboard_notification_icon"
    Then "notification_empty_image" will be displayed
