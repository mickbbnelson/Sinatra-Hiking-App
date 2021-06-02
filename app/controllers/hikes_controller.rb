class HikeController < ApplicationController

    get "/hikes" do
        @hikes = Hike.all 
        erb :"hikes/index.html"
    end

end