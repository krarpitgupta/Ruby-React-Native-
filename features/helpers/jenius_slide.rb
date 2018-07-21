#########################################################################################################
#       Description         : Convenience method to peform a slide, 
#                             For iOS: Use `offset_x` and `offset_y` to define the end point.
#                             For Android: Use `end_x` and `end_y` to define the end point.
#       Created By          : Trino
#       Parameters          : - element, describe locator value
#                             - distance, describe the slide distance
#       Return Value        : NA
#       Example             : ****_slide_element(element, distance)
#       Modified By         : <Name Of Person>
#       Date                : 7 August 2017
#       Modify Description  : <Description of the modification>
########################################################################################################

def ****_slide_element(element, distance)

  start_x = element.location.x
  start_y = element.location.y
  end_x = start_x + distance

  if ENV['PLATFORM_NAME'] == 'android'
    Appium::TouchAction.new.press(x: start_x, y: start_y).wait(100).move_to(x: end_x, y: start_y).release.perform
  elsif ENV['PLATFORM_NAME'] == 'ios'
    Appium::TouchAction.new.press(x: start_x, y: start_y).wait(100).move_to(x: end_x, y: start_y).release.perform
  end

end

#########################################################################################################
#       Description         : Convenience method to peform a slide specialized for month slider, i.e. maturity month slider in Maxi Saver
#                             It use to slide the  month slider until it get the expected tenor
#       Created By          : Trino
#       Parameters          : selector1, describe the locator strategy for element 1
#                             element1, describe the locator for slider element
#                             selector2, describe the locator strategy for element 2
#                             element2, describe the locator for button slider element
#                             data1, describe the expected tenor 
#                             data2, describe the maximum tenor from test data (dynamic), to calculate the slide distance for each tenor
#       Return Value        : NA
#       Example             : ****_slide_month_slider_element(selector1, element1, selector2, element2, data1, data2)
#       Modified By         : <Name Of Person>
#       Date                : 7 August 2017
#       Modify Description  : <Description of the modification>
########################################################################################################

def ****_slide_month_slider_element(selector1, element1, selector2, element2, data1, data2)

  slider_element = ****_find(selector1, element1)
  distance = slider_element.size.width/(data2.to_i)
  slider_button_element = ****_find(selector1, element1 + "/android.view.ViewGroup[2]")
  
  while ****_expect_not_equal(selector2, element2, data1)
    ****_slide_element(slider_button_element, distance)
  end

end

#########################################################################################################
#       Description         : Convenience method to peform a slide specialized for principal amount slider, i.e. maturity principal amount slider in Maxi Saver
#                             It use to slide the  principal amount slider to some expected distance that presented as a scale of its width
#       Created By          : Trino
#       Parameters          : selector, describe the locator strategy for element
#                             element, describe the locator for slider element
#                             scale, describe the input to get the distance based on slider width that presented as a scale
#       Return Value        : NA
#       Example             : ****_slide_principal_slider_element(selector, element, scale)
#       Modified By         : <Name Of Person>
#       Date                : 7 August 2017
#       Modify Description  : <Description of the modification>
########################################################################################################

def ****_slide_principal_slider_element(selector, element, scale)

  elem = ****_find(selector, element)
  distance = elem.size.width * scale.to_f

  ****_slide_element(elem, distance)

end