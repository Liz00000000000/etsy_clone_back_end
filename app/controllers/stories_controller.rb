class StoriesController < ApplicationController
    def index 
        stories = Story.all
        render json: stories.to_json
    end 
end
