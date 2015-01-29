require 'rails_helper'

RSpec.describe User do

=begin
  before(:each) do
    # @user = FactoryGirl.create(:user, :name => "Rails")
  end

  it "must be the user of the system"
  it "must has a role"
  #User.reflect_on_association(:role)
  #end
  it "must have email" do
    # p @user
  end
  it "create a new user with email and password"
  it "age must be Digit"
  it "age must have 2 Digit"
  it "gender must be Male or Female"
  it "must be successfully login in"
  it "Invalid user must raise errors"
  it "must be valid user"
  it "must participate in the survey"
  it "must answer the all questions"
  it "must select the only one option"
  it "must not select both the options"
  it "must has many responses"
    #User.reflect_on_association(:responses)
  #end
=end
  before(:each) do
    @user = FactoryGirl.create(:user)
  end

  it 'must have have' do
    p @user
    #p User.count
  end
end
