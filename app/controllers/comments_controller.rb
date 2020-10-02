class CommentsController < ApplicationController

    def index 
        @comments = Comment.all  
    end

    def new 
        @comment = Comment.new
    end

    def create 
        @comment = Comment.new(comment_params)
        @comment.user_id = session[:user_id]
        @comment.picture_id = session[:picture_id]
        @comment.save
        redirect_to "/pictures/#{session[:picture_id]}"
    end
   

    def show 
        @comment = Comment.find(params[:id])
    end

    private 

    def comment_params 
        params.require(:comment).permit!
    end
end
