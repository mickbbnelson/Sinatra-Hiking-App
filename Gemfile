source 'http://rubygems.org'

gem 'sinatra'       
gem 'activerecord', '~> 5.2', :require => 'active_record'     #Needed to be updated to 5.2
gem 'sinatra-activerecord', :require => 'sinatra/activerecord'    
gem 'rake'                #Enables rake tasks
gem 'require_all'         #Allows you to require all folders in a certain directory
gem 'sqlite3', '~> 1.3.6' #SQL database
gem 'thin'                #Offers an easy way to start a rack app
gem 'shotgun'             #replaces the rackup command.  Allows you to reload a page easier after modifying code.
gem 'pry'
gem 'bcrypt'              #Password protection
gem 'tux'                 #Allows you to interact with helpers, view rendering and your apps response objects.

group :test do
  gem 'rspec'
  gem 'capybara'         #Allows you to test web apps
  gem 'rack-test'        #Allows tests for Rack app
  gem 'database_cleaner', git: 'https://github.com/bmabey/database_cleaner.git'
end
