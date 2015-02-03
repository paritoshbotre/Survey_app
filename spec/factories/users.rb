FactoryGirl.define do
  factory :user do
    name "paritosh"
    sequence(:email) { |n| "#{name}@gmail.com" }
    age 21
    gender "M"
    password "foobar"
    password_confirmation "foobar"
    #association :role

    after(:build) do |u|
      u.role = Role.find_by_name("admin") || FactoryGirl.create(:role)
    end
  end

  #factory :role do
  #  name "admin"
  #  user
  #end
end
