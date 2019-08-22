class UserProject < ApplicationRecord
    belongs_to :project
    belongs_to :user

    validates :user_id, :project_id, presence: true
end
