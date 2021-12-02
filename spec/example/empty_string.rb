require "rails_helper"

RSpec.describe "hello spec" do
  # String tests that reuses the string method
  # to test that our string is returnung an empty strings
  # other wise will return an error
  describe String do
    let(:string) { String.new }
    it "should provide an empty string" do
      expect(string).to eq("")
    end
  end
 end