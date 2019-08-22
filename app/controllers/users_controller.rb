class UsersController < ApplicationController
    before_action :current_user, only: [:show, :edit, :update, :destroy]

    def index
        @users = User.all
    end
    
    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def create 
        @user = User.create(user_params)
        if user.valid?
            redirect_to @user
        else
            flash[:errors] = @user.errors.full_messages
            redirect_to new_user_path
        end
    end

    def edit

    end

    def update
        @user.update(user_params)
        if user.valid?
            redirect_to user_path(@user)
        else
            flash[:errors] = @user.errors.full_messages
            redirect_to edit_user_path(@user)
        end
    end

    def destroy
        @user.destroy
        redirect_to new_users_path 
    end


    private

    def current_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :money)
    end
end
