class Project < ApplicationRecord
    has_many :skills
    has_many :user_projects

    validates :title, :pay, :skill_id, presence: true

end
