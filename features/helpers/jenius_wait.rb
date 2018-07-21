#########################################################################################################
#       Description         : Used for waiting element till displayed
#       Created By          : Alexander Jackhariyas
#       Parameters          : selector (describes the locator strategy i.e. id/name/xpath)
#                           : element (describes locator value)
#                           : timeout (it's static, can be changed depend on condition user want,
#                             but if it's not declared it will reffer to default_timeout which is provide 
#                             inside env.rb)
#       Return Value        : True/False
#       Example             : ****_wait('id', 'start_button')/****_wait('id', 'start_button', 10)
#       Modified By         : <Name Of Person>
#       Date                : 31 May 2017
#       Modify Description  : <Description of the modification>
########################################################################################################

def ****_wait(selector, element, timeout = DEFAULT_TIMEOUT)
  begin
    ****_display(selector, element, timeout)
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end
end

#########################################################################################################
#       Description         : Used for waiting element till dismiss
#       Created By          : Alexander Jackhariyas
#       Parameters          : selector (describes the locator strategy i.e. id/name/xpath)
#                           : element (describes locator value)
#                           : timeout (it's static, can be changed depend on condition user want,
#                             but if it's not declared it will reffer to default_timeout which is provide 
#                             inside env.rb)
#       Return Value        : True/False
#       Example             : ****_wait_gone('id', 'start_button', 10)/****_wait_gone('id', 'start_button')
#       Modified By         : <Name Of Person>
#       Date                : 31 May 2017
#       Modify Description  : <Description of the modification>
########################################################################################################

def ****_wait_gone(selector, element, timeout = SHORT_WAIT)
  begin
    ****_wait_true(timeout) {****_expect_not_displayed?(selector, element, timeout)}
  rescue Exception => e
    raise e.message
  end
end

#########################################################################################################
#       Description         : Used to put static timeout inside wait_true 
#       Created By          : Alexander Jackhariyas
#       Parameters          : timeout (it's static, can be changed depend on condition user want, 
#                             but if it's not declared it will reffer to default_timeout which is provide 
#                             inside env.rb)
#       Return Value        : Object
#       Example             : ****_wait_true(10)/****_wait_true(timeout)
#       Modified By         : <Name Of Person>
#       Date                : 31 May 2017
#       Modify Description  : <Description of the modification>
########################################################################################################

def ****_wait_true(timeout = DEFAULT_TIMEOUT , &block)
  begin
    $driver.wait_true(default_wait_opts(timeout), &block)
  rescue Exception => e
    raise e.message
  end
end

#########################################################################################################
#       Description         : As reference for ****_wait_true to set timeout and interval.
#                             Interval for driver keep checking the element till found.
#       Created By          : Alexander Jackhariyas
#       Parameters          : timeout (it's static, can be changed depend on condition user want, 
#                             but if it's not declared it will reffer to default_timeout which is provide 
#                             inside env.rb)
#                             interval (set the interval for driver to check the element)
#       Return Value        : Option
#       Example             : default_wait_opts(timeout)/default_wait_opts(10)
#       Modified By         : <Name Of Person>
#       Date                : 31 May 2017
#       Modify Description  : <Description of the modification>
########################################################################################################
private
def default_wait_opts(timeout = DEFAULT_TIMEOUT)
  {
      :timeout => timeout,
      :interval => 0.2
  }
end