class Client < ApplicationRecord
    has_many :project

    searchable do
        text :client_name, :description
    end
end
