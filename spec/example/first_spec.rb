require "rails_helper"

# Here we just multiply two number and we expect a result, and if the result
# is different that expected, then we will catch an error. This test that the 
# result is 42. 
RSpec.describe "The math below is right..." do
  it "should equal 42" do
    expect(6 * 7).to eq(42)
  end
end