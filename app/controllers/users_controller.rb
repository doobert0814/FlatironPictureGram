class UsersController < ApplicationController
    skip_before_action :authorized, only: [:new, :create]
    # before_action :get_user, only: [:show, :edit, :update, :destroy]

    def index
        @users = User.all
        @pictures = Picture.all
    end
    
    def show 
        @user = User.find(params[:id])
        @pictures = @user.pictures
        @comments = @user.comments
    end

    def new 
        @user = User.new
    end

    def create 
        @user = User.create(user_params)
        if @user.valid?
            session[:user_id] = @user.id
            redirect_to '/welcome'
        else 
            flash[:errors] = @user.errors.full_messages
            redirect_to '/signup'
        end
    end

    def destroy 
        @user = User.find(params[:id])
        @user.destroy
        redirect_to '/guest/welcome'
    end

    private 

    # def get_user
    #     @user = User.find(params[:id])
    #     byebug
    # end

    def user_params
        params.require(:user).permit!
    end
end
