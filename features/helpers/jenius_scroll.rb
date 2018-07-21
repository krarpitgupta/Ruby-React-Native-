########################################################################################################
#       Description         : Used for scrolling till found the targeted element
#       Created By          : Alexander Jackhariyas
#       Parameters          : selector (describes the locator strategy i.e. id/name/xpath)
#                           : element (describes locator value)
#       Return Value        : NA
#       Example             : ****_scroll_to('start_button')
#       Modified By         : Novi
#       Date                : 30-05-2017
#       Modify Description  : modify the scroll function for ios, to put the direction
########################################################################################################

def ****_scroll_to(element)
  begin
    if ENV['PLATFORM_NAME'] == 'android'
       text_element = element #scroll using text
       $driver.find_element(:uiautomator, "new UiScrollable(new UiSelector().scrollable(true).instance(0)).scrollIntoView(new UiSelector().text(\"#{text_element}\").instance(0))")
    elsif ENV['PLATFORM_NAME'] == 'ios'
      execute_script "mobile: scroll", direction: "down"
    end
 rescue Exception => e
   raise e.message
   raise e.backtrace.inspect
 end
end