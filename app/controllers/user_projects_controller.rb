class UserProjectsController < ApplicationController

    def index 
        @user_projects = UserProject.all 
    end

    def show

    end

    def new
        @userproject = UserProject.new
    end

    def create 
        
    end

    def edit

    end

    def update

    end

    def destroy

    end

end
