class HikeController < ApplicationController

    get "/hikes" do
        @hikes = Hike.all 
        erb :"hikes/index.html"
    end

    get "/hikes/new" do

        erb :"/hikes/new.html"
    end

    get "/hikes/:id" do
        @hike = Hike.find_by_id(params[:id])
        erb :"/hikes/show.html"
    end

    post "/hikes" do
        hike = Hike.new(params)
        hike.save
        redirect "/hikes"        #redirects to /hikes route
    end

    get "/hikes/:id/edit" do
         @hike = Hike.find(params[:id])   
         erb :"/hikes/edit.html"
    end
end