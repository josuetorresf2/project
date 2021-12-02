require "rails_helper"

RSpec.describe ProjectsController, type: :controller do
  # Gets index and makes sure that we get a response back other wise 
  # returns an error
  context "GET #index" do
    it "returns a success response" do
      get :index
      # expect(response.success).to eq(true)
      expect(response).to be_success
    end
  end

  # Declare Title and Description so we can resuse them with a let statement
  # Then we get show and parameters from the project and we make sure they run correctly
  # otherwise gives an error back
  context "GET #show" do
    let!(:project) { Project.create(title: "Test title", description: "Test description") }
    it "returns a success response" do
      get :show, params: { id: project }
      expect(response).to be_success
    end
  end
end