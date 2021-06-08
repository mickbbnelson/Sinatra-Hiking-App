require './config/environment'    #requires environment folder

class ApplicationController < Sinatra::Base   #Application controller ingerits the funtionality of sinatra.

  configure do                    #connects our views to our controller
    set :public_folder, 'public'    #Look into deleting this line after we finish up our project.
    set :views, 'app/views'
    enable :sessions              #gives us access to sessions
    set :session_secret, ENV['SECRET']              #Secures user info. look to add env file once project is finished
    set :show_exceptions, false
  end

  not_found do
    status 404
    erb :error
  end

  get '/' do
    erb :welcome
  end

  error ActiveRecord::RecordNotFound do   #tells our routes to redirect to the home page if the user receivers th active record not found error.
    redirect to "error.erb"
  end 

  helpers do
    def current_user
      @current_user ||= User.find_by(id: session[:user_id])
    end

    def logged_in?
      !!current_user
    end
  end
end
