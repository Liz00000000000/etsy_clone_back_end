class StoriesController < ApplicationController
    def index 
        stories = Story.all
        render json: stories.to_json
    end 

    def new 
       story = Story.new 
    end 

    def create 
        story = Story.create(story_params)
        render json: story.to_json 
    end 

    private 

    def story_params 
        params.require(:story).permit(:user_first_name, :user_last_name, :story_title, :sentance_1)
    end 
end
