class PurchasesController < ApplicationController
    def index
        purchases = Purchase.all 
        render json: purchases.to_json(:include => {
            :item => {:only => [:title, :picture, :price, :category, :user_id, :description]}
        }, except: [:created_at, :updated_at])
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
    
    end
    
    def destroy
    
    end
end
