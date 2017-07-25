class HikesController < ApplicationController
    before_action :set_hike, only: [:show, :edit, :update, :destroy]
    before_action :authorize, except: [:index, :show]
    def index
    end
    



end
