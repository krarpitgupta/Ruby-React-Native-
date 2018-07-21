require 'rubygems'
require 'rspec/expectations'
include RSpec::Matchers

####################################################################################################################
#       Description 				: This class is one of the helpers class that used to hide the keyboard for android
# 									  after fill in the textfield
#       Created By 					: Novi
#       Parameters 					: NA
#       Return Value 				: No need to return some values, since it's only an action that appium driver should do
#       Example 					: ****_hidekeyboard()
#       Modified By 				: Alexander Jackhariyas
#       Date 						: 19 June 2017
#       Modify Description  		: Remove condition for ios and android, not working on ios, for workaround use click outside of keyboard
###################################################################################################################

def ****_hidekeyboard
  begin
	if $driver.is_keyboard_shown
	  $driver.press_keycode(4)
	end
  rescue Exception => e
	  raise e.message
	  raise e.backtrace.inspect
  end
end
