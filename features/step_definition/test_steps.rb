#########################################################################################################
#       Description         : Uses for make sure user already on introduction page
#       Created By          : Alexander Jackhariyas
#       Parameters          : element_set_key
#       Return Value        : This method returns an undefined value
#       Example             : User is on application screen
#       Modified By         : <Name Of Person>
#       Date                : 31 May 2017
#       Modify Description  : <Description of the modification>
########################################################################################################

Given (/^User is on application screen$/) do
  begin
    $home_page = HomePage.new($driver)
    element_data_set = data_element_hash["onboarding_landing_page_container"]
    $home_page.user_find_element(element_data_set, EXTRA_LONG_WAIT)
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end
end

#########################################################################################################
#       Description         : Uses for clicking pop up notification like allow, deny, etc
#       Created By          : Alexander Jackhariyas
#       Parameters          : element_set_key (parse the parameter from gherkin)
#       Return Value        : This method returns an undefined value.
#       Example             : User check and click "allow_button if exist
#       Modified By         : <Name Of Person>
#       Date                : 31 May 2017
#       Modify Description  : <Description of the modification>
########################################################################################################

Given(/^User (?:is|expect is) on "([^"]*)" screen$/) do |element_set_key|
  begin
    $home_page = HomePage.new($driver)
    element_data_set = data_element_hash[element_set_key]
    $home_page.user_wait(element_data_set)
    if($home_page.user_expect_displayed?(element_data_set))
      puts "User is on '#{element_set_key}' screen"
    else
      raise "User not in '#{element_set_key} screen'"
    end
  rescue Exception => e
    raise e.message
  end
end

#########################################################################################################
#       Description         : Uses for clicking pop up notification like allow, deny, etc
#       Created By          : Alexander Jackhariyas
#       Parameters          : element_set_key (parse the parameter from gherkin)
#       Return Value        : This method returns an undefined value.
#       Example             : User check and click allow or ok button if exist
#       Modified By         : Eko Adi Prabowo
#       Date                : 15 November 2017
#       Modify Description  : tunning performa on ios using predicate
########################################################################################################

And (/^User check and click allow or ok button if exist$/) do
  begin
    permission_button = data_element_hash["permission_button"]
    
    if $home_page.user_expect_displayed?(permission_button, SHORT_WAIT)
      $home_page.user_click(permission_button)
      puts 'Allow or OK Button is Clicked'
    end
  rescue Exception => e
    raise e.message
  end
end


#########################################################################################################
#       Description         : Uses for checking and clicking
#       Created By          : Alexander Jackhariyas
#       Parameters          : element_set_key (parse the parameter from gherkin)
#       Return Value        : This method returns an undefined value.
#       Example             : User check and click "tutorial_button" if exist
#       Modified By         : <Name Of Person>
#       Date                : 31 May 2017
#       Modify Description  : <Description of the modification>
########################################################################################################

And (/^User check and click "([^"]*)" if exist$/) do |element_set_key|
  begin
    element_data_set = data_element_hash[element_set_key]
    
    if ($home_page.user_expect_displayed?(element_data_set, SHORT_WAIT))
      $home_page.user_click(element_data_set)
      puts "User Click '#{element_set_key}'"
    end
  rescue Exception => e
    raise e.message
  end
end


Then(/^"(.*)" will be displayed$/) do |element_set_key|
  begin
    element_data_set = data_element_hash[element_set_key]
    if($home_page.user_expect_displayed?(element_data_set))
      puts "'#{element_set_key}' displayed"
    else
      raise "'#{element_set_key}' not displayed"
    end
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end
end

#########################################################################################################
#       Description         : Used to check if an element (that contains a specific text) is displayed
#       Created By          : Gilang Bintang
#       Parameters          : data_set_key (text data in test_data.yml)
#       Return Value        : NA
#       Example             : Then element that contains "send_it_tab_favorites" text will be displayed
#       Modified By         : Gilang
#       Date                : 6 Desember 2017
#       Modify Description  : -
########################################################################################################

Then(/^element that contains "(.*)" text will be displayed$/) do |data_set_key|
  begin
    data_set = data_yml_hash[data_set_key]
    platform = ENV['PLATFORM_NAME'].downcase

    case platform
      when 'android'
        if($home_page.user_expect_displayed?("xpath://android.widget.TextView[contains(@text, '#{data_set}')]", DEFAULT_TIMEOUT))
          puts "element with '#{data_set}' displayed"
        else
          raise "element with '#{data_set}' not displayed"
        end
      when 'ios'
        if($home_page.user_expect_displayed?("predicate:name contains[c] '#{data_set}'", DEFAULT_TIMEOUT))
          puts "'#{data_set}' displayed"
        else
          raise "'#{data_set}' not displayed"
        end
      else
        raise 'Platform not recognized'
    end
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end
end

#########################################################################################################
#       Description         : Used to check if an element (with a specific text) is displayed
#       Created By          : Gilang Bintang
#       Parameters          : data_set_key (text data in test_data.yml)
#       Return Value        : NA
#       Example             : Then element with "send_it_tab_favorites" text will be displayed
#       Modified By         : Gilang
#       Date                : 31 October 2017
#       Modify Description  : Add default timeout
########################################################################################################

Then(/^element with "(.*)" text will be displayed$/) do |data_set_key|
  begin
    data_set = data_yml_hash[data_set_key]
    platform = ENV['PLATFORM_NAME'].downcase

    case platform
      when 'android'
        if($home_page.user_expect_displayed?("xpath://android.widget.TextView[@text='#{data_set}']", DEFAULT_TIMEOUT))
          puts "'#{data_set}' displayed"
        else
          raise "'#{data_set}' not displayed"
        end
      when 'ios'
        if($home_page.user_expect_displayed?("predicate:name == '#{data_set}'", DEFAULT_TIMEOUT))
          puts "'#{data_set}' displayed"
        else
          raise "'#{data_set}' not displayed"
        end
      else
        raise 'Platform not recognized'
    end
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end
end

#########################################################################################################
#       Description         : Used to check if an element (with a specific text) is not displayed
#       Created By          : Gilang Bintang
#       Parameters          : data_set_key (text data in test_data.yml)
#       Return Value        : NA
#       Example             : Then element with "send_it_tab_favorites" text will not displayed
#       Modified By         : Eko Adi Prabowo
#       Date                : 27 November 2017
#       Modify Description  : update for ios 
########################################################################################################

Then(/^element with "(.*)" text will not displayed$/) do |data_set_key|
  begin
    data_set = data_yml_hash[data_set_key]
    platform = ENV['PLATFORM_NAME'].downcase

    case platform
      when 'android'
        if($home_page.user_expect_displayed?("xpath://android.widget.TextView[@text='#{data_set}']"))  
          raise "'#{data_set}' displayed"
        else
          puts "'#{data_set}' not displayed"
        end
      when 'ios'
        element_data_set = "predicate:label contains[c] '#{data_set}'" 
          if($home_page.user_expect_not_displayed?(element_data_set))
            puts "'#{element_data_set}' displayed"
          else
            raise "'#{element_data_set}' not displayed"
          end
      else
        raise 'Platform not recognized'
    end
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end
end

#########################################################################################################
#       Description         : Used to click an element (with a specific text)
#       Created By          : Gilang Bintang
#       Parameters          : data_set_key (text data in test_data.yml)
#       Return Value        : NA
#       Example             : And User click element with text "send_it_tab_favorites"
#       Modified By         : Eko Adi Prabowo
#       Date                : 17 November 2017
#       Modify Description  : update for ios
########################################################################################################

And(/^User click element with text "([^"]*)"$/) do |data_set_key|
  begin
    data_set = data_yml_hash[data_set_key]
    platform = ENV['PLATFORM_NAME'].downcase

    case platform
      when 'android'
        $home_page.user_click("xpath://*[contains(@text,'#{data_set}')]")
        puts "Element with text '#{data_set}' clicked"
      when 'ios'
        $home_page.user_click("predicate:label contains[c] '#{data_set}'")
        puts "Element with text '#{data_set}' clicked"
      else
        raise 'Platform not recognized'
    end
  end
end  

#########################################################################################################
#       Description         : Used to check if today's date is displayed
#       Created By          : Gilang Bintang
#       Parameters          : 
#       Return Value        : NA
#       Example             : And User check if today's date displayed
#       Modified By         : <Name Of Person>
#       Date                : 27 July 2017
#       Modify Description  : <Description of the modification>
########################################################################################################

And(/^User check if today's date displayed$/) do
  begin
    data_set = DateTime.now.strftime "%-d %b %Y"
    if($home_page.user_expect_displayed?("xpath://android.widget.TextView[@text='#{data_set}']"))
      puts "Today date : '#{data_set}' displayed"
    else
      raise "Today date : '#{data_set}' not displayed"
    end
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end
end

#########################################################################################################
#       Description         : Used to check if days after today's date is displayed
#       Created By          : Gilang Bintang
#       Parameters          : data_set_key (how many day)
#       Return Value        : NA
#       Example             : And User check if "3" days after today's date displayed
#       Modified By         : <Name Of Person>
#       Date                : 27 July 2017
#       Modify Description  : <Description of the modification>
########################################################################################################

And(/^User check if "([^"]*)" days after today date displayed$/) do |days|
  begin
    day = data_yml_hash[days]
    after = DateTime.now.next_day(day.to_i).strftime "%-d %b %Y"
    if($home_page.user_expect_displayed?("xpath://android.widget.TextView[@text='#{after}']"))
      puts "'#{after}' displayed"
    else
      raise "'#{after}' not displayed"
    end
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end
end

#########################################################################################################
#       Description         : Used to check if months before today's date is not displayed
#       Created By          : Gilang Bintang
#       Parameters          : data_set_key (how many months)
#       Return Value        : NA
#       Example             : And User check if "3" months before today's date displayed
#       Modified By         : <Name Of Person>
#       Date                : 27 July 2017
#       Modify Description  : <Description of the modification>
########################################################################################################

And(/^User check if "([^"]*)" months before today's date not displayed in "([^"]*)"$/) do |months, element_set_key|
  begin
    month = data_yml_hash[months]
    month_name = Date::MONTHNAMES[get_past_months_date(month).to_i]

    if ENV['PLATFORM_VERSION'].to_f >= 6.0
      steps %Q{
        And User click "#{element_set_key}" until "onboarding_calendar_year" displayed
      }
      ok_button = data_element_hash["onboarding_calendar_ok_button"]
      previous_button = data_element_hash["filter_time_range_date_picker_previous_month"]

      if($home_page.user_expect_displayed?("xpath://android.widget.TextView[@text='#{month_name}']") | $home_page.user_expect_displayed?("xpath://android.widget.TextView[@text='#{previous_button}']"))
        raise "'#{month_name}' displayed"
      else
        puts "'#{month_name}' not displayed"
      end
    elsif ENV['PLATFORM_VERSION'].to_f == 4.4
      ok_button = "xpath://android.widget.Button[@text='Done']"

      # format the selected month
      month_set = month_name[0..2]

      steps %Q{
        And User click "#{element_set_key}"
      }
      if($home_page.user_expect_displayed?("xpath://android.widget.NumberPicker[1]//android.widget.EditText[@text=#{month_set}]']"))
        raise "'#{month_name}' displayed"
      else
        puts "'#{month_name}' not displayed"
      end
    end

    $home_page.user_click(ok_button)
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end
end

#########################################################################################################
#       Description         : Used to verify if user can not select days after today's date
#       Created By          : Gilang Bintang
#       Parameters          : data_set_key (how many day)
#       Return Value        : NA
#       Example             : And User can't select "3" days after today's date in "brithdat_date"
#       Modified By         : <Name Of Person>
#       Date                : 27 July 2017
#       Modify Description  : <Description of the modification>
########################################################################################################

And(/^User can't select "([^"]*)" days after today's date in "([^"]*)"$/) do |days, element_set_key|
  begin
    day = data_yml_hash[days]
    after = DateTime.now.next_day(day.to_i).strftime "%-d %b %Y"

    day_set = after[0]
    month_set = after[1].to_i
    year_set = after[2]
    diff = Time.now.month - month_set.to_i

    if ENV['PLATFORM_VERSION'].to_f >= 6.0
      selected_year = "xpath://android.widget.ViewAnimator//*[@text='#{year_set}']"
      ok_button = data_element_hash["onboarding_calendar_ok_button"]
      next_button = data_element_hash["filter_time_range_date_picker_next_month"]
      previous_button = data_element_hash["filter_time_range_date_picker_previous_month"]
      nav_button = diff < 0 ? next_button : diff > 0 ? previous_button : "xpath:null"
      
      steps %Q{
        And User click "#{element_set_key}" until "onboarding_calendar_year" displayed
        When User click "onboarding_calendar_year" until "onboarding_calendar_year_list" displayed
      }

      sleep (1)
      $home_page.user_click_until(selected_year, next_button)
      if nav_button.partition(':').last != "null"
        for i in 1 .. diff.abs
          $home_page.user_click(nav_button)
        end
      end
      month_name = Date::MONTHNAMES[month_set.to_i]
      day_id = [day_set, month_name, year_set].join(' ')
      selected_day = "xpath://android.view.View[@content-desc='#{day_id}']"
      date_element = $home_page.user_find_element(selected_day)
      date_element.click
      if date_element.attribute('checked').eql? "true"
        raise "#{day_id} is selected"
      end
    elsif ENV['PLATFORM_VERSION'].to_f == 4.4
      ok_button = "xpath://android.widget.Button[@text='Done']"
      select_day_date_picker_prev = "xpath://android.widget.NumberPicker[2]//android.widget.Button[1]"
      select_day_date_picker_next = "xpath://android.widget.NumberPicker[2]//android.widget.Button[2]"
      selected_day_date_picker = "xpath://android.widget.NumberPicker[2]//android.widget.EditText[1]"

      select_month_date_picker_next = "xpath://android.widget.NumberPicker[1]//android.widget.Button[2]"
      selected_month_date_picker = "xpath://android.widget.NumberPicker[1]//android.widget.EditText[1]"

      select_year_date_picker_prev = "xpath://android.widget.NumberPicker[3]//android.widget.Button[1]"
      select_year_date_picker_next = "xpath://android.widget.NumberPicker[3]//android.widget.Button[2]"
      selected_year_date_picker = "xpath://android.widget.NumberPicker[3]//android.widget.EditText[1]"

      # select calendar for android 4.4
      steps %Q{
        And User click "#{element_set_key}"
      }

      # get displayed date in date picker
      day = $home_page.user_get_text(selected_day_date_picker).to_i
      month = getMonthOrderNumber($home_page.user_get_text(selected_month_date_picker))
      year = $home_page.user_get_text(selected_year_date_picker).to_i

      displayed_date = Date.new(year, month, day)

      # get expected date
      exp_date = DateTime.now.next_day(day.to_i)

      # get the days difference
      day_diff = displayed_date - exp_date
      nav_button = diff < 0 ? select_day_date_picker_next : diff > 0 ? select_day_date_picker_prev : "xpath:null"

      # click prev or next day as many as day diff number
      if nav_button.partition(':').last != "null"
        for i in 1 .. day_diff.abs
          $home_page.user_click(nav_button)
        end
      end

      # assertion
      if $home_page.user_get_text(selected_day_date_picker).to_i == exp_date.day &&
         $home_page.user_get_text(selected_month_date_picker) == exp_date.strftime('%b') &&
         $home_page.user_get_text(selected_year_date_picker).to_i == exp_date.year
        raise "#{day_id} is selected"
      end
    end    

    $home_page.user_click(ok_button)
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end
end

#########################################################################################################
#       Description         : Uses for clear text field only
#       Created By          : Trino
#       Parameters          : element_set_key (parse the parameter from gherkin)
#       Return Value        : NA
#       Example             : User clear "email_text"
#       Modified By         : <Name Of Person>
#       Date                : 19 June 2017
#       Modify Description  : <Description of the modification>
########################################################################################################

And(/^User clear "([^"]*)"$/) do |element_set_key|
  begin
    element_data_set = data_element_hash[element_set_key]
    $home_page.user_clear(element_data_set)
    puts "User Clear '#{element_set_key}'"
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end
end

#########################################################################################################
#       Description         : Uses for text field with test data
#       Created By          : Alexander Jackhariyas
#       Parameters          : element_set_key (parse the parameter from gherkin)
#                             data_set_key (parse the parameter from gherkin)
#       Return Value        : NA
#       Example             : User fill "email_text with "username"
#       Modified By         : <Name Of Person>
#       Date                : 31 May 2017
#       Modify Description  : <Description of the modification>
########################################################################################################

When(/^User fill "([^"]*)" with "([^"]*)"$/) do |element_set_key, data_set_key|
  begin
    element_data_set = data_element_hash[element_set_key]
    data_set = data_yml_hash[data_set_key]
    $home_page.user_fill(element_data_set,data_set)
    puts "User fill '#{element_data_set}' with '#{data_set}'"
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end
end

When(/^User check if "([^"]*)" field empty$/) do |element_set_key|
  begin
    element_data_set = data_element_hash[element_set_key]

    if $home_page.user_get_text(element_data_set).eql? ""
      puts "Field is empty"
    else
      raise "Field is not empty"
    end

  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end
end

#########################################################################################################
#       Description         : Uses for text field with random test data
#       Created By          : Alexander Jackhariyas
#       Parameters          : element_set_key (parse the parameter from gherkin)
#                             data_set_key (parse the parameter from gherkin)
#       Return Value        : NA
#       Example             : User fill "phone_text_field" with random "valid_phone_number"
#       Modified By         : <Name Of Person>
#       Date                : 28 July 2017
#       Modify Description  : <Description of the modification>
########################################################################################################

When(/^User fill "([^"]*)" with random "([^"]*)"$/) do |element_set_key, data_set_key|
  begin
    element_data_set = data_element_hash[element_set_key]
    data_set = data_yml_hash[data_set_key]
    data_split = data_set.split('@')
    
    if data_set.include?'@'
      random_value = data_split[0] + rand(0...99999).to_s + '@' + data_split[1]
    elsif
      random_value = data_set + rand(0000000...99999999).to_s
    end

    $home_page.user_fill(element_data_set,random_value)
    puts "User fill '#{element_set_key}' with value '#{random_value}'"
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end
end

#########################################################################################################
#       Description         : Used for filling email and password credential
#       Created By          : Gilang Bintang
#       Parameters          : data_set_key (parse the parameter from gherkin)
#       Return Value        : NA
#       Example             : User login with credential "email#password"
#       Modified By         : <Name Of Person>
#       Date                : 
#       Modify Description  : <Description of the modification>
########################################################################################################

When(/^User login with credential "([^"]*)"$/) do |data_set_key|
  begin
    email_field = data_element_hash['onboarding_email_address_textfield']
    password_field = data_element_hash['onboarding_password_textfield']
    password_field_eye = data_element_hash['authentication_password_eye']

    data_set = data_yml_hash[data_set_key]
    email = data_set.split('#').first
    password = data_set.split('#').last
    
    $home_page.user_fill(email_field,email)
    puts "User fill Email field with value '#{email}'"

    $home_page.user_click(password_field_eye)
    $home_page.user_fill(password_field,password)
    puts "User fill Password field with value '#{password}'"
  rescue Exception => e  
    raise e.message
    raise e.backtrace.inspect
  end
end

And(/^User fill "([^"]*)" with (\d+)$/) do |element_set_key, data_set_key|
  begin
    element_data_set = data_element_hash[element_set_key]
    $home_page.user_fill(element_data_set,data_set_key)
    puts "User fill '#{element_set_key}' with value '#{data_set_key}'"
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end
end

#########################################################################################################
#       Description         : Uses for filling drop down with value
#       Created By          : Alexander Jackhariyas
#       Parameters          : element_set_key (parse the parameter from gherkin)
#                             data_set_key (parse the parameter from gherkin)
#       Return Value        : NA
#       Example             : User select "reason" dropdown with "Damage"
#       Modified By         : Gilang Bintang
#       Date                : 6 Agustus 2017
#       Modify Description  : Remove first value and add general scrollview to swipe
########################################################################################################

And(/^User select "([^"]*)" dropdown with "([^"]*)"$/) do |element_set_key, data_set_key|
  begin
    element_data_set = data_element_hash[element_set_key]
    data_set = data_yml_hash[data_set_key]
    click_dropdown(element_data_set, data_set)
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end
end

#########################################################################################################
#       Description         : Used to check if dropdown have specified values
#       Created By          : Gilang Bintang
#       Parameters          : element_set_key (parse the parameter from gherkin)
#                             data_set_key (have to be contain all value and separated by coma)
#       Return Value        : NA
#       Example             : And User check if dropdown "send_it_frequency" have all "frequency" values
#       Modified By         : 
#       Date                : 27 July 2017
#       Modify Description  : 
########################################################################################################

And(/^User check if dropdown "([^"]*)" have all "([^"]*)" values$/) do |element_set_key, data_set_key|
  begin
    element_data_set = data_element_hash[element_set_key]
    data_set = data_yml_hash[data_set_key]
    values = data_set.split(',')
    #first_value = values.first

    values.each_with_index do |value, i|
      #click_dropdown(element_data_set, value, first_value)
      click_dropdown(element_data_set, value)
      # if i>=4
      #   first_value = values.to_a[3]
      # end
    end
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end
end

#########################################################################################################
#       Description         : Uses for clicking element
#       Created By          : Alexander Jackhariyas
#       Parameters          : element_set_key (parse the parameter from gherkin)
#       Return Value        : NA
#       Example             : User click "later_button"
#       Modified By         : <Name Of Person>
#       Date                : 31 May 2017
#       Modify Description  : <Description of the modification>
########################################################################################################

And(/^User click "([^"]*)"$/) do |element_set_key|
  begin
    element_data_set = data_element_hash[element_set_key]
    $home_page.user_click(element_data_set)
    puts "User Click '#{element_set_key}'"
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end
end

#########################################################################################################
#       Description         : Used to click an element until other element displayed
#       Created By          : Gilang Bintang
#       Parameters          : element_set_key1 (describes locator value of element clicked)
#                           : element_set_key2 (describes locator value of element expected to be displayed)
#       Return Value        : Appium element
#       Example             : And User click "hamburger_menu" until "side_menu" displayed
#       Modified By         : <Name Of Person>
#       Date                : <Date On Which Modified>
#       Modify Description  : <Description of the modification>
########################################################################################################

And(/^User click "([^"]*)" until "([^"]*)" displayed$/) do |element_set_key1, element_set_key2|
  begin
    element_data_set1 = data_element_hash[element_set_key1]
    element_data_set2 = data_element_hash[element_set_key2]
    $home_page.user_click_until(element_data_set1,element_data_set2)
    puts "User Click '#{element_set_key1}' until '#{element_set_key2}' displayed"
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end
end

#########################################################################################################
#       Description         : Used to click an element until it is gone
#       Created By          : Trino
#       Parameters          : element_set_key1 (describes locator value of element clicked)
#                           : element_set_key2 (describes locator value of element expected to be gone)
#       Return Value        : Appium element
#       Example             : And User click "hamburger_menu" until "side_menu" gone
#       Modified By         : <Name Of Person>
#       Date                : <Date On Which Modified>
#       Modify Description  : <Description of the modification>
########################################################################################################

And(/^User click "([^"]*)" until "([^"]*)" gone$/) do |element_set_key1, element_set_key2|
  begin
    element_data_set1 = data_element_hash[element_set_key1]
    element_data_set2 = data_element_hash[element_set_key2]
    $home_page.user_click_until_gone(element_data_set1,element_data_set2)
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end
end

And(/^User expect "([^"]*)" equal with "([^"]*)"$/) do |element_set_key, expect_element_set_key|
  begin
    element_data_set = data_element_hash[element_set_key]
    expect_element_data_set = data_yml_hash[expect_element_set_key]
    puts "#{element_data_set}"
    if !$home_page.user_expect(element_data_set, expect_element_data_set)
      text = $home_page.user_get_text(element_data_set)
      raise "User expect '#{element_set_key}' equal with '#{expect_element_data_set}', but it's equal '#{text}'"
    end
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end
end

And(/^User expect the value of "([^"]*)" equal with "([^"]*)" element$/) do |element_set_key, expect_element_set_key|
  begin
    element_data_set = data_element_hash[element_set_key]
    expect_element_data_set = $home_page.user_get_text(data_element_hash[expect_element_set_key])
    
    if !$home_page.user_expect(element_data_set, expect_element_data_set.gsub('IDR ', '').gsub('Rp ', ''))
      text = $home_page.user_get_text(element_data_set)
      raise "User expect '#{element_set_key}' equal with '#{expect_element_data_set}', but it's equal '#{text}'"
    end
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end
end

And(/^User expect "([^"]*)" more than "([^"]*)"$/) do |element_set_key, expect_element_set_key|
  begin
    element_data_set = data_element_hash[element_set_key]
    expect_element_data_set = data_yml_hash[expect_element_set_key]
    
    if !$home_page.user_expect_more_than(element_data_set, expect_element_data_set)
      text = $home_page.user_get_text(element_data_set)
      raise "User expect '#{element_set_key}' more than '#{expect_element_data_set}', but it's not - '#{text}'"
    end
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end
end

And(/^User expect "([^"]*)" less than "([^"]*)"$/) do |element_set_key, expect_element_set_key|
  begin
    element_data_set = data_element_hash[element_set_key]
    expect_element_data_set = data_yml_hash[expect_element_set_key]
    
    if !$home_page.user_expect_less_than(element_data_set, expect_element_data_set)
      text = $home_page.user_get_text(element_data_set)
      raise "User expect '#{element_set_key}' less than '#{expect_element_data_set}', but it's not - '#{text}'"
    end
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end
end

And(/^User expect "([^"]*)" contains "([^"]*)"$/) do |element_set_key, expect_element_set_key|
  begin
    element_data_set = data_element_hash[element_set_key]
    expect_element_data_set = data_yml_hash[expect_element_set_key]

    if !$home_page.user_expect_contains(element_data_set, expect_element_data_set)
      text = $home_page.user_get_text(element_data_set)
      raise "User expect '#{element_set_key}' contains '#{expect_element_data_set}', but it's equal '#{text}'"
    end
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end
end

#########################################################################################################
#       Description         : Used to check if element doesn't contain a text
#       Created By          : Gilang Bintang
#       Parameters          : element_set_key (parse the parameter from gherkin)
#                             expect_element_set_key (parse the parameter from gherkin)
#       Return Value        : NA
#       Example             : User expect "contact_name" doesn't contains "****_logo"
#       Modified By         : <Name Of Person>
#       Date                : 
#       Modify Description  : <Description of the modification>
########################################################################################################

And(/^User expect "([^"]*)" doesn't contains "([^"]*)"$/) do |element_set_key, expect_element_set_key|
  begin
    element_data_set = data_element_hash[element_set_key]
    expect_element_data_set = data_yml_hash[expect_element_set_key]
    text = $home_page.user_get_text(element_data_set)
    if $home_page.user_expect_contains(element_data_set, expect_element_data_set)
      raise "Text '#{text}' does contains '#{expect_element_data_set}'"
    else
      puts "Text '#{text}' does not contains '#{expect_element_data_set}'"
    end
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end
end

And(/^User expect "([^"]*)" equal with (\d+)$/) do |element_set_key, number|
  begin
    element_data_set = data_element_hash[element_set_key]
    expect_element_data_set = number

    if !$home_page.user_expect(element_data_set, expect_element_data_set)
      text = $home_page.user_get_text(element_data_set)
      puts "User expect '#{element_set_key}' equal with '#{expect_element_data_set}', but it's equal '#{text}'"
    end
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end
end

#########################################################################################################
#       Description         : Uses for expecting element not equal with test data
#       Created By          : Alexander Jackhariyas
#       Parameters          : element_set_key (parse the parameter from gherkin)
#                             expect_element_set_key (parse the parameter from gherkin)
#       Return Value        : NA
#       Example             : User expect "title" is not equal with "username"
#       Modified By         : <Name Of Person>
#       Date                : 31 May 2017
#       Modify Description  : <Description of the modification>
########################################################################################################

And(/^User expect "([^"]*)" is not equal with "([^"]*)"$/) do |element_set_key, expect_element_set_key|
  begin
    element_data_set = data_element_hash[element_set_key]
    expect_element_data_set = data_yml_hash[expect_element_set_key]

    if !$home_page.user_expect_not_equal(element_data_set, expect_element_data_set)
      text = $home_page.user_get_text(element_data_set)
      puts "Text : '#{text}'  is not equal with '#{expect_element_data_set}'"
    end
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end
end

And(/^User expect "([^"]*)" not focusable$/) do |element_set_key|
  begin
    element_data_set = data_element_hash[element_set_key]
    if !$home_page.user_expect_not_focusable(element_data_set)
      raise "'#{element_data_set}' is focusable"
    end
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end
end

And(/^User expect there are (\d+) of "([^"]*)"$/) do |number, element_set_key|
  begin
    element_data_set = data_element_hash[element_set_key]
    if !$home_page.user_expect_count(element_data_set,number)
      raise
    end
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end
end

#########################################################################################################
#       Description         : Uses for expecting text inside element not exist
#       Created By          : Alexander Jackhariyas
#       Parameters          : element_set_key (parse the parameter from gherkin)
#                             expect_element_set_key (parse the parameter from gherkin)
#       Return Value        : NA
#       Example             : User expect "tutorial" equal with "card_title" doesn't exist
#       Modified By         : <Name Of Person>
#       Date                : 31 May 2017
#       Modify Description  : <Description of the modification>
########################################################################################################

And(/^User expect "([^"]*)" equal with "([^"]*)" doesn't exist$/) do |element_set_key, expect_element_set_key|
  begin
    element_data_set = data_element_hash[element_set_key]
    expect_element_data_set = data_yml_hash[expect_element_set_key]
    $home_page.user_wait(element_data_set)
    if($home_page.user_expect_not_equal(element_data_set,expect_element_data_set))
      text = $home_page.user_get_text(element_data_set)
      puts "'#{element_set_key}' which is equal with '#{expect_element_data_set}' doesn't exist"
    else
      text = $home_page.user_get_text(element_data_set)
      raise "'#{element_set_key}' which is equal with '#{text}' exist"
    end
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end
end

And(/^User swipe the left menu to the right$/) do
  begin
    $home_page.user_swipe_right
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end
end

And(/^User swipe the right menu to the left$/) do
  begin
    $home_page.user_swipe_left
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end
end

And(/^User swipe screen to the left$/) do
  begin
    $home_page.user_swipe_left
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end
end

And(/^User swipe "([^"]*)" to the left$/) do |element|
  begin
    element_data_set = data_element_hash[element]
    $home_page.user_swipe_left(element_data_set)
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end
end

And(/^User swipe "([^"]*)" to the right$/) do |element|
  begin
    element_data_set = data_element_hash[element]
    $home_page.user_swipe_right(element_data_set)
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end
end

And(/^User get "([^"]*)" value$/) do |element_set_key|
  begin
    element_data_set = data_element_hash[element_set_key]
    $home_page.user_get_value(element_data_set)
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end
end

#########################################################################################################
#       Description         : Uses for scrolling till found the element
#       Created By          : Alexander Jackhariyas
#       Parameters          : element_set_key (parse the parameter from gherkin)
#       Return Value        : NA
#       Example             : User scroll to "username_textfield"
#       Modified By         : <Name Of Person>
#       Date                : 31 May 2017
#       Modify Description  : <Description of the modification>
########################################################################################################

And (/^User scroll to "([^"]*)"$/) do |element_set_key|
  begin
    element_data_set = data_element_hash[element_set_key]
    $home_page.user_scroll_to(element_data_set)
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end
end

#########################################################################################################
#       Description         : Uses for waiting couple seconds
#       Created By          : Alexander Jackhariyas
#       Parameters          : number(parsing the number from gherkin)
#       Return Value        : NA
#       Example             : User wait 5 seconds
#       Modified By         : <Name Of Person>
#       Date                : 31 May 2017
#       Modify Description  : <Description of the modification>
########################################################################################################

And(/^User wait (\d+) seconds/) do |number|
  begin
    number = number.to_i
    sleep(number)
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end
end

And(/^User expect "([^"]*)" displayed (\d+) times with the last text "([^"]*)"$/) do |element_set_key, number, expect_element_set_key|
  begin
    element_data_set = data_element_hash[element_set_key]
    expect_element_data_set = data_yml_hash[expect_element_set_key]
    count = 0
    number = number.to_i
    while count < number do
      if count == number-1
        count += 1
        if ($home_page.user_expect(element_data_set,expect_element_data_set))
          text = $home_page.user_get_text(element_data_set)
          puts "The last element is '#{text}'"
          $home_page.user_click(element_data_set)
        else
          text = $home_page.user_get_text(element_data_set)
          raise "The last element is '#{text}'"
        end
      else
        $home_page.user_click(element_data_set)
        count += 1
      end
    end
  rescue Exception => e
    raise e.message
  end
end

#########################################################################################################
#       Description         : Used for checking tutorial overlay the screen
#       Created By          : Novi
#       Parameters          : -
#       Return Value        : NA
#       Example             : And User expect "pay_me_next_tutorial_button" displayed 3 times
#                             with the last button "pay_me_ok_got_tutorial_button" equal with text "pay_me_ok_got_tutorial_text"
#       Modified By         : <Name Of Person>
#       Date                : -
#       Modify Description  : <Description of the modification>
########################################################################################################

And(/^User expect "([^"]*)" displayed (\d+) times with the last button "([^"]*)" equal with text "([^"]*)"$/) do |element_set_key, number, expect_element_set_key, expect_data_text|
  begin
    element_data_set = data_element_hash[element_set_key]
    expect_element_data_set = data_element_hash[expect_element_set_key]
    expect_text = data_yml_hash[expect_data_text]
    count = 0
    number = number.to_i
    while count < number do
      if count == number-1
        count += 1
        if ($home_page.user_expect(expect_element_data_set,expect_text))
          text = $home_page.user_get_text(expect_element_data_set)
          puts "The last element is '#{text}'"
          $home_page.user_click(expect_element_data_set)
        else
          text = $home_page.user_get_text(element_data_set)
          raise "The last element is '#{text}'"
        end
      else
        $home_page.user_click(element_data_set)
        count += 1
      end
    end
  rescue Exception => e
    raise e.message
  end
end

#########################################################################################################
#       Description         : Uses for minimize the app and wait till couple second to reopen
#       Created By          : Alexander Jackhariyas
#       Parameters          : -
#       Return Value        : NA
#       Example             : User close app and reopen app
#       Modified By         : <Name Of Person>
#       Date                : 31 May 2017
#       Modify Description  : <Description of the modification>
########################################################################################################

Given(/^User close app for (\d+) seconds and reopen app$/) do |time|
  begin
    int_time = time.to_i
    $home_page.user_close_and_reopen_app(int_time)
  rescue Exception => e
    raise e.message
  end
end

#########################################################################################################
#       Description         : Uses for kill the app and wait till couple second to reopen
#       Created By          : Alexander Jackhariyas
#       Parameters          : -
#       Return Value        : NA
#       Example             : User close app and reopen app
#       Modified By         : <Name Of Person>
#       Date                : 31 May 2017
#       Modify Description  : <Description of the modification>
########################################################################################################

Given(/^User kill app and reopen app$/) do
  begin
    $home_page.user_kill_and_reopen_app
  rescue Exception => e
    raise e.message
  end
end

#########################################################################################################
#       Description         : Uses for reset the app
#       Created By          : Alexander Jackhariyas
#       Parameters          : -
#       Return Value        : NA
#       Example             : User reset app
#       Modified By         : <Name Of Person>
#       Date                : 10 October 2017
#       Modify Description  : <Description of the modification>
########################################################################################################

Given(/^User reset app on pin page$/) do
  begin
    enter_pin = data_element_hash["authentication_login_with_pin_page"]
    times = false
    
    step "User is on application screen"

    if $home_page.user_expect_displayed?(enter_pin)
      times = true
    end

    if ENV['PLATFORM_NAME'] =='android'
      unless times == false
        $home_page.user_reset_app
        step "User is on application screen"        
      end

      steps %Q{
        And User check and click 2 times if allow or ok button exist
      }
    elsif ENV['PLATFORM_NAME'] =='ios'
      unless $home_page.user_expect_displayed?(enter_pin)
        steps %Q{
          And User check and click 2 times if allow or ok button exist
        }
      end

      unless times == false
        $home_page.user_reinstall_app

        step "User is on application screen"
      end    

      steps %Q{
        And User check and click 2 times if allow or ok button exist
      }
    end
  rescue Exception => e
    raise e.message
  end
end

#########################################################################################################
#       Description         : Uses for reset the app
#       Created By          : Alexander Jackhariyas
#       Parameters          : -
#       Return Value        : NA
#       Example             : User reset app
#       Modified By         : Eko Adi Prabowo
#       Date                : 9 Decamber 2017
#       Modify Description  : comment step for reset apps, because actually we using NoReset=false 
########################################################################################################

Given(/^User reset app$/) do
  begin
#because actually we use NoReset=false, if we using NoReset=true open this step
    #step "User is on application screen"

    if ENV['PLATFORM_NAME'] =='android'
      $home_page.user_reset_app

    elsif ENV['PLATFORM_NAME'] =='ios'
      steps %Q{
        And User check and click 2 times if allow or ok button exist
      }
  
       $home_page.user_reinstall_app 

#because actually we use NoReset=false, if we using NoReset=true open this step  
     # steps %Q{
     #   Given User is on application screen
     #   And User check and click 2 times if allow or ok button exist
     # }
    end
  rescue Exception => e
    raise e.message
  end
end

#########################################################################################################
#       Description         : Uses for make sure user latest position is on login with PIN
#       Created By          : Alexander Jackhariyas
#       Parameters          : element_set_key (parse the parameter from gherkin)
#       Return Value        : NA
#       Example             : User make sure is on login with PIN page using "(flexi_saver_cif_2"
#       Modified By         : <Name Of Person>
#       Date                : 10 October 2017
#       Modify Description  : <Description of the modification>
########################################################################################################

Given(/^User make sure is on login with PIN page using "([^"]*)"$/) do |account|
  begin
    element_data_set = data_element_hash["authentication_login_with_pin_page"]

    if $home_page.nil?
      $home_page = HomePage.new($driver)
    end

    unless $home_page.user_expect_displayed?(element_data_set)
      steps %Q{ 
        Given User login using "#{account}" in English then log out
      }  
    end
  rescue Exception => e
    raise e.message
  end
end


#########################################################################################################
#       Description         : Uses for clicking back button on device
#       Created By          : Alexander Jackhariyas
#       Parameters          : -
#       Return Value        : NA
#       Example             : User press back button on device
#       Modified By         : Faisal Yafi
#       Date                : 09 November 2017
#       Modify Description  : Add environment conditional
########################################################################################################

Given(/^User press back button on device$/) do
  begin
    element_data_set = data_element_hash["back_button"]
    if ENV['PLATFORM_NAME'] =='android'
      $home_page.user_press_back_button
    elsif ENV['PLATFORM_NAME'] =='ios'
      $home_page.user_click(element_data_set)
    end
  rescue Exception => e
    raise e.message
  end
end

#########################################################################################################
#       Description         : Uses for expecting the element doesn't exist
#       Created By          : Alexander Jackhariyas
#       Parameters          : -
#       Return Value        : NA
#       Example             : User expect "tutorial" doesn't exist
#       Modified By         : <Name Of Person>
#       Date                : 31 May 2017
#       Modify Description  : <Description of the modification>
########################################################################################################

Then(/^User expect "([^"]*)" doesn't exist/) do |element_set_key|
  begin
    element_data_set = data_element_hash[element_set_key]
    if($home_page.user_expect_not_displayed?(element_data_set))
      puts "Element '#{element_set_key}' doesn't exist"
    else
      raise "Element '#{element_set_key}' still exist"
    end
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end
end

#########################################################################################################
#       Description         : Uses counting characters or digit inside field
#       Created By          : Alexander Jackhariyas
#       Parameters          : -
#       Return Value        : NA
#       Example             : User expect "in_and_out_filter_search_textfield" equal with 100 characters
#       Modified By         : Alexander Jackhariyas
#       Date                : 26 October 2017
#       Modify Description  : Add numeric only and has . or , for handling currency
########################################################################################################

Then (/^User expect "([^"]*)" equal with (\d+) (?:digit|characters)/) do |element_set_key, number|
  begin
    element_data_set = data_element_hash[element_set_key]
    $home_page.user_wait(element_data_set)
    number = number.to_i
    text = $home_page.user_get_text(element_data_set)
    text_type = text =~ /^-?[0-9.,]+$/
    
    unless text_type.nil?
      text = text.gsub(',','').gsub('.','')
    end

    text_size = text.length

    if(text.length == number)
      puts "length of digit/characters are '#{text.length}'"
    else
      raise "length of characters are '#{text.length}'"
    end
  rescue Exception => e
    raise e.message
  end
end

#########################################################################################################
#       Description         : Uses to check number format use dot separator (i.e, 1.000.000)
#       Created By          : Trino
#       Parameters          : -
#       Return Value        : NA
#       Example             : User expect format number of "in_and_out_filter_search_textfield" use dot separator
#       Modified By         : <Name Of Person>
#       Date                : 24 October 2017
#       Modify Description  : <Description of the modification>
########################################################################################################

Then (/^User expect format number of "([^"]*)" use dot separator/) do |element_set_key|
  begin
    element_data_set = data_element_hash[element_set_key]
    text = $home_page.user_get_text(element_data_set)
    divider_counter = text.length / 3
    isFormatted = true

    for i in 0..divider_counter
      if text[text.length - 3 * i].eql?('.')
        isFormatted = false
      end
    end
    
    if isFormatted
      puts "The format is true"
    else
      raise "The format is false"
    end
  rescue Exception => e
    raise e.message
  end
end

#########################################################################################################
#       Description         : Uses to check number format use comma separator (i.e, 1,000,000)
#       Created By          : Trino
#       Parameters          : -
#       Return Value        : NA
#       Example             : User expect format number of "in_and_out_filter_search_textfield" use dot separator
#       Modified By         : <Name Of Person>
#       Date                : 24 October 2017
#       Modify Description  : <Description of the modification>
########################################################################################################

Then (/^User expect format number of "([^"]*)" use comma separator/) do |element_set_key|
  begin
    element_data_set = data_element_hash[element_set_key]
    text = $home_page.user_get_text(element_data_set)
    divider_counter = text.length / 3
    isFormatted = true

    for i in 0..divider_counter
      if text[text.length - 3 * i].eql?(',')
        isFormatted = false
      end
    end
    
    if isFormatted
      puts "The format is true"
    else
      raise "The format is false"
    end
  rescue Exception => e
    raise e.message
  end
end

And (/^User swipe from "([^"]*)" to "([^"]*)"$/) do |element_set_key1, element_set_key2|
  begin
    element_data_set1 = data_element_hash[element_set_key1]
    element_data_set2 = data_element_hash[element_set_key2]
    $home_page.user_swipe_to(element_data_set1, element_data_set2)
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end
end

And (/^User swipe left "([^"]*)"$/) do |element_set_key|
  begin
    element_data_set = data_element_hash[element_set_key]
    $home_page.user_swipe_left_element(element_data_set)
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end
end

And(/^User wait "([^"]*)" will be gone$/) do |element_set_key|
  begin
    element_data_set = data_element_hash[element_set_key]
    $home_page.user_wait_gone(element_data_set, 30)
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end
end

Then(/^User expect "([^"]*)" is exist/) do |element_set_key|
  begin
    element_data_set = data_element_hash[element_set_key]
    exist = $home_page.user_expect_displayed?(element_data_set)
    if !exist
      raise "#{element_data_set} is not exist"
    end
  rescue Exception => e
    raise e.message
  end
end

#########################################################################################################
#       Description         : Used for emulating user hand gesture swipe upward to scroll the screen down
#       Created By          : Alexander Jackhariyas
#       Parameters          : element_set_key
#       Return Value        : NA
#       Example             : User swipe up until found "card_center_widget"
#       Modified By         : Gilang Bintang
#       Date                : 07 June 2017
#       Modify Description  : Added timeout when expected element didn't exist
########################################################################################################
And(/^User swipe up until found "([^"]*)"/) do |element_set_key|
  begin
    element_data_set = data_element_hash[element_set_key]
    Timeout::timeout(DEFAULT_TIMEOUT) {swipe_up_until(element_data_set)}
    sleep (2)
  rescue Exception => e
    raise e.message
  end
end

#########################################################################################################
#       Description         : Used to scroll contact list until found contact name
#       Created By          : Gilang Bintang
#       Parameters          : contact name
#       Return Value        : NA
#       Example             : User swipe up contact until found "xuan_nguyen"
#       Modified By         : 
#       Date                : 
#       Modify Description  : 
########################################################################################################
And(/^User swipe up contact until found "([^"]*)"/) do |contact_name|
  begin
    data_set = data_yml_hash[contact_name]
    element_data_set = "xpath://android.widget.TextView[@text='#{data_set}']"
    Timeout::timeout(DEFAULT_TIMEOUT) {swipe_up_until(element_data_set)}
  rescue Exception => e
    raise e.message
  end
end

#########################################################################################################
#       Description         : Used for emulating user hand gesture swipe downward to scroll the screen up
#       Created By          : Alexander Jackhariyas
#       Parameters          : element_set_key
#       Return Value        : NA
#       Example             : User swipe down until found "card_center_widget"
#       Modified By         : Gilang Bintang
#       Date                : 07 June 2017
#       Modify Description  : Added timeout when expected element didn't exist
########################################################################################################
And(/^User swipe down until found "([^"]*)"/) do |element_set_key|
  begin
    element_data_set = data_element_hash[element_set_key]
    Timeout::timeout(DEFAULT_TIMEOUT) {swipe_down_until(element_data_set)}
    sleep (2)
  rescue Exception => e
    raise e.message
  end
end

#########################################################################################################
#       Description         : Used for emulating user hand gesture swipe an element upward
#       Created By          : Alexander Jackhariyas
#       Parameters          : element_set_key, expected_element
#       Return Value        : NA
#       Example             : User swipe up "date_dropdown" until found "month_june"
#       Modified By         : Gilang Bintang
#       Date                : 07 June 2017
#       Modify Description  : Added timeout when expected element didn't exist
########################################################################################################
And(/^User swipe up "([^"]*)" until found "([^"]*)"/) do |element_set_key, expected|
  begin
    first_content = data_element_hash[element_set_key]
    expected_element = data_element_hash[expected]
    Timeout::timeout(DEFAULT_TIMEOUT) {swipe_up_element_until(expected_element, first_content)}
    sleep (1)
  rescue Exception => e
    raise e.message
  end
end

#########################################################################################################
#       Description         : Used for emulating user hand gesture swipe an element downward
#       Created By          : Alexander Jackhariyas
#       Parameters          : element_set_key, expected_element
#       Return Value        : NA
#       Example             : User swipe down "date_dropdown" until found "month_june"
#       Modified By         : Gilang Bintang
#       Date                : 07 June 2017
#       Modify Description  : Added timeout when expected element didn't exist
########################################################################################################
And(/^User swipe down "([^"]*)" until found "([^"]*)"/) do |element_set_key, expected|
  begin
    first_content = data_element_hash[element_set_key]
    expected_element = data_element_hash[expected]
    Timeout::timeout(DEFAULT_TIMEOUT) {swipe_down_element_until(expected_element, first_content)}
    sleep (1)
  rescue Exception => e
    raise e.message
  end
end

#########################################################################################################
#       Description         : Uses for input PIN/OTP manually base on test data
#       Created By          : Alexander Jackhariyas
#       Parameters          : element_set_key, expected_element
#       Return Value        : NA
#       Example             : User fill "incorrect_pin for OTP or PIN
#       Modified By         : -
#       Date                : 04 March 2017
#       Modify Description  : -
########################################################################################################

#For take OTP from modified data, fe: incorrect OTP
And(/^User fill "([^"]*)" for OTP or PIN/) do |data_set_key|
  begin
    data_set = data_yml_hash[data_set_key]
    @array = data_set.split('')
    delete_button = data_element_hash["onboarding_delete_button"] 
    otp_1_box = data_element_hash["onboarding_otp_1_box"]

    if $home_page.user_expect_displayed?(otp_1_box)
      $home_page.user_click(otp_1_box)
    else
      for i in 0..5
        $home_page.user_click(delete_button)
      end
    end

    custom_keyboard(@array)
  rescue Exception => e
    raise e.message
  end
end

#########################################################################################################
#       Description         : Uses for input OTP manually base on notification
#       Created By          : Alexander Jackhariyas
#       Parameters          : element_set_key, expected_element
#       Return Value        : NA
#       Example             : User fill OTP from "incorrect_pin"
#       Modified By         : -
#       Date                : 04 March 2017
#       Modify Description  : -
########################################################################################################

#For take OTP from notification
And(/^User fill OTP from "([^"]*)"/) do |element_set_key|
  begin
    element_data_set = data_element_hash[element_set_key]
    get_otp = $home_page.user_get_text(element_data_set).split(':').gsub(' ','').last
    @array = get_otp.split('')
    otp_box_1 = data_element_hash["onboarding_otp_1_box"]
    $home_page.user_click(otp_box_1)

    custom_keyboard(@array)
  rescue Exception => e
    raise e.message
  end
end

And(/^User check the active language of "([^“]*)" should be English$/) do |element_set_key|
  begin
    element_data_set = data_element_hash[element_set_key]
    language = $home_page.user_get_text(element_data_set)
    if(language == 'Ubah Bahasa')
      $home_page.user_click(element_data_set)
    elsif(language.include? 'Ubah Bahasa')
      $home_page.user_click(element_data_set)
    end
 rescue Exception => e
   raise e.message
   raise e.backtrace.inspect
  end
end

And(/^User check the active language of "([^“]*)" should be Indonesia$/) do |element_set_key|
  begin
    element_data_set = data_element_hash[element_set_key]
    language = $home_page.user_get_text(element_data_set)
    if(language == 'Change Language')
      $home_page.user_click(element_data_set)
    end
 rescue Exception => e
   raise e.message
   raise e.backtrace.inspect
  end
end

#########################################################################################################
#       Description         : Used to check if app language is as expected
#       Created By          : Gilang Bintang
#       Parameters          : expected language
#       Return Value        : -
#       Example             : And User check app language is "bahasa"
#       Modified By         : Arpit
#       Date                : 10 Aug 2017
#       Modify Description  : Created dynamic solution
########################################################################################################
And(/^User check app language is "([^“]*)"$/) do |data_set_key|
  begin
    languge_element = data_element_hash["profile_and_setting_language"]
    language_label = $home_page.user_get_text(languge_element)
    language_toggle = data_element_hash["onboarding_change_language_button"]
    expected_language = data_yml_hash[data_set_key].strip.downcase
    
    if ENV['PLATFORM_NAME'] =='android'
      case expected_language
      when 'bahasa indonesia'
        if(language_label == 'English')
          $home_page.user_click(language_toggle)
        end
      when 'english'
        if(language_label == 'Bahasa Indonesia')
          $home_page.user_click(language_toggle)
        end
      else
        raise "App doesn't support #{expected_language} language"
      end
    elsif ENV['PLATFORM_NAME'] =='ios'
      case expected_language
      when 'bahasa'
        if(language_label.include? 'English')
          $home_page.user_click(language_toggle)
          puts "change language to english"
        end
      when 'english'
        if(language_label.include? 'Bahasa Indonesia')
          $home_page.user_click(language_toggle)
          puts "rubah bahasa ke bahasa Indonesia"
        end
      else
        raise "App doesn't support #{expected_language} language"
      end
    else
      raise "Automation doesn't support #{ENV['PLATFORM_NAME']} platform"
    end
 rescue Exception => e
   raise e.message
   raise e.backtrace.inspect
  end
end

#########################################################################################################
#       Description         : Used for input date field year
#       Created By          : Alexander Jackhariyas
#       Parameters          : element_set_key, year
#       Return Value        : N/A
#       Example             : User select "date_field" field and put "year" as year
#       Modified By         : -
#       Date                : 18 July 2017
#       Modify Description  : -
########################################################################################################

When(/^User select "([^“]*)" field and put "([^“]*)" as day "([^“]*)" as month "([^“]*)" as year$/) do |element_set_key, day, month, year|
    day_set = data_yml_hash[day]
    month_set = data_yml_hash[month]
    year_set = data_yml_hash[year]

    pick_date(element_set_key, day_set, month_set, year_set)
end

#########################################################################################################
#       Description         : Used to input today's date
#       Created By          : gilang
#       Parameters          : 
#       Return Value        : N/A
#       Example             : User select today in "birthday" date picker
#       Modified By         : -
#       Date                : 18 July 2017
#       Modify Description  : -
########################################################################################################

When(/^User select today in "([^“]*)" date picker$/) do |element_set_key|
  today = get_todays_date().split("/")

  day_set = today[0]
  month_set = today[1]
  year_set = today[2]

  pick_date(element_set_key, day_set, month_set, year_set)
end

#########################################################################################################
#       Description         : Used to input future day's date
#       Created By          : gilang
#       Parameters          : 
#       Return Value        : N/A
#       Example             : User select "3" days from today in "birthday" date picker
#       Modified By         : -
#       Date                : 18 July 2017
#       Modify Description  : -
########################################################################################################

When(/^User select "([^“]*)" days from today in "([^“]*)" date picker$/) do |future_days, element_set_key|
  today = get_future_days_date(data_yml_hash[future_days]).split("/")

  day_set = today[0]
  month_set = today[1]
  year_set = today[2]

  pick_date(element_set_key, day_set, month_set, year_set)
end

#########################################################################################################
#       Description         : Used to input future month's date
#       Created By          : gilang
#       Parameters          : 
#       Return Value        : N/A
#       Example             : User select "2" months from today in "birthday" date picker
#       Modified By         : -
#       Date                : 18 July 2017
#       Modify Description  : -
########################################################################################################

When(/^User select "([^“]*)" months from today in "([^“]*)" date picker$/) do |future_months, element_set_key|
    today = get_future_months_date(data_yml_hash[future_months]).split("/")

    day_set = today[0]
    month_set = today[1]
    year_set = today[2]

    pick_date(element_set_key, day_set, month_set, year_set)
  
end

#########################################################################################################
#       Description         : Used to input future year's date
#       Created By          : gilang
#       Parameters          : 
#       Return Value        : N/A
#       Example             : User select "2" years from today in "birthday" date picker
#       Modified By         : -
#       Date                : 18 July 2017
#       Modify Description  : -
########################################################################################################

When(/^User select "([^“]*)" years from today in "([^“]*)" date picker$/) do |future_years, element_set_key|
    today = get_future_years_date(data_yml_hash[future_years]).split("/")

    day_set = today[0]
    month_set = today[1]
    year_set = today[2]

    pick_date(element_set_key, day_set, month_set, year_set)
  
end

#########################################################################################################
#       Description         : Used to input yesterday's date
#       Created By          : gilang
#       Parameters          : 
#       Return Value        : N/A
#       Example             : User select yesterday in "birthday" date picker
#       Modified By         : -
#       Date                : 18 July 2017
#       Modify Description  : -
########################################################################################################

When(/^User select yesterday in "([^“]*)" date picker$/) do |future_months, element_set_key|
    today = get_past_days_date(1).split("/")

    day_set = today[0]
    month_set = today[1]
    year_set = today[2]

    pick_date(element_set_key, day_set, month_set, year_set)
  
end

#########################################################################################################
#       Description         : Used to check if field is masked
#       Created By          : Gilang Bintang
#       Parameters          : field that needs checking
#       Return Value        : -
#       Example             : And User check if "password_field" masked
#       Modified By         : -
#       Date                : -
#       Modify Description  : -
########################################################################################################
And(/^User check if "([^“]*)" field masked$/) do |element_set_key|
  begin
    element_data_set = data_element_hash[element_set_key]
    if $home_page.user_get_text(element_data_set).eql? "" or $home_page.user_get_text(element_data_set).include? "•"
      puts "Field '#{element_set_key}' is masked"
    else
      raise
    end
  rescue Exception => e
   raise e.message
   raise e.backtrace.inspect
  end
end

#########################################################################################################
#       Description         : Used for change language on onboarding base on specification
#       Created By          : Alexander Jackhariyas
#       Parameters          : element_set_key
#       Return Value        : N/A
#       Example             : User change language into "english"
#       Modified By         : Impola
#       Date                : 13 November 2017
#       Modify Description  : Add step for iOS
########################################################################################################

And(/^User change language into "([^“]*)"$/) do |data_set_key|
  begin
    current_language = data_element_hash["onboarding_current_language"]
    expected_language = data_yml_hash[data_set_key]
    
   if ENV['PLATFORM_NAME'] =='android'
     if !$home_page.user_expect(current_language, expected_language)
       $driver.find_element(:accessibility_id, "Switch_Image").click
       puts "User change language into '#{expected_language}'"
     end
   elsif ENV['PLATFORM_NAME'] =='ios'
     if !$home_page.user_expect(current_language, expected_language)
       $driver.find_element(:name, "Language").click
       puts "User change language into '#{expected_language}'"
     end
   end
   sleep(3)

  rescue Exception => e
   raise e.message
   raise e.backtrace.inspect
  end
end

#########################################################################################################
#       Description         : Used for split bill, after click done button will trigger the keyboard.
#                           : Need to hide the keyboard to expect the element display on the layout
#       Created By          : Novi Kumalasari
#       Parameters          : -
#       Return Value        : Just action to hide the keyboard
#       Example             : And User hide the keyboard
#       Modified By         : -
#       Date                : -
#       Modify Description  : -
########################################################################################################
Then(/^User hide the keyboard$/) do
  begin
    $home_page.user_hide_keyboard
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end
end

Given(/^User set filter for amount range from (\d+) to (\d+)$/) do|from, to|
  steps %Q{
    And User click "in_and_out_amount_menu" until "in_and_out_amount_from_texfield" displayed
  }     
    element_data_from = data_element_hash["in_and_out_amount_from_texfield"]
    element_data_to = data_element_hash["in_and_out_amount_to_texfield"]
 
    $home_page.user_fill(element_data_from,"#{from}")
    puts "User fill from field with '#{from}'"
    $home_page.user_fill(element_data_to,"#{to}")
    puts "User fill to field with '#{to}'"
  steps %Q{
    And User click "in_and_out_done_button"
  }
end

#########################################################################################################
#       Description         : Use for put balance inside page into variable, use null_value inside selector for the rest of parameters if you want to check for several element. Limited till 5 parameter 
#       Created By          : Alexander Jackhariyas
#       Parameters          : balance_1, balance_2, balance_3, balance_4, & balance_5
#       Return Value        : NA
#       Example             : And User check balances for "save_it_maxi_saver_balance", "save_it_dream_saver_balance", "null_value", "null_value" and "null_value"
#       Modified By         : -
#       Date                : -
#       Modify Description  : -
########################################################################################################

Given(/^User check balances for "([^“]*)", "([^“]*)", "([^“]*)", "([^“]*)" and "([^“]*)"$/) do |balance_1, balance_2, balance_3, balance_4, balance_5|
  balance = [balance_1, balance_2, balance_3, balance_4, balance_5]
  balance_array = []
  @balance_total = []
  
  for i in 0..4
    balance_array << data_element_hash[balance[i]]
    
    if balance_array[i].partition(':').last == "null_value"
      @balance_total << 0
    else
      steps %Q{
        Given User swipe up until found "#{balance[i]}"
      }
      @balance_total << $home_page.user_get_text(balance_array[i]).split(' ').last.gsub('.','').gsub(',','').to_i
    end
  end
end

#########################################################################################################
#       Description         : Use for put balance inside page into variable, can be uses for several times.
#       Created By          : Alexander Jackhariyas
#       Parameters          : balance
#       Return Value        : NA
#       Example             : And User input balances "save_it_dream_saver_balance" into variable
#       Modified By         : -
#       Date                : 7 August 2017
#       Modify Description  : -
########################################################################################################

Given(/^User input balances "([^“]*)" into variable$/) do |balance|
  balance_list = data_element_hash[balance]
  balance_array = $home_page.user_get_text(balance_list)

  if @balance_total == nil
    @balance_total = []
  end 

  @balance_total << balance_array.split(' ').last.gsub('.','').gsub(',','').gsub(',','').gsub('Rp','').gsub('IDR','').to_i
  puts "User put #{balance_array} inside @balance_total"
end

#########################################################################################################
#       Description         : Use for checking balance inside element base on "step user check balance for". If you want to execute this fuction you need to execute Given User check balances for "([^“]*)", "([^“]*)", "([^“]*)", "([^“]*)" and "([^“]*)" first 
#       Created By          : Alexander Jackhariyas
#       Parameters          : balance_1, balance_2, balance_3, balance_4, & balance_5
#       Return Value        : NA
#       Example             : And User check balances for "save_it_maxi_saver_balance", "save_it_dream_saver_balance", "null_value", "null_value" and "null_value"
#       Modified By         : -
#       Date                : -
#       Modify Description  : -
########################################################################################################

Given(/^User check total "([^“]*)" balance$/) do |balance|
  balance_one = data_element_hash[balance]
  expected_balance = @balance_total.sum
  
  steps %Q{
    Given User swipe up until found "#{balance}"
  }

  current_balance = $home_page.user_get_text(balance_one).split(' ').last.gsub('.','').gsub(',','').gsub('Rp','').gsub('IDR','').to_i

  if(current_balance != expected_balance)
    raise "User expect total balance of #{balance} is Rp. #{expected_balance}, but it's displayed Rp. #{current_balance}"
  end
end

#########################################################################################################
#       Description         : Use for checking balance inside element base on "step user check balance for" If you want to execute this fuction you need to execute Given User check balances for "([^“]*)", "([^“]*)", "([^“]*)", "([^“]*)" and "([^“]*)" first  
#       Created By          : Alexander Jackhariyas
#       Parameters          : balance_1, balance_2, balance_3, balance_4, & balance_5
#       Return Value        : NA
#       Example             : And User check balances for "save_it_maxi_saver_balance", "save_it_dream_saver_balance", "null_value", "null_value" and "null_value"
#       Modified By         : -
#       Date                : -
#       Modify Description  : -
########################################################################################################

Given(/^User check difference "([^“]*)" balance$/) do |balance|
  balance_one = data_element_hash[balance]
  @btotal_reverse = @balance_total.sort.reverse
  differences_balance = @balance_total.max

  for i in 1..@balance_total.size-1
    differences_balance = differences_balance - @btotal_reverse[i]
  end
  
  steps %Q{
    Given User swipe up until found "#{balance}"
  }

  current_balance = $home_page.user_get_text(balance_one).split(' ').last.gsub('.','').gsub(',','').gsub('Rp','').gsub('IDR','').to_i

  if(current_balance != differences_balance)
    raise "User expect total balance of #{balance} is Rp. #{differences_balance}, but it's displayed Rp. #{current_balance}"
  end
end


#########################################################################################################
#       Description         : Use for put text inside page into variable, use null_value inside selector for the rest of parameters if you want to check for several element. Limited till 5 parameter 
#       Created By          : Alexander Jackhariyas
#       Parameters          : text_1, text_2, text_3, text_4, text_5
#       Return Value        : NA
#       Example             : And User check texts for "contac_name_two_words", "contac_name_one_words", "null_value", "null_value" and "null_value"
#       Modified By         : -
#       Date                : 4 August 2017
#       Modify Description  : -
########################################################################################################

Given(/^User check texts for "([^“]*)", "([^“]*)", "([^“]*)", "([^“]*)" and "([^“]*)"$/) do |text_1, text_2, text_3, text_4, text_5|
  @text_selector_collection = [text_1, text_2, text_3, text_4, text_5]
  @text_collection = []
  
  for i in 0..4
    element_data_set = data_element_hash[@text_selector_collection[i]]
    
    if element_data_set.partition(':').last != "null_value"
      @text_collection << $home_page.user_get_text(element_data_set)
    end
  end
end

#########################################################################################################
#       Description         : Use for put balance inside page into variable, can be uses for several times.
#       Created By          : Alexander Jackhariyas
#       Parameters          : balance
#       Return Value        : NA
#       Example             : And User input balances "save_it_dream_saver_balance" into variable
#       Modified By         : -
#       Date                : 7 August 2017
#       Modify Description  : -
########################################################################################################

Given(/^User input texts "([^“]*)" into variable$/) do |text|
  text_list = data_element_hash[text]
  text_array = $home_page.user_find_elements(text_list)
  
  if @text_collection == nil
    @text_collection = []
  end 

  for i in 0..text_array.size-1  
    @text_collection << text_array[i].text
    puts "User put #{text_array[i].text} inside @balance_total"
  end
end

#########################################################################################################
#       Description         : Use for checking texts. If you want to execute this fuction you need to execute Given User check texts for "([^“]*)", "([^“]*)", "([^“]*)", "([^“]*)" and "([^“]*)" first 
#       Created By          : Alexander Jackhariyas
#       Parameters          : -
#       Return Value        : NA
#       Example             : And User check texts
#       Modified By         : -
#       Date                : 4 August 2017
#       Modify Description  : -
########################################################################################################

Given(/^User check texts$/) do
  for i in 0..@text_collection.size-1
    if ENV['PLATFORM_NAME'] =='android'
      current_text_selector = "xpath://android.widget.TextView[@text='#{@text_collection[i]}']"
      
      $home_page.user_expect_displayed?(current_text_selector)
    elsif ENV['PLATFORM_NAME'] =='ios'
      current_text_selector = "xpath://XCUIElementTypeOther[normalize-space(@label)='#{@text_collection[i]}']"
      
      $home_page.user_expect_displayed?(current_text_selector)
    end
  end
end

#########################################################################################################
#       Description         : Use for turn off internet connection, make sure to turn off internet connection after using this function
#       Created By          : Alexander Jackhariyas
#       Parameters          : -
#       Return Value        : NA
#       Example             : And User check texts
#       Modified By         : -
#       Date                : 4 June 2017
#       Modify Description  : -
########################################################################################################

Given(/^User turn off network connection for data and wifi$/) do
  begin
    $home_page.user_turn_off_wifi
  rescue Exception => e
   raise e.message
   raise e.backtrace.inspect
  end
end

#########################################################################################################
#       Description         : Use for turn on internet connection
#       Created By          : Alexander Jackhariyas
#       Parameters          : -
#       Return Value        : NA
#       Example             : And User check texts
#       Modified By         : -
#       Date                : 4 June 2017
#       Modify Description  : -
########################################################################################################

Given(/^User turn on network connection for data and wifi$/) do
  begin
    $home_page.user_turn_on_wifi
  rescue Exception => e
   raise e.message
   raise e.backtrace.inspect
  end
end

#########################################################################################################
#       Description         : Use for checking the date is the first day of current week in card transaction time range filter 
#       Created By          : Trino
#       Parameters          : text element selector name
#       Return Value        : NA
#       Example             : Then User expect "date_text_element" is first day of current week 
#       Modified By         : -
#       Date                : -
#       Modify Description  : -
########################################################################################################

Then(/^User expect "([^"]*)" is first day of current week$/) do |element_set_key|
  begin
    element_data_set = data_element_hash[element_set_key] 
    first_day = Date.today - (Date.today.wday - 1) % 7
    expect_element_data_set = first_day.strftime('%e %b %Y')

    if !$home_page.user_expect(element_data_set, expect_element_data_set)
      text = $home_page.user_get_text(element_data_set)
      raise "User expect '#{element_set_key}' equal with '#{expect_element_data_set}', but it's equal '#{text}'"
    end    
  rescue Exception => e
   raise e.message
   raise e.backtrace.inspect
  end
end

#########################################################################################################
#       Description         : Use for checking the date is the first day of current month in card transaction time range filter 
#       Created By          : Trino
#       Parameters          : text element selector name
#       Return Value        : NA
#       Example             : Then User expect "date_text_element" is first day of current month 
#       Modified By         : -
#       Date                : -
#       Modify Description  : -
########################################################################################################

Then(/^User expect "([^"]*)" is first day of current month$/) do |element_set_key|
  begin
    element_data_set = data_element_hash[element_set_key] 
    first_day = Date.today - Date.today.mday + 1
    expect_element_data_set = first_day.strftime('%e %b %Y')

    if !$home_page.user_expect(element_data_set, expect_element_data_set)
      text = $home_page.user_get_text(element_data_set)
      raise "User expect '#{element_set_key}' equal with '#{expect_element_data_set}', but it's equal '#{text}'"
    end    
  rescue Exception => e
   raise e.message
   raise e.backtrace.inspect
  end
end

#########################################################################################################
#       Description         : Use for checking the date is the first day of current year in card transaction time range filter 
#       Created By          : Trino
#       Parameters          : text element selector name
#       Return Value        : NA
#       Example             : Then User expect "date_text_element" is first day of current year 
#       Modified By         : -
#       Date                : -
#       Modify Description  : -
########################################################################################################

Then(/^User expect "([^"]*)" is first day of current year$/) do |element_set_key|
  begin
    element_data_set = data_element_hash[element_set_key] 
    expect_element_data_set = Date.today.strftime('1 Jan %Y')

    if !$home_page.user_expect(element_data_set, expect_element_data_set)
      text = $home_page.user_get_text(element_data_set)
      raise "User expect '#{element_set_key}' equal with '#{expect_element_data_set}', but it's equal '#{text}'"
    end    
  rescue Exception => e
   raise e.message
   raise e.backtrace.inspect
  end
end

#########################################################################################################
#       Description         : Use for checking the date is equal to (n) days earlier
#       Created By          : Trino
#       Parameters          : text element selector name
#       Return Value        : NA
#       Example             : Then User expect "date_text_element" equal with 7 days earlier
#       Modified By         : -
#       Date                : -
#       Modify Description  : -
########################################################################################################

Then(/^User expect "([^"]*)" equal with (\d+) days earlier$/) do |element_set_key, number|
  begin
    element_data_set = data_element_hash[element_set_key] 
    expect_element_data_set = (Date.today - number.to_i).strftime('%e %b %Y')

    if !$home_page.user_expect(element_data_set, expect_element_data_set)
      text = $home_page.user_get_text(element_data_set)
      raise "User expect '#{element_set_key}' equal with '#{expect_element_data_set}', but it's equal '#{text}'"
    end    
  rescue Exception => e
   raise e.message
   raise e.backtrace.inspect
  end
end

#########################################################################################################
#       Description         : Use for checking the date of the applied time range is equal to selected custom date
#       Created By          : Trino
#       Parameters          : element selector name, test data variable, test data variable
#       Return Value        : NA
#       Example             : Then User expect "element" is in range of "[int]" months and "[int]" months from today
#       Modified By         : -
#       Date                : -
#       Modify Description  : -
########################################################################################################

Then(/^User expect "([^"]*)" is in range of "([^"]*)" months and "([^"]*)" months from today$/) do |element_set_key, future_months_1, future_months_2|
  begin
    element_data_set = data_element_hash[element_set_key]

    from_date = get_future_months_date(data_yml_hash[future_months_1])
    to_date = get_future_months_date(data_yml_hash[future_months_2])

    expect_element_data_set = from_date.strftime('%e %b %y').strip + ' - ' + to_date.strftime('%e %b %y').strip

    if !$home_page.user_expect(element_data_set, expect_element_data_set)
      text = $home_page.user_get_text(element_data_set)
      raise "User expect '#{element_set_key}' equal with '#{expect_element_data_set}', but it's equal '#{text}'"
    end    
  rescue Exception => e
   raise e.message
   raise e.backtrace.inspect
  end
end

#########################################################################################################
#       Description         : Use for checking the date of the applied time range is this week option. From the first day of current week, to today
#       Created By          : Trino
#       Parameters          : element selector name
#       Return Value        : NA
#       Example             : Then User expect "date" is current week
#       Modified By         : -
#       Date                : -
#       Modify Description  : -
########################################################################################################

Then(/^User expect "([^"]*)" is current week$/) do |element_set_key|
  begin
    element_data_set = data_element_hash[element_set_key] 
    first_day = Date.today - (Date.today.wday - 1) % 7
    expect_element_data_set = first_day.strftime('%e %b %y').strip + ' - ' + Date.today.strftime('%e %b %y').strip

    if !$home_page.user_expect(element_data_set, expect_element_data_set)
      text = $home_page.user_get_text(element_data_set)
      raise "User expect '#{element_set_key}' equal with '#{expect_element_data_set}', but it's equal '#{text}'"
    end    
  rescue Exception => e
   raise e.message
   raise e.backtrace.inspect
  end
end

#########################################################################################################
#       Description         : Use for checking the date of the applied time range is this month option. From the date 1 of current month, to today
#       Created By          : Trino
#       Parameters          : element selector name
#       Return Value        : NA
#       Example             : Then User expect "date" is current month
#       Modified By         : -
#       Date                : -
#       Modify Description  : -
########################################################################################################

Then(/^User expect "([^"]*)" is current month$/) do |element_set_key|
  begin
    element_data_set = data_element_hash[element_set_key] 
    first_day = Date.today - Date.today.mday + 1
    expect_element_data_set = first_day.strftime('%e %b %y').strip + ' - ' + Date.today.strftime('%e %b %y').strip

    if !$home_page.user_expect(element_data_set, expect_element_data_set)
      text = $home_page.user_get_text(element_data_set)
      raise "User expect '#{element_set_key}' equal with '#{expect_element_data_set}', but it's equal '#{text}'"
    end    
  rescue Exception => e
   raise e.message
   raise e.backtrace.inspect
  end
end

#########################################################################################################
#       Description         : Use for checking the date of the applied time range is this year option. From the date 1 January, to today
#       Created By          : Trino
#       Parameters          : element selector name
#       Return Value        : NA
#       Example             : Then User expect "date" is current year
#       Modified By         : -
#       Date                : -
#       Modify Description  : -
########################################################################################################

Then(/^User expect "([^"]*)" is current year$/) do |element_set_key|
  begin
    element_data_set = data_element_hash[element_set_key] 
    expect_element_data_set = Date.today.strftime('1 Jan %y').strip + ' - ' + Date.today.strftime('%e %b %y').strip

    if !$home_page.user_expect(element_data_set, expect_element_data_set)
      text = $home_page.user_get_text(element_data_set)
      raise "User expect '#{element_set_key}' equal with '#{expect_element_data_set}', but it's equal '#{text}'"
    end    
  rescue Exception => e
   raise e.message
   raise e.backtrace.inspect
  end
end

#########################################################################################################
#       Description         : Use for checking the date of the applied time range is latest (n) days option. From (n) days before, to today
#       Created By          : Trino
#       Parameters          : element selector name
#       Return Value        : NA
#       Example             : Then User expect "date" is latest 7 days
#       Modified By         : -
#       Date                : -
#       Modify Description  : -
########################################################################################################

Then(/^User expect "([^"]*)" is latest (\d+) days$/) do |element_set_key, number|
  begin
    element_data_set = data_element_hash[element_set_key] 
    expect_element_data_set = (Date.today - number.to_i).strftime('%e %b %y').strip + ' - ' + Date.today.strftime('%e %b %y').strip
    if !$home_page.user_expect(element_data_set, expect_element_data_set)
      text = $home_page.user_get_text(element_data_set)
      raise "User expect '#{element_set_key}' equal with '#{expect_element_data_set}', but it's equal '#{text}'"
    end    
  rescue Exception => e
   raise e.message
   raise e.backtrace.inspect
  end
end

#########################################################################################################
#       Description         : Use to navigate the Calendar widget (android) to given month. Pre-condition: Android Calendar Widget already open
#       Created By          : Trino
#       Parameters          : month (number of month, from test data)
#       Return Value        : NA
#       Example             : And User select month "selected_month_1" from Calendar
#       Modified By         : -
#       Date                : -
#       Modify Description  : -
########################################################################################################

And(/^User select month "([^"]*)" from Calendar$/) do |element_data_set|
  begin
    month = data_yml_hash[element_data_set]
    diff = Time.now.month - month.to_i
    nav_button = diff < 0 ? "xpath://android.widget.ImageButton[@content-desc='Next month']" : "xpath://android.widget.ImageButton[@content-desc='Previous month']"

    for i in 1 .. diff.abs
      $home_page.user_click(nav_button)
    end
  rescue Exception => e
   raise e.message
   raise e.backtrace.inspect
  end
end

#########################################################################################################
#       Description         : Use to navigate the Calendar widget (android) to given month. Pre-condition: Android Calendar Widget already open
#       Created By          : Trino
#       Parameters          : month (number of month, from test data)
#       Return Value        : NA
#       Example             : And User select month "selected_month_1" from Calendar
#       Modified By         : -
#       Date                : -
#       Modify Description  : -
########################################################################################################

And(/^User slide "([^"]*)" until "([^"]*)" equal to "([^"]*)" with maximum tenor "([^"]*)"$/) do |element_set_key_1, element_set_key_2, element_data_set_1, element_data_set_2|
  begin
    slider_element = data_element_hash[element_set_key_1]
    actual_element = data_element_hash[element_set_key_2]
    expected_data = data_yml_hash[element_data_set_1]
    max_tenor = data_yml_hash[element_data_set_2]

    $home_page.user_slide_month(slider_element, actual_element, expected_data, max_tenor)
  rescue Exception => e
   raise e.message
   raise e.backtrace.inspect
  end
end

And(/^User slide "([^"]*)" to "([^"]*)" of slider width$/) do |element_set_key, element_data_set|
  begin
    element = data_element_hash[element_set_key]
    scale = data_yml_hash[element_data_set]

    $home_page.user_slide_principal(element, scale)
  rescue Exception => e
   raise e.message
   raise e.backtrace.inspect
  end
end

Then (/^User expect the estimated total amount of "([^"]*)" will be calculated correctly from "([^"]*)"$/) do |element_set_key1, element_set_key2|
  begin
    # get the element on UI
    element = data_element_hash[element_set_key1]
    principal_element = data_element_hash[element_set_key2]
    maturity_element = data_element_hash["save_it_maxi_saver_maturity_period"]

    # get the annual interest rate from test data
    rate_1 = (data_yml_hash["save_it_annual_interest_rate_1"]).gsub('%','').gsub(' ', '').to_f
    rate_2 = (data_yml_hash["save_it_annual_interest_rate_2"]).gsub('%','').gsub(' ', '').to_f
    rate_3 = (data_yml_hash["save_it_annual_interest_rate_3"]).gsub('%','').gsub(' ', '').to_f

    # get the value of principal, interest rate, and tenor
    principal = $home_page.user_get_text(principal_element).gsub(',', '').gsub('.', '').to_i
    interest_rate = principal >= 10000000 && principal < 50000000 ? rate_1 : (principal >= 50000000 && principal < 100000000 ? rate_2 : rate_3)
    tenor = $home_page.user_get_text(maturity_element).gsub('months', '').gsub('month', '').to_i
    days = (Date.today - Date.new(Date.today.year, Date.today.month - tenor, Date.today.day)).to_i

    # calculate the interest
    expected_estimated_amount = $home_page.user_get_text(element).gsub(',', '').gsub('.', '').to_i
    interest = principal * interest_rate / 100 * days / 365
    actual_estimated_amount = principal + interest.to_i

    # assert
    if actual_estimated_amount != expected_estimated_amount
      text = $home_page.user_get_text(element)
      raise "User expect '#{element_set_key1}' equal with '#{actual_estimated_amount}', but it's equal '#{text}'"
    end    
  end
end

Then (/^User expect "([^"]*)" checkbox is ticked$/) do |element_set_key|
  begin
    # get the element on UI
    element_data_set = data_element_hash[element_set_key]
    expect_element_data_set = data_yml_hash["save_it_checkbox_ticked"]

    # assert
    if !$home_page.user_expect(element_data_set, expect_element_data_set)
      raise "User expect '#{element_set_key}' checkbox to be ticked, but it's not"
    end    
  end
end

Then(/^User expect "([^"]*)" checkbox is unticked$/) do |element_set_key|
  begin
    # get the element on UI
    element_data_set = data_element_hash[element_set_key]
    expect_element_data_set = data_yml_hash["save_it_checkbox_unticked"]

    # assert
    if !$home_page.user_expect(element_data_set, expect_element_data_set)
      raise "User expect '#{element_set_key}' checkbox to be unticked, but it's not"
    end    
  end
end

#########################################################################################################
#       Description         : Use to temporarily save the numeric value from UI element
#       Created By          : Gilang
#       Parameters          : element
#       Return Value        : N/A
#       Example             : And System save "[element]" numeric value
#       Modified By         : -
#       Date                : 6 Desember 2017
#       Modify Description  : -
########################################################################################################

And (/^System save "([^"]*)" numeric value$/) do |element_set_key|
  begin
    if !defined? @save_data
      @save_data = []
    end

    expected_language = data_yml_hash['language'].strip.downcase

    if expected_language.eql? 'bahasa'
      delimiter = '.'
    elsif expected_language.eql? 'english'
      delimiter = ','
    end

    # get the element on UI
    element_data_set = data_element_hash[element_set_key]
    text = $home_page.user_get_value(element_data_set)
    number = text.scan(/\d/).join('').to_s.reverse.gsub(/...(?=.)/,'\&,').reverse
    @save_data << number
    puts "Saved data: '#{@save_data}'"
  end
end

#########################################################################################################
#       Description         : Use to temporarily save the value from UI element
#       Created By          : Trino
#       Parameters          : element
#       Return Value        : N/A
#       Example             : And System save "[element]" value
#       Modified By         : -
#       Date                : -
#       Modify Description  : -
########################################################################################################

And (/^System save "([^"]*)" value$/) do |element_set_key|
  begin
    if !defined? @save_data
      @save_data = []
    end

    # get the element on UI
    element_data_set = data_element_hash[element_set_key]
    @save_data << $home_page.user_get_value(element_data_set)
    puts "Saved data: '#{@save_data}'"
  end
end

#########################################################################################################
#       Description         : Use to fill textfield with saved data
#       Created By          : Faisal
#       Parameters          : element, number
#       Return Value        : N/A
#       Example             : And User fill "element" with saved data number 1
#       Modified By         : -
#       Date                : 11/03/2017
#       Modify Description  : -
########################################################################################################
Then (/^User fill "([^"]*)" with saved data number (\d+)/) do |element_set_key, number|
  begin

    element_data_set = data_element_hash[element_set_key]
    filled_element_data_set = @save_data[number.to_i - 1]

    $home_page.user_fill(element_data_set,filled_element_data_set)
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect  
  end
end

#########################################################################################################
#       Description         : Use to compare if element equal saved data minus some value (Eg. to check active balance after top up)
#       Created By          : Gilang Bintang
#       Parameters          : Element, Saved Value Array Number (lowest = 1), Test data
#       Return Value        : -
#       Example             : And User expect "active_balance" equal with saved data number 1 minus "top_up_amount"
#       Modified By         : -
#       Date                : 31 October 2017
#       Modify Description  : -
########################################################################################################
Then (/^User expect "([^"]*)" equal with saved data number (\d+) minus "([^"]*)"$/) do |element_set_key, number, amount|
  begin
    element_data_set = $home_page.user_get_text(data_element_hash[element_set_key]).tr(',', '')
    expect_element_data_set = @save_data[number.to_i - 1].tr(',', '').to_i - data_yml_hash[amount].to_i
    if !element_data_set.eql? expect_element_data_set.to_s
      raise "User expect '#{element_set_key}' equal with '#{expect_element_data_set}', but it's equal '#{element_data_set}'"
    end
  end
end

#########################################################################################################
#       Description         : Use to compare if element equal saved data plus some value (Eg. to check card balance after top up)
#       Created By          : Gilang Bintang
#       Parameters          : Element, Saved Value Array Number (lowest = 1), Test data
#       Return Value        : -
#       Example             : And User expect "active_balance" equal with saved data number 1 plus "top_up_amount"
#       Modified By         : -
#       Date                : 31 October 2017
#       Modify Description  : -
########################################################################################################
Then (/^User expect "([^"]*)" equal with saved data number (\d+) plus "([^"]*)"$/) do |element_set_key, number, amount|
  begin
    element_data_set = data_element_hash[element_set_key]
    expect_element_data_set = @save_data[number.to_i - 1].tr('IDR ', '').to_i + data_yml_hash[amount].to_i
    if !$home_page.user_expect(element_data_set, expect_element_data_set.to_s)
      text = $home_page.user_get_text(element_data_set)
      raise "User expect '#{element_set_key}' equal with '#{expect_element_data_set}', but it's equal '#{text}'"
    end
  end
end

#########################################################################################################
#       Description         : Use to compare if element equal saved data plus another saved data (Eg. to check card balance after top up)
#       Created By          : Gilang Bintang
#       Parameters          : Element, Saved Value Array Number (lowest = 1), Saved Value Array Number (lowest = 1)
#       Return Value        : -
#       Example             : And User expect "active_balance" equal with saved data number 1 plus "top_up_amount"
#       Modified By         : -
#       Date                : 31 October 2017
#       Modify Description  : -
########################################################################################################
Then (/^User expect "([^"]*)" equal with saved data number (\d+) plus (\d+)$/) do |element_set_key, number, number2|
  begin
    element_data_set = data_element_hash[element_set_key]
    expect_element_data_set = @save_data[number.to_i - 1].tr('IDR ', '').to_i + @save_data[number.to_i - 1].tr('IDR ', '').to_i
    if !$home_page.user_expect(element_data_set, 'IDR ' << expect_element_data_set.to_s)
      text = $home_page.user_get_text(element_data_set)
      raise "User expect '#{element_set_key}' equal with '#{expect_element_data_set}', but it's equal '#{text}'"
    end
  end
end

Then (/^User expect "([^"]*)" equal with saved data number (\d+)$/) do |element_set_key, number|
  begin
    element_data_set = data_element_hash[element_set_key]
    expect_element_data_set = @save_data[number.to_i - 1]

    if !$home_page.user_expect(element_data_set, 'IDR ' << expect_element_data_set.to_s)
      text = $home_page.user_get_text(element_data_set)
      raise "User expect '#{element_set_key}' equal with '#{expect_element_data_set}', but it's equal '#{text}'"
    end
  end
end

#########################################################################################################
#       Description         : Use to compare if element equal saved data text
#       Created By          : Gilang Bintang
#       Parameters          : Element, Saved Value Array Number (lowest = 1), Saved Value Array Number (lowest = 1)
#       Return Value        : -
#       Example             : And User expect "active_balance" equal with saved data text 1
#       Modified By         : -
#       Date                : 15 Desember 2017
#       Modify Description  : -
########################################################################################################
Then (/^User expect "([^"]*)" equal with saved data text (\d+)$/) do |element_set_key, text|
  begin
    element_data_set = data_element_hash[element_set_key]
    expect_element_data_set = @save_data[text.to_i - 1]

    if !$home_page.user_expect(element_data_set, expect_element_data_set.to_s)
      text = $home_page.user_get_text(element_data_set)
      raise "User expect '#{element_set_key}' equal with '#{expect_element_data_set}', but it's equal '#{text}'"
    end
  end
end

#########################################################################################################
#       Description         : Use to actual data is equal with expected
#       Created By          : Novi Kumala
#       Parameters          : element
#       Return Value        : N/A
#       Example             : And User expect this "[element]" is displayed as expected
#       Modified By         : -
#       Date                : 01 Nov 2017
#       Modify Description  : -
########################################################################################################
Then (/^User expect this "([^"]*)" is displayed as expected$/) do |element_set_key|
  begin
    actual_data = $home_page.user_get_value(data_element_hash[element_set_key])
    expect_data = @save_data
    if (actual_data == expect_data)
      puts "User expect '#{actual_data}' is displayed as expected"
    end
  end
end

#########################################################################################################
#       Description         : Use to temporarily save multiple text from UI into array
#       Created By          : Novi Kumala
#       Parameters          : element
#       Return Value        : N/A
#       Example             : And System save the value of "[element]"
#       Modified By         : -
#       Date                : 01 Nov 2017
#       Modify Description  : -
########################################################################################################
And (/^System save the value of "([^"]*)"$/) do |element_set_key|
  begin
    if !defined? @temp
      @temp = []
    end
    # get the element on UI
    element_data_set = $home_page.user_get_text(data_element_hash[element_set_key])
    @temp.push(element_data_set)
  end
end

#########################################################################################################
#       Description         : Use to swipe up the screen to display all data
#       Created By          : Novi Kumala
#       Parameters          : test data that represent the selected UI text element
#       Return Value        : N/A
#       Example             : And User swipe up until all bank account display
#       Modified By         : -
#       Date                : 01 Nov 2017
#       Modify Description  : -
########################################################################################################

And(/^User swipe up until all bank account display$/) do
  begin
    temps = []
    temps = @temp
    data = temps.join(" ")
    element = "xpath://android.widget.TextView[@text='#{data}']"
    @temp_element = data
    Timeout::timeout(DEFAULT_TIMEOUT) {swipe_up_until(element)}
    sleep (3)
    @temp.clear
    temps.clear
  rescue Exception => e
    raise e.message
  end
end

#########################################################################################################
#       Description         : Use to expect bank account is displayed
#       Created By          : Novi Kumala
#       Parameters          : test data that represent the selected UI text element
#       Return Value        : N/A
#       Example             : And User expect bank account "[element]" is displayed
#       Modified By         : -
#       Date                : 01 Nov 2017
#       Modify Description  : -
########################################################################################################

And(/^User expect bank account "([^"]*)" is displayed$/) do |element_set_key|
  begin
    elements = $home_page.user_find_elements(data_element_hash[element_set_key]+ "/android.view.ViewGroup")
    #count = elements.length
    j=0
    elements.each {
      j+=1
      text= $home_page.user_get_text(data_element_hash[element_set_key]+ "/android.view.ViewGroup[#{j}]/android.widget.TextView")
      if(text == @temp_element)
        puts "User expect '#{text}' is displayed as expected"
      else
        puts "User expect '#{text}' is not displayed as expected"
      end
    }
  end
end

#########################################################################################################
#       Description         : Use to expect delete icon on each account
#       Created By          : Novi Kumala
#       Parameters          : test data that represent the selected UI text element
#       Return Value        : N/A
#       Example             : And User expect delete each bank account "[element]" is displayed
#       Modified By         : -
#       Date                : 01 Nov 2017
#       Modify Description  : -
########################################################################################################

And(/^User expect delete each bank account "([^"]*)" is displayed$/) do |element_set_key|
  begin
    elements = $home_page.user_find_elements(data_element_hash[element_set_key]+ "/android.view.ViewGroup")
    count = elements.length
    j=0
    elements.each {
      j+=1
      if(j>1)
        text= $home_page.user_get_value(data_element_hash[element_set_key]+ "/android.view.ViewGroup[#{j}]/android.view.ViewGroup[2]/android.view.ViewGroup/android.widget.TextView")
        if (text == '')
          puts "User expect delete icon is displayed as expected"
        end
      end
    }
  end
end

#########################################################################################################
#       Description         : Use to click delete button on each account
#       Created By          : Novi Kumala
#       Parameters          : test data that represent the selected UI text element
#       Return Value        : N/A
#       Example             : And User click delete each accoun "[element]"
#       Modified By         : -
#       Date                : 01 Nov 2017
#       Modify Description  : -
########################################################################################################

And(/^User click delete each account "([^"]*)"$/) do |element_set_key|
  begin
    elements = $home_page.user_find_elements(data_element_hash[element_set_key]+ "/android.view.ViewGroup")
    count = elements.length
    j=0
    elements.each {
      j+=1
      if(j>1)
        text= $home_page.user_get_value(data_element_hash[element_set_key]+ "/android.view.ViewGroup[#{j}]/android.view.ViewGroup[2]/android.view.ViewGroup/android.widget.TextView")
        if (text == '')
          $home_page.user_click(data_element_hash[element_set_key]+ "/android.view.ViewGroup[#{j}]/android.view.ViewGroup[2]/android.view.ViewGroup/android.widget.TextView")
        end
      end
    }
  end
end

#########################################################################################################
#       Description         : Use to expect **** contact is not containt the unsaved/discard contact
#       Created By          : Novi
#       Parameters          : test data that represent the selected UI text element
#       Return Value        : N/A
#       Example             : And User expect **** contact of "[element]" is not contain "[data]"
#       Modified By         : -
#       Date                : 01 Nov 2017
#       Modify Description  : -
########################################################################################################

And(/^User expect **** contact of "([^"]*)" is not contain "([^"]*)"$/) do |element_set_key,element_data_set|
  begin
    elements = $home_page.user_find_elements(data_element_hash[element_set_key])
    count = elements.length
    new_contact = data_yml_hash[element_data_set]
    j=0
    elements.each {
      j+=1
      text= $home_page.user_get_text(data_element_hash[element_set_key])
      if(text == new_contact)
        puts "New account '#{new_contact}' is not discard successfully"
      else
        puts "New account '#{new_contact}' has been discarded successfully"
      end
    }
  end
end

#########################################################################################################
#       Description         : Use to compare if element with saved value text displayed
#       Created By          : Gilang Bintang
#       Parameters          : Element, Saved Value Array Number (lowest = 1)
#       Return Value        : -
#       Example             : And User expect saved data number 1 displayed
#       Modified By         : -
#       Date                : 25 October 2017
#       Modify Description  : -
########################################################################################################
Then (/^User expect saved data number (\d+) displayed$/) do | number|
  begin
    expect_element_data_set = @save_data[number.to_i - 1]

    case ENV['PLATFORM_NAME']
      when 'android'
        if($home_page.user_expect_displayed?("xpath://android.widget.TextView[@text='#{expect_element_data_set}']"))
          puts "'#{expect_element_data_set}' displayed"
        else
          raise "'#{expect_element_data_set}' not displayed"
        end
      when 'ios'
        raise 'iOS not implemented yet'
      else
        raise 'Platform not recognized'
    end
  end
end

#########################################################################################################
#       Description         : Use to check if element with element contains saved value text not displayed
#       Created By          : Gilang Bintang
#       Parameters          : Saved Value Array Number (lowest = 1)
#       Return Value        : -
#       Example             : And User expect element contains saved data number 1 not displayed
#       Modified By         : -
#       Date                : 6 Desember 2017
#       Modify Description  : -
########################################################################################################
Then (/^User expect element contains saved data number (\d+) not displayed$/) do | number|
  begin
    expect_element_data_set = @save_data[number.to_i - 1]

    case ENV['PLATFORM_NAME']
      when 'android'
        if(!$home_page.user_expect_displayed?("xpath://android.widget.TextView[contains(@text, '#{expect_element_data_set}')]"))
          puts "'#{expect_element_data_set}' not displayed"
        else
          raise "'#{expect_element_data_set}' displayed"
        end
      when 'ios'
        raise 'iOS not implemented yet'
      else
        raise 'Platform not recognized'
    end
  end
end

#########################################################################################################
#       Description         : Use to compare similarity, not equal, between saved value and text from element
#       Created By          : Gilang Bintang
#       Parameters          : Element, Saved Value Array Number (lowest = 1)
#       Return Value        : -
#       Example             : And User expect "Transfer Fee Amount" similar with saved data number 1
#       Modified By         : -
#       Date                : 25 October 2017
#       Modify Description  : -
########################################################################################################
Then (/^User expect "([^"]*)" similar with saved data number (\d+)$/) do |element_set_key, number|
  begin
    element_data_set = data_element_hash[element_set_key]
    text = $home_page.user_get_text(element_data_set)
    expect_element_data_set = @save_data[number.to_i - 1]

    if text.include? expect_element_data_set
      puts "User expect '#{expect_element_data_set}' similar with '#{text}' is true"
    else
      if expect_element_data_set.include? text
        puts "User expect '#{expect_element_data_set}' similar with '#{text}' is true"
      else
        raise "User expect '#{expect_element_data_set}' equal with '#{expect_element_data_set}', but it's equal '#{text}'"
      end
    end
  end
end

Then (/^User expect "([^"]*)" not equal with saved data number (\d+)$/) do |element_set_key, number|
  begin
    element_data_set = data_element_hash[element_set_key]
    expect_element_data_set = @save_data[number.to_i - 1]

    if $home_page.user_expect(element_data_set, expect_element_data_set)
      text = $home_page.user_get_text(element_data_set)
      raise "User expect '#{element_set_key}' not equal with '#{expect_element_data_set}', but it's equal '#{text}'"
    end
  end
end

#########################################################################################################
#       Description         : Check Result added value like balance 
#       Created By          : - 
#       Parameters          : element, data
#       Return Value        : 
#       Example             : User expect "element" will be added with "data"
#       Modified By         : 
#       Date                : 14 November 2017
#       Modify Description  : update gsub issue double converted in global data array
########################################################################################################
Then (/^User expect "([^"]*)" will be added with "([^"]*)"$/) do |element_set_key, element_data_set_key|
  begin
    element_data_set = data_element_hash[element_set_key]
    added_amount_data_set = data_yml_hash[element_data_set_key].to_i
    
    total_maxi_saver = $home_page.user_get_text(element_data_set).gsub(',','').gsub(' ','').gsub('.','').gsub('IDR','').gsub('Rp','').to_i
    expected_amount = (@save_data[0] + added_amount_data_set)

    # assert
    if total_maxi_saver != expected_amount
      raise "User expect '#{element_set_key}' equal with '#{expected_amount}', but it's equal '#{total_maxi_saver}'"
    end    
  end
end

#########################################################################################################
#       Description         : Check Result minus value like balance 
#       Created By          : - 
#       Parameters          : element, data
#       Return Value        : 
#       Example             : User expect "element" will be added with "data"
#       Modified By         : Faisal Yafi
#       Date                : 18 November 2017
#       Modify Description  : change operator
########################################################################################################
Then (/^User expect "([^"]*)" will be minus with "([^"]*)"$/) do |element_set_key, element_data_set_key|
  begin
    element_data_set = data_element_hash[element_set_key]
    added_amount_data_set = data_yml_hash[element_data_set_key].to_i

    total_maxi_saver = $home_page.user_get_text(element_data_set).gsub(',','').gsub(' ','').gsub('.','').gsub('IDR','').gsub('Rp','').to_i
    expected_amount = (@save_data[0] - added_amount_data_set)
    
    # assert
    if total_maxi_saver != expected_amount
      raise "User expect '#{element_set_key}' equal with '#{expected_amount}', but it's equal '#{total_maxi_saver}'"
    end    
  end
end

#########################################################################################################
#       Description         : Use to compare the selected element value with the total of 2 save data value
#       Created By          : Trino
#       Parameters          : element_set_key, number1 (save data index), number2 (save data index)
#       Return Value        : NA
#       Example             : Then User expect value of "[element_set_key]" element equal with the total amount save data number [number1] and [number2]
#       Modified By         : 
#       Date                : 8 November 2017
#       Modify Description  : <Description of the modification>
########################################################################################################
Then (/^User expect value of "([^"]*)" element equal with the total amount of saved data number (\d+) and (\d+)$/) do |element_set_key, number1, number2|
  begin
    element = data_element_hash[element_set_key]

    displayed_value = $home_page.user_get_text(element).gsub(',','').gsub('.','').gsub('IDR','').gsub('Rp','').gsub(' ','').to_i
    total_saved_data_value = @save_data[number1.to_i-1].gsub(',','').gsub('.','').gsub('IDR','').gsub('Rp','').gsub(' ','').to_i + @save_data[number2.to_i-1].gsub(',','').gsub('.','').gsub('IDR','').gsub('Rp','').gsub(' ','').to_i

    # assert
    if displayed_value != total_saved_data_value
      raise "User expect '#{element_set_key}' equal with '#{total_saved_data_value}', but it's equal '#{displayed_value}'"
    else
      puts "#{element_set_key} has the same value as total of save data, #{total_saved_data_value}"
    end    
  end
end

#########################################################################################################
#       Description         : Use to compare the selected element value with the substraction of 2 save data value
#       Created By          : Trino
#       Parameters          : element_set_key, number1 (save data index), number2 (save data index)
#       Return Value        : NA
#       Example             : Then User expect value of "[element_set_key]" element equal with the total amount save data number [number1] and [number2]
#       Modified By         : 
#       Date                : 8 November 2017
#       Modify Description  : <Description of the modification>
########################################################################################################
Then (/^User expect value of "([^"]*)" element equal with the substraction amount of saved data number (\d+) and (\d+)$/) do |element_set_key, number1, number2|
  begin
    element = data_element_hash[element_set_key]

    displayed_value = $home_page.user_get_text(element).gsub(',','').gsub('.','').gsub('IDR','').gsub('Rp','').gsub(' ','').to_i
    total_saved_data_value = (@save_data[number1.to_i-1].gsub(',','').gsub('.','').gsub('IDR','').gsub('Rp','').gsub(' ','').to_i - @save_data[number2.to_i-1].gsub(',','').gsub('.','').gsub('IDR','').gsub('Rp','').gsub(' ','').to_i).abs

    # assert
    if displayed_value != total_saved_data_value
      raise "User expect '#{element_set_key}' equal with '#{total_saved_data_value}', but it's equal '#{displayed_value}'"
    else
      puts "#{element_set_key} has the same value as substraction of save data, #{total_saved_data_value}"
    end    
  end
end

#########################################################################################################
#       Description         : Use to compare the value between 2 saved data
#       Created By          : Trino
#       Parameters          : index1, index2
#       Return Value        : NA
#       Example             : Then User expect saved value number [index1] and [index2] are equal
#       Modified By         : 
#       Date                : 10 November 2017
#       Modify Description  : <Description of the modification>
########################################################################################################
Then (/^User expect saved value number (\d+) and (\d+) are equal$/) do |index1, index2|
  begin
    if @save_data[index1.to_i - 1] != @save_data[index2.to_i - 1]
      raise "User expect two saved value '#{index1}' (#{@save_data[index1.to_i - 1]}) and '#{index2}' (#{@save_data[index2.to_i - 1]}) are equal, but it's not"
    else
      puts "User expect two saved value '#{index1}' (#{@save_data[index1.to_i - 1]}) and '#{index2}' (#{@save_data[index2.to_i - 1]}) are equal"
    end    
  end
end

#########################################################################################################
#       Description         : Use to temporarily save the value from UI element
#       Created By          : Faisal Yafi
#       Parameters          : element_set_key (parse the parameter from gherkin)
#       Return Value        : NA
#       Example             : System save balance "balance" value
#       Modified By         : Faisal Yafi
#       Date                : 5 October 2017
#       Modify Description  : <Description of the modification>
########################################################################################################

And (/^System save balance "([^"]*)" value$/) do |element_set_key|
  begin
    if !defined? @save_data
      @save_data = []
    end

    # get the element on UI
    element_data_set = data_element_hash[element_set_key]
    @save_data << $home_page.user_get_value(element_data_set).gsub(',','').gsub('IDR','').gsub('.','').gsub('Rp','').gsub(' ','').to_i
  end
end

#########################################################################################################
#       Description         : Uses for fill textfield with current balance or larger/less than balance or 
#                             half active balance 
#       Created By          : Faisal Yafi
#       Parameters          : element_set_key (parse the parameter from gherkin)
#       Return Value        : NA
#       Example             : User fill "balance" with value larger than balance
#       Modified By         : <Name Of Person>
#       Date                : 28 September 2017
#       Modify Description  : <Description of the modification>
########################################################################################################

Then (/^User fill "([^"]*)" with active balance/) do |element_set_key|
  begin
    balance_value = @save_data[0].to_i

    element_data_set = data_element_hash[element_set_key]

    added_amount_data_set = balance_value.to_s

    $home_page.user_fill(element_data_set,added_amount_data_set)
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect  
  end
end

Then (/^User fill "([^"]*)" with value larger than balance/) do |element_set_key|
  begin
    balance_value = @save_data[0].to_i

    element_data_set = data_element_hash[element_set_key]

    added_amount_data_set = ((balance_value + 1).round.to_f).to_s

    $home_page.user_fill(element_data_set,added_amount_data_set)
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect  
  end
end

Then (/^User fill "([^"]*)" with half active balance/) do |element_set_key|
  begin
    balance_value = @save_data[0].to_i

    element_data_set = data_element_hash[element_set_key]

    added_amount_data_set = ((balance_value / 2).round.to_f).to_s

    $home_page.user_fill(element_data_set,added_amount_data_set)
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect  
  end
end

#########################################################################################################
#       Description         : Use for checking the date of the applied time range is this month option. From the date 1 of current month, to Today
#       Created By          : Trino
#       Parameters          : element selector name
#       Return Value        : NA
#       Example             : Then User expect "date" is current month
#       Modified By         : -
#       Date                : -
#       Modify Description  : -
########################################################################################################

Then(/^User click "([^"]*)" with value "([^"]*)"$/) do |first_value, second_value|
  begin
    first_data_set = data_element_hash[first_value]
    second_data_set = data_yml_hash[second_value]

    if ENV['PLATFORM_NAME'] =='android' 
      selected_selector = "xpath://android.widget.TextView[@text='#{first_data_set}']//following-sibling::android.widget.TextView[@text='#{second_data_set}']"
      Timeout::timeout(DEFAULT_TIMEOUT) {swipe_up_until(selected_selector)}
      sleep (3)
      $home_page.user_click(selected_selector)
    elsif ENV['PLATFORM_NAME'] =='ios'
      selected_selector = "xpath://XCUIElementTypeOther[@label='#{first_data_set}']//following-sibling:://XCUIElementTypeOther[@label='#{second_data_set}']"
      $home_page.user_click(selected_selector)
    end
  rescue Exception => e
   raise e.message
   raise e.backtrace.inspect
  end
end

Then (/^User expect "([^"]*)" is multipled by "([^"]*)"$/) do |element_set_key, element_data_set_key|
  begin
    element_data_set = data_element_hash[element_set_key]
    multiple_element_data_set = data_yml_hash[element_data_set_key].to_i
    amount = $home_page.user_get_text(element_data_set).gsub(',','').gsub('.','').to_i

    # assert
    if amount % multiple_element_data_set != 0
      raise "User expect '#{element_set_key}' is multiplied by '#{amount}', but it's not"
    end    
  end
end

Then (/^User expect the date format of "([^"]*)" is "([^"]*)"$/) do |element_set_key, element_data_set_key|
  begin
    # get displayed date in UI
    element = data_element_hash[element_set_key]
    actual_text = $home_page.user_get_text(element)
    displayed_maturity_date = actual_text.split('-').first.strip

    # get the format date
    format_date = data_yml_hash[element_data_set_key]

    # convert displayed date (String) to date (Date)
    date = Date.strptime("#{displayed_maturity_date}", "#{format_date}")

    # convert new date to String with expected format
    formatted_date = date.strftime("#{format_date}")

    # assert
    if (!date.is_a?(Date)) && (date.eql? formatted_date)
      raise "The format of '#{element_set_key}' is not '#{expected_format_date}'"
    end    
  end
end

Then (/^User expect the ARO type of "([^"]*)" is "([^"]*)"$/) do |element_set_key, element_data_set_key|
  begin
    # get displayed date in UI
    element = data_element_hash[element_set_key]
    actual_text = $home_page.user_get_text(element)
    displayed_aro_type = actual_text.split('-').last.strip

    # get the expected aro type
    expected_aro_type = data_yml_hash[element_data_set_key]

    # assert
    if !displayed_aro_type.eql? expected_aro_type
      raise "User expect '#{element_set_key}' equal with '#{expected_aro_type}', but it's equal '#{displayed_aro_type}'"
    end
  end
end

Then (/^User expect maturity date "([^"]*)" is calculated correctly with "([^"]*)" months and "([^"]*)" days left$/) do |maturity_date_element, remaining_months_element, remaining_days_element| 
  begin
    # get displayed date in UI
    maturity_date = $home_page.user_get_text(data_element_hash[maturity_date_element])

    # get remaining month(s) from UI
    remaining_months = $home_page.user_get_text(data_element_hash[remaining_months_element]).to_i

    # get remaining day(s) from UI
    remaining_days = $home_page.user_get_text(data_element_hash[remaining_days_element]).to_i

    expected_maturity_date = ((Date.today) >> remaining_months) + remaining_days
    expected_maturity_date_text = expected_maturity_date.strftime('%d %B %Y')

    # assert
    if !maturity_date.strip.eql? expected_maturity_date_text.strip
      raise "User expect '#{element_set_key}' equal with '#{expected_maturity_date_text}', but it's equal '#{maturity_date}'"
    end
  end
end

Then (/^User expect "([^"]*)" is set after "([^"]*)" term long from today$/) do |maturity_date_element, maturity_term| 
  begin
    # get displayed date in UI
    maturity_date = $home_page.user_get_text(data_element_hash[maturity_date_element])

    # get remaining month(s) from UI
    term = $home_page.user_get_text(data_element_hash[maturity_term]).split(' ').first.to_i

    expected_maturity_date = ((Date.today) >> term)
    expected_maturity_date_text = expected_maturity_date.strftime('%e %B %Y')

    # assert
    if !maturity_date.strip.eql? expected_maturity_date_text.strip
      raise "User expect '#{maturity_date_element}' equal with '#{expected_maturity_date_text}', but it's equal '#{maturity_date}'"
    else
      puts "User expect '#{maturity_date_element}' to be '#{expected_maturity_date_text}' and equal with the actual '#{maturity_date}'"
    end
  end
end

#########################################################################################################
#       Description         : Use for checking the text element for future month(s) is displayed in the screen  and for text element only
#       Created By          : Trino
#       Parameters          : test data that represent the selected UI text element
#       Return Value        : boolean (true/false)
#       Example             : Then User expect "[int]" future month(s) text element from current month displayed
#       Modified By         : -
#       Date                : -
#       Modify Description  : -
########################################################################################################

Then(/^User expect "([^"]*)" future month\(s\) text element from current month displayed$/) do |months|
  begin
    num_of_months = data_yml_hash[months]
    expected_month = get_future_months_date(num_of_months.to_i).strftime('%b %Y')
    element = "xpath://android.widget.TextView[@text='#{expected_month}']"
    if !$home_page.user_expect_displayed?(element)
      raise "User expect '#{element_test_data_key}' is displayed, but actually it's not"    
    end
  end
end

#########################################################################################################
#       Description         : Use for checking the text element for past month(s) is displayed in the screen  and for text element only
#       Created By          : Trino
#       Parameters          : test data that represent the selected UI text element
#       Return Value        : boolean (true/false)
#       Example             : Then User expect "[int]" past month(s) text element from current month displayed
#       Modified By         : Eko Adi Prabowo
#       Date                : 16 November 2017
#       Modify Description  : update for ios
########################################################################################################

Then(/^User expect "([^"]*)" past month\(s\) text element from current month displayed$/) do |months|
  begin
    test_data = data_yml_hash[element_test_data_key]
    platform = ENV['PLATFORM_NAME'].downcase

    case platform
      when 'android'
        element = "xpath://android.widget.TextView[@text='#{test_data}']"
        if !$home_page.user_expect_displayed?(element)
          raise "User expect '#{element_test_data_key}' is displayed, but actually it's not"    
        end

      when 'ios' 
        element = "xpath://*[contains(@name,'#{test_data}')]"
        if !$home_page.user_expect_displayed?(element)
          raise "User expect '#{element_test_data_key}' is displayed, but actually it's not"    
        end

      else
        raise 'Platform not recognized'
    end
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end
end


#########################################################################################################
#       Description         : Use for checking the text element is displayed in the screen  and for text element only
#       Created By          : Trino
#       Parameters          : test data that represent the selected UI text element
#       Return Value        : boolean (true/false)
#       Example             : Then User expect "[test_data_variable]" element displayed
#       Modified By         : Eko Adi Prabowo
#       Date                : 16 November 2017
#       Modify Description  : update for ios
########################################################################################################

Then(/^User expect "([^"]*)" element displayed$/) do |element_test_data_key|
  begin
    test_data = data_yml_hash[element_test_data_key]
    platform = ENV['PLATFORM_NAME'].downcase

    case platform
      when 'android'
        element = "xpath://android.widget.TextView[@text='#{test_data}']"
        if !$home_page.user_expect_displayed?(element)
          raise "User expect '#{element_test_data_key}' is displayed, but actually it's not"    
        end

      when 'ios' 
        element = "xpath://*[contains(@name,'#{test_data}')]"
        if !$home_page.user_expect_displayed?(element)
          raise "User expect '#{element_test_data_key}' is displayed, but actually it's not"    
        end

      else
        raise 'Platform not recognized'
    end
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end
end

#########################################################################################################
#       Description         : Use for checking the text element is not displayed in the screen  and for text element only
#       Created By          : Trino
#       Parameters          : test data that represent the selected UI text element
#       Return Value        : boolean (true/false)
#       Example             : Then User expect "[test_data_variable]" element not displayed
#       Modified By         : -
#       Date                : -
#       Modify Description  : -
########################################################################################################

Then(/^User expect "([^"]*)" element not displayed$/) do |element_test_data_key|
  begin
    test_data = data_yml_hash[element_test_data_key]
    element = "xpath://android.widget.TextView[@text='#{test_data}']"
    if($home_page.user_expect_not_displayed?(element))
      puts "Element '#{element_test_data_key}' not displayed"
    else
      raise "Element '#{element_test_data_key}' still displayed"
    end
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end
end

#########################################################################################################
#       Description         : Use to swipe up the screen to selected element that contains specific text, and for text element only
#       Created By          : Trino
#       Parameters          : test data that represent the selected UI text element
#       Return Value        : N/A
#       Example             : And User swipe up to "[test_data_variable]" text
#       Modified By         : Faisal Yafi
#       Date                : 28 November 2017
#       Modify Description  : Specific get element text
########################################################################################################

And(/^User swipe up to element contains "([^"]*)" text$/) do |element_test_data_key|
  begin
    test_data = data_yml_hash[element_test_data_key]
    if ENV['PLATFORM_NAME'] =='android' 
      element = "xpath://android.widget.TextView[contains(@text,'#{test_data}')]"
      Timeout::timeout(DEFAULT_TIMEOUT) {swipe_up_until(element)}
    elsif ENV['PLATFORM_NAME'] =='ios' 
      element = "xpath://XCUIElementTypeOther[contains(@label,'#{test_data}')]"
      Timeout::timeout(DEFAULT_TIMEOUT) {swipe_up_until(element)}
    end
  rescue Exception => e
    raise e.message
  end
end

#########################################################################################################
#       Description         : Use to swipe up the screen to selected element that contains specific text from saved data, and for text element only
#       Created By          : Trino
#       Parameters          : test data that represent the selected UI text element
#       Return Value        : N/A
#       Example             : And User swipe up to "[test_data_variable]" text
#       Modified By         : -
#       Date                : -
#       Modify Description  : -
########################################################################################################

And(/^User swipe up to element contains saved data number (\d+)$/) do |number1|
  begin
    text = @save_data[number1.to_i - 1]
    if ENV['PLATFORM_NAME'] =='android' 
      element = "xpath://android.widget.TextView[contains(@text,'#{text}')]"
      Timeout::timeout(DEFAULT_TIMEOUT) {swipe_up_until(element)}
    elsif ENV['PLATFORM_NAME'] =='ios' 
      element = "xpath://XCUIElementTypeOther[contains(@label,'#{text}')]"
      Timeout::timeout(DEFAULT_TIMEOUT) {swipe_up_until(element)}
    end
  rescue Exception => e
    puts "Element that contains #{text} is not found"
    raise e.message
  end
end

#########################################################################################################
#       Description         : Use to swipe down the screen to selected element that contains specific text, and for text element only
#       Created By          : Trino
#       Parameters          : test data that represent the selected UI text element
#       Return Value        : N/A
#       Example             : And User swipe down to "[test_data_variable]" text
#       Modified By         : -
#       Date                : -
#       Modify Description  : -
########################################################################################################

And (/^User swipe down to element contains "([^"]*)" text$/) do |element_test_data_key|
  begin
    test_data = data_yml_hash[element_test_data_key]
    if ENV['PLATFORM_NAME'] =='android' 
      element = "xpath://android.widget.TextView[contains(@text,'#{test_data}')]"
      Timeout::timeout(DEFAULT_TIMEOUT) {swipe_down_until(element)}
    elsif ENV['PLATFORM_NAME'] =='ios' 
      element = "xpath://XCUIElementTypeOther[contains(@label,'#{test_data}')]"
      Timeout::timeout(DEFAULT_TIMEOUT) {swipe_down_until(element)}
    end
  rescue Exception => e
    raise e.message
  end
end

#########################################################################################################
#       Description         : Use to click selected element that contains specific text, and for text element only
#       Created By          : Trino
#       Parameters          : test data that represent the selected UI text element
#       Return Value        : N/A
#       Example             : Then User click "[test_data_variable]" text
#       Modified By         : Impola
#       Date                : 17 November 2017
#       Modify Description  : Edit step for iOS
########################################################################################################

Then(/^User click element contains "([^"]*)" text$/) do |element_test_data_key|
  begin
    first_data_set = data_yml_hash[element_test_data_key]

    if ENV['PLATFORM_NAME'] =='android' 
      selected_selector = "xpath://android.widget.TextView[contains(@text,'#{first_data_set}')]"
      $home_page.user_click(selected_selector)
    elsif ENV['PLATFORM_NAME'] =='ios'
      selected_selector = "xpath://*[contains(@label,'#{first_data_set}')]"
      $home_page.user_click(selected_selector)
    end
  rescue Exception => e
   raise e.message
   raise e.backtrace.inspect
  end
end

#########################################################################################################
#       Description         : Use to click selected element that contains specific text from save data, and for text element only
#       Created By          : Trino
#       Parameters          : test data that represent the selected UI text element
#       Return Value        : N/A
#       Example             : Then User click "[test_data_variable]" text
#       Modified By         : -
#       Date                : -
#       Modify Description  : -
########################################################################################################

Then(/^User click element contains saved data number (\d+)$/) do |number1|
  begin
    text = @save_data[number1.to_i - 1]
    if ENV['PLATFORM_NAME'] =='android' 
      selected_selector = "xpath://android.widget.TextView[contains(@text,'#{text}')]"
      $home_page.user_click(selected_selector)
    elsif ENV['PLATFORM_NAME'] =='ios'
      selected_selector = "xpath://XCUIElementTypeOther[contains(@label,'#{text}')]"
      $home_page.user_click(selected_selector)
    end
  rescue Exception => e
    puts "Element that contains #{text} is not found"
    raise e.message
   raise e.backtrace.inspect
  end
end

#########################################################################################################
#       Description         : Use to count the total amount of selected amount from selected list and compare it to grand total mount in the UI
#       Created By          : Trino
#       Parameters          : list item element (element), list element (element), index of saved value (integer) 
#       Return Value        : N/A
#       Example             : And User expect the total of "[list item element]" from "[list element]" list equal to saved value number [saved value index]
#       Modified By         : -
#       Date                : -
#       Modify Description  : -
########################################################################################################

And(/^User expect the total of "([^"]*)" list displayed equal to saved value number (\d+)$/) do |element_key_1, val_index|
  begin
    element = data_element_hash[element_key_1]
    expected_amount = @save_data[val_index.to_i - 1].to_i
    array_items = $home_page.user_get_elements(element)

    total = 0
    for i in 0 .. (array_items.count - 1)
      amount = array_items[i].text.split(' ')[1].gsub(',','').to_i
      total = total + amount
    end

    if expected_amount != total
      raise "The total of #{element_key_1} is not equal with total amount displayed that is #{expected_amount}"
    end

  rescue Exception => e
    raise e.message
  end
end

#########################################################################################################
#       Description         : Use select the contact from the contact list
#       Created By          : Novi
#       Parameters          : selected contact that represent the selected UI text element
#       Return Value        : N/A
#       Example             : -
#       Modified By         : 
#       Date                : 
#       Modify Description  : 
########################################################################################################

And(/^User select the contact "([^"]*)"$/) do |element_data_set_key|
  begin
   selectedcontact = data_yml_hash[element_data_set_key]
   elementselector = "xpath://android.widget.TextView[contains(@text,'#{selectedcontact}')]"
   $home_page.user_click(elementselector)
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end
end

#########################################################################################################
#       Description         : User remove selected contact from the contact list
#       Created By          : Novi
#       Parameters          : selected contact that represent the selected UI text element
#       Return Value        : N/A
#       Example             : -
#       Modified By         : -
#       Date                : -
#       Modify Description  : -
########################################################################################################
And (/^User remove selected contact "([^"]*)"$/) do |element_data_set_key|
  begin
    selectedcontact = data_element_hash[element_data_set_key]
    contact = $home_page.user_get_text(selectedcontact)
    if ENV['PLATFORM_NAME'] == 'android'
      elementselector = "xpath://android.widget.HorizontalScrollView[contains(@index,'1')]//android.widget.TextView[contains(@text,'#{contact}')]/preceding-sibling::android.view.ViewGroup[1]"
      $home_page.user_click(elementselector)
    elsif ENV['PLATFORM_NAME'] == 'ios'
      elementselector = "xpath://XCUIElementTypeScrollView[1]/XCUIElementTypeOther[1]/XCUIElementTypeOther[contains(@label,'#{contact}')]"
      $home_page.user_click(elementselector)
    end
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end
end

#########################################################################################################
#       Description         : User expect select the contact equal with the other contact
#       Created By          : Novi
#       Parameters          : selected contact that represent the selected UI text element
#       Return Value        : N/A
#       Example             : -
#       Modified By         : -
#       Date                : -
#       Modify Description  : -
########################################################################################################
Then (/^User expect the selected contact equal with "([^"]*)"$/) do |element_data_set_key|
  begin
    expect_element_data_set = data_yml_hash[element_data_set_key]
    element_data_set = "xpath://android.widget.TextView[contains(@text,'#{expect_element_data_set}')]"
    if !$home_page.user_expect(element_data_set, expect_element_data_set)
      text = $home_page.user_get_text(element_data_set)
      #raise "User expect '#{element_set_key}' equal with '#{expect_element_data_set}', but it's equal '#{text}'"
    end
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end
end

#########################################################################################################
#       Description         : User expect notification from selected contact is exist
#       Created By          : Novi
#       Parameters          : selected contact that represent the selected UI text element
#       Return Value        : N/A
#       Example             : -
#       Modified By         : -
#       Date                : -
#       Modify Description  : -
########################################################################################################
And (/^User expect notification from "([^"]*)" is exist$/) do |element_data_set_key|
  begin
    selectedcontact = data_yml_hash [element_data_set_key]
    notificationmessage= "By sending the money, you will automatically add '#{selectedcontact}' as your **** Contacts"
    elementselector = "xpath://android.widget.TextView[contains(@text,'#{notificationmessage}')]"
    $home_page.user_expect_displayed?(elementselector)
  end
end

#########################################################################################################
#       Description         : User expect contact of selected contact will exist
#       Created By          : Novi
#       Parameters          : selected contact that represent the selected UI text element
#       Return Value        : N/A
#       Example             : -
#       Modified By         : -
#       Date                : -
#       Modify Description  : -
########################################################################################################
And (/^User expect contact of "([^"]*)" will exist$/) do |element_data_set_key|
  begin
    selectedcontact = data_yml_hash[element_data_set_key]
    if ENV['PLATFORM_NAME'] == 'android'
      elementselector = "xpath://android.widget.TextView[contains(@text,'#{selectedcontact}')]"
      $home_page.user_expect_displayed?(elementselector)
    elsif ENV['PLATFORM_NAME'] == 'ios'
      elementselector = "xpath:XCUIElementTypeStaticText[contains(@label,'#{selectedcontact}')]"
      $home_page.user_expect_displayed?(elementselector)
    end
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end
end

#########################################################################################################
#       Description         : User expect contact of selected contact won't exist
#       Created By          : Novi
#       Parameters          : selected contact that represent the selected UI text element
#       Return Value        : N/A
#       Example             : -
#       Modified By         : -
#       Date                : -
#       Modify Description  : -
########################################################################################################
And (/^User expect contact of "([^"]*)" won't exist$/) do |element_data_set_key|
  begin
    selectedcontact = data_yml_hash[element_data_set_key]
    elementselector = "xpath://android.widget.TextView[contains(@text,'#{selectedcontact}')]"
    if($home_page.user_expect_not_displayed?(elementselector))
      puts "Element '#{elementselector}' doesn't exist"
    else
      raise "Element '#{elementselector}' still exist"
    end
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end
end

#########################################################################################################
#       Description         : User expect selected contact  will exist
#       Created By          : Novi
#       Parameters          : selected contact that represent the selected UI text element
#       Return Value        : N/A
#       Example             : -
#       Modified By         : -
#       Date                : -
#       Modify Description  : -
########################################################################################################
And (/^User expect selected contact "([^"]*)" will exist$/) do |element_data_set_key|
 begin
   selectedcontact = data_element_hash[element_data_set_key]
   contact = $home_page.user_get_text(selectedcontact)
   if ENV['PLATFORM_NAME'] == 'android'
     elementselector = "xpath://android.widget.HorizontalScrollView[contains(@index,'1')]//android.widget.TextView[contains(@text,'#{contact}')]"
     $home_page.user_expect_displayed?(elementselector)
   elsif ENV['PLATFORM_NAME'] == 'ios'
     elementselector = "xpath://XCUIElementTypeScrollView[1]/XCUIElementTypeOther[1]/XCUIElementTypeOther[contains(@label,'#{contact}')]"
     $home_page.user_expect_displayed?(elementselector)
   end
 rescue Exception => e
   raise e.message
   raise e.backtrace.inspect
 end
end

#########################################################################################################
#       Description         : User expect selected contact  won't exist
#       Created By          : Novi
#       Parameters          : selected contact that represent the selected UI text element
#       Return Value        : N/A
#       Example             : -
#       Modified By         : -
#       Date                : -
#       Modify Description  : -
########################################################################################################
And (/^User expect selected contact "([^"]*)" won't exist$/) do |element_data_set_key|
  begin
    selectedcontact = data_element_hash[element_data_set_key]
    contact = $home_page.user_get_text(selectedcontact)
    if ENV['PLATFORM_NAME'] == 'android'
      elementselector = "xpath://android.widget.HorizontalScrollView[contains(@index,'1')]//android.widget.TextView[contains(@text,'#{contact}')]"
    elsif ENV['PLATFORM_NAME'] == 'ios'
      elementselector = "xpath://XCUIElementTypeScrollView[1]/XCUIElementTypeOther[1]/XCUIElementTypeOther[contains(@label,'#{contact}')]"
    end
    if($home_page.user_expect_not_displayed?(elementselector))
      puts "Element '#{elementselector}' doesn't exist"
    else
  raise "Element '#{elementselector}' still exist"
  end    
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end
end

#########################################################################################################
#       Description         : User expect selected checkbox of selected contact  will exist
#       Created By          : Novi
#       Parameters          : selected contact that represent the selected UI text element
#       Return Value        : N/A
#       Example             : -
#       Modified By         : -
#       Date                : -
#       Modify Description  : -
########################################################################################################
And (/^User expect selected checkbox "([^"]*)" will exist$/) do |element_data_set_key|
  begin
    selectedcontact = data_yml_hash[element_data_set_key]
    elementselector = "xpath://android.widget.TextView[contains(@text,'#{selectedcontact}')]/following-sibling::android.widget.TextView[@text='']"
    $home_page.user_expect_displayed?(elementselector)
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end
end

#########################################################################################################
#       Description         : User expect selected checkbox of selected contact won't exist
#       Created By          : Novi
#       Parameters          : selected contact that represent the selected UI text element
#       Return Value        : N/A
#       Example             : -
#       Modified By         : -
#       Date                : -
#       Modify Description  : -
########################################################################################################
And (/^User expect selected checkbox "([^"]*)" won't exist$/) do |element_data_set_key|
  begin
    selectedcontact = data_yml_hash[element_data_set_key]
    elementselector = "xpath://android.widget.TextView[contains(@text,'#{selectedcontact}')]/following-sibling::android.widget.TextView[@text='']"
    if($home_page.user_expect_not_displayed?(elementselector))
      puts "Element '#{elementselector}' doesn't exist"
    else
      raise "Element '#{elementselector}' still exist"
    end
  rescue Exception => e
    raise e.message
    raise e.backtrace.inspect
  end
end

#########################################################################################################
#       Description         : User expect the actual amount is equal with expected amount
#       Created By          : Novi
#       Parameters          : - actual amount represent the amount on the amount field
#                             - expected amount represent the amount on the active balance
#       Return Value        : N/A
#       Example             : -
#       Modified By         : -
#       Date                : -
#       Modify Description  : -
########################################################################################################
Then (/^User expect that amount of "([^"]*)" is equal with amount of "([^"]*)"$/) do |actual_amount, expected_amount|
  begin
    actual_amount =  data_element_hash[actual_amount]
    expected_amount = data_element_hash[expected_amount]
    if !$home_page.user_expect(actual_amount, expected_amount)
      actual_amount_text = $home_page.user_get_text(actual_amount)
      expected_amount_text = $home_page.user_get_text(expected_amount)
      raise "The '#{actual_amount}' which is '#{actual_amount_text}', is not equal with '#{expected_amount}' with expected as '#{expected_amount_text}'"
    end
  end
end

#########################################################################################################
#       Description         :
#       Created By          : Novi
#       Parameters          : selected contact that represent the selected UI text element
#       Return Value        : N/A
#       Example             : -
#       Modified By         : -
#       Date                : -
#       Modify Description  : -
########################################################################################################
And (/^User check the amount of "([^"]*)" will be "([^"]*)" of the total of "([^"]*)"$/) do |amount_field, sliders_scale, total_amount|
  begin
    amount_field = data_element_hash[amount_field]
    sliders_scale = (data_yml_hash[sliders_scale]).to_i
    total_amount = data_element_hash[total_amount]

    actual_amount = $home_page.user_get_text(amount_field)

    #Recheck the actual amount to have the exact amount based on the position of the slider
    total_current_amount = ($home_page.user_get_text(total_amount)).to_i
    expected_amount = (total_current_amount * sliders_scale).to_s
    if(!$home_page.user_expect(actual_amount,expected_amount))
      raise "The '#{amount_field}' which is '#{actual_amount}', is not equal with '#{total_amount}' with expected as '#{expected_amount}'"
    end
  end
end

#########################################################################################################
#       Description         :
#       Created By          : Novi
#       Parameters          : selected contact that represent the selected UI text element
#       Return Value        : N/A
#       Example             : -
#       Modified By         : -
#       Date                : -
#       Modify Description  : -
########################################################################################################
Then (/^User will check the position of progress "([^"]*)" on slider "([^"]*)" after updating the amount field "([^"]*)" based on "([^"]*)"$/) do|slider_position, sliders_scale, amount, active_balance|
  begin
    slider_position_field = ($home_page.user_get_width(data_element_hash[slider_position])).to_f
    sliders_scale_field = ($home_page.user_get_width(data_element_hash[sliders_scale])).to_f
    amount_field = ($home_page.user_get_text(data_element_hash[amount])).to_r
    total_amount = ($home_page.user_get_text(data_element_hash[active_balance])).to_r
    scale_ratio_slider_expectation = amount_field/total_amount
    scale_ratio_slider_actual = slider_position_field/sliders_scale_field
    if(!$home_page.user_expect(scale_ratio_slider_actual,scale_ratio_slider_expectation))
      raise "The actual which is '#{scale_ratio_slider_actual}', is not equal with expected as '#{scale_ratio_slider_expectation}'"
    end
  end
end

#########################################################################################################
#       Description         : User expect selected checkbox of selected contact won't exist
#       Created By          : Novi
#       Parameters          : selected contact that represent the selected UI text element
#       Return Value        : N/A
#       Example             : -
#       Modified By         : -
#       Date                : -
#       Modify Description  : -
########################################################################################################
And(/^User fill the amount "([^"]*)" to see the slider position of "([^"]*)" based on the total "([^"]*)"$/) do |amount_text,slider_scale,active_balance|
  begin
    amount_field = data_element_hash[amount_text]
    scale = data_yml_hash[slider_scale]
    total_amount = $home_page.user_get_text(data_element_hash[active_balance])
    if(total_amount.include?'IDR' || 'Rp' )
      total=total_amount.split('').last
    end
    actual_amount_field = total.to_i * scale.to_i
    amount= actual_amount_field.to_s
    $home_page.user_fill(amount_field, amount)
  end
end

Then(/^User expect target date with first balance "([^"]*)" and daily recurring amount "([^"]*)" are calculated correctly with target amount "([^"]*)"$/) do |first_balance_element_key, debit_amount_element_key, target_amount_data_key|
  begin
    first_balance = $home_page.user_get_text(data_element_hash[first_balance_element_key]).gsub(",","").gsub(".","")
    debit_amount = $home_page.user_get_text(data_element_hash[debit_amount_element_key]).gsub(",","").gsub(".","")
    target_amount = data_yml_hash[target_amount_data_key]

    expected_day = $home_page.user_get_text(data_element_hash["save_it_dream_saver_mature_date"])
    expected_month = $home_page.user_get_text(data_element_hash["save_it_dream_saver_mature_month"])
    expected_year = $home_page.user_get_text(data_element_hash["save_it_dream_saver_mature_year"])

    if ((target_amount.to_i - first_balance.to_i) % debit_amount.to_i) > 0
      recurring_count = (target_amount.to_i - first_balance.to_i) / debit_amount.to_i + 1
    else  
      recurring_count = (target_amount.to_i - first_balance.to_i) / debit_amount.to_i
    end
    expected_date =  (DateTime.now.next_day(recurring_count.to_i).strftime"%e/%b/%Y").split("/")
    
    if (!expected_date[0].strip.eql? expected_day.strip) || (!expected_date[1].strip.eql? expected_month.strip) || (!expected_date[2].strip.eql? expected_year.strip)
      raise "Reaching date is not calculated correctly. It should be #{expected_date[0].strip} #{expected_date[1].strip} #{expected_date[2].strip}, but it displayed as #{expected_day} #{expected_month} #{expected_year}"
    end
  end
end

Then(/^User expect target date with first balance "([^"]*)" and weekly recurring amount "([^"]*)" are calculated correctly with target amount "([^"]*)"$/) do |first_balance_element_key, debit_amount_element_key, target_amount_data_key|
  begin
    first_balance = $home_page.user_get_text(data_element_hash[first_balance_element_key]).gsub(",","").gsub(".","")
    debit_amount = $home_page.user_get_text(data_element_hash[debit_amount_element_key]).gsub(",","").gsub(".","")
    target_amount = data_yml_hash[target_amount_data_key]

    expected_day = $home_page.user_get_text(data_element_hash["save_it_dream_saver_mature_date"])
    expected_month = $home_page.user_get_text(data_element_hash["save_it_dream_saver_mature_month"])
    expected_year = $home_page.user_get_text(data_element_hash["save_it_dream_saver_mature_year"])

    if ((target_amount.to_i - first_balance.to_i) % debit_amount.to_i) > 0
      recurring_count = ((target_amount.to_i - first_balance.to_i) / debit_amount.to_i + 1) * 7
    else  
      recurring_count = ((target_amount.to_i - first_balance.to_i) / debit_amount.to_i) * 7
    end
    expected_date =  (DateTime.now.next_day(recurring_count.to_i).strftime"%e/%b/%Y").split("/")
    
    if (!expected_date[0].strip.eql? expected_day.strip) || (!expected_date[1].strip.eql? expected_month.strip) || (!expected_date[2].strip.eql? expected_year.strip)
      raise "Reaching date is not calculated correctly. It should be #{expected_date[0].strip} #{expected_date[1].strip} #{expected_date[2].strip}, but it displayed as #{expected_day} #{expected_month} #{expected_year}"      
    end
  end
end

Then(/^User expect target date with first balance "([^"]*)" and monthly recurring amount "([^"]*)" are calculated correctly with target amount "([^"]*)"$/) do |first_balance_element_key, debit_amount_element_key, target_amount_data_key|
  begin
    first_balance = $home_page.user_get_text(data_element_hash[first_balance_element_key]).gsub(",","").gsub(".","")
    debit_amount = $home_page.user_get_text(data_element_hash[debit_amount_element_key]).gsub(",","").gsub(".","")
    target_amount = data_yml_hash[target_amount_data_key]

    puts "first balance #{first_balance}"
    puts "debit amount #{debit_amount}"

    expected_day = $home_page.user_get_text(data_element_hash["save_it_dream_saver_mature_date"])
    expected_month = $home_page.user_get_text(data_element_hash["save_it_dream_saver_mature_month"])
    expected_year = $home_page.user_get_text(data_element_hash["save_it_dream_saver_mature_year"])

    if ((target_amount.to_i - first_balance.to_i) % debit_amount.to_i) > 0
      recurring_count = (target_amount.to_i - first_balance.to_i) / debit_amount.to_i + 1
    else  
      recurring_count = (target_amount.to_i - first_balance.to_i) / debit_amount.to_i
    end
    expected_date =  ((DateTime.now >> recurring_count.to_i).strftime"%e/%b/%Y").split("/")
    
    if (!expected_date[0].strip.eql? expected_day.strip) || (!expected_date[1].strip.eql? expected_month.strip) || (!expected_date[2].strip.eql? expected_year.strip)
      raise "Reaching date is not calculated correctly. It should be #{expected_date[0]} #{expected_date[1]} #{expected_date[2]}, but it displayed as #{expected_day} #{expected_month} #{expected_year}"      
    end
  end
end

Then(/^User expect Dream Saver target date is (\d+) year\(s\) from today$/) do |year|
  begin
    expected_day = $home_page.user_get_text(data_element_hash["save_it_dream_saver_mature_date"])
    expected_month = $home_page.user_get_text(data_element_hash["save_it_dream_saver_mature_month"])
    expected_year = $home_page.user_get_text(data_element_hash["save_it_dream_saver_mature_year"])
    expected_date = ((DateTime.now >> (12 * year.to_i)).strftime"%e/%b/%Y").strip.split("/")

    if (!expected_date[0].eql? expected_day) || (!expected_date[1].eql? expected_month) || (!expected_date[2].eql? expected_year)
      raise "Reaching date is not set to 10 years from now (#{expected_date[0]} #{expected_date[1]} #{expected_date[2]}), but it set as #{expected_day} #{expected_month} #{expected_year}"      
    end
  end
end

#########################################################################################################
#       Description         : User expect all selected element have value equal with [value], 
#                             intended to check/assert the transaction type or category in transaction filter apply result
#       Created By          : Trino
#       Parameters          : selected element, selected value 1 (String)
#       Return Value        : N/A
#       Example             : -
#       Modified By         : -
#       Date                : 28 Nov 2017
#       Modify Description  : -
########################################################################################################
Then(/^User expect all "([^"]*)" displayed, equal with "([^"]*)"$/) do |key_element, key_value|
  begin
    element = data_element_hash[key_element]
    expected_value = data_yml_hash[key_value].to_i

    children = $home_page.user_find_elements(element)

    isCorrect = true
    for i in 0..(children.size - 1)
      current_value = children[i].text
      if expected_value != current_value
        isCorrect = false
      end
    end

    if !isCorrect
      raise "Some selected element(s) not equal with #{expected_value}"
    end
  end
end

#########################################################################################################
#       Description         : User expect all selected element have value between [value 1] and [value 2]
#       Created By          : Trino
#       Parameters          : selected element, selected value 1 (int), selected value 2 (int)
#       Return Value        : N/A
#       Example             : -
#       Modified By         : -
#       Date                : 2 Nov 2017
#       Modify Description  : -
########################################################################################################
Then(/^User expect all "([^"]*)" displayed, have value between "([^"]*)" until "([^"]*)"$/) do |key_element, key_value_1, key_value_2|
  begin
    element = data_element_hash[key_element]
    value1 = data_yml_hash[key_value_1].to_i
    value2 = data_yml_hash[key_value_2].to_i

    children = $home_page.user_find_elements(element)

    isCorrect = true
    for i in 0..(children.size - 1)
      value = children[i].text
      current_value = value.gsub(',','').gsub('.','').to_i
      if !(value1 <= current_value && current_value <= value2)
        isCorrect = false
      end
    end

    if !isCorrect
      raise "Some selected element(s) not in range of the selected values"
    end
  end
end

#########################################################################################################
#       Description         : User expect all selected element displayed, have date value in this year
#       Created By          : Trino
#       Parameters          : selected element, days (int)
#       Return Value        : N/A
#       Example             : -
#       Modified By         : -
#       Date                : 15 Nov 2017
#       Modify Description  : -
########################################################################################################
Then(/^User expect all "([^"]*)" displayed, have date value in this year$/) do |key_element|
  begin
    element = data_element_hash[key_element]
    value1 = DateTime.now
    value2 = DateTime.new(value1.year, 1, 1)

    children = $home_page.user_find_elements(element)

    isCorrect = true
    for i in 0..(children.size - 1)
      value = children[i].text
      date_value = Date.strptime("#{value}", "%e %b %Y")
      if !(value2 <= date_value && date_value <= value1)
        isCorrect = false
      end
    end

    if !isCorrect
      raise "Some selected element(s) not in range of the selected date values"
    end
  end
end

#########################################################################################################
#       Description         : User expect all selected element displayed, have date value in last [value 2] days
#       Created By          : Trino
#       Parameters          : selected element, days (int)
#       Return Value        : N/A
#       Example             : -
#       Modified By         : -
#       Date                : 2 Nov 2017
#       Modify Description  : -
########################################################################################################
Then(/^User expect all "([^"]*)" displayed, have date value in last (\d+) days$/) do |key_element, days|
  begin
    element = data_element_hash[key_element]
    value1 = DateTime.now
    value2 = DateTime.now - days.to_i

    children = $home_page.user_find_elements(element)

    isCorrect = true
    for i in 0..(children.size - 1)
      value = children[i].text
      date_value = Date.strptime("#{value}", "%e %b %Y")
      if !(value2 <= date_value && date_value <= value1)
        isCorrect = false
      end
    end

    if !isCorrect
      raise "Some selected element(s) not in range of the selected date values"
    end
  end
end

#########################################################################################################
#       Description         : Use to change change the date format from 'dd MM yyyy' to 'dd mm yyyy', i.e, "12 December 2017" to "12 Dec 2017"
#       Created By          : Trino
#       Parameters          : index
#       Return Value        : N/A
#       Example             : -
#       Modified By         : -
#       Date                : 2 Nov 2017
#       Modify Description  : -
########################################################################################################
And (/^User change date format of save data number (\d+) from \[dd MM yyyy\] to \[dd mm yyyy\]$/) do |index|
  begin
    strings = @save_data[index.to_i - 1].split(' ')
    text = strings[0] + ' ' + strings[1].slice(0,3) + ' ' + strings[2]
    @save_data[index.to_i - 1] = text
  end
end

#########################################################################################################
#       Description         : Use to change the date format from 'dd mm yyyy' to 'dd MMM yyyy', i.e, "12 Dec 2017" to "12 December 2017"
#       Created By          : Trino
#       Parameters          : index
#       Return Value        : N/A
#       Example             : -
#       Modified By         : -
#       Date                : 23 Nov 2017
#       Modify Description  : -
########################################################################################################
And (/^User change date format of save data number (\d+) from \[dd mm yyyy\] to \[dd MM yyyy\]$/) do |index|
  begin
    month_hash = {"Jan" => "January", "Feb" => "February", "Mar" => "March", "Apr" => "April", 
      "May" => "May", "Jun" => "June", "Jul" => "July", "Aug" => "August", 
      "Sep" => "September", "Oct" => "October", "Nov" => "November", "Dec" => "December"}


    strings = @save_data[index.to_i - 1].split(' ')
    text = strings[0] + ' ' + month_hash[strings[1]] + ' ' + strings[2]
    puts "#{text}"
    @save_data[index.to_i - 1] = text
  end
end

#########################################################################################################
#       Description         : User delete data contect if exist
#       Created By          : Eko Adi Prabowo
#       Parameters          : element_set_key (parse the parameter from gherkin)
#       Return Value        : delete data if exist
#       Example             : User delete contact "data" if exist
#       Modified By         : Eko Adi Prabowo
#       Date                : 7 Nov 2017
#       Modify Description  : check data contact change via search data
########################################################################################################

And (/^User delete contact "([^"]*)" if exist$/) do |data_set_key|
  begin

    data_set = data_yml_hash[data_set_key]
    element_data_set = "xpath://android.widget.TextView[@text= '#{data_set}']"
    element_list_one = data_element_hash["****_contact_item_0_title"]

      if($home_page.user_expect_displayed?(element_list_one))
        
        steps %Q{
          And User click "****_contact_item_0_title"
          And User click "****_contacts_delete_button_on_edit_screen"
          And User click "****_contacts_delete_pop_up_information_delete_button"  
        }  
        puts "User Click '#{data_set}'"
      end

      steps %Q{
          And User click "bill_payment_header_search_clear_button"
          And User click "bill_payment_header_search_cancel_button"
        }

  rescue Exception => e
    raise e.message
  end
end

#########################################################################################################
#       Description         : Use expect element with selected saved text value is displayed
#       Created By          : Trino
#       Parameters          : index
#       Return Value        : N/A
#       Example             : -
#       Modified By         : -
#       Date                : 2 Nov 2017
#       Modify Description  : -
########################################################################################################
Then (/^User expect saved text value number (\d+) displayed$/) do |index|
  begin
    text = @save_data[index.to_i - 1]
    elementselector = "xpath://android.widget.TextView[@text='#{text}']"
    $home_page.user_expect_displayed?(elementselector)
  rescue Exception => e
    raise e.message
  end

end




#########################################################################################################
#       Description         : User check snackbar with data text static
#       Created By          : Eko Adi Prabowo
#       Parameters          : data set key (parse the parameter from gherkin)
#       Return Value        : checkresult data text snackbar
#       Example             : User check snackbar with static text "data_set_key"
#       Modified By         : -
#       Date                : -
#       Modify Description  : -
########################################################################################################
And (/^User check snackbar with static text "([^"]*)"$/) do |data_set_key|
  begin
    platform = ENV['PLATFORM_NAME'].downcase
    data_set = data_yml_hash[data_set_key]
    element_data_set = "predicate:label contains[c] '#{data_set}'" 

    case platform
      when 'android'       
        element_snackbar_android = data_element_hash["snackbar"]
        if !$home_page.user_expect(element_snackbar_android, data_set)
          text_not_equal = $home_page.user_get_text(element_snackbar_android)
          raise "User expect '#{element_snackbar_android}' equal with '#{data_set}', but it's equal '#{text_not_equal}'"
        end

      when 'ios'

        if !$home_page.user_expect(element_data_set, data_set)
          text_not_equal = $home_page.user_get_text(element_data_set)
          raise "User expect '#{element_data_set}' equal with '#{data_set}', but it's equal '#{text_not_equal}'"
        end

    else
        raise 'Platform not recognized'
  end
  rescue Exception => e
    raise e.message
  end
end

#########################################################################################################
#       Description         : User check snackbar with data text dynamic 
#       Created By          : Eko Adi Prabowo
#       Parameters          : data set key (parse the parameter from gherkin)
#       Return Value        : checkresult data text snackbar
#       Example             : User check snackbar with dynamic text "data_set_key"
#       Modified By         : -
#       Date                : -
#       Modify Description  : -
########################################################################################################
And (/^User check snackbar with dynamic text "([^"]*)"$/) do |data_set_key|
  begin
    platform = ENV['PLATFORM_NAME'].downcase
    data_set = data_yml_hash[data_set_key]
 
  case platform
      when 'android'       
        element_snackbar_android = data_element_hash["snackbar"]
        text_result = $home_page.user_get_text(element_snackbar_android)

        if !$home_page.user_expect(element_snackbar_android, text_result)
          text_not_equal = $home_page.user_get_text(element_snackbar_android)
          raise "User expect '#{element_snackbar_android}' equal with '#{data_set}', but it's equal '#{text_not_equal}'"
        end

      when 'ios' 
        element_data_set = "predicate:label contains[c] '#{data_set}'"
        text = $home_page.user_get_text(element_data_set)
        
        if !text.include? data_set
          raise "User expect '#{element_data_set}' equal with '#{data_set}', but it's equal '#{text}'"
        end

    else
        raise 'Platform not recognized'
  end

  rescue Exception => e
    raise e.message
  end
end

#########################################################################################################
#       Description         : Use expect new recurring saving amount of dream saver with locked date when edit the total target amount
#       Created By          : Trino
#       Parameters          : index1, index2, index3, index4, index5
#       Return Value        : N/A
#       Example             : -
#       Modified By         : -
#       Date                : 23 Nov 2017
#       Modify Description  : -
########################################################################################################
Then (/^User expect new daily, weekly, or monthly saving amount of dream saver with target date locked is calculated correctly with new target amount, current amount, recurring type, target date, and new recurring saving amount are saved with order number (\d+), (\d+), (\d+), (\d+), and (\d+)$/) do |index1, index2, index3, index4, index5|
  begin
    puts "#{@save_data}"
    new_target_amount = @save_data[index1.to_i-1]
    puts "#{new_target_amount}"
    current_amount = @save_data[index2.to_i-1]
    puts "#{current_amount}"
    recurring_type = @save_data[index3.to_i-1]
    puts "#{recurring_type}"
    target_date = (@save_data[index4.to_i-1].is_a?String) ? convertStrToDate(@save_data[index4.to_i-1], "%e %b %Y") : @save_data[index4.to_i-1]
    puts "#{target_date}"
    freq_number = 0

    if recurring_type.include?('Daily')
      freq_number = target_date - Date.today
      puts "if daily ==> #{freq_number}"
    elsif recurring_type.include?('Weekly')
      freq_number = (target_date - Date.today)/7
      puts "if daily ==> #{freq_number}"
    elsif recurring_type.include?('Monthly')
      freq_number = (target_date.year - Date.today.year) * 12 + (target_date.month - Date.today.month)
      puts "if daily ==> #{freq_number}"
    end

    new_saving = (new_target_amount - current_amount)/freq_number
    if !new_saving == @save_data[index5.to_i - 1]
      raise "the new saving amount is wrong, not #{new_target_amount}, should be #{@save_data[index5.to_i - 1]}"
    end

  rescue Exception => e
    raise e.message
  end

end

#########################################################################################################
#       Description         : Use expect new target date of dream saver with unlocked date when edit the total target amount
#       Created By          : Trino
#       Parameters          : index1, index2, index3, index4, index5
#       Return Value        : N/A
#       Example             : -
#       Modified By         : -
#       Date                : 23 Nov 2017
#       Modify Description  : -
########################################################################################################
Then (/^User expect new target date of dream saver with target date unlocked is calculated correctly with new target amount, current amount, recurring type, saving amount, and new target date are saved with order number (\d+), (\d+), (\d+), (\d+), and (\d+)$/) do |index1, index2, index3, index4, index5|
  begin
    new_target_amount = @save_data[index1.to_i-1]
    current_amount = @save_data[index2.to_i-1]
    recurring_type = @save_data[index3.to_i-1]
    saving_amount = @save_data[index4.to_i-1]
    target_date = (@save_data[index5.to_i-1].is_a?String) ? convertStrToDate(@save_data[index5.to_i-1], "%e %b %Y") : @save_data[index5.to_i-1]
    freq_number = (new_target_amount - current_amount) / saving_amount
    new_target_date = Date.today

    if recurring_type.include?('Daily')
      new_target_date = new_target_date + freq_number
    elsif recurring_type.include?('Weekly')
      new_target_date = new_target_date + freq_number * 7
    elsif recurring_type.include?('Monthly')
      new_target_date = new_target_date >> freq_number
    end

    if !new_target_date == @save_data[index5.to_i - 1]
      raise "the new target date is wrong, not #{new_target_date}, should be #{@save_data[index5.to_i - 1]}"
    end

  rescue Exception => e
    raise e.message
  end

end

#########################################################################################################
#       Description         : Use to expect new recurring amount of dream saver with locked date after top up
#       Created By          : Trino
#       Parameters          : index1, index2, index3, index4, index5, index6
#       Return Value        : N/A
#       Example             : -
#       Modified By         : -
#       Date                : 13 Dec 2017
#       Modify Description  : -
########################################################################################################
Then (/^User expect new recurring amount of locked dream saver is calculated correctly with target amount, current amount, recurring type, target date, top up amount, and new recurring saving amount are saved with order number (\d+), (\d+), (\d+), (\d+), (\d+), and (\d+)$/) do |index1, index2, index3, index4, index5, index6|
  begin
    target_amount = @save_data[index1.to_i-1]
    current_amount = @save_data[index2.to_i-1]
    recurring_type = @save_data[index3.to_i-1]
    target_date = @save_data[index4.to_i-1]
    top_up_amount = @save_data[index5.to_i-1]

    freq_number = 0
    if recurring_type.include?('Daily')
      freq_number = target_date - Date.today
      puts "if daily ==> #{freq_number}"
    elsif recurring_type.include?('Weekly')
      freq_number = (target_date - Date.today)/7
      puts "if weekly ==> #{freq_number}"
    elsif recurring_type.include?('Monthly')
      freq_number = (target_date.year - Date.today.year) * 12 + (target_date.month - Date.today.month)
      puts "if monthly ==> #{freq_number}"
    end

    expect_new_rec_saving_amount = (target_amount - (current_amount + top_up_amount)) / freq_number

    if !expect_new_rec_saving_amount == @save_data[index6.to_i-1]
      raise "the new saving amount is wrong, not #{@save_data[index6.to_i-1]}, should be #{expect_new_rec_saving_amount}"
    end

  rescue Exception => e
    raise e.message
  end
end

#########################################################################################################
#       Description         : Use expect new target date of dream saver with unlocked date after top up
#       Created By          : Trino
#       Parameters          : index1, index2, index3, index4, index5, index6
#       Return Value        : N/A
#       Example             : -
#       Modified By         : -
#       Date                : 14 Dec 2017
#       Modify Description  : -
########################################################################################################
Then (/^User expect new target date of unlocked dream saver is calculated correctly with target amount, current amount, recurring type, saving amount, top up amount, and new target date are saved with order number (\d+), (\d+), (\d+), (\d+), (\d+), and (\d+)$/) do |index1, index2, index3, index4, index5, index6|
  begin
    target_amount = @save_data[index1.to_i-1]
    current_amount = @save_data[index2.to_i-1]
    recurring_type = @save_data[index3.to_i-1]
    saving_amount = @save_data[index4.to_i-1]
    top_up_amount = @save_data[index5.to_i-1]
    new_target_date = (@save_data[index6.to_i-1].is_a?String) ? convertStrToDate(@save_data[index6.to_i-1], "%e %b %Y") : @save_data[index6.to_i-1]
    freq_number = (target_amount - (current_amount + top_up_amount)) / saving_amount
    exp_target_date = Date.today

    if recurring_type.include?('Daily')
      exp_target_date = exp_target_date + freq_number
    elsif recurring_type.include?('Weekly')
      exp_target_date = exp_target_date + freq_number * 7
    elsif recurring_type.include?('Monthly')
      exp_target_date = exp_target_date >> freq_number
    end

    if !new_target_date == exp_target_date
      raise "the new target date is wrong, not #{new_target_date}, should be #{exp_target_date}"
    end

  rescue Exception => e
    raise e.message
  end
end

#########################################################################################################
#       Description         : Use to temporarily save the date value from UI element
#       Created By          : Trino
#       Parameters          : element
#       Return Value        : N/A
#       Example             : And System save date "[element_date]" value
#       Modified By         : -
#       Date                : 24 Nov 2017
#       Modify Description  : -
########################################################################################################

And (/^System save date "([^"]*)" value$/) do |element_date_key|
  begin
    if !defined? @save_data
      @save_data = []
    end

    # get the element on UI
    arrays = $home_page.user_get_text(data_element_hash[element_date_key]).strip.split(' ')
    puts "#{arrays}"
    day = arrays[0].to_i
    month = getMonthOrderNumber(arrays[1]).to_i
    year = arrays[2].to_i

    @save_data << Date.new(year, month, day)
    puts "Saved data: '#{@save_data}'"
  end
end

#########################################################################################################
#       Description         : Use to temporarily save the date value from UI element with separated day, month, and year
#       Created By          : Trino
#       Parameters          : element
#       Return Value        : N/A
#       Example             : And System save date with "[element_day]" as day, "[element_month]" as month, and "[element_year]" as year
#       Modified By         : -
#       Date                : 24 Nov 2017
#       Modify Description  : -
########################################################################################################

And (/^System save date with "([^"]*)" as day, "([^"]*)" as month, and "([^"]*)" as year$/) do |element_day_key, element_month_key, element_year_key|
  begin
    if !defined? @save_data
      @save_data = []
    end

    # get the element on UI
    day = $home_page.user_get_text(data_element_hash[element_day_key]).to_i
    month = getMonthOrderNumber($home_page.user_get_text(data_element_hash[element_month_key])).to_i
    year = $home_page.user_get_text(data_element_hash[element_year_key]).to_i

    @save_data << Date.new(year, month, day)
    puts "Saved data: '#{@save_data}'"
  end
end

private

#########################################################################################################
#       Description         : Uses for click numpad when input OTP and PIN
#       Created By          : Alexander Jackhariyas
#       Parameters          : count
#       Return Value        : N/A
#       Example             : NA
#       Modified By         : Gilang Bintang
#       Date                : 10 March 2017
#       Modify Description  : Moved into private function
########################################################################################################

def custom_keyboard(count)
  for i in 0..5
    if ENV['PLATFORM_NAME'] == 'android' or ENV['PLATFORM_NAME'] == 'ios'
      $driver.find_element(:accessibility_id,"Numpad_Button_#{count[i]}").click
      sleep (1)
    else
      $driver.xpath("predicate:type == 'XCUIElementTypeOther' AND (label == #{count[i]}])").click
      sleep (1)
    end
  end
end


#########################################################################################################
#       Description         : Used for looping swipe up until expected element found
#       Created By          : Gilang Bintang
#       Parameters          : expected_element
#       Return Value        : Boolean
#       Example             : swipe_up_until(card_center_widget)
#       Modified By         : Alexander Jackhariyas
#       Date                : 16 June 2017
#       Modify Description  : Add method for IOS
########################################################################################################

def swipe_up_until(expected_element)
  while $home_page.user_expect_not_displayed?(expected_element) do
    $home_page.user_swipe_up
  end
end

#########################################################################################################
#       Description         : Used for looping swipe down until expected element found
#       Created By          : Gilang Bintang
#       Parameters          : expected_element
#       Return Value        : Boolean
#       Example             : swipe_down_until(card_center_widget)
#       Modified By         : Alexander Jackhariyas
#       Date                : 16 June 2017
#       Modify Description  : Add method for IOS
########################################################################################################

def swipe_down_until(expected_element)
  while $home_page.user_expect_not_displayed?(expected_element) do
    $home_page.user_swipe_down
  end
end

#########################################################################################################
#       Description         : Used for looping swipe an element up until expected element found
#       Created By          : Gilang Bintang
#       Parameters          : expected_element, element_to_swipe
#       Return Value        : Boolean
#       Example             : swipe_up_element_until(date_picker_dropdown_element, date_june_element)
#       Modified By         : Alexander Jackhariyas
#       Date                : 16 June 2017
#       Modify Description  : Add method for IOS
########################################################################################################

def swipe_up_element_until(expected_element, element_to_swipe)
  while $home_page.user_expect_not_displayed?(expected_element) do
    $home_page.user_swipe_up_element(element_to_swipe)
  end
  return true  
end

#########################################################################################################
#       Description         : Used for looping swipe an element down until expected element found
#       Created By          : Gilang Bintang
#       Parameters          : expected_element, element_to_swipe
#       Return Value        : Boolean
#       Example             : swipe_down_element_until(date_picker_dropdown_element, date_june_element)
#       Modified By         : Alexander Jackhariyas
#       Date                : 16 June 2017
#       Modify Description  : Add method for IOS
########################################################################################################

def swipe_down_element_until(expected_element, element_to_swipe)
  while $home_page.user_expect_not_displayed?(expected_element) do
    $home_page.user_swipe_down_element(element_to_swipe)
  end
  return true
end

#########################################################################################################
#       Description         : Used for looping swipe an element down until expected element found
#       Created By          : Gilang Bintang
#       Parameters          : expected_element, element_to_swipe
#       Return Value        : Boolean
#       Example             : swipe_down_element_until(date_picker_dropdown_element, date_june_element)
#       Modified By         : Alexander Jackhariyas
#       Date                : 16 June 2017
#       Modify Description  : Add method for IOS
########################################################################################################

def swipe_left_element(element_to_swipe)
  $home_page.user_swipe_left_element(element_to_swipe)
end

#########################################################################################################
#       Description         : Uses for setting date picker value
#       Created By          : Alexander Jackhariyas
#       Parameters          : element_set_key, day_set, month_set, year_set
#       Return Value        : N/A
#       Example             : NA
#       Modified By         : Eko Adi Prabowo
#       Date                : 14 Novemvber 2017
#       Modify Description  : Update for handling max and min years (2000 or 2020)
########################################################################################################

def pick_date(element_set_key, day_set, month_set, year_set)
  if ENV['PLATFORM_NAME'] =='android'
    selected_year = "xpath://android.widget.ViewAnimator//*[@text='#{year_set}']"
    ok_button = data_element_hash["onboarding_calendar_ok_button"]
    next_button = data_element_hash["filter_time_range_date_picker_next_month"]
    previous_button = data_element_hash["filter_time_range_date_picker_previous_month"]
    month_name = Date::MONTHNAMES[month_set.to_i]
    day_id = [day_set, month_name, year_set].join(' ')
    selected_day = "xpath://android.view.View[@content-desc='#{day_id}']"
    diff = Time.now.month - month_set.to_i
    nav_button = diff < 0 ? next_button : diff > 0 ? previous_button : "xpath:null"

    if ENV['PLATFORM_VERSION'].to_f >= 6.0
      steps %Q{
        And User click "#{element_set_key}" until "onboarding_calendar_year" displayed
        When User click "onboarding_calendar_year" until "onboarding_calendar_year_list" displayed
      }
    
      Timeout::timeout(DEFAULT_TIMEOUT) {swipe_down_until(selected_year)}
      sleep (1)
      $home_page.user_click_until(selected_year, ok_button)

        if($home_page.user_expect_displayed?(selected_day))
          puts "element aleardy appear on screen"
        else
          if nav_button.partition(':').last != "null"
           for i in 1 .. diff.abs
             $home_page.user_click(nav_button)
            end
          end
        end

      $home_page.user_click(selected_day)
      $home_page.user_click(ok_button)
    elsif ENV['PLATFORM_VERSION'].to_f == 4.4
      # select calendar for android 4.4
      steps %Q{
        And User click "#{element_set_key}"
      }

      # format the selected month
      month_set = Date.new(year_set.to_i, month_set.to_i).strftime('%b')

      # element's xpath
      done_button = "xpath://android.widget.Button[@text='Done']"

      select_day_date_picker_next = "xpath://android.widget.NumberPicker[2]//android.widget.Button[2]"
      selected_day_date_picker = "xpath://android.widget.NumberPicker[2]//android.widget.EditText[1]"

      select_month_date_picker_next = "xpath://android.widget.NumberPicker[1]//android.widget.Button[2]"
      selected_month_date_picker = "xpath://android.widget.NumberPicker[1]//android.widget.EditText[1]"

      select_year_date_picker_prev = "xpath://android.widget.NumberPicker[3]//android.widget.Button[1]"
      select_year_date_picker_next = "xpath://android.widget.NumberPicker[3]//android.widget.Button[2]"
      selected_year_date_picker = "xpath://android.widget.NumberPicker[3]//android.widget.EditText[1]"

      # select day
      Timeout::timeout(DEFAULT_TIMEOUT) {
        while $home_page.user_get_text(selected_day_date_picker).to_i != day_set.to_i do
          $home_page.user_click(select_day_date_picker_next)
          sleep(2)
        end
      }

      # select month
      Timeout::timeout(DEFAULT_TIMEOUT) {
        while $home_page.user_get_text(selected_month_date_picker) != month_set do
          $home_page.user_click(select_month_date_picker_next)
        end
      }

      # select year
      Timeout::timeout(DEFAULT_TIMEOUT) {
        while $home_page.user_get_text(selected_year_date_picker).to_i != year_set.to_i do
          if year_set.to_i > Date.now.year
            $home_page.user_click(select_year_date_picker_next)
          else
            $home_page.user_click(select_year_date_picker_prev)        
          end
        end
      }

      # click done button
      $home_page.user_click(done_button)
    end
  elsif ENV['PLATFORM_NAME'] =='ios'
    expected_day = data_element_hash["onboarding_ios_datepicker_day_textfield"]    
    expected_month = data_element_hash["onboarding_ios_datepicker_month_textfield"]
    expected_year = data_element_hash["onboarding_ios_datepicker_year_textfield"]
    confirm_button = data_element_hash["onboarding_calendar_ok_button"]
    day_set = day_set.to_i
    
    month_list = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    steps %Q{
      And User click "#{element_set_key}"
    }
    
    while $home_page.user_find_element(expected_day).value != day_set.to_s do
      $home_page.user_find_element(expected_day).send_keys("#{day_set}")
      sleep(2)
    end
    while $home_page.user_find_element(expected_month).value != month_list[month_set.to_i-1] do
      $home_page.user_find_element(expected_month).send_keys("#{month_list[month_set.to_i-1]}")
      sleep(2)
    end
    while $home_page.user_find_element(expected_year).value != year_set do
      $home_page.user_find_element(expected_year).send_keys("#{year_set}")
      sleep(2)
    end
    $home_page.user_click(confirm_button)
  end
end

def get_todays_date()
  return DateTime.now.strftime "%d/%m/%Y"
end

def get_past_days_date(day)
  return DateTime.now.prev_day(day.to_i).strftime "%d/%m/%Y"
end

def get_future_days_date(day)
  return DateTime.now.next_day(day.to_i).strftime "%d/%m/%Y"
end

def get_past_months_date(month)
  return get_todays_date() << month
end

def get_future_months_date(month)
  return get_todays_date() >> month
end

def get_past_years_date(year)
  return DateTime.now.years_ago(year.to_i).strftime "%d/%m/%Y"
end

def get_future_years_date(year)
  return (get_todays_date() + year.year)
end

#########################################################################################################
#       Description         : Uses for clicking dropdown
#       Created By          : Alexander Jackhariyas
#       Parameters          : element_set_key, data_set
#       Return Value        : N/A
#       Example             : NA
#       Modified By         : Alexander Jackhariyas
#       Date                : 08 December 2017
#       Modify Description  : Fixing step for scrolling dropdown for ios
########################################################################################################

def click_dropdown(element_data_set, data_set)
  if ENV['PLATFORM_NAME'] =='android'
    dropdown = "xpath://android.widget.ScrollView[1]"
    required_xpath = "xpath://*[@text='#{data_set}']"
  elsif ENV['PLATFORM_NAME'] =='ios'
    dropdown = "xpath://XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]//XCUIElementTypeScrollView[1]"
    required_xpath = "predicate:label contains[c] '#{data_set}'"
  end

  begin @driver.hide_keyboard
  rescue => e
  end
  
  sleep(3)
  $home_page.user_click(element_data_set)
  Timeout::timeout(DEFAULT_TIMEOUT) {swipe_up_element_until(required_xpath, dropdown)}
  sleep(3)
  $home_page.user_click(required_xpath)
end

#########################################################################################################
#       Description         : Uses for wating for several times to execute command inside block
#       Created By          : Alexander Jackhariyas
#       Parameters          : element_set_key, data_set
#       Return Value        : N/A
#       Example             : NA
#       Modified By         : -
#       Date                : 10 September 2017
#       Modify Description  : -
########################################################################################################

def wait_for(timeout = DEFAULT_TIMEOUT)
  Selenium::WebDriver::Wait.new(:timeout => timeout).until {yield}
end

#########################################################################################################
#       Description         : Uses to check a certain character is a number or not
#       Created By          : Trino
#       Parameters          : character
#       Return Value        : N/A
#       Example             : NA
#       Modified By         : -
#       Date                : 24 Oct 2017
#       Modify Description  : -
########################################################################################################

def isNumber(character)
  return character.to_i.to_s == character.to_s
end

#########################################################################################################
#       Description         : Uses to the order of month in a year
#       Created By          : Trino
#       Parameters          : character
#       Return Value        : integer
#       Example             : NA
#       Modified By         : -
#       Date                : 23 Nov 2017
#       Modify Description  : -
########################################################################################################
def getMonthOrderNumber(str)
  months_dictionary = {"Jan" => 1, "January" => 1, "Januari" => 1,
      "Feb" => 2, "February" => 2, "Februari" => 2,
      "Mar" => 3, "March" => 3, "Maret" => 3,
      "Apr" => 4, "April" => 4,
      "May" => 5, "Mei" => 5,
      "Jun" => 6, "Juny" => 6, "Juni" => 6,
      "Jul" => 7, "July" => 7, "Juli" => 7,
      "Aug" => 8, "August" => 8, "Agu" => 8, "Agustus" => 8,
      "Sep" => 9, "September" => 9,
      "Oct" => 10, "October" => 10, "Okt" => 10, "Oktober" => 10,
      "Nov" => 11, "November" => 11, "Nop" => 11, "Nopember" => 11,
      "Dec" => 12, "December" => 12, "Des" => 12, "Desember" => 12}

  return months_dictionary[str]
end

#########################################################################################################
#       Description         : Uses to convert string to date
#       Created By          : Trino
#       Parameters          : date string, date format 
#       Return Value        : date
#       Example             : NA
#       Modified By         : -
#       Date                : 23 Nov 2017
#       Modify Description  : -
########################################################################################################
def convertStrToDate(str, format)
  return Date.strptime(str, format)
end
