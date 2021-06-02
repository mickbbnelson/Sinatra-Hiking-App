class HikeController < ApplicationController

    get "/hikes" do
        @hikes = Hike.all 
        erb :"/hikes/index.html"
    end

    get "/hikes/new" do

        erb :"/hikes/new.html"
    end

    get "/hikes/:id" do
        @hike = Hike.find_by_id(params[:id])
        erb :"/hikes/show.html"
    end
end