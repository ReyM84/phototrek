class HikesController < ApplicationController
    before_action :set_hike, only: [:show, :edit, :update, :destroy]
    before_action :authorize, except: [:index, :show]
    
    def index
        @hikes = Hike.order('created_at')
    end

    def new
        @hike = Hike.new
    end
    
    def create 

        # just create the hike
        # then redirect to the new hike redirect_to hike_path(@hike)
        
        @hikes = Hike.new(hike_params)
        if @hikes.save
            flash[:success] = "Your hike has been added!"
            redirect_to root_path
        else
            render 'new'
        end
    end


private

    def hike_params
        params.require(:hike).permit(:location, :length, :difficulty, :comments)
    end
        
end
