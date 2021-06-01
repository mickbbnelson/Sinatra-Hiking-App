require './config/environment'    #requires everthing in our migration folder

if ActiveRecord::Migrator.needs_migration?    #Throws an error if a migration is needed
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

run ApplicationController         #runs the application
