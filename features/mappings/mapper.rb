###############################################################################################################
#       Description         : This class describe the mapper to parsing the element
#                             and also the test data from yml file
#       Created By          : Novi
#       Parameters          : There is no parameter to be parsed
#       Return Value        : return the data from yml file
#       Example             : data_element_hash[element_set_key]
#       Modified By         : Impola
#       Date                : 14 September 2017
#       Modify Description  : Remove compatibility of Environment Web Locators
################################################################################################################

class Mapper

    def data_element_hash
        @element_selectors = YAML.load_file("#{data_default_directory}/element/#{element_yml_file}")
    end

    def data_yml_hash
        @data_yml = YAML.load_file "#{data_default_directory}/#{data_yml_file}"
    end

    private
    def data_yml_file

        if ENV['APP_LANGUAGE'].downcase == 'english'
            case ENV['EXECUTION_ENVIRONMENT'].downcase
                when 'sit'
                    ENV['DATA_YML_FILE']? ENV['DATA_YML_FILE'] : 'sit/english/test_data.yml'
                when 'uat'
                    ENV['DATA_YML_FILE']? ENV['DATA_YML_FILE'] : 'uat/english/test_data.yml'
                else
                    raise "Specified Test Execution Platform #{ENV['EXECUTION_ENVIRONMENT']} is Not Supported ! Kindly Re-Check"
            end
        elsif ENV['APP_LANGUAGE'].downcase == 'bahasa'
            case ENV['EXECUTION_ENVIRONMENT'].downcase
                when 'sit'
                    ENV['DATA_YML_FILE']? ENV['DATA_YML_FILE'] : 'sit/bahasa/test_data.yml'
                when 'uat'
                    ENV['DATA_YML_FILE']? ENV['DATA_YML_FILE'] : 'uat/bahasa/test_data.yml'
                else
                    raise "Specified Test Execution Platform #{ENV['EXECUTION_ENVIRONMENT']} is Not Supported ! Kindly Re-Check"
            end
        else
            raise "Specified Application Language #{ENV['APP_LANGUAGE']} is Not Supported !! Kindly Re-Check "
        end

    end


    def element_yml_file
        if ENV['APP_LANGUAGE'].downcase == 'english'
            case ENV['PLATFORM_NAME'].downcase
                when 'android'
                    ENV['DATA_YML_FILE']? ENV['DATA_YML_FILE'] : 'english/selector_android.yml'
                when 'ios'
                    ENV['DATA_YML_FILE']? ENV['DATA_YML_FILE'] : 'english/selector_ios.yml'
                else
                    raise "Specified Automation Platform #{ENV['PLATFORM_NAME']} is Not Supported ! Kindly Re-Check"
            end
        elsif ENV['APP_LANGUAGE'].downcase == 'bahasa'
            case ENV['PLATFORM_NAME'].downcase
                when 'android'
                    ENV['DATA_YML_FILE']? ENV['DATA_YML_FILE'] : 'bahasa/selector_android.yml'
                when 'ios'
                    ENV['DATA_YML_FILE']? ENV['DATA_YML_FILE'] : 'bahasa/selector_ios.yml'
                else
                    raise "Specified Automation Platform #{ENV['PLATFORM_NAME']} is Not Supported ! Kindly Re-Check"
            end
        else
            raise "Specified Application Language #{ENV['APP_LANGUAGE']} is Not Supported !! Kindly Re-Check "
        end

    end

    def data_default_directory
        @data_directory ||= 'resources/config/data'
    end

    class << self
        attr_accessor :data_yml,:data_directory,:element_selector
    end
end