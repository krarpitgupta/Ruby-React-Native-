#####################################################################################################################
#       Description         : This class describe the hooks that are used for setup and teardown the environment
#                             before and after each scenario
#       Created By          : Novi
#       Parameters          : scenario
#       Return Value        : No need to return some values
#       Example             : No need it since it will automatically used once the application is launched
#       Modified By         : Impola
#       Date                : 14 September 2017
#       Modify Description  : Remove browser snapshot in cucumber report
####################################################################################################################

Before do | scenario |
  environment = ENV['TEST_ENV'].downcase
  case environment
    when 'mobile'
      if scenario.source_tag_names.include?('@continuous')
        puts "@continuous tag detected. Only starting driver when it doesn't exist"
        unless driver_session_exists?
          puts 'Restarting Driver'
          LocalDriver.instance.restart_driver
        end
      else
        puts 'Starting Driver'
        LocalDriver.instance.start_app
      end
    else
      puts 'Not Supported Environment'
  end
end

After do | scenario |
  if scenario.failed?
    date = Time.now.to_s
    date = date.tr!('-: ', '_')
    date = date.gsub('+','')
    dir = Dir.pwd

    reports_dir = dir + "/reports"
    snapshot_dir = reports_dir + "/snapshots"
    unless File.directory?(snapshot_dir)
      FileUtils.mkdir_p(snapshot_dir)
    end

    snapshot_path = snapshot_dir + "/#{date}_#{sanitize_filename(scenario.name)}.png"

    if ENV['TEST_ENV'].downcase == 'mobile'
      $driver.screenshot(snapshot_path)
    end
    embed(snapshot_path,'image/png','SCENARIO_FAILED_STEP_SCREENSHOT')
  end
end

private
def sanitize_filename(filename)
  filename.gsub!(/[^0-9A-Za-z.\-]/, ' ')
  filename[0..500]
end

def driver_session_exists?
  begin
    $driver.device_time
    puts "Driver device time ==> #{$driver.device_time}"
    return true
  rescue StandardError
    return false
  end
end