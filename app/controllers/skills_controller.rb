class SkillsController < ApplicationController
    before_action :current_skill, only: [:show]

    def index 
        @skills = Skill.all
    end

    def show
    end

    def new
        @skill = Skill.new
    end

    def create 
        @skill = Skill.create(skill_params)
        redirect_to skill_path(@skill)
    end


    def update
        @skill = Skill.update(skill_params)
        redirect_to skill_path(@skill)
    end


    private

    def skill_params
        params.require(:skill).permit(:name)
    end

    def current_skill
        @skill = Skill.find(params[:id])
    end
    
end
