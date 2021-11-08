# The class project validates that title and description are not blank
# and also makes sure they are not marked for destruction
class Project < ApplicationRecord
    #require title and description
    validates_presence_of :title, :description
end
