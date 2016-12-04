# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ruben = User.create(email: "ruben", username: "ruben", password: "ruben", bio: "I am a mookie Tookie")
yossi = User.create(email: "yossi", username: "yossi", password: "yossi", bio: "I am a curious goerge master of french and incabable of arithmaitic/spellin ")
zak = User.create(email: "zak", username: "zak", password: "zak", bio: "I am the pharamacist narcasist and I love it!! What are you?!?!?!")

Question.create([{user_id: 1, title: "What is the purpose of the sabbath?"},{user_id: 1, title: "Why do I need to keep kosher?"}, {user_id: 1, title: "What is the deal with tearing on Shabbos ?"}, {user_id: 1, title: "What is best way to get in the habbit of learning every day?"}, {user_id: 1, title: "What is the appropiate percentage to give to charity every year?"}, {user_id: 1, title: "Does anyone have a good Dvar torah for first night of pesach"}, {user_id: 1, title: "Who is the most underrated Yid?"}, {user_id: 2, title: "Why do we need a fence on the roof?"}, {user_id: 1, title: "Where do we place the fence if we are splitting up a field and the field is separated by a stream?"}, {user_id: 3, title: "Can someone explain the difference between a fall and shaital?"}, {user_id: 2, title: "Is the story with the Golam true?"}, {user_id: 3, title: "Is it okay to go out with more than one girl at a time?"}, {user_id: 2, title: "Why can't a woman konah a man?"}, {user_id: 2, title: "How good can a cheese burger really be?"}])