require './config/environment'    #requires everthing in our migration folder

if ActiveRecord::Base.connection.migration_context.needs_migration?    #Throws an error if a migration is needed.  Needed an update to this 5.2 compliant version.
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

run ApplicationController         #runs the application
