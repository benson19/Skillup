class UserSkillsController < ApplicationController
    before_action :current_us, only: [:show, :edit, :update]

    def index 
        @user_skills = UserSkill.all
    end

    def show

    end

    def new
        @user_skill = UserSkill.new
    end

    def create 
        @user_skill = UserSkill.create(us_params)
        redirect_to user_skill_path(@user_skill)
    end

    def edit

    end

    def update
        @user_skill = UserSkill.update(dog_params)
        redirect_to user_skill_path(@user_skill)
    end

    private

    def us_params
        params.require(:user_skill).permit(:user_id, :skill_id, :level)
    end

    def current_us
        @user_skill = UserSkill.find(params[:id])
    end

end
