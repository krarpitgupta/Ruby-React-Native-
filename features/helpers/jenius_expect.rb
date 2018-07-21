#########################################################################################################
#       Description         : Uses for comparing the element text with test data
#       Created By          : Alexander Jackhariyas
#       Parameters          : selector (describes the locator strategy i.e. id/name/xpath)
#                           : element (describes locator value)
#                           : expectation (describes the value inside test data)
#       Return Value        : True/False
#       Example             : ****_expect('id','underline_text','incorrect_notification_text')
#       Modified By         : <Name Of Person>
#       Date                : 31 May 2017
#       Modify Description  : <Description of the modification>
########################################################################################################

def ****_expect(selector, element, expectation)
  begin
    sleep(1)
    text = ****_get_text(selector, element)
    return (text.strip.eql? expectation.to_s.strip)
  rescue Exception => e
    raise e.message
  end
end

#########################################################################################################
#       Description         : Used to check if an element contains expected string
#       Created By          : Gilang Bintang
#       Parameters          : selector (describes the locator strategy i.e. id/name/xpath)
#                           : element (describes locator value)
#                           : expectation (describes the value inside test data)
#       Return Value        : Boolean
#       Example             : ****_expect_contains('id','underline_text','incorrect_notification_text')
#       Modified By         : <Name Of Person>
#       Date                : -
#       Modify Description  : <Description of the modification>
########################################################################################################

def ****_expect_contains(selector, element, expectation)
  begin
    text = ****_get_text(selector, element)
    expectation_words = expectation.split(/[,]/)
    return expectation_words.all?{ |expectation_words| text.include? expectation_words }
  rescue Exception => e
    raise e.message
  end
end

#########################################################################################################
#       Description         : Uses for checking the element whether it's displayed
#       Created By          : Alexander Jackhariyas
#       Parameters          : selector (describes the locator strategy i.e. id/name/xpath)
#                           : element (describes locator value)
#                           : timeout (it's static, can be changed depend on condition user want,
#                             but if it's not declared it will reffer to default_timeout which is provide 
#                             inside env.rb)
#       Return Value        : True/False
#       Example             : ****_expect_displayed('id','start_button',10)/****_expect_displayed('id','start_button',timeout)
#       Modified By         : Alexander Jackhariyas
#       Date                : 19 June 2017
#       Modify Description  : replace ****_find with ****_display for making it works for ios
########################################################################################################

def ****_expect_displayed?(selector, element, timeout = AVG_WAIT)
  found = false
  begin
    found = ****_display(selector, element, timeout)
  rescue Exception => e
    found = false
  end
  return found
end

#########################################################################################################
#       Description         : Uses for checking the element whether it's not displayed
#       Created By          : Alexander Jackhariyas
#       Parameters          : selector (describes the locator strategy i.e. id/name/xpath)
#                           : element (describes locator value)
#                           :  timeout (it's static, can be changed depend on condition user want,
#                             but if it's not declared it will refer to default_timeout which is provide
#                             inside env.rb)
#       Return Value        : True/False
#       Example             : ****_expect_not_displayed('id','start_button',10)/****_expect_not_displayed('id','start_button',timeout)
#       Modified By         : <Name Of Person>
#       Date                : 31 May 2017
#       Modify Description  : <Description of the modification>
########################################################################################################

def ****_expect_not_displayed?(selector, element, timeout = SHORT_WAIT)
  !****_expect_displayed?(selector, element, timeout)
end

#########################################################################################################
#       Description         : Used to check if the element is focusable
#       Created By          : Gilang Bintang
#       Parameters          : selector (describes the locator strategy i.e. id/name/xpath)
#                           : element (describes locator value)
#                           : timeout (when the code should give up when searching the element, not mandatory)
#       Return Value        : Appium element
#       Example             : ****_expect_focusable('accessibility_id', 'TutorialBulletPoint', 10)
#       Modified By         : <Name Of Person>
#       Date                : <Date On Which Modified>
#       Modify Description  : <Description of the modification>
########################################################################################################

def ****_expect_focusable(selector, element, timeout = DEFAULT_TIMEOUT)
  found = true
  begin
    appium_element = ****_find(selector, element, timeout)
    if appium_element.attribute('focusable') == 'false'
      found = false
    end
  rescue Exception => e
    found = false
    raise e.message
  end
  return found
end

#########################################################################################################
#       Description        : Used to check if the element is not focusable
#       Created By         : Gilang Bintang
#       Parameters         : selector (describes the locator strategy i.e. id/name/xpath)
#                          : element (describes locator value)
#                          : timeout (when the code should give up when searching the element, not mandatory)
#       Return Value       : Appium element
#       Example            : ****_expect_not_focusable('accessibility_id', 'TutorialBulletPoint', 10)
#       Modified By        : <Name Of Person>
#       Date               : <Date On Which Modified>
#       Modify Description : <Description of the modification>
########################################################################################################

def ****_expect_not_focusable(selector, element, timeout = DEFAULT_TIMEOUT)
  begin
    notfocusable = true
    if ****_expect_focusable(selector, element, timeout)
      notfocusable = false
    end
  rescue Exception => e
    notfocusable = false
    raise e.message
  end
  return notfocusable
end

#########################################################################################################
#       Description        : Used to check if the element is as many as expected
#       Created By         : Gilang Bintang
#       Parameters         : selector (describes the locator strategy i.e. id/name/xpath)
#                          : element (describes locator value)
#                          : count (how many element is expected)
#                          : timeout (when the code should give up when searching the element, not mandatory)
#       Return Value       : Appium element
#       Example            : ****_expect_count('accessibility_id', 'TutorialBulletPoint', 4)
#       Modified By        : <Name Of Person>
#       Date               : <Date On Which Modified>
#       Modify Description : <Description of the modification>
########################################################################################################

def ****_expect_count(selector, element, count, timeout = DEFAULT_TIMEOUT)
  begin
    same = true
    appium_elements = ****_find_elements(selector, element, timeout)
    if appium_elements.size != count.to_i
      same = false
    end
  rescue Exception => e
    same = false
    raise e.message
  end
  return same
end

#########################################################################################################
#       Description         : Uses for make sure element text not equal
#       Created By          : Alexander Jackhariyas
#       Parameters          : selector (describes the locator strategy i.e. id/name/xpath)
#                           : element (describes locator value)
#                           : expectation (describes the value inside test data)
#                           : timeout (it's static, can be changed depend on condition user want,
#                             but if it's not declared it will reffer to default_timeout which is provide 
#                             inside env.rb)
#       Return Value        : True/False
#       Example             : ****_expect_not_equal('id','start_button',10)/****_expect_not_equal('id','start_button',timeout)
#       Modified By         : <Name Of Person>
#       Date                : 31 May 2017
#       Modify Description  : <Description of the modification>
########################################################################################################

def ****_expect_not_equal(selector, element, expectation, timeout = DEFAULT_TIMEOUT)
  !****_expect(selector, element, expectation)
end

#########################################################################################################
#       Description         : Uses for make sure element value more than expected data
#       Created By          : Trino
#       Parameters          : selector (describes the locator strategy i.e. id/name/xpath)
#                           : element (describes locator value)
#                           : expectation (describes the value inside test data)
#                           : timeout (it's static, can be changed depend on condition user want,
#                             but if it's not declared it will reffer to default_timeout which is provide 
#                             inside env.rb)
#       Return Value        : True/False
#       Example             : ****_expect_more_than('id','start_button',10)/****_expect_more_than('id','start_button',timeout)
#       Modified By         : <Name Of Person>
#       Date                : 12 July 2017
#       Modify Description  : <Description of the modification>
########################################################################################################

def ****_expect_more_than(selector, element, expectation, timeout = DEFAULT_TIMEOUT)
  begin
    text = ****_get_text(selector, element).gsub('IDR','').gsub(',','').gsub('Rp','').gsub('.','')
    puts "Actual Text : #{text}"
    puts "Expected Text : #{expectation}"
    return (text.strip.to_i > expectation.strip.to_i)
  rescue Exception => e
    raise e.message
  end
end

#########################################################################################################
#       Description         : Uses for make sure element value less than expected data
#       Created By          : Trino
#       Parameters          : selector (describes the locator strategy i.e. id/name/xpath)
#                           : element (describes locator value)
#                           : expectation (describes the value inside test data)
#                           : timeout (it's static, can be changed depend on condition user want,
#                             but if it's not declared it will reffer to default_timeout which is provide 
#                             inside env.rb)
#       Return Value        : True/False
#       Example             : ****_expect_less_than('id','start_button',10)/****_expect_less_than('id','start_button',timeout)
#       Modified By         : <Name Of Person>
#       Date                : 12 July 2017
#       Modify Description  : <Description of the modification>
########################################################################################################

def ****_expect_less_than(selector, element, expectation, timeout = DEFAULT_TIMEOUT)
  begin
    text = ****_get_text(selector, element).gsub('IDR','').gsub(',','').gsub('Rp','').gsub('.','')
    return (text.strip.to_i < expectation.strip.to_i)
  rescue Exception => e
    raise e.message
  end
end
