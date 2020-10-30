# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "csv"

Admin.create!(
  email: "admin@admin",
  password: "123456"
  )


  100.times do 
    User.create(
      first_name: Faker::Name.first_name, 
      family_name: Faker::Name.last_name,
      email: Faker::Internet.email,
      password: "password"
    )
  end


CSV.foreach('db/job.csv', encoding: 'Shift_JIS:UTF-8', headers: true) do |row|
  Job.create(
    name: row['name'],
    amount: row['amount'],
  )
end

CSV.foreach('db/project.csv', encoding: 'Shift_JIS:UTF-8', headers: true) do |row|
  Project.create(
    user_id: row['user_id'],
    name: row['name'],
    content: row['content'],
    start_date: row['start_date'],
    finish_date: row['finish_date'],
    status: row['status'].to_i,
    reducation_time: row['reducation_time'],
    total_amount: row['total_amount'],
    reducation_amount: row['reducation_amount'],
    number_of_month: row['number_of_month'],
    job_id: row['job_id']
  )
end

CSV.foreach('db/comment.csv', encoding: 'Shift_JIS:UTF-8', headers: true) do |row|
  Comment.create(
    user_id: row['user_id'],
    project_id: row['project_id'],
    content: row['content'],
  )
end