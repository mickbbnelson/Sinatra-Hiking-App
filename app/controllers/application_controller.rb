require 'rack-flash'
require './config/environment'    

class ApplicationController < Sinatra::Base   
  use Rack::Flash
  
  configure do                    
    set :public_folder, 'public'    
    set :views, 'app/views'       
    enable :sessions              
    set :session_secret, ENV['SECRET']              
    set :show_exceptions, false
  end

  not_found do
    status 404
    erb :error
  end

  get '/' do
    erb :welcome
  end

  error ActiveRecord::RecordNotFound do   
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

  private
  def login_redirect
    if !logged_in?
      redirect to "/login"
    end
  end
end
