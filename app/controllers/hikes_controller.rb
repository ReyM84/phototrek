class HikesController < ApplicationController
    #  before_action :set_hike, only: [:show, :edit, :update]
     before_action :authorize, except: [:index, :show]

    
    def index
        @hikes = Hike.order('location')
    end

    def show
        @hike = Hike.find(params[:id])
        @photograph = Photograph.new
    end
    

    def new
        @hike = Hike.new
    end

    def edit
    end

    def create 

        # just create the hike
        # then redirect to the new hike redirect_to hike_path(@hike)
        
        @hike = Hike.new(hike_params)   
            if @hike.save
                flash[:success] = "Your hike has been added!"
                redirect_to hike_path(@hike)
            else
                render 'new'
            end
  
    end


private

    def hike_params
        params.require(:hike).permit(:location, :length, :difficulty, :comments, :image)
    end
        
        
end
