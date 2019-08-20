class User < ApplicationRecord
    has_many :user_projects
    has_many :user_skills
    has_many :skills, through: :user_skills
    has_many :projects, through: :user_projects
end
