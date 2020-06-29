class ItemsController < ApplicationController
    def index
        items = Item.all 
        render json: items.to_json 
    end
    
    def new
      item = Item.new 
    end
    
    def create
     item = Item.create(item_params)
     render json: item.to_json 
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
    private 
    def item_params 
      params.require(:item).permit(:user_id, :title, :price, :picture, :category, :material)
    end 
end
