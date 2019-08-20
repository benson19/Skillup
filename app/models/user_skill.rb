class UserSkill < ApplicationRecord
    belongs_to :user
    belongs_to :skill

    validates :user_id, :skill_id, :skill_level, presence: true
    validates :skill_level, {greater_than: 0, less_than: 11} 
end
