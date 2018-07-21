#########################################################################################################
#       Description         : Used for Checking the display property of element
#       Created By          : Gilang Bintang
#       Parameters          : selector (describes the locator strategy i.e. id/name/xpath)
#                           : element (describes locator value)
#       Return Value        : Appium element
#       Example             : ****_display(‘accessibility_id’, 'DashboardContainer')
#       Modified By         : Alexander Jackhariyas
#       Date                : 19 June 2017
#       Modify Description  : add timeout and move bFound = flase before raise
########################################################################################################

def ****_display(selector, element, timeout = DEFAULT_TIMEOUT)
  bFound = false
  begin
    appium_element = ****_find(selector, element, timeout)
    bFound = appium_element.displayed?
  rescue Exception => e
    bFound = false
    raise e.message
    raise e.backtrace.inspect
  end
  return bFound
end