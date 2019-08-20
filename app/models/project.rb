class Project < ApplicationRecord
    has_many :skills
    has_many :user_projects

    validates :title, :pay, :skill, presence: true

end
