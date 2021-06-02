require './config/environment'    #requires environment folder

class ApplicationController < Sinatra::Base   #Application controller ingerits the funtionality of sinatra.

  configure do                    #connects our views to our controller
    set :public_folder, 'public'    #Look into deleting this line after we finish up our project.
    set :views, 'app/views'
  end

  get '/' do
    erb :welcome
  end

end
