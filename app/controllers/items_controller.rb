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
      item = Item.find(params[:id])
    end
    
    def update
      item = Item.find(params[:id])
      item.update(item_params)
      render json: item.to_json
    end
    
    def show
      item = Item.find(params[:id])
      render json: item.to_json
    end
    
    def destroy
      item = Item.find(params[:id])
      item.destroy
    end
    private 
    def item_params 
      params.require(:item).permit(:user_id, :title, :price, :picture, :category, :material)
    end 
end
