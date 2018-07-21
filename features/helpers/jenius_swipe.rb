def ****_swipe_to(selector1, element1, selector2, element2)
  begin
    appium_element1 = ****_find(selector1, element1)
    appium_element2 = ****_find(selector2, element2)
    opt = {
      :start_x => appium_element1.location.x,
      :end_x => appium_element2.location.x,
      :start_y => appium_element1.location.y, 
      :end_y => appium_element2.location.y,
      :duration => 800 
    }
    $driver.swipe(opt)
  rescue Exception => e
    raise e.message
  end
end

#########################################################################################################
#       Description         : Used to swipe device screen or an element from right to left.
#                             No need to input any selector and locator if want to swipe device screen
#       Created By          : Novi
#       Parameters          : Selector, Locator (nil as default value)
#       Return Value        : NA
#       Example             : ****_swipe_right or ****_swipe_right ("accessibility_id", "TutorialModal")
#       Modified By         : Arpit
#       Date                : Aug 22 ,2017
#       Modify Description  : Make it dynamic for screen as well as for element for ios as well
########################################################################################################

def ****_swipe_right(selector = nil, locator = nil)
  device_height = $driver.window_size.height
  device_width = $driver.window_size.width
  appium_element = nil

  if selector.nil? | locator.nil?
    start_x = device_width.to_f * 0.01
    end_x = device_width.to_f * 0.9
    start_y = device_height.to_f * 0.5
    end_y = device_height.to_f * 0.5
  else
    appium_element = ****_find(selector, locator)
    appium_element_height = appium_element.size.height
    appium_element_width = appium_element.size.width
    start_x = ((device_width - appium_element_width)/2) + 5
    end_x = ((device_width - appium_element_width)/2) + appium_element_width
    start_y = ((device_height - appium_element_height)/2) + (appium_element_height/2)
    end_y = ((device_height - appium_element_height)/2) + (appium_element_height/2)
  end

  if ENV['PLATFORM_NAME'] =='android'
    swipe(:start_x => start_x.to_i, :end_x => end_x.to_i, :start_y => start_y.to_i, :end_y => end_y.to_i, :duration => 800)
  elsif ENV['PLATFORM_NAME'] == 'ios'
    if appium_element.nil?
      Appium::TouchAction.new.press(x: 0, y: 100).wait(100).move_to(x: 400, y: 100).release.perform
    else
      swipe(:direction => 'right', :element => appium_element)
    end
  else
    puts 'not match platform name for swipe right action'
  end
end


#########################################################################################################
#       Description         : Used to swipe device screen or an element from right to left.
#                             No need to input any selector and locator if want to swipe device screen
#                             instead of a specific element
#       Created By          : Arpit
#       Parameters          : Selector, Locator (nil as default value)
#       Return Value        : NA
#       Example             : ****_swipe_left ("accessibility_id", "TutorialModal") or ****_swipe_left
#       Modified By         : Arpit
#       Date                : 22 Aug'17
#       Modify Description  : Supported it for iOS platform
########################################################################################################

def ****_swipe_left(selector = nil, locator = nil)
  device_height = $driver.window_size.height
  device_width = $driver.window_size.width
  appium_element = nil

  if selector.nil? | locator.nil?   
    start_x = device_width.to_f * 0.9
    end_x = device_width.to_f * 0.1
    start_y = device_height.to_f * 0.75
    end_y = device_height.to_f * 0.75
  else
    appium_element = ****_find(selector, locator)
    appium_element_height = appium_element.size.height
    appium_element_width = appium_element.size.width
    start_x = ((device_width - appium_element_width)/2) + appium_element_width - 5
    end_x = ((device_width - appium_element_width)/2) + 5
    start_y = ((device_height - appium_element_height)/2) + (appium_element_height/2)
    end_y = ((device_height - appium_element_height)/2) + (appium_element_height/2)
  end

  if ENV['PLATFORM_NAME'] == 'android'
    swipe(:start_x => start_x.to_i ,:end_x => end_x.to_i ,:start_y => start_y.to_i , :end_y => end_y.to_i , :duration => 800)
  elsif ENV['PLATFORM_NAME'] == 'ios'
    if appium_element.nil?
      swipe(:direction => 'left')
    else
      swipe(:direction => 'left', :element => appium_element)
    end
  end
end

#########################################################################################################
#       Description         : Convenience method to peform a swipe up. Can be use for scroll down.
#                             For iOS: Use `offset_x` and `offset_y` to define the end point.
#                             For Android: Use `end_x` and `end_y` to define the end point.
#       Created By          : Alexander Jackhariyas
#       Parameters          : NA
#       Return Value        : Object
#       Example             : ****_swipe_up
#       Modified By         : ARpit
#       Date                : July 2017
#       Modify Description  : Dynamic change
########################################################################################################

def ****_swipe_up
  device_height = $driver.window_size.height
  device_width = $driver.window_size.width

  start_x = device_width.to_f * 0.5
  start_y = device_height.to_f * 0.5
  end_y = device_height.to_f * 0.2

  if ENV['PLATFORM_NAME'] == 'android'
    swipe(:start_x => start_x, :start_y => start_y, :end_x => start_x, :end_y => end_y, :duration => 500)
  elsif ENV['PLATFORM_NAME'] == 'ios'
    Appium::TouchAction.new.press(x: start_x, y: start_y).wait(100).move_to(x: 0, y: -end_y).release.perform
  end
end

#########################################################################################################
#       Description         : Convenience method to peform a swipe down. Can be use for scroll up.
#                             For iOS: Use `offset_x` and `offset_y` to define the end point.
#                             For Android: Use `end_x` and `end_y` to define the end point.
#       Created By          : Alexander Jackhariyas
#       Parameters          : NA
#       Return Value        : Object
#       Example             : ****_swipe_up
#       Modified By         : Arpit
#       Date                : July 2017
#       Modify Description  : Dynamic change
########################################################################################################

def ****_swipe_down
  device_height = $driver.window_size.height
  device_width = $driver.window_size.width

  start_x = device_width.to_f * 0.5
  start_y = device_height.to_f * 0.5
  end_y = device_height.to_f * 0.8

  if ENV['PLATFORM_NAME'] == 'android'
    swipe(:start_x => start_x, :start_y => start_y, :end_x => start_x, :end_y => end_y, :duration => 500)
  elsif ENV['PLATFORM_NAME'] == 'ios'
    Appium::TouchAction.new.press(x: start_x, y: start_y).wait(100).move_to(x: 0, y: end_y).release.perform
  end
end

#########################################################################################################
#       Description         : Convenience method to peform a swipe up, usually uses for dropdown.
#                             For iOS: Use `offset_x` and `offset_y` to define the end point.
#                             For Android: Use `end_x` and `end_y` to define the end point.
#       Created By          : Alexander Jackhariyas
#       Parameters          : -
#       Return Value        : Object
#                           : selector (describes the locator strategy i.e. id/name/xpath)
#                           : element (describes locator value)
#       Example             : ****_swipe_up_element(selector, element)
#       Modified By         : <Name Of Person>
#       Date                : 31 May 2017
#       Modify Description  : <Description of the modification>
########################################################################################################

def ****_swipe_up_element(selector, element)

  start_x = ****_find(selector,element).location.x
  start_y = ****_find(selector,element).location.y
  end_y = start_y - 300
  if ENV['PLATFORM_NAME'] == 'android'
    swipe(:start_x => start_x, :start_y => start_y, :end_x => start_x, :end_y => end_y, :duration => 500)
  elsif ENV['PLATFORM_NAME'] == 'ios'
    Appium::TouchAction.new.press(x: start_x+50, y: start_y).wait(100).move_to(x: 0, y: -100).release.perform
  end
end

#########################################################################################################
#       Description         : Convenience method to peform a swipe down, usually uses for dropdown.
#                             For iOS: Use `offset_x` and `offset_y` to define the end point.
#                             For Android: Use `end_x` and `end_y` to define the end point.
#       Created By          : Alexander Jackhariyas
#       Parameters          : NA
#       Return Value        : Object
#                             selector (describes the locator strategy i.e. id/name/xpath)
#                             element (describes locator value)
#       Example             : ****_swipe_up_element(selector, element)
#       Modified By         : <Name Of Person>
#       Date                : 31 May 2017
#       Modify Description  : <Description of the modification>
########################################################################################################

def ****_swipe_down_element(selector, element)

  start_x = ****_find(selector,element).location.x
  start_y = ****_find(selector,element).location.y
  end_y = start_y + 300
  if ENV['PLATFORM_NAME'] == 'android'
    swipe(:start_x => start_x, :start_y => start_y, :end_x => start_x, :end_y => end_y, :duration => 500)
  elsif ENV['PLATFORM_NAME'] == 'ios'
    Appium::TouchAction.new.press(x: start_x+50, y: start_y).wait(100).move_to(x: 0, y: 100).release.perform
  end
end
