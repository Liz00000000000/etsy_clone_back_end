class ItemsController < ApplicationController
    def index
        items = Item.all 
        render json: items.to_json 
    end
    
    def new
    
    end
    
    def create
    
    end
    
    def edit
    
    end
    
    def update
    
    end
    
    def show
      item = Item.find(params[:id])
      render json: item.to_json
    end
    
    def destroy
    
    end
end
