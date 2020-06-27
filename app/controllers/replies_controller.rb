class RepliesController < ApplicationController
    def index 
        replies = Reply.all
        render json: replies.to_json 
    end 

    def new 
        reply = Reply.new 
    end 

    def create 
        reply = Reply.create(reply_params) 
        render json: reply.to_json
    end 

    private 

    def reply_params
        params.require(:reply).permit(:content, :user_id, :message_id)
    end 
end
