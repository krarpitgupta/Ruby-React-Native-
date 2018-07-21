class HomePage

  #########################################################################################################
  #       Description         : This method is used to initialize the driver
  #       Created By          : Novi
  #       Parameters          : driver (describe the appium driver)
  #       Return Value        : No need to return some values, since it's only an action that appium driver should do
  #       Example             : initialize(driver) [It will be used as global function and will be run automatically]
  #       Modified By         :
  #       Date                :
  #       Modify Description  :
  ########################################################################################################

  def initialize(driver)
    begin
      $driver = driver
    rescue Exception => e
      raise e.message
      raise e.backtrace.inspect
    end
  end

#########################################################################################################
#       Description         : This method is used to clear the textfield
#       Created By          : Trino
#       Parameters          : element (describes locator value)
#       Return Value        : No need to return some values, since it's only an action that appium driver should do
#       Example             : user_clear(element_data_set)
#       Modified By         :
#       Date                :
#       Modify Description  :
########################################################################################################

  def user_clear (element)
    begin
      key_processor(element)
      ****_clear(@selector, @locator)
    rescue Exception => e
      raise e.message
      raise e.backtrace.inspect
    end
  end

#########################################################################################################
#       Description         : This method is used to fill the textfield
#       Created By          : Novi
#       Parameters          : element (describes locator value)
#                           : data (describe the test data that will be inputted on the textfield)
#       Return Value        : No need to return some values, since it's only an action that appium driver should do
#       Example             : user_fill(element_data_set,data_set)
#       Modified By         :
#       Date                :
#       Modify Description  :
########################################################################################################

  def user_fill (element, data)
    begin
      key_processor(element)
      ****_fill(@selector, @locator, data)
    rescue Exception => e
      raise e.message
      raise e.backtrace.inspect
    end
  end

  def user_click(element)
    begin
      key_processor(element)
      ****_click(@selector,@locator)
    rescue Exception => e
      raise e.message
    end
  end

#########################################################################################################
#       Description         : Used to click an element until other element displayed
#       Created By          : Gilang Bintang
#       Parameters          : element1 (describes locator value of element clicked)
#                           : element2 (describes locator value of element expected to be displayed)
#       Return Value        : Appium element
#       Example             : user_click_until('id:HamburgerButton', 'xpath://view.android.viewgroup[@text='Card Center']')
#       Modified By         : <Name Of Person>
#       Date                : <Date On Which Modified>
#       Modify Description  : <Description of the modification>
########################################################################################################

  def user_click_until(element1, element2)
    begin
      key_processor(element1)
      locator1 = @locator
      selector1 = @selector

      key_processor(element2)
      locator2 = @locator
      selector2 = @selector

      ****_click_until(selector1, locator1, selector2, locator2)
    rescue Exception => e
      raise e.message
      raise e.backtrace.inspect
    end
  end

#########################################################################################################
#       Description         : Used to click an element until other element is gone
#       Created By          : Trino
#       Parameters          : element1 (describes locator value of element clicked)
#                           : element2 (describes locator value of element expected to be gone)
#       Return Value        : Appium element
#       Example             : user_click_until_gone('id:HamburgerButton', 'xpath://view.android.viewgroup[@text='Card Center']')
#       Modified By         : <Name Of Person>
#       Date                : <Date On Which Modified>
#       Modify Description  : <Description of the modification>
########################################################################################################

  def user_click_until_gone(element1, element2)
    begin
      key_processor(element1)
      locator1 = @locator
      selector1 = @selector

      key_processor(element2)
      locator2 = @locator
      selector2 = @selector

      ****_click_until_gone(selector1, locator1, selector2, locator2)
    rescue Exception => e
      raise e.message
      raise e.backtrace.inspect
    end
  end

  def user_expect(element, data)
    begin
      key_processor(element)
      return ****_expect(@selector, @locator, data)
    rescue Exception => e
      raise e.message
      raise e.backtrace.inspect
    end
  end

#########################################################################################################
#       Description         : Used to check if an element contains expected string
#       Created By          : Gilang Bintang
#       Parameters          : element (describes locator value)
#                           : expectation (describes the value inside test data)
#       Return Value        : Boolean
#       Example             : user_expect_contains('error_message','wrong_password')
#       Modified By         : <Name Of Person>
#       Date                : -
#       Modify Description  : <Description of the modification>
########################################################################################################

  def user_expect_contains(element, data)
    begin
      key_processor(element)
      return ****_expect_contains(@selector, @locator, data)
    rescue Exception => e
      raise e.message
      raise e.backtrace.inspect
    end
  end

  def user_expect_not_equal(element, data)
    begin
      key_processor(element)
      ****_expect_not_equal(@selector, @locator, data)
    rescue Exception => e
      raise e.message
      raise e.backtrace.inspect
    end
  end

#########################################################################################################
#       Description         : Used to check if an element value is more than the expected value.
#       Created By          : Trino
#       Parameters          : element (describes locator value) (number)
#                           : expectation (describes the value inside test data) (number)
#       Return Value        : Boolean
#       Example             : user_expect_more_than('actual_value','expected_value')
#       Modified By         : <Name Of Person>
#       Date                : -
#       Modify Description  : <Description of the modification>
########################################################################################################

  def user_expect_more_than(element, data)
    begin
      key_processor(element)
      return ****_expect_more_than(@selector, @locator, data)
    rescue Exception => e
      raise e.message
      raise e.backtrace.inspect
    end
  end

#########################################################################################################
#       Description         : Used to check if an element value is less than the expected value.
#       Created By          : Trino
#       Parameters          : element (describes locator value) (number)
#                           : expectation (describes the value inside test data) (number)
#       Return Value        : Boolean
#       Example             : user_expect_less_than('actual_value','expected_value')
#       Modified By         : <Name Of Person>
#       Date                : -
#       Modify Description  : <Description of the modification>
########################################################################################################

  def user_expect_less_than(element, data)
    begin
      key_processor(element)
      return ****_expect_less_than(@selector, @locator, data)
    rescue Exception => e
      raise e.message
      raise e.backtrace.inspect
    end
  end

  def user_expect_displayed?(element, timeout = AVG_WAIT)
    begin
      key_processor(element)
      return ****_expect_displayed?(@selector, @locator, timeout)
    rescue Exception => e
      raise e.message
      raise e.backtrace.inspect
    end
  end

  def user_expect_not_displayed?(element, timeout = AVG_WAIT)
    begin
      key_processor(element)
      ****_expect_not_displayed?(@selector, @locator, timeout)
    rescue Exception => e
      raise e.message
      raise e.backtrace.inspect
    end
  end

#########################################################################################################
#       Description         : Used to get a text from an element
#       Created By          : Gilang Bintang
#       Parameters          : element (describes locator value of element)
#       Return Value        : Appium element
#       Example             : user_get_text('id:TutorialHeader')
#       Modified By         : <Name Of Person>
#       Date                : <Date On Which Modified>
#       Modify Description  : <Description of the modification>
########################################################################################################

  def user_get_text(element)
    begin
      key_processor(element)
      return ****_get_text(@selector, @locator)
    rescue Exception => e
      raise e.message
      raise e.backtrace.inspect
    end
  end

#########################################################################################################
#       Description         : Used to get a value from an element
#       Created By          : Gilang Bintang
#       Parameters          : element (describes locator value of element)
#       Return Value        : Appium element
#       Example             : user_get_value('id:GenderRadioButton_Female')
#       Modified By         : <Name Of Person>
#       Date                : <Date On Which Modified>
#       Modify Description  : <Description of the modification>
########################################################################################################

  def user_get_value(element)
    begin
      key_processor(element)
      ****_get_text(@selector, @locator)
    rescue Exception => e
      raise e.message
      raise e.backtrace.inspect
    end
  end

  def user_wait(element)
    begin
      key_processor(element)
      ****_wait(@selector, @locator)
    rescue Exception => e
      raise e.message
      raise e.backtrace.inspect
    end
  end

  def user_wait_true(timeout = DEFAULT_TIMEOUT)
    begin
      ****_wait_true(timeout)
    rescue Exception => e
      raise e.message
      raise e.backtrace.inspect
    end
  end

  def user_wait_gone(element, timeout = DEFAULT_TIMEOUT)
    begin
      key_processor(element)
      ****_wait_gone(@selector, @locator, timeout)
    rescue Exception => e
      raise e.message
      raise e.backtrace.inspect
    end
  end

  def user_scroll_to(element)
    begin
      key_processor(element)
      #****_scroll_to(@selector, @locator)
      ****_scroll_to(@locator)
    rescue Exception => e
      raise e.message
      raise e.backtrace.inspect
    end
  end

  def user_swipe_to(element1, element2)
    key_processor(element1)
    selector1 = @selector
    locator1 = @locator

    key_processor(element2)
    selector2 = @selector
    locator2 = @locator

    ****_swipe_to(selector1, locator1, selector2, locator2)
  end

  def user_swipe_left(element = nil)
    if !element.nil?
      key_processor(element)
      ****_swipe_left(@selector, @locator)
    else
      ****_swipe_left
    end
  end

  def user_swipe_right(element = nil)
    if !element.nil?
      key_processor(element)
      ****_swipe_right(@selector, @locator)
    else
      ****_swipe_right
    end
  end

  def user_expect_not_focusable(element)
    key_processor(element)
    return ****_expect_not_focusable(@selector, @locator)
  end

  def user_expect_count(element, data)
    key_processor(element)
    return ****_expect_count(@selector, @locator, data)
  end

  def user_swipe_up
    begin
      ****_swipe_up
    rescue Exception => e
      raise e.message
      raise e.backtrace.inspect
    end
  end

  def user_swipe_up_element(element)
    begin
      key_processor(element)
      ****_swipe_up_element(@selector, @locator)
    rescue Exception => e
      raise e.message
      raise e.backtrace.inspect
    end
  end

  def user_swipe_down_element(element)
    begin
      key_processor(element)
      ****_swipe_down_element(@selector, @locator)
    rescue Exception => e
      raise e.message
      raise e.backtrace.inspect
    end
  end

  def user_swipe_down
    begin
      ****_swipe_down
    rescue Exception => e
      raise e.message
      raise e.backtrace.inspect
    end
  end

  def user_hide_keyboard
    begin
      ****_hidekeyboard
    rescue Exception => e
      raise e.message
      raise e.backtrace.inspect
    end
  end

  def user_find_elements(element)
    begin
      key_processor(element)
      ****_find_elements(@selector, @locator)
    rescue Exception => e
      raise e.message
      raise e.backtrace.inspect
    end
  end

  def user_find_element(element, timeout = DEFAULT_TIMEOUT)
    begin
      key_processor(element)
      ****_find(@selector, @locator, timeout)
    rescue Exception => e
      raise e.message
      raise e.backtrace.inspect
    end
  end

  def user_slide_distance(element, distance)
    begin
      key_processor(element)
      ****_slide_element(@selector, @locator, distance)
    rescue Exception => e
      raise e.message
      raise e.backtrace.inspect
    end
  end

  def user_slide_month(element1, element2, data1, data2)
    begin
      key_processor(element1)
      locator1 = @locator
      selector1 = @selector

      key_processor(element2)
      locator2 = @locator
      selector2 = @selector

      ****_slide_month_slider_element(selector1, locator1, selector2, locator2, data1, data2)
    rescue Exception => e
      raise e.message
      raise e.backtrace.inspect
    end
  end

  def user_slide_principal(element, scale)
    begin
      key_processor(element)
      ****_slide_principal_slider_element(@selector, @locator, scale)
    rescue Exception => e
      raise e.message
      raise e.backtrace.inspect
    end
  end

  def user_get_elements(element)
    begin
      key_processor(element)
      return ****_find_elements(@selector, @locator)
    rescue Exception => e
      raise e.message
      raise e.backtrace.inspect
    end
  end

#########################################################################################################
#       Description         : Used to get width from an element
#       Created By          : Novi
#       Parameters          : element (describes locator value of element)
#       Return Value        : Appium element
#       Example             : user_get_widtgh('id:TutorialHeader')
#       Modified By         : <Name Of Person>
#       Date                : <Date On Which Modified>
#       Modify Description  : <Description of the modification>
########################################################################################################
  def user_get_width(element)
    begin
      key_processor(element)
      return ****_get_width(@selector, @locator)
    rescue Exception => e
      raise e.message
      raise e.backtrace.inspect
    end
  end

#########################################################################################################
#       Description         : Used to turn off wifi
#       Created By          : Alexander Jackhariyas
#       Parameters          : element (describes locator value of element)
#       Return Value        : Appium element
#       Example             : user_turn_off_wifi
#       Modified By         : <Name Of Person>
#       Date                : <Date On Which Modified>
#       Modify Description  : <Description of the modification>
########################################################################################################
  def user_turn_off_wifi
    $driver.set_network_connection(0)
  end

#########################################################################################################
#       Description         : Used to turn on wifi
#       Created By          : Alexander Jackhariyas
#       Parameters          : element (describes locator value of element)
#       Return Value        : Appium element
#       Example             : user_turn_on_wifi
#       Modified By         : <Name Of Person>
#       Date                : <Date On Which Modified>
#       Modify Description  : <Description of the modification>
########################################################################################################
  def user_turn_on_wifi
    $driver.set_network_connection(6)
  end

#########################################################################################################
#       Description         : Uses for minimize the app and wait till couple second to reopen
#       Created By          : Alexander Jackhariyas
#       Parameters          : -
#       Return Value        : NA
#       Example             : User close app and reopen app
#       Modified By         : <Name Of Person>
#       Date                : 31 May 2017
#       Modify Description  : <Description of the modification>
########################################################################################################
  def user_close_and_reopen_app(time)
    $driver.background_app(time)
  end

#########################################################################################################
#       Description         : Uses for kill the app and wait till couple second to reopen
#       Created By          : Alexander Jackhariyas
#       Parameters          : -
#       Return Value        : NA
#       Example             : User close app and reopen app
#       Modified By         : <Name Of Person>
#       Date                : 31 May 2017
#       Modify Description  : <Description of the modification>
########################################################################################################
  def user_kill_and_reopen_app
    $driver.close_app
    $driver.background_app(3)
  end

#########################################################################################################
#       Description         : Uses for clicking back button on device
#       Created By          : Alexander Jackhariyas
#       Parameters          : -
#       Return Value        : NA
#       Example             : User press back button on device
#       Modified By         : <Name Of Person>
#       Date                : 31 May 2017
#       Modify Description  : <Description of the modification>
########################################################################################################
  def user_press_back_button
    $driver.press_keycode(4)
  end

#########################################################################################################
#       Description         : Uses for reset app, only for android
#       Created By          : Alexander Jackhariyas
#       Parameters          : -
#       Return Value        : NA
#       Example             : user_reset_app
#       Modified By         : <Name Of Person>
#       Date                : 31 May 2017
#       Modify Description  : <Description of the modification>
########################################################################################################
  def user_reset_app
    $driver.reset
  end

#########################################################################################################
#       Description         : Uses for reinstall app, only for ios
#       Created By          : Alexander Jackhariyas
#       Parameters          : -
#       Return Value        : NA
#       Example             : user_reinstall_app
#       Modified By         : <Name Of Person>
#       Date                : 31 May 2017
#       Modify Description  : <Description of the modification>
########################################################################################################
  def user_reinstall_app
    $driver.close_app
    $driver.remove_app("com.****.****2.dev")#ini fixed nama app idnya?
    $driver.launch_app
  end

  private
  def key_processor(element)
    begin
      @selector = element.split(':').first
      @locator = element.partition(':').last
    rescue Exception => e
      raise e.message
    end
  end
end
