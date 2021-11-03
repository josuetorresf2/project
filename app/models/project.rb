# The class project validates that title and description are not blank
# and also makes sure they are not marked for destruction
class Project < ApplicationRecord
    validates_presence_of :title, :description
end
