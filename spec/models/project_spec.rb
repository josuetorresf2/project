require "rails_helper"

#Test for the model group
RSpec.describe Project, type: :model do
    # Title sets up a description and it verifies the result if description is not empty
    # otherwise it gives us a feadback that the description is empty
    context "validations tests" do
        it "ensures the title is present" do
            project = Project.new(description: "Content of the description")
            expect(project.valid?).to eq(false)
        end
    # Save sets up a title and a description and it verifies the result if description is not empty
    # otherwise it gives us a feadback that the description is saved
        it "should be able to save project" do
            project = Project.new(title: "Title", description: "Some description content goes here")
            expect(project.save).to eq(true)
        end
    end

    #We declare title and description so we can resuse them with a let statement
    # then we run a before a whole group of Project tests and then it returns all the project tests
    context "scopes tests" do
        let(:params) { { title: "Title", description: "some description" } }
        before(:each) do
            Project.create(params)
            Project.create(params)
            Project.create(params)
        end

        it "should return all projects" do
            expect(Project.count).to eq(3)
        end
    end
end