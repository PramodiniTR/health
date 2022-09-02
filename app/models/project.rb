class Project < ApplicationRecord
    belongs_to :client
    enum project_closure_status: {
        closed: 0,
        open: 1
    }
end
