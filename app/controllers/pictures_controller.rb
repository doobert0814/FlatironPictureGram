class PicturesController < ApplicationController

    before_action :get_picture,  only: [:show, :edit, :create, :update, :destroy]

    def index 
        @pictures = Picture.all.order("created_at DESC")
    end
    
    def show 
        @picture = Picture.find(params[:id])
        @comments = @picture.comments
        @comment = Comment.new
        session[:picture_id]= params[:id]
    end

    def new 
        @picture = Picture.new
        @tags = Tag.all
    end

    def create 
        @picture = Picture.new(picture_params)
        if params[:picture][:tag_name] != ""
            tag = Tag.create(name: params[:picture][:tag_name])
            @picture.tags << tag
        end    
        @picture.owner_id = session[:user_id]
        @picture.save
        if @picture.valid?
        redirect_to picture_path(@picture)
        end
    end

    private 

    def get_picture
        #@picture = Picture.find(params[:id])
    end

    def picture_params
        params.require(:picture).permit!
    end
end
