require_relative '../integration/testrail'
require 'nokogiri'

####################################################################################################################
#       Description         : This function will create mapping of scenario case id to their status
#       Created By          : Arpit Kr. Gupta
#       Parameters          : str_report (name of html report)
#                           :
#       Return Value        : hash (hash_case_id)
#       Example             : get_result_status_from_report('reports_android_award_uispecifi_20170809131132.html')
#       Modified By         : <Name Of Person>
#       Date                : 17 Aug 2017
#       Modify Description  : <Description of the modification>
####################################################################################################################

def get_result_status_from_report(str_report)

  hash_case_id = Hash.new
  if !str_report.to_s.strip.empty?

    project_root_path = Dir.pwd
    req_report_path = project_root_path + '/reports/' + str_report

    if File.exist?(req_report_path)

      puts 'File found at following path : ' + req_report_path
      document = Nokogiri::HTML(open(req_report_path))

      # Below code is used to collect all the case id from the report and generate a hash of it with key as case id and value as pass
      tags_length = document.css('span[class="val"]').length
      i_count = 0

      while i_count < tags_length do

        tag_description = document.css('span[class="val"]')[i_count].text

        if !tag_description.include?'Feature'
          tag_specification = tag_description.split('-')
          scenario_case_id = tag_specification[1]
          if scenario_case_id.include?'#'
            scenario_case_ids = scenario_case_id.split('#')
            scenario_case_ids.each { |case_id| hash_case_id.store(case_id, 'pass') }
          else
            hash_case_id.store(scenario_case_id, 'pass')
          end

        end

        i_count = i_count + 1

      end

      # Below code is used to get the id of failed scenario and then update their status in hash (hash_case_id)
      fail_tag_len = document.css('div[class="scenario"] script:contains("makeRed")').length
      i_count = 0

      while i_count < fail_tag_len

        script_text = document.css('div[class="scenario"] script:contains("makeRed")')[i_count].text

        if script_text.include?';'
          script_text = script_text.split(';').last
        end

        scenario_id = script_text.scan(/('(\S+)')/).last.first.gsub(/\s|"|'/, '')
        selector = '#' + scenario_id + ' span[class="val"]'
        fail_scenario_desc = document.css(selector).text
        fail_scenario_case_id = fail_scenario_desc.split('-')[1]

        i_count = i_count + 1

        # Below code will update the hash value of fail scenario
        if fail_scenario_case_id.include?'#'
          fail_scenario_case_ids = fail_scenario_case_id.split('#')
          fail_scenario_case_ids.each { |case_id| hash_case_id.has_key?case_id ? hash_case_id[case_id] = 'fail' : puts("#{case_id} doesnt exist")}
        elsif hash_case_id.has_key?fail_scenario_case_id
          hash_case_id[fail_scenario_case_id] = 'fail'
        else
        end

      end

    else
      puts 'File not found at following path : ' + req_report_path
    end

  else
    puts 'Please specify the report name ! It could not be empty '
  end

  return hash_case_id

end

####################################################################################################################
#       Description         : This function will update the results in test rail
#       Created By          : Arpit Kr. Gupta
#       Parameters          : test_rail_url (url of test rail for e.g.https://****.testrail.net/)
#                           : user_name (for e.g. arpit_kumar_gupta@external.****.com )
#                           : access_key (test rail account key for e.g. A3PCmlkKF7ckFKVkNzK4******** )
#                           : run_id (test run id from the test rail for e.g. 2028)
#                           : hash_case_id (hash of scenario case id to their status generated from html report)
#       Return Value        : b_flag (true/false)
#       Example             : update_result_in_test_rail('https://****.testrail.net/','ar@****.com',
#                             'A3PCmlkKF7ckFKVkNzK4-FgISkUM7.qCcrFAVfltZ','2030', hash_case_id)
#       Modified By         : <Name Of Person>
#       Date                : 17 Aug 2017
#       Modify Description  : <Description of the modification>
####################################################################################################################

def update_result_in_test_rail(test_rail_url, user_name, access_key, run_id, hash_case_id)

  begin
    # hash of mapping case id to id as per the test rail
    hash_test_mapping = Hash.new
    b_flag = true

    if test_rail_url.to_s.strip.empty? or user_name.to_s.strip.empty? or access_key.to_s.strip.empty? or run_id.to_s.strip.empty?
      puts 'Specified parameters is not correct, please re-check !'
      puts 'Specified Test Rail URL : ' + test_rail_url
      puts 'Specified Test Rail User Name : ' + user_name
      puts 'Specified Test Rail Access Key : ' + access_key
      puts 'Specified Test Rail Run Id : ' + run_id
    else
      # creating connection with test rail api
      obj_test_rail = TestRail::APIClient.new(test_rail_url)
      obj_test_rail.user = user_name
      obj_test_rail.password = access_key
      get_tests_uri = 'get_tests/' + run_id.to_s

      get_response = obj_test_rail.send_get(get_tests_uri)
      response_size = get_response.size
      i_count = 0

      while i_count < response_size do
        case_id = get_response[i_count.to_i]['case_id']
        id = get_response[i_count.to_i]['id']
        hash_test_mapping[case_id] = id
        i_count = i_count + 1
      end

      if hash_test_mapping.empty?
        puts 'No entry retrieved from Test Rail for Test Rail Run ID : ' + run_id.to_s
      else
        # specify the result array
        result = []

        hash_test_mapping.each do |key,value|
          case_id = 'C' + key.to_s
          if hash_case_id.has_key?case_id
            status = hash_case_id[case_id]
            if status.downcase == 'pass'
              result << {"test_id": "#{hash_test_mapping[key]}", "status_id": 1}
            elsif status.downcase == 'fail'
              result << {"test_id": "#{hash_test_mapping[key]}", "status_id": 5}
            end
          end
        end

        result_string = {"results": JSON.parse(result.to_json)}
        result_string = JSON.parse(result_string.to_json)

        if result_string['results'].size > 0
          add_results_uri = 'add_results/' + run_id.to_s
          obj_test_rail.send_post(add_results_uri, result_string)
        else
          puts 'No result found to upload in Test Rail'
        end
      end
    end
  rescue Exception => e
    b_flag = false
    puts 'Error Occured In Uploading The results in Test Rail, Error is : ' + e.message
  ensure
    return b_flag
  end
end
