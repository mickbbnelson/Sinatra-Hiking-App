require 'rack-flash'

class UserController < ApplicationController
use Rack::Flash

    get "/sign_up" do
        erb :"/users/sign_up.html"
    end

    post "/sign_up" do
        user = User.new(params)
        if !user.save                                      
            flash[:message] = 'Please make sure to fill out all fields with valid information'
            redirect to "/sign_up"
        else
            user.save            
            session[:user_id] = user.id                     
            redirect to "/hikes"                            
        end
    end


    get "/login" do
        erb :"/users/login.html"
    end

    post "/login" do
        user = User.find_by_username(params[:username])   
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id       
            flash[:login] = 'Please make sure to fill out all fields with valid information'
            redirect to "/hikes"
        else
            redirect to "/login"
        end
    end

    get "/users/:id" do

        @user = User.find(params[:id])
        erb :"/users/show.html"
    end

    get "/users/:id/edit" do
        if !logged_in?
            redirect to "/login"
        end
        @user = User.find(params[:id]) 
        if session[:user_id] != @user.id
            redirect to "/log_out"
        end
        erb :"/users/edit.html"
    end

    patch "/users/:id" do
        if !logged_in?
            redirect to "/login"
        end
        @user = User.find(params[:id])
        if session[:user_id] != @user.id
            redirect to "/log_out"
        end
        @user.update(name: params["name"], username: params["username"], email_address: params["email_address"], password: params["password"])
        redirect :"/users/#{@user.id}"
    end

    get "/log_out" do
        session.clear
        redirect to "/login"
    end

end
