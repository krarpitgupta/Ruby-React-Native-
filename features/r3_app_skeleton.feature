@r3_app_skeleton

Feature: Testing for Release 3 App Skeleton

   # JENI1643  
      @android @uispecific
     Scenario:JENI1643-C68317-User has no Internet connection
        Given User is on dashboard page in English language with "dashboard_inactive_account"
        When User turn off network connection for data and wifi
        When User turn on network connection for data and wifi
 
      @android @uispecific 
     Scenario:JENI1643-C68318-Server is not responding
        Given User is on dashboard page in English language with "dashboard_inactive_account"
        When User turn off network connection for data and wifi
        When User turn on network connection for data and wifi
  
      
      @android @uispecific 
     Scenario:JENI1643-C68319-Server stopped responding
        Given User is on dashboard page in English language with "dashboard_inactive_account"
        When User turn off network connection for data and wifi
        When User turn on network connection for data and wifi
  
      
      @android @uispecific
     Scenario:JENI1643-C68320-Internet connection lost while using the app
       Given User is on dashboard page in English language with "dashboard_inactive_account"
       When User turn off network connection for data and wifi
       When User turn on network connection for data and wifi
 
     
     @android @uispecific 
    Scenario:JENI1643-C68322-Server timed out
       Given User is on dashboard page in English language with "dashboard_inactive_account"
       When User turn off network connection for data and wifi
       When User turn on network connection for data and wifi

    #JENI66 
    @android @uispecific
    Scenario:JENI1643-C16827-[Layout] Check GUI of Top Header when user already logged in 
    	Given User is on dashboard page in English language with "dashboard_inactive_account"


    #JENI65
     @android @ios @uispecific
     Scenario:JENI65-C16899-Check Side-panel in mobile should slide out on tapping the hamburger icon
     	Given User is on dashboard page in English language with "dashboard_inactive_account"
        And User click "dashboard_hamburger_icon"
        And User swipe down until found "dashboard_side_panel"

     @android @ios @uispecific
     Scenario:JENI65-C16902-Check Hamburger icon should be hidden when Side-panel is sliding out
        Given User is on dashboard page in English language with "dashboard_active_account"
        And User click "dashboard_hamburger_icon"

     @android @ios @uispecific 
     Scenario:JENI65-C16903-Check Hamburger icon should be visible when Side-panel is sliding in
        Given User is on dashboard page in English language with "dashboard_active_account"
        When User click "dashboard_hamburger_icon"

     @android @ios @uispecific
     Scenario:JENI65-C16905-Check the side-panel items are clickable and work correctly
        Given User is on dashboard page in English language with "dashboard_active_account"
        Then "dashboard_****_logo" will be displayed

     @android @ios @uispecific
  	 Scenario:JENI65-C16906-Check the side-panel item icons are clickable and work correctly
        Given User is on dashboard page in English language with "dashboard_active_account"
        Then "dashboard_****_logo" will be displayed
