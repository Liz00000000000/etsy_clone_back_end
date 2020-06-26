class ReviewsController < ApplicationController
    def index
        reviews = Review.all 
        render json: reviews.to_json 
    end

    def show 
        review = Review.find(params[:id])
        render json: review.to_json
    end 
    
    def new
     review = Review.new 
    end
    
    def create
     review = Review.create(review_params)
     render json: review.to_json
    end
    
    private 

    def review_params
        params.require(:review).permit(:item_id, :user_id, :rating, :content)
    end 
end
