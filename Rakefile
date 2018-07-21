require 'cucumber'
require 'sauce_whisk'
require 'cucumber/rake/task'
require_relative './assets/integration/testRailIntegration'

desc 'Run acceptance tests on the selected platform (android|ios), e.g.: single_run_acceptance[android,@homepage]'
task :single_run_acceptance, :execution_environment, :app_language, :platform_name, :platform_version, :device_name,
     :app, :avd, :udid, :tags, :saucelab_job_name, :saucelab_user_name, :saucelab_access_key,
     :test_rail_flag, :test_rail_run_id, :automation_name, :xcode_org_id, :xcode_signing_id, :appium_port  do |_, args|
  begin
    b_flag = args[:test_rail_flag].downcase
    SauceWhisk.username = args[:saucelab_user_name].to_s
    SauceWhisk.access_key = args[:saucelab_access_key].to_s
    SauceWhisk.asset_fetch_retries = 30

    if !args[:saucelab_user_name].to_s.empty? && !args[:saucelab_access_key].to_s.empty?
      wait_sauce_tunnel
    end

    if args[:test_rail_flag].to_s.eql? 'true'
      run_id = args[:test_rail_run_id]
    end

    start_appium_server(args)
    is_success = run_cucumber_rake_task(args)
    puts 'Cucumber tests failed!!!' unless is_success
    stop_appium_server

  rescue Exception => e
    stop_appium_server
    puts "#{e.class}: #{e.message}"
  ensure
    if b_flag.to_s == 'true'
      test_rail_integration(run_id.to_s)
    end
    # if !$tunnel.nil?
    #   stop_sauce_tunnel
    # end
  end
end

def wait_sauce_tunnel
  tunnel_status = ''
  until tunnel_status.to_s.eql? 'running' do
    all_tunnels = SauceWhisk::Tunnels.all
    if !all_tunnels.to_a.empty?
      $tunnel = all_tunnels.fetch(0)
      tunnel_status = $tunnel.status

      puts '================================================================================'
      puts 'tunnel id     :'+$tunnel.id.to_s
      puts 'tunnel status :'+tunnel_status.to_s
      puts '================================================================================'
    end
  end
end

def stop_sauce_tunnel
  $tunnel.stop
  puts '================================================================================'
  puts 'stopping tunnel '+$tunnel.id.to_s
  puts '================================================================================'
end


def test_rail_integration(arg_run_id)
  begin
    file_name = Dir.pwd + '/assets/integration/test_rail.yml'
    test_rail_file = YAML.load_file(file_name)

    url = test_rail_file['url']
    user_name = test_rail_file['user_name']
    access_key = test_rail_file['access_key']
    run_id = arg_run_id
    report_name = $REPORTNAME

    report_hash = get_result_status_from_report(report_name)
    if report_hash.empty?
      puts 'No result retrieved from HTML Report : ' + report_name.to_s
    else
      b_flag = update_result_in_test_rail(url, user_name, access_key, run_id, report_hash)
      if b_flag
        puts 'Result uploaded in Test Rail Successfully !'
      else
        puts 'Result uploaded in Test Rail Failed !'
      end
    end
  rescue Exception => e
    puts 'Error Occured in Test Rail Integration, Error Desc is : ' + e.message
  end
end

private
def start_appium_server(args)
  ENV['APPIUM_PORT'] = args[:appium_port].nil? ? '4723' : args[:appium_port]

  log_filename = File.expand_path('appium_server.log')

  command = "appium -p #{ENV['APPIUM_PORT']} --log #{log_filename} --local-timezone 1>&2"

  puts "Starting Appium server (log: #{log_filename})"
  pid = Process.spawn(command)
  if pid.zero?
    puts 'Appium server did not start'
    exit(false)
  else
    puts "Appium has been started with PID: #{pid}"
  end
end

def stop_appium_server
  port = ENV['APPIUM_PORT'].to_i
  `lsof -t -i tcp:#{port}`.each_line.map(&:to_i).map { |pid| stop_node_process(pid: pid) }
 case ENV['PLATFORM_NAME'].downcase
    when 'android'
      `adb emu kill`
      puts "Android Emulator has been killed"
    when 'ios'
      `killall "Simulator"`
      puts "iOS Simulator has been killed"
    else
      raise "Emulator/Simulator can not be killed due to invalid syntax"
 end
end

def run_cucumber_rake_task(args)

  prepare_env(args)

  tags = args[:tags]

  list =[]
  if tags.include?'#'
     list = tags.split('#')
     list.join(',')
     tagging = list.map{|i| "#{i}"}.join(",")
     tags = "--tags #{tagging}"
  else
    tags = "--tags #{args[:tags]}"
  end

  report = set_reporting(args[:platform_name], args[:platform_version], '',true, args[:tags])
  puts "#{tags} #{report}"

  Cucumber::Rake::Task.new(:run) do |t|
    t.cucumber_opts = "#{tags} #{report}"
  end

  Rake::Task[:run].invoke
end

def stop_node_process(pid:)
  `kill -9 #{pid}`
end

def set_reporting(platform_name, platform_version, browser_name, rerun, tag)
  dir = Dir.pwd

  reports_dir = dir + "/reports"
  unless File.directory?(reports_dir)
    FileUtils.mkdir_p(reports_dir)
  end

  tags = tag
  timestamp = Time.new.strftime('%Y%m%d%H%M%S')
  platform_name = platform_name.downcase

  if ENV['TEST_ENV'] == 'mobile'
    report_name = ''
    report_name = "reports_#{platform_name}_#{tags.delete('@')}_#{timestamp}.html"
    report = "--format pretty --format html --out reports/#{report_name} "
    $REPORTNAME = report_name
  end

  return report

end

def prepare_env(args)
  raise 'Please define the platform (android|ios)' if args.nil? or args[:platform_name].nil?

  ENV['PLATFORM_NAME'] = args[:platform_name].downcase
  ENV['PLATFORM_VERSION'] = args[:platform_version]
  ENV['SAUCE_LAB_JOB'] = args[:saucelab_job_name]
  ENV['SAUCE_USERNAME'] = args[:saucelab_user_name]
  ENV['SAUCE_ACCESS_KEY'] = args[:saucelab_access_key]
  if(ENV['SAUCE_USERNAME'] == nil || ENV['SAUCE_ACCESS_KEY'] == nil)
    ENV['DEVICE_NAME'] = args[:device_name]
  else
    ENV['DEVICE_NAME'] = args[:device_name].downcase == 'android' ? 'Android GoogleAPI Emulator' : 'iPhone 6 Simulator'
  end
  ENV['EXECUTION_ENVIRONMENT'] = args[:execution_environment]
  ENV['APP_LANGUAGE'] = args[:app_language]
  ENV['TEST_ENV'] = 'mobile'

  if(ENV['TEST_RAIL_FLAG'] == 'true')
    ENV['TEST_RAIL_RUN_ID'] = args[:test_rail_run_id]
  end

  case args[:platform_name].downcase
    when 'android'
      ENV['APP'] = args[:app]
      ENV['AVD']= args[:avd]
    when 'ios'
      ENV['APP'] = args[:app]
      ENV['UDID']= args[:udid]
      ENV['AUTOMATION_NAME']= args[:automation_name]
      ENV['XCODEORGID']=args[:xcode_org_id]
      ENV['XCODESIGNINGID']=args[:xcode_signing_id]
    else
      raise("Not supported platform #{args[:platform_name]}")
  end
end
