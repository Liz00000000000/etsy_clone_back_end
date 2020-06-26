class PurchasesController < ApplicationController
    def index
        purchases = Purchase.all 
        render json: purchases.to_json 
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
