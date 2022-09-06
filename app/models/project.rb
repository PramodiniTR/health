class Project < ApplicationRecord
    belongs_to :client
    belongs_to :master_types
    has_many :user_projects
    has_many :users, through: :user_projects
    has_many :project_status 
    has_many :user_utilizations

    
    enum project_closure_status: { closed: 0, open: 1
    }
end
