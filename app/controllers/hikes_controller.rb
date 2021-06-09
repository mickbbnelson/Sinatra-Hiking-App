require 'rack-flash'

class HikeController < ApplicationController
    use Rack::Flash

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
        @hike = Hike.find(params[:id])   #eas Hike.find_by_id(params[:id])
        erb :"/hikes/show.html"
    end

    post "/hikes" do
        if !logged_in?
            redirect to "/login"
        end
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

    get "/hikes/:id/edit" do
        if !logged_in?
            redirect to "/login"
        end
        @hike = Hike.find(params[:id]) 
        if @hike.user_id != current_user.id
            redirect to "/hikes"
        end 
        erb :"/hikes/edit.html"
    end

    patch "/hikes/:id" do
        if !logged_in?
            redirect to "/login"
        end
        @hike = Hike.find(params[:id])
        if @hike.user_id != current_user.id
            redirect to "/hikes"
        end 
        @hike.update(location: params["location"], distance: params["distance"], terrain: params["terrain"], description: params["description"])
        redirect :"/hikes/#{@hike.id}"
    end

    delete "/hikes/:id" do 
        if !logged_in?
            redirect to "/login"
        end
        @hike = Hike.find(params[:id])
        if @hike.user_id != current_user.id
            redirect to "/hikes"
        end 
        @hike.destroy
        redirect :"/hikes"
    end
end