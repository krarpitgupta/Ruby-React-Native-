#########################################################################################################
#       Description        : Used to get a text from an element
#       Created By         : Gilang Bintang
#       Parameters         : selector (describes the locator strategy i.e. id/name/xpath of element)
#                          : element (describes locator value of element)
#       Return Value       : Appium element
#       Example            : ****_get_text('id', 'PasswordField')
#       Modified By        : <Name Of Person>
#       Date               : <Date On Which Modified>
#       Modify Description : <Description of the modification>
########################################################################################################

def ****_get_text(selector, element)

  begin
    if ENV['PLATFORM_NAME'] == 'android'
      text = ****_find(selector, element).text
    elsif ENV['PLATFORM_NAME'] == 'ios'
      text = ****_find(selector, element).value
    end
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end

  return text

end

#########################################################################################################
#       Description        : Used to get a value of an element
#       Created By         : Gilang Bintang
#       Parameters         : selector (describes the locator strategy i.e. id/name/xpath of element)
#                          : element (describes locator value of element)
#       Return Value       : Appium element
#       Example            : ****_get_value('id', 'GenderRadioButton_Male')
#       Modified By        : <Name Of Person>
#       Date               : <Date On Which Modified>
#       Modify Description : <Description of the modification>
########################################################################################################

def ****_get_value(selector, element)

  begin
    value = ****_find(selector, element).value
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end

  return value

end

#########################################################################################################
#       Description        : Used to get width from an element
#       Created By         : Novi
#       Parameters         : selector (describes the locator strategy i.e. id/name/xpath of element)
#                          : element (describes locator value of element)
#       Return Value       : Appium element
#       Example            : ****_get_width('id', 'PasswordField')
#       Modified By        : <Name Of Person>
#       Date               : <Date On Which Modified>
#       Modify Description : <Description of the modification>
########################################################################################################

def ****_get_width(selector, element)
  begin
    width = (****_find(selector, element)).size.width
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end
  return width
end