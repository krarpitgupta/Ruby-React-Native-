#########################################################################################################
#       Description        : Used for finding element
#       Created By         : Gilang Bintang
#       Parameters         : selector (describes the locator strategy i.e. id/name/xpath)
#                          : element (describes locator value)
#                          : timeout (when the code should give up when searching the element)
#       Return Value       : Appium element
#       Example            : ****_find(‘accessibility_id’, 'DashboardContainer')
#       Modified By        : Eko Adi Prabowo
#       Date               : 16 November 2017
#       Modify Description : add new selector helper predicate
########################################################################################################

def ****_find(selector, element, timeout = DEFAULT_TIMEOUT)
  begin
    
    if selector == 'id'
      ****_wait_true(timeout) {$driver.find_element(:id, element)}
      appium_element = $driver.find_element(:id, element)
    elsif selector == 'name'
      ****_wait_true(timeout) {$driver.find_element(:name, element)}
      appium_element = $driver.find_element(:name, element)
    elsif selector == 'xpath'
      ****_wait_true(timeout) {$driver.find_element(:xpath, element)}
      appium_element = $driver.find_element(:xpath, element)
    elsif selector == 'accessibility_id'
      ****_wait_true(timeout) {$driver.find_element(:accessibility_id, element)}
      appium_element = $driver.find_element(:accessibility_id, element)
    elsif selector == 'predicate'
      ****_wait_true(timeout) {$driver.find_element(:predicate, element)}
      appium_element = $driver.find_element(:predicate, element)
    else
      raise 'Selector is not supported'
    end
  rescue Exception => e
      raise e.message
      raise e.backtrace.inspect
  end

  return appium_element

end


#########################################################################################################
#       Description        : Used for finding list of element
#       Created By         : Gilang Bintang
#       Parameters         : selector (describes the locator strategy i.e. id/name/xpath)
#                          : element (describes locator value)
#                          : timeout (when the code should give up when searching the element)
#       Return Value       : List of appium element
#       Example            : ****_find_elements(‘accessibility_id’, 'DashboardContainer')
#       Modified By        : <Name Of Person>
#       Date               : <Date On Which Modified>
#       Modify Description : <Description of the modification>
########################################################################################################

def ****_find_elements(selector, element, timeout = DEFAULT_TIMEOUT)

  begin

    if selector == 'id'
      ****_wait_true(timeout) {$driver.find_elements(:id, element).size != 0}
      appium_elements = $driver.find_elements(:id, element)
    elsif selector == 'name'
      ****_wait_true(timeout) {$driver.find_elements(:name, element).size != 0}
      appium_elements = $driver.find_elements(:name, element)
    elsif selector == 'xpath'
      ****_wait_true(timeout) {$driver.find_elements(:xpath, element).size != 0}
      appium_elements = $driver.find_elements(:xpath, element)
    elsif selector == 'accessibility_id'
      ****_wait_true(timeout) {$driver.find_elements(:accessibility_id, element).size != 0}
      appium_elements = $driver.find_elements(:accessibility_id, element)
    else
      raise 'Selector is not supported'
    end

  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end

  return appium_elements

end