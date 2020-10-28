
FactoryBot.define do
  factory :user do
    sequence(:family_name){ |n| "User#{n}"}
    sequence(:first_name){ |n| "User#{n}"}
    sequence(:email){ |n| "tester#{n}@example.com"}
    password {"password"}  
  end
end