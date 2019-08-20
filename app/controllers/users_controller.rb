class UsersController < ApplicationController
    before_action :current_user, only: [:index, :show, :edit, :update, :destroy]

    def index
        
    end
    
    def show
    end

    def new
        @user = User.new
    end

    def create 
        @user = User.create(user_params)
        redirect_to @user
    end

    def edit

    end

    def update
        @user.update(user_params)
        redirect_to @user
    end

    def destroy
        @user.destroy
        # redirect_to '/' 
    end


    private

    def current_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:name, :money)
    end
end
