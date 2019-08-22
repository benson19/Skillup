class UserSkill < ApplicationRecord
    belongs_to :user
    belongs_to :skill

    validates :user_id, :skill_id, :level, presence: true
    validates :level, numericality: {greater_than: 0, less_than: 11} 
end
