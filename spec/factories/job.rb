FactoryBot.define do
  factory :job do
    name { Faker::Lorem.characters(number:10)}
    amount {Faker::Number.number(digits:15)}
  end
end