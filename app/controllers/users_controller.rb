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
end
