# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Fequi::Application.initialize!


## Log4r to Log

require "#{Rails.root}/lib/log/fequi_formatter"

Log = Rails.logger = Log4r::Logger.new("Application Log")
Log4r::FileOutputter.new('fequi_log', :filename=>"#{Rails.root}/log/fequi.log", :trunc=>false, :formatter=> FequiFormatter)
Log.add('fequi_log')
