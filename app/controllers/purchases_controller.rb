class PurchasesController < ApplicationController
    def index
        purchases = Purchase.all 
        render json: purchases.to_json(:include => {
            :item => {:only => [:id, :title, :picture, :price, :category, :user_id, :description]}
        }, except: [:created_at, :updated_at])
    end
    
    def new
        purchase = Purchase.new 
    end
    
    def create
        purchase = Purchase.create(purchase_params)
        render json: purchase.to_json(:include => {
            :item => {:only => [:id, :title, :picture, :price, :category, :user_id, :description]}
        }, except: [:created_at, :updated_at])
    end
    
    private 
    def purchase_params
        params.require(:purchase).permit(:user_id, :item_id)
    end 
end
