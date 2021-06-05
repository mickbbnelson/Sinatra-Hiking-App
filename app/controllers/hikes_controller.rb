class HikeController < ApplicationController

    get "/hikes" do
        @hikes = Hike.all 
        erb :"hikes/index.html"
    end

    get "/hikes/new" do
        if !logged_in?
            redirect to "/login"
        end
        erb :"/hikes/new.html"
    end

    get "/hikes/:id" do
        @hike = Hike.find_by_id(params[:id])
        erb :"/hikes/show.html"
    end

    post "/hikes" do
        if !logged_in?
            redirect to "/login"
        end
        hike = Hike.new(params)
        hike.user_id = session[:user_id]
        hike.save
        redirect "/hikes"        #redirects to /hikes route
    end

    get "/hikes/:id/edit" do
        if !logged_in?
            redirect to "/login"
        end
         @hike = Hike.find(params[:id])  
         erb :"/hikes/edit.html"
    end

    patch "/hikes/:id" do
        @hike = Hike.find(params[:id])
        @hike.update(location: params["location"], distance: params["distance"], terrain: params["terrain"])
        redirect :"/hikes/#{@hike.id}"
    end

    delete "/hikes/:id" do 
        if !logged_in?
            redirect to "/login"
        end
        @hike = Hike.find(params[:id])
        @hike.destroy
        redirect :"/hikes"
    end
end