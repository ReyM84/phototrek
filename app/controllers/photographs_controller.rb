class PhotographsController < ApplicationController
             before_action :authorize, except: [:index, :show]

    def index
        @photographs = Photograph.all    
    end

    def new
        @photograph = Photograph.new
    end

    def create
        @photograph = Photograph.new(photograph_params)
        puts "This is the hike #{params[:hike_id].inspect.to_s}"
        @photograph.hike_id = params[:hike_id]
        @photograph.user_id = current_user.id
        if @photograph.save
            redirect_to hike_path(params[:hike_id])
        else 
            render :new
        end
    end
    
    def show
        @photograph = Photograph.find(params[:id])
        @hike = Hike.find(@photograph.hike_id)
    end

    def destroy
        @photograph = Photograph.find(params[:id])
        @photograph.destroy
        redirect_to photographs_path
    end

private
    def photograph_params
        params.require(:photograph).permit(:image)
    end
    
    
end
