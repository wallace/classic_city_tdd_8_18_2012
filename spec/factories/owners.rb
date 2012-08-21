# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do 
  sequence :email do |n|
    "owner#{n}@example.com"
  end
end

FactoryGirl.define do
  factory :owner do
    first_name "MyString"
    last_name  "MyString"
    email      { FactoryGirl.generate(:email) }
  end
end
