class UserProjectsController < ApplicationController

    def index 
        @user_project = UserProject.all 
    end


end
