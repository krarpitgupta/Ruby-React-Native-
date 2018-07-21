require 'rubygems'
require 'appium_lib'
require 'selenium-webdriver'

#########################################################################################################
#       Description         : Used for filling any text field
#       Created By          : Alexander Jackhariyas
#       Parameters          : selector (describes the locator strategy i.e. id/name/xpath)
#                           : element (describes locator value)
#                           : data (describes the value will be writen for send_key)
#       Return Value        : NA
#       Example             : ****_fill('id', 'start_button')
#       Modified By         : Arpit Gupta
#       Date                : 10 July 2017
#       Modify Description  : <Description of the modification>
########################################################################################################

def ****_fill(selector, element, data)
  begin
    appium_element = ****_find(selector, element)

    if ENV['PLATFORM_NAME'] == 'android'
      ****_clear(selector, element)
      appium_element.send_keys(data)
      ****_hidekeyboard
    elsif ENV['PLATFORM_NAME'] == 'ios'
      begin
        ****_clear(selector, element)
      rescue Exception
      end
      appium_element.send_keys(data)
      sleep 1
      appium_element.send_keys("\n")
    end
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end
end

#########################################################################################################
#       Description         : Used for clear any text field
#       Created By          : Trino
#       Parameters          : selector (describes the locator strategy i.e. id/name/xpath)
#                           : element (describes locator value)
#       Return Value        : NA
#       Example             : ****_clear('id', 'start_button')
#       Modified By         : <Name Of Person>
#       Date                : 19 June 2017
#       Modify Description  : <Description of the modification>
########################################################################################################

def ****_clear(selector, element)
  begin
    appium_element = ****_find(selector, element)
    if ENV['PLATFORM_NAME'] == 'android'
      appium_element.send_keys("\ue017")
    elsif ENV['PLATFORM_NAME'] == 'ios'
      appium_element.clear
    end
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end
end