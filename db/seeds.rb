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


  100.times do 
    User.create(
      first_name: Faker::Name.first_name, 
      family_name: Faker::Name.last_name,
      email: Faker::Internet.email,
      password: "password"
    )
  end



jobs = [
  {id: 1, name: "営業", amount: 10000 },
  {id: 2,  name: "技術", amount: 10000},
  {id: 3, name: "事務", amount: 5000 },
  {id: 4, name: "サービス", amount: 5000},
  {id: 5, name: "警備", amount: 5000},
  {id: 6, name: "清掃", amount: 5000 },
  {id: 7, name: "販売", amount: 5000 },
  {id: 8, name: "配達", amount: 5000 },
  {id: 9, name: "製造", amount: 5000 },
  {id: 10, name: "工場", amount: 5000 },
  {id: 11, name: "倉庫", amount: 5000 },
  {id: 12, name: "エンジニア", amount: 5000 },
  {id: 13, name: "生産管理", amount: 5000}
  
]

  jobs.each do |job|
    Job.create(job)
  end






