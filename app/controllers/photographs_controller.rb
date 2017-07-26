class PhotographsController < ApplicationController
    
    def index
        @photographs = Photograph.all    
    end

    def new
        @photograph = Photograph.new
    end

    def create
    @photograph = Photograph.new(photograph_path)
        if @photograph.save
            redirect_to hikes_path
        else
            render :new
        end
    end
    
    def show
    end

    def destroy
    end
    
    
end
