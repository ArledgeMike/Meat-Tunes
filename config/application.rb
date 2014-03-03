require File.expand_path('../boot', __FILE__)  
  
require 'rails/all'  
require 'sprockets/railtie'
Bundler.require(:default, Rails.env) if defined?(Bundler)  
  
module Mp3app  
  class Application < Rails::Application  
    config.encoding = "utf-8"  
    config.filter_parameters += [:password]  
    config.active_support.escape_html_entities_in_json = true
    config.active_record.whitelist_attributes = true
    config.assets.enabled = true
    config.assets.version = '1.0'
    AWS::S3::Base.establish_connection!( 
      :access_key_id     => '',  
      :secret_access_key => ''  
    )  
   
  

  end  
end  
