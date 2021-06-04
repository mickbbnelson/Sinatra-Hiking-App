class UserController < ApplicationController

    get "/sign_up" do
        erb :"/users/sign_up.html"
    end
end