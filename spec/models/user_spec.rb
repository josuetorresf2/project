require 'rails_helper'

RSpec.describe User, type: :model do
  subject {
      User.new(email: "test@aol.com",
               password: "123456")
  }
  
  it "is valid with email and password" do
    expect(subject).to be_valid  
  end

  it "is not valid without email address" do
    subject.email = nil
    expect(subject).to_not be_valid  
  end  
  
  it "is no valid without password" do
    subject.password = nil
    expect(subject).to_not be_valid  
  end 
end
