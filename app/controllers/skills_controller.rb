class SkillsController < ApplicationController
    def index
        @skills= Skill.all
    end

    def show

    end

    def new
        @skill = Skill.new
    end

    def edit

    end

    def create
        @skill = Skill.create(skill_params)
        redirect_to @skill
    end

    def update

    end

    def destroy

    end
end
