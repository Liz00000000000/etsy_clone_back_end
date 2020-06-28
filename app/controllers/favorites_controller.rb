class FavoritesController < ApplicationController
    def index
        favorite = Favorite.all 
        render json: favorite.to_json(:include => {
            :item => {:only => [:title, :picture, :price, :category, :id]}
        }, except: [:created_at, :updated_at])
    end

    def show 
        favorite = Favorite.find(params[:id])
        render json: favorite.to_json(:include => {
            :item => {:only => [:title, :picture, :price, :category, :id]}
        }, except: [:created_at, :updated_at])
    end 
    
    def new
      favorite = Favorite.new 
    end
    
    def create
        favorite = Favorite.create(favorite_params)
        render json: favorite.to_json 
    end

    def destroy
      favorite = Favorite.find(params[:id])
      favorite.destroy
    end

    private 

    def favorite_params
        params.require(:favorite).permit(:item_id, :user_id) 
    end 
end
