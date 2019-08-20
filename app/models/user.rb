class User < ApplicationRecord
    has_many :user_projects
    has_many :user_skills
    has_many :skills, through: :user_skills
    has_many :projects, through: :user_projects

    validates :first_name, :last_name, :email, :money, presence: true
    validates :email, uniqueness: true
    validates :money, numericality: true

    def full_name
        "#{@user.first_name}  #{@user.last_name}"
    end
end
