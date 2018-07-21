require 'singleton'
require 'appium_lib'

#########################################################################################################
#       Description         : This class describe the driver are used on this automation framework
#       Created By          : Novi
#       Parameters          : There is no parameter to be parsed
#       Return Value        : No need to return some values
#       Example             : No need example since it will automatically used once the application is launched
#       Modified By         : Impola
#       Date                : 14 September 2017
#       Modify Description  : Remove support for desktop web
########################################################################################################

class LocalDriver
  include Singleton
  attr_reader :driver

  #This method is used to initialize the driver as nil for the first time
  def initialize
    @driver = nil
  end

  #This method is used for setting up the driver, currently to setup the Appium driver
  #Once the driver has been setup, then the appium logger will be created
  def start_driver(capabilities)
    @driver = Appium::Driver.new(capabilities, true)
    Appium.promote_appium_methods Object
    Appium::Logger.level = Logger::DEBUG
  end

  #This method is used for starting the driver, currently to start the Appium driver
  def start_app
    @driver.start_driver
  end

  #This method is used for stopping the driver, currently to stop the Appium driver
  def stop_app
    if ENV['TEST_ENV'].downcase == 'mobile'
      @driver.driver_quit
    end
  end

  #This method is used for restaring the apps, currently to restart the Appium driver
  def restart_app
    stop_app
    start_app
  end

  #This method is used for restaring the driver, currently to restart the Appium driver
  def restart_driver
    @driver.restart
  end
end