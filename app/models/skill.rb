class Skill < ApplicationRecord
    has_many :user_skills
    has_many :projects
end
