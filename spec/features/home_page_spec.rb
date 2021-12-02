require 'rails_helper'

# RSpec.feature "HomePages", type: :feature do
#   pending "add some scenarios (or delete) #{__FILE__}"
# end

# Rspec here allows us to check if the user can 
# can see their projects, so it visits the root path
# and expects to see all the projects
# otherwise we get an error
RSpec.feature "Visiting the homepage", type: :feature do
  scenario "The visitor should see projects" do
    visit root_path
    expect(page).to have_text("Projects")
  end
end