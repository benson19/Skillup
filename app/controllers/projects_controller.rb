class ProjectsController < ApplicationController
    before_action :find_project, only: [:show]

    def index
        @projects = Project.all
    end

    def show

    end

    def new
        @project = Project.new
    end

    def edit

    end

    def create
        @project = Project.create(project_params)
        redirect_to @project
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
