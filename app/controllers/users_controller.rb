class UsersController < ApplicationController
    

    def index
        @users = User.all
    end
    
    def show 
        @user = User.find(user_params)
        byebug
    end

    def new 
        @user = User.new
        @picture = Picture.all
    end

    def create 
        byebug
        @user = User.create(user_params)
        if @user.valid?
            redirect_to @user
        else 
            flash[:errors] = @user.errors.full_messages
            redirect_to new_user_path
        end
    end

    private 

    def user_params
        byebug
        params.permit!
    end
end
