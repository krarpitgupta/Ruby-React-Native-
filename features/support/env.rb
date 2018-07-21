begin require 'rspec/expectations'; rescue LoadError; require 'spec/expectations'; end
require 'appium_lib'
require 'selenium-webdriver'
require 'rubygems'
require 'byebug'
require 'cucumber'
require 'yaml'
require 'fileutils'
require_relative '../page_objects/home_page'
require_relative '../mappings/mapper'
require_relative '../../features/support/local_driver'

#########################################################################################################
#       Description         : This class describe the environment that will be used to run the automation framework
#       Created By          : Novi
#       Parameters          : There is no parameter to be parsed
#       Return Value        : No need to return some values
#       Example             : No need it since it will automatically used once the application is launched
#       Modified By         : Impola
#       Date                : 14 September 2017
#       Modify Description  : Remove browser TEST_ENV
########################################################################################################
EXTRA_LONG_WAIT = ENV['EXTRA_LONG_WAIT'] || 120
DEFAULT_TIMEOUT = ENV['WAIT_TIMEOUT'] || 60
LONG_WAIT = ENV['LONG_WAIT'] || 60
SHORT_WAIT = ENV['SHORT_WAIT'] || 5
AVG_WAIT = ENV['AVG_WAIT'] || 10

World do
  $mapper= Mapper.new
end

begin
  if ENV['TEST_ENV'].downcase == 'mobile'
    if $driver_created
      LocalDriver.instance.start_app
    else
      if ENV['PLATFORM_NAME'].nil?
        raise 'Please define the PLATFORM_NAME environment variable like: export PLATFORM_NAME=android'
      else
        env = ENV['PLATFORM_NAME'].downcase
      end
      case env
        when 'android'
          capability={
              caps: {
                  platformVersion: "#{ENV['PLATFORM_VERSION']}",
                  platformName: "#{ENV['PLATFORM_NAME']}",
                  deviceName:"#{ENV['DEVICE_NAME']}",
                  app:"#{ENV['APP']}",
                  avd:"#{ENV['AVD']}",
                  name:"#{ENV['SAUCE_LAB_JOB']}",
                  newCommandTimeout:600,
                  idleTimeout: 1000
                  #noReset: "True"
              }, appium_lib: {
                  port: "#{ENV['APPIUM_PORT']}"
               }

          }
        when 'ios'
          capability={
              caps: {
                  platformVersion: "#{ENV['PLATFORM_VERSION']}",
                  platformName: "#{ENV['PLATFORM_NAME']}",
                  deviceName:"#{ENV['DEVICE_NAME']}",
                  app:"#{ENV['APP']}",
                  udid:"#{ENV['UDID']}",
                  automationName:"#{ENV['AUTOMATION_NAME']}",
                  xcodeOrgId:"#{ENV['XCODEORGID']}",
                  xcodeSigningId:"#{ENV['XCODESIGNINGID']}",
                  name:"#{ENV['SAUCE_LAB_JOB']}",
                  newCommandTimeout:600,
                  idleTimeout: 1000
                  #noReset: "True"
              }, appium_lib: {
                  port: "#{ENV['APPIUM_PORT']}"
                }
          }
        else
          raise "Not supported platform #{ENV['PLATFORM_NAME']}"
      end

      app_name = capability[:caps][:app]

      if app_name.include?('sauce-storage:')

        if ENV['PLATFORM_NAME'].downcase == 'android'
          capability[:caps].delete(:avd)

          capability[:caps].store(:appiumVersion, "1.6.5")
          capability[:caps].store(:deviceOrientation, "portrait")
          capability[:caps].store(:deviceType, "phone")

        elsif ENV['PLATFORM_NAME'].downcase == 'ios'
          capability[:caps].delete(:udid)
          capability[:caps].delete(:automationName)
          capability[:caps].delete(:xcodeOrgId)
          capability[:caps].delete(:xcodeSigningId)
        end

        if ENV['SAUCE_USERNAME'] == nil || ENV['SAUCE_ACCESS_KEY'] == nil
          raise 'SAUCE_USERNAME or SAUCE_ACCESS_KEY is Missing ! Please check'
        end

      else
        ENV['SAUCE_USERNAME'] = nil
        ENV['SAUCE_ACCESS_KEY'] = nil
      end

      LocalDriver.instance.start_driver(capability)
      $driver_created = true
    end
  end
rescue Exception => e
  raise e.message
end


#########################################################################################################
#       Description         : This function to declare about what the framework should do after run all the scenario
#                             Basically after all the scenario, it will stop the driver
#       Created By          : Novi
#       Parameters          : There is no parameter to be parsed
#       Return Value        : No need to return some values
#       Example             : No need it since it will automatically used once the application is launched
#       Modified By         :
#       Date                :
#       Modify Description  :
########################################################################################################

at_exit do
  puts 'Exiting Driver'
  LocalDriver.instance.stop_app
end
