require './config/environment'    #requires environment folder

class ApplicationController < Sinatra::Base   #Application controller ingerits the funtionality of sinatra.

  configure do                    #connects our views to our controller
    set :public_folder, 'public'    #Look into deleting this line after we finish up our project.
    set :views, 'app/views'
    enable :sessions              #gives us access to sessions
    set :session_secret, "rwthwrhjwrjkilkdfewrgwe"              #Secures user info. look to add env file once project is finished
  end

  get '/' do
    erb :welcome
  end

end
