class MessagesController < ApplicationController
    def index 
        messages = Message.all
        render json: messages.to_json 
    end 

    def new 
        message = Message.new 
    end 

    def create 
        message = Message.create(message_params) 
        render json: message.to_json
    end 

    private 

    def message_params
        params.require(:message).permit(:content, :seller_id, :buyer_id, :item_id)
    end 
end
