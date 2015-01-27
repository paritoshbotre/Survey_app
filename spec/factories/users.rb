FactoryGirl.define do
  factory :user do
    name "paritosh botre"
    email "abc@gmail.com"
    age 21
    gender "M"
    #association :role

    after(:build) do |u|
      u.role = Role.find_by_name("admin") || FactoryGirl.create(:role)
    end
  end
end
