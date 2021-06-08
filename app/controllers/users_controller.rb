class UserController < ApplicationController

    get "/sign_up" do
        erb :"/users/sign_up.html"
    end

    post "/sign_up" do
        user = User.new(params)
        if !user.save                   #User won't save if all the validated criteria from Validates in the User class are not met.
            redirect to "/sign_up"
        else
            user.save
            session[:user_id] = user.id         #Assigns session key to user id.  Starts a session for that user.
            redirect to "/hikes"                #need to update
        end
    end

    get "/login" do
        erb :"/users/login.html"
    end

    post "/login" do
        user = User.find_by_username(params[:username])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id         #Assigns session key to user id.  Starts a session for that user.
            redirect to "/hikes"
        else
            redirect to "/login"
        end
    end

    get "/users/:id" do
        binding.pry
        @user = current_user
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
