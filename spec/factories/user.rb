
FactoryBot.define do
  factory :user do
    family_name { Faker::Name.last_name }   
    first_name { Faker::Name.first_name }
    sequence(:email) {|n| "testuser#{n}@sample.com"}
    password { 'password'}
    password_confirmation { 'password' }
    delete_status { 0 }
  end
end