class UserController < ApplicationController

    get "/sign_up" do
        erb :"/users/sign_up.html"
    end

    post "/sign_up" do
        user = User.new(params)
        if !user.save
            redirect to "/sign_up"
        else
            user.save
            session[:user_id] = user.id
            redirect to "/hikes"                #need to update
        end
    end

    get "/login" do
        erb :"/users/login.html"
    end

    post "/login" do
        user = User.find_by_username(params[:username])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect to "/hikes"
        else
            redirect to "/login"
        end
    end

    get "/log_out" do
        session.clear
        redirect to "/login"
    end
end
