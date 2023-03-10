# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"
require 'faker'

puts "destroying cities"
City.destroy_all
puts "Destroying categories"
Category.destroy_all
puts "Slaughtering users"
User.destroy_all
puts "Destroying groups"
Group.destroy_all

puts "building cities"
casablanca = City.create!(
  name: "Casablanca"
)

marrakech = City.create!(
  name: "Marrakech"
)

essaouira = City.create!(
  name: "Essaouira"
)

fez = City.create!(
  name: "Fez"
)

rabat = City.create!(
  name: "Rabat"
)

tangier = City.create!(
  name: "Tangier"
)

agadir = City.create!(
  name: "Agadir"
)

salé = City.create!(
  name: "Salé"
)

meknes = City.create!(
  name: "Meknes"
)

tetouan = City.create!(
  name: "Tetouan"
)

safi = City.create!(
  name: "Safi"
)

puts "coming up with hobbies"

photography = Category.create!(
  name: "Photography"
)

board_games = Category.create!(
  name: "Board Games"
)

hiking = Category.create!(
  name: "Hiking"
)

creative_writing = Category.create!(
  name: "Creative Writing"
)

art_painting = Category.create!(
  name: "Art and Painting"
)

cooking = Category.create!(
  name: "Cooking"
)

language_exchange = Category.create!(
  name: "Language Exchange"
)

music = Category.create!(
  name: "Music"
)

yoga_meditation = Category.create!(
  name: "Yoga and Meditation"
)

gaming = Category.create!(
  name: "Gaming"
)

coding = Category.create!(
  name: "Coding"
)

PASSWORD = "123456"

puts "creating living human beings and totally not random names put on a random picture"

# User 1
pfp1 = URI.open("https://res.cloudinary.com/dlgrirjkk/image/upload/v1678460821/pfp1_pingb6.jpg")
user1 = User.new(
  nickname: "Alicia",
  first_name: "Alice",
  last_name: "Smith",
  email: "Alice.Smith@gmail.com",
  bio: "I am Alice, you can call me Alicia.",
  gender: "Female",
  birthdate: Faker::Date.birthday(min_age: 18, max_age: 65),
  password: PASSWORD
)
user1.avatar.attach(io: pfp1, filename: "pfp1.jpg", content_type: "image/jpg")
user1.save

# User 2
pfp2 = URI.open("https://res.cloudinary.com/dlgrirjkk/image/upload/v1678460820/pfp2_mrxxfu.jpg")
user2 = User.new(
  nickname: "Charli",
  first_name: "Charlie",
  last_name: "Johnson",
  email: "Charlie.Johnson@gmail.com",
  bio: "Hi, I'm Charlie, also known as Charli.",
  gender: "Male",
  birthdate: Faker::Date.birthday(min_age: 18, max_age: 65),
  password: PASSWORD
)
user2.avatar.attach(io: pfp2, filename: "pfp2.jpg", content_type: "image/jpg")
user2.save

# User 3
pfp3 = URI.open("https://res.cloudinary.com/dlgrirjkk/image/upload/v1678460821/pfp3_knxuwn.jpg")
user3 = User.new(
  nickname: "Davey",
  first_name: "David",
  last_name: "Brown",
  email: "David.Brown@gmail.com",
  bio: "I'm David, but you can call me Davey.",
  gender: "Male",
  birthdate: Faker::Date.birthday(min_age: 18, max_age: 65),
  password: PASSWORD
)
user3.avatar.attach(io: pfp3, filename: "pfp3.jpg", content_type: "image/jpg")
user3.save

# User 4
pfp4 = URI.open("https://res.cloudinary.com/dlgrirjkk/image/upload/v1678460821/pfp4_iaze5n.jpg")
user4 = User.new(
  nickname: "Emmy",
  first_name: "Emma",
  last_name: "Davis",
  email: "Emma.Davis@gmail.com",
  bio: "Hi, I'm Emma, but my friends call me Emmy.",
  gender: "Female",
  birthdate: Faker::Date.birthday(min_age: 18, max_age: 65),
  password: PASSWORD
)
user4.avatar.attach(io: pfp4, filename: "pfp4.jpg", content_type: "image/png")
user4.save

# User 5
pfp5 = URI.open("https://res.cloudinary.com/dlgrirjkk/image/upload/v1678460820/pfp5_jv0mil.jpg")
user5 = User.new(
  nickname: "Frankie",
  first_name: "Frank",
  last_name: "Wilson",
  email: "Frank.Wilson@gmail.com",
  bio: "Hey, I'm Frank, but you can call me Frankie.",
  gender: "Male",
  birthdate: Faker::Date.birthday(min_age: 18, max_age: 65),
  password: PASSWORD
)
user5.avatar.attach(io: pfp5, filename: "pfp5.jpg", content_type: "image/jpg")
user5.save

# User 6
pfp6 = URI.open("https://res.cloudinary.com/dlgrirjkk/image/upload/v1678460821/pfp6_tvagdg.jpg")
user6 = User.new(
  nickname: "Gracie",
  first_name: "Grace",
  last_name: "Garcia",
  email: "Grace.Garcia@gmail.com",
  bio: "Hi, I'm Grace, also known as Gracie.",
  gender: "Female",
  birthdate: Faker::Date.birthday(min_age: 18, max_age: 65),
  password: PASSWORD
)
user6.avatar.attach(io: pfp6, filename: "pfp6.jpg", content_type: "image/jpg")
user6.save

# User 7
pfp7 = URI.open("https://res.cloudinary.com/dlgrirjkk/image/upload/v1678460820/pfp7_q3sjlz.jpg")
user7 = User.new(
  nickname: "Hank",
  first_name: "Henry",
  last_name: "Miller",
  email: "Henry.Miller@gmail.com",
  bio: "Hey, I'm Henry, but you can call me Hank.",
  gender: "Male",
  birthdate: Faker::Date.birthday(min_age: 18, max_age: 65),
  password: PASSWORD
)
user7.avatar.attach(io: pfp7, filename: "pfp7.jpg", content_type: "image/jpg")
user7.save

# User 8
pfp8 = URI.open("https://res.cloudinary.com/dlgrirjkk/image/upload/v1678460821/pfp8_pjsbx0.jpg")
user8 = User.new(
  nickname: "Izzy",
  first_name: "Isabel",
  last_name: "Davis",
  email: "Isabel.Davis@gmail.com",
  bio: "Hello, I'm Isabel, but my friends call me Izzy.",
  gender: "Female",
  birthdate: Faker::Date.birthday(min_age: 18, max_age: 65),
  password: PASSWORD
)
user8.avatar.attach(io: pfp8, filename: "pfp8.jpg", content_type: "image/jpg")
user8.save

# User 9
pfp9 = URI.open("https://res.cloudinary.com/dlgrirjkk/image/upload/v1678460821/pfp9_p6blfa.jpg")
user9 = User.new(
  nickname: "Jackie",
  first_name: "Jack",
  last_name: "Jones",
  email: "Jack.Jones@gmail.com",
  bio: "Hi, I'm Jack, but you can call me Jackie.",
  gender: "Male",
  birthdate: Faker::Date.birthday(min_age: 18, max_age: 65),
  password: PASSWORD
)
user9.avatar.attach(io: pfp9, filename: "pfp9.jpg", content_type: "image/jpg")
user9.save

puts "creating groups"

coding_file = URI.open("https://i.pinimg.com/564x/c6/5d/41/c65d41095846c3ced34638f8d2009518.jpg")
group1 = Group.new(
  title: "Dev Meetup",
  description: "Join our group if you're interested in coding! We're a group of passionate developers who meet up to work on projects, share tips and tricks, and discuss the latest trends in software development.",
  user: user1,
  city: casablanca,
  category: coding
)
group1.photo.attach(io: coding_file, filename: "coding1.jpg", content_type: "image/jpg")
group1.save

boarding_file = URI.open("https://res.cloudinary.com/dlgrirjkk/image/upload/v1678461415/boarding1_ubzfww.jpg")
group2 = Group.new(
  title: "Boarding club",
  description: "If you're a fan of board games, this is the group for you! We meet up regularly to play games like Settlers of Catan, Ticket to Ride, and more. All skill levels are welcome!",
  user: user2,
  city: marrakech,
  category: board_games
)
group2.photo.attach(io: boarding_file, filename: "board_games1.jpg", content_type: "image/jpg")
group2.save

photography_file = URI.open("https://res.cloudinary.com/dlgrirjkk/image/upload/v1678461415/photography1_qbqvgx.jpg")
group3 = Group.new(
  title: "Capture this world's beauty~!",
  description: "Are you interested in photography? Come join our group and meet other like-minded individuals who share your passion! We go on photo walks, hold workshops, and share our work with each other.",
  user: user3,
  city: rabat,
  category: photography
)
group3.photo.attach(io: photography_file, filename: "photography1.jpg", content_type: "image/jpg")
group3.save

hiking_file = URI.open("https://res.cloudinary.com/dlgrirjkk/image/upload/v1678461415/hiking1_vbfhav.jpg")
group4 = Group.new(
  title: "Trailblazers",
  description: "Looking to explore the great outdoors? Join our hiking group and discover the beauty of Morocco's natural landscapes! We organize hikes of various difficulty levels, from easy walks to challenging treks.",
  user: user4,
  city: tangier,
  category: hiking
)
group4.photo.attach(io: hiking_file, filename: "hiking1.jpg", content_type: "image/jpg")
group4.save

cooking_file = URI.open("https://res.cloudinary.com/dlgrirjkk/image/upload/v1678461415/cooking1_hv9xfm.jpg")
group5 = Group.new(
  title: "The Tangier Tasters",
  description: "Calling all foodies! Join us to explore the best of Tangier's culinary scene.",
  user: user5,
  city: tangier,
  category: cooking
)
group5.photo.attach(io: cooking_file, filename: "cooking1.jpg", content_type: "image/jpg")
group5.save

# thisisatest = UserGroup.create!(
#   user: sometwo,
#   group_id: 1
# )

# thisisanothertest = UserGroup.create!(
#   user: someone,
#   group_id: 1
# )

puts "seeds planted, users revived, and they all lived happily ever after"
