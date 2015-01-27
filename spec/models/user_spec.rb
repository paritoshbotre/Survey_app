require 'rails_helper'

RSpec.describe User, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"

  it "must has a role" do
    User.reflect_on_association(:role)
  end
  it "must have email and password"
  it "must be valid user"
  it "must participate in the survey"
  it "must filled the necessary details"
  it "must answer the all questions"
  it "must select the only one option"
  it "must not select both the options"
  it "must has many responses" do
    User.reflect_on_association(:responses)
  end
end
