class PhotographsController < ApplicationController
    
    def index
        @photographs = Photograph.all    
    end

    def new
        @photograph = Photograph.new
    end

    def create
        @photograph = Photograph.new(photograph_params)
        @photograph.hike_id = params[:hike_id]
        @photograph.user = current_user
        if @photograph.save
            redirect_to hikes_path
        end
    end
    
    def show
        @hike = Hike.find(params[:hike_id])
        @photograph = Photograph.new
    end

    def destroy
    end

private
    def photograph_params
        params.require(:photograph).permit(:image)
    end
    
    
end
