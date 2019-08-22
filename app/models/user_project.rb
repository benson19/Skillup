class UserProject < ApplicationRecord
    belongs_to :project
    belongs_to :user

    validates :user_id, :project_id, presence: true
    # validates :skill_match

# def skill_match
#     if !@user.skills.include? (@project.skill)
#         self.errors.add(  )
#     end
# end



end
