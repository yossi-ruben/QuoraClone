# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

joe = User.create(email: "ruben", password: "ruben", bio: "I am a software engineer")
Question.create([{user_id: 1, title: "What is the purpose of the sabbath?"},{user_id: 1, title: "Why do I need to keep kosher?"}, {user_id: 1, title: "What is the deal with tearing on Shabbos ?"}, {user_id: 1, title: "What is best way to get in the habbit of learning every day?"}, {user_id: 1, title: "What is the appropiate percentage to give to charity every year?"}, {user_id: 1, title: "Does anyone have a good Dvar torah for first night of pesach"}, {user_id: 1, title: "Who is the most underrated Yid?"}])