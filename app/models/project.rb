class Project < ApplicationRecord
    belongs_to :skill
    has_many :user_projects

    validates :title, :pay, :skill_id, presence: true

end
