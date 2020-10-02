class TagsController < ApplicationController

    def index 
        @tags = Tag.all
    end

    def new 
        @tag = Tag.new
    end

    def create 
    end

    def show 
        @tag = Tag.find(params[:id])
    end

    def most_popular
        Tag.most_popular
    end

    private 

    def tag_params
        params.require(:tag).permit!
    end
end
