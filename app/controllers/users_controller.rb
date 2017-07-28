class UsersController < ApplicationController

    
    def new
        @user = User.new
    end

    def show
        @user = User.find(params[:id])
    end
    
    
    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            flash[:notice] = "You have successfully signed up!"
            redirect_to root_path, notice: 'Logged in!'
        else
            flash.now.alert = 'Invalid login credentials - try again!'
            render :new
        end
    end

    def edit  
        @user = User.find(params[:id])
    end  

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        redirect_to(hikes_path)
    end
    
    def destroy 
        session[user_id] = nil
        redirect_to root_path, notice: 'Logged out!'
    end
    
private

    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation, :zipcode)
    end

end
