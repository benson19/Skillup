class UserSkillsController < ApplicationController
    before_action :current_us, only: [:show]

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
        redirect_to @user_skill.user
    end

  private

    def us_params
        params.require(:user_skill).permit(:user_id, :skill_id, :level)
    end

    def current_us
        @user_skill = UserSkill.find(params[:id])
    end

end
