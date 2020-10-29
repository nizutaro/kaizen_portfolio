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
  {id: 12, name: "エンジニア", amount: 10000 },
  {id: 13, name: "生産管理", amount: 10000},
  {id: 14, name: "経理", amount: 10000}
]

  jobs.each do |job|
    Job.create(job)
  end


  projects = [
    {user_id:rand(1..100),
      name: "経費申請書式の電子化",
    content:"経費申請書式を電子化しました1回10分短縮になり、月3回×社員20人の利用があるため、
      月60時間短縮されます",
      start_date:"2020-1-1",
      finish_date:"2020-1-1" ,
      total_amount:0,
      status:rand(1..3),
      reducation_time:200,
      reducation_amount:600,
      number_of_month:3,
      job_id:rand(1..14)
    },
    {user_id:rand(1..100),
      name: "実験手順の見直し",
    content:"旧商品の作業手順書を見直し、不要な手順を削減しました。これにより、月5回×20分短縮できます。",
      start_date:"2020-3-1",
      finish_date:"2020-5-1" ,
      total_amount:0,
      status:3,
      reducation_time:20,
      reducation_amount:16666,
      number_of_month:5,
      job_id:rand(1..14)
    },
    {user_id:rand(1..100),
      name: "業務用プログラムの作成",
    content:"SEに依頼し、業務用のプログラムを作成してもらいました。今まで、毎月30時間かけていたexcelファイルを１クリックで済むようになりました。",
      start_date:"2020-6-1",
      finish_date:"2020-7-1" ,
      total_amount:0,
      status:3,
      reducation_time:600,
      reducation_amount:600,
      number_of_month:1,
      job_id:rand(1..14)
    },
    {user_id:rand(1..100),
      name: "書式の判子欄をなくしました。",
    content:"書式の判子欄をなくし、サインで可能にしました。これにより、月10回押していた押印や承認、回覧がなくなり、月１時間程度の削減ができる見込みです。",
      start_date:"2020-1-1",
      finish_date:"2020-1-1" ,
      total_amount:0,
      status:rand(1..3),
      reducation_time:12,
      reducation_amount:600,
      number_of_month:5,
      job_id:rand(1..14)
    },
    {user_id:rand(1..100),
      name: "書式の判子欄をなくしました。",
    content:"書式の判子欄をなくし、サインで可能にしました。これにより、月10回押していた押印や承認、回覧がなくなり、月１時間程度の削減ができる見込みです。",
      start_date:"2020-1-1",
      finish_date:"2020-1-1" ,
      total_amount:0,
      status:rand(1..3),
      reducation_time:12,
      reducation_amount:600,
      number_of_month:5,
      job_id:rand(1..14)
    },
    {user_id:rand(1..100),
      name: "申請書式の電子化",
    content:"申請書式を電子化しました1回10分短縮になり、月3回×社員20人の利用があるため、
      月60時間短縮されます",
      start_date:"2020-1-1",
      finish_date:"2020-1-1" ,
      total_amount:0,
      status:rand(1..3),
      reducation_time:200,
      reducation_amount:600,
      number_of_month:3,
      job_id:rand(1..14)
    },
    {user_id:rand(1..100),
      name: "実験手順の見直し",
    content:"旧商品の作業手順書を見直し、不要な手順を削減しました。これにより、月5回×20分短縮できます。",
      start_date:"2020-3-1",
      finish_date:"2020-5-1" ,
      total_amount:0,
      status:rand(1..3),
      reducation_time:20,
      reducation_amount:16666,
      number_of_month:5,
      job_id:rand(1..14)
    },
    {user_id:rand(1..100),
      name: "業務用プログラムの作成",
    content:"SEに依頼し、業務用のプログラムを作成してもらいました。今まで、毎月30時間かけていたexcelファイルを１クリックで済むようになりました。",
      start_date:"2020-6-1",
      finish_date:"2020-7-1" ,
      total_amount:0,
      status:3,
      reducation_time:600,
      reducation_amount:600,
      number_of_month:1,
      job_id:rand(1..14)
    },
    {user_id:rand(1..100),
      name: "書式の判子欄をなくしました。",
    content:"書式の判子欄をなくし、サインで可能にしました。これにより、月10回押していた押印や承認、回覧がなくなり、月１時間程度の削減ができる見込みです。",
      start_date:"2020-1-1",
      finish_date:"2020-1-1" ,
      total_amount:0,
      status:3,
      reducation_time:12,
      reducation_amount:600,
      number_of_month:5,
      job_id:rand(1..14)
    },
    {user_id:rand(1..100) ,
      name: "申請書式の電子化",
    content:"申請書式を電子化しました1回10分短縮になり、月3回×社員20人の利用があるため、
      月60時間短縮されます",
      start_date:"2020-1-1",
      finish_date:"2020-1-1" ,
      total_amount:0,
      status:3,
      reducation_time:200,
      reducation_amount:600,
      number_of_month:3,
      job_id:rand(1..14)
        },
    {user_id:rand(1..100),
      name: "実験手順の見直し",
    content:"旧商品の作業手順書を見直し、不要な手順を削減しました。これにより、月5回×20分短縮できます。",
      start_date:"2020-3-1",
      finish_date:"2020-5-1" ,
      total_amount:0,
      status:3,
      reducation_time:20,
      reducation_amount:16666,
      number_of_month:5,
      job_id:rand(1..14)
    },
    {user_id:rand(1..100),
      name: "業務用プログラムの作成",
    content:"SEに依頼し、業務用のプログラムを作成してもらいました。今まで、毎月30時間かけていたexcelファイルを１クリックで済むようになりました。",
      start_date:"2020-6-1",
      finish_date:"2020-7-1" ,
      total_amount:0,
      status:3,
      reducation_time:600,
      reducation_amount:600,
      number_of_month:1,
      job_id:rand(1..14)
    }
  ]
  
  projects.each do |project|
    Project.create(project)
  end

# content = ["いいですね","素晴らしい","頑張ってください","協力します","応援してます","手伝わせてください","頑張りましたね","いいアイデアですね","面白い!!","ナイス！","この調子で！"]


500.times do 
  Comment.create(
    project_id: rand(1..12), 
    user_id: rand(1..100),
    content: "ナイス！"
  )
end
#   Job.create!(
#   )
#   jobs = Job.create([{name: "営業"}, {name: "技術"},{name:"事務"}])
# # ループでまとめて作成
# 3.times do |i|
#   Job.create(user_id: User.find(i+1).id, title: "Star Wars #{i+1}")
# end