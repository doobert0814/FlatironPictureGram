class SessionsController < ApplicationController

    skip_before_action :authorized, only: [:new, :create, :guest_welcome]

    def new 
        @user = User.new
    end

    def create
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password]) 
           session[:user_id] = @user.id
           redirect_to '/welcome'
        else
            flash[:error] = ["Invalid username and/or password. Please try again"]
            redirect_to '/login'
        end
     end

     def page_requires_login
     end

     def destroy
        log_out_user!
        redirect_to '/'
    end 

    def guest_welcome

    end
end
