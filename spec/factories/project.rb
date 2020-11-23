
FactoryBot.define do
  factory :project do
    user
    name { Faker::Lorem.characters(number:20)}
    content { Faker::Lorem.characters(number:250)}
    start_date { '2020/1/1'}
    finish_date { '2020/1/2'}
    status{Random.rand(1 .. 3)}
    reducation_amount{Faker::Number.number(digits:6)}
    reducation_time{Faker::Number.number(digits:4)}
    number_of_month{Random.rand(1 .. 12)}
    job

  end
end