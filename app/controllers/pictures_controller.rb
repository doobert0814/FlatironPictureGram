class PicturesController < ApplicationController

    before_action :get_picture,  only: [:show, :edit, :create, :update, :destroy]

    def index 
        @pictures = Picture.all 
    end
    
    def show 
        @picture = Picture.find(picture_params)
    end

    def new 
        @picture = Picture.new
    end

    def create 
        @picture = Picture.create(picture_params)
    end

    private 

    def get_picture
        @picture = Picture.find(params[:id])
    end

    def picture_params
        params.require(:pictures).permit!
    end
end
