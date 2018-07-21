require 'rubygems'
require 'rspec/expectations'

#########################################################################################################
#       Description         : Used for clicking element
#       Created By          : Alexander Jackhariyas
#       Parameters          : selector (describes the locator strategy i.e. id/name/xpath)
#                           : element (describes locator value)
#       Return Value        : NA
#       Example             : ****_click('id', 'start_button')
#       Modified By         : <Name Of Person>
#       Date                : 31 May 2017
#       Modify Description  : <Description of the modification>
########################################################################################################

def ****_click(selector, element)
 begin
   appium_element = wait_for_clickable_element(selector, element)

   appium_element.click
 rescue Exception => e
   raise e.message
   raise e.backtrace.inspect
 end
end

def wait_for_clickable_element(selector, element, timeout = LONG_WAIT)
  begin
    wait = Selenium::WebDriver::Wait.new(:timeout => timeout)
    element = wait.until { ****_find(selector, element) }
    wait.until { element.displayed? }
    wait.until { element.enabled? }
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end

  return element
end

#########################################################################################################
#       Description         : Used to click an element until other element displayed
#       Created By          : Gilang Bintang
#       Parameters          : selector1 (describes the locator strategy i.e. id/name/xpath of element clicked)
#                           : element1 (describes locator value of element clicked)
#                           : selector2 (describes the locator strategy i.e. id/name/xpath of element expected to be displayed)
#                           : element2 (describes locator value of element expected to be displayed)
#       Return Value        : Appium element
#       Example             : ****_click_until('id', 'HamburgerButton', 'xpath', 'view.android.viewgroup[@text='Card Center']')
#       Modified By         : <Name Of Person>
#       Date                : <Date On Which Modified>
#       Modify Description  : <Description of the modification>
########################################################################################################

def ****_click_until(selector1, element1, selector2, element2, timeout = LONG_WAIT)
  begin
    Timeout::timeout(timeout) {click_while(selector1, element1, selector2, element2)}
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end
end

private

#########################################################################################################
#       Description         : Used for looping click action until expected element displayed
#       Created By          : Gilang Bintang
#       Parameters          : selector, element, expected_selector, expected_element
#       Return Value        : Boolean
#       Example             : click_while(selector1, element1, selector2, element2)
#       Modified By         : -
#       Date                : -
#       Modify Description  : -
########################################################################################################

def click_while(selector1, element1, selector2, element2, timeout = LONG_WAIT)
    begin
      ****_click(selector1, element1)
    end while(!****_expect_displayed?(selector2, element2, timeout))
    return true
end

#########################################################################################################
#       Description         : Used to click an element until other element gone
#       Created By          : Trino
#       Parameters          : selector1 (describes the locator strategy i.e. id/name/xpath of element clicked)
#                           : element1 (describes locator value of element clicked)
#                           : selector2 (describes the locator strategy i.e. id/name/xpath of element expected to be gone)
#                           : element2 (describes locator value of element expected to be gone)
#       Return Value        : Appium element
#       Example             : ****_click_until_gone('id', 'HamburgerButton', 'xpath', 'view.android.viewgroup[@text='Card Center']')
#       Modified By         : <Name Of Person>
#       Date                : <Date On Which Modified>
#       Modify Description  : <Description of the modification>
########################################################################################################

def ****_click_until_gone(selector1, element1, selector2, element2, timeout = DEFAULT_TIMEOUT)
  begin
    Timeout::timeout(timeout) {click_while_displayed(selector1, element1, selector2, element2)}
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end
end

private

#########################################################################################################
#       Description         : Used for looping click action until expected element is gone
#       Created By          : Trino
#       Parameters          : selector, element, expected_selector, expected_element
#       Return Value        : Boolean
#       Example             : click_while_displayed(selector1, element1, selector2, element2)
#       Modified By         : -
#       Date                : -
#       Modify Description  : -
########################################################################################################

def click_while_displayed(selector1, element1, selector2, element2, timeout = LONG_WAIT)
    while(****_expect_displayed?(selector2, element2, timeout)) do
      ****_click(selector1, element1)
    end 
    return true
end