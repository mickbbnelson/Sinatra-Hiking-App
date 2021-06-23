class HikeController < ApplicationController

    get "/hikes" do
        @hikes = Hike.all 
        erb :"hikes/index.html"
    end

    get "/hikes/new" do
        login_redirect
        erb :"/hikes/new.html"
    end

    post "/hikes" do
        login_redirect
        hike = Hike.new(params)
        if !hike.save
            flash[:message] = 'Please make sure to fill out all fields with valid information'
            redirect to "/hikes/new"
        else
            hike.user_id = current_user.id
            hike.save
            redirect "/hikes"        
        end
    end

    get "/hikes/:id" do
        @hike = Hike.find(params[:id]) 
        erb :"/hikes/show.html"
    end

    get "/hikes/:id/edit" do
        login_redirect
        @hike = Hike.find(params[:id]) 
        wrong_user_redirect 
        erb :"/hikes/edit.html"
    end

    patch "/hikes/:id" do
        login_redirect
        @hike = Hike.find(params[:id])
        wrong_user_redirect
        @hike.update(location: params["location"], distance: params["distance"], terrain: params["terrain"], description: params["description"])
        redirect to "/hikes/#{@hike.id}"
    end

    delete "/hikes/:id" do 
        login_redirect
        @hike = Hike.find(params[:id])
        wrong_user_redirect
        @hike.destroy
        redirect to "/hikes"
    end

    private
    def wrong_user_redirect
        if @hike.user_id != current_user.id
            redirect to "/hikes"
        end 
    end
end