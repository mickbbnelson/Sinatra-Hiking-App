ENV['SINATRA_ENV'] ||= "development"    #If the sinatra key is set as something, it will use that value, if not, it will set it as development.

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])   #requiring default with whatever version it is
require 'dotenv/load'

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/#{ENV['SINATRA_ENV']}.sqlite"
)                                               #Makes our code more flexible while establishing connection.

require './app/controllers/application_controller'  #requires App Controller
require_all 'app'                                   #requires the entire App directory
