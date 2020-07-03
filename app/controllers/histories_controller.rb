class HistoriesController < ApplicationController
    def index
        history = History.all 
        render json: history.to_json(:include => {
            :item => {:only => [:title, :picture, :user_id, :price, :category, :id]}
        }, except: [:created_at, :updated_at])
    end

    def show 
        history = History.find(params[:id])
        render json: history.to_json(:include => {
            :item => {:only => [:title, :picture, :price, :category, :id]}
        }, except: [:created_at, :updated_at])
    end 
    
    def new
      history = History.new 
    end
    
    def create
        history = History.create(history_params)
        render json: history.to_json 
    end

    def destroy
      history = History.find(params[:id])
      history.destroy
    end

    private 

    def history_params
        params.require(:history).permit(:item_id, :user_id) 
    end 
end
