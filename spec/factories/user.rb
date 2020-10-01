
FactoryBot.define do
  factory :user do
    sequence(:family_name){ |n| "User#{n}"}
    sequence(:farst_name){ |n| "User#{n}"}
    sequence(:email){ |n| "tester#{n}@example.com"}
    password {"password"}
  end
end