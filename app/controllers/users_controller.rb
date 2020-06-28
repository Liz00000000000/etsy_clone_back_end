class UsersController < ApplicationController
    def index
        users = User.all 
        render json: users.to_json
    end
    
    def new
     user = User.new 
    end
    
    def create
    user = User.create(user_params)
    render json: user.to_json 
    end
    
    def edit
    
    end
    
    def update
    
    end
    
    def show
    
    end
    
    def destroy
    
    end
    
    private 

    def user_params
        params.require(:user).permit(:first_name, :last_name, :bio, :email, :password)
    end 
end
