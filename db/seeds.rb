# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Admin.create!(
  email: "admin@admin",
  password: "123456"
  )

  # 100.times do |n|
  #   first_name = Faker::First_name.name
  #   last_name = Faker::Last_name.name
  #   email = Faker::Internet.email
  #   password = "password"
  #   User.create!(first_name: first_name,
  #                last_name: last_name,
  #                admin_status: admin_status,
  #                email: email,
  #                password: password,
  #                password_confirmation: password
  #                )
  # end