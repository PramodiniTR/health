class MasterType < ApplicationRecord
    belongs_to :user_skills
    has_many :project
end
