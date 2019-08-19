class ProjectsController < ApplicationController
    before_action :find_project, only: [:show]

    def index
        @projects = Project.all
    end

    def show

    end

    def new

    end

    def edit

    end

    def create

    end

    def update

    end

    def destroy

    end

    private

    def find_project
        @project = Project.find(params[:id])
    end

    def project_params
        params.require(:project).permit(:title, :pay, :skill_id)
    end

end
