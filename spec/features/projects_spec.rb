require 'rails_helper'

RSpec.feature "Projects", type: :feature do
  # We check that we are creating a project
  # it checks for a title
  context "Create new project" do
    before(:each) do
      visit new_project_path
      within("form") do
        fill_in "Title", with: "Test title"
      end
    end

    # Makes suere that the new project has a description and it creates it
    scenario "should be successful" do
      fill_in "Description", with: "Test description"
      click_button "Create Project"
      expect(page).to have_content("Project was successfully created")
    end

    # Searches that our description is not left in blank
    # if it does it shows that it fail
    scenario "should fail" do
      click_button "Create Project"
      expect(page).to have_content("Description can't be blank")
    end
  end

  #Updates a project declaring a title and a description and it runs the edith path before each test
  context "Update project" do
    let(:project) { Project.create(title: "Test title", description: "Test content") }
    before(:each) do
      visit edit_project_path(project)
    end

    #Makes sure that the edit dezcription is added and tells user that has been updated
    scenario "should be successful" do
      within("form") do
        fill_in "Description", with: "New description content"
      end
      click_button "Update Project"
      expect(page).to have_content("Project was successfully updated")
    end

    # If when changing the description, it is left empty
    # it will tell us that we cant leave it blank
    scenario "should fail" do
      within("form") do
        fill_in "Description", with: ""
      end
      click_button "Update Project"
      expect(page).to have_content("Description can't be blank")
    end
  end

  # Here we remove project and the test makes sure that the project is been removed (destroy)
  context "Remove existing project" do
    let!(:project) { Project.create(title: "Test title", description: "Test content") }
    scenario "remove project" do
      visit projects_path
      click_link "Destroy"
      expect(page).to have_content("Project was successfully destroyed")
      expect(Project.count).to eq(0)
    end
  end
end

# RSpec.feature "Projects", type: :feature do
#   pending "add some scenarios (or delete) #{__FILE__}"
# end
