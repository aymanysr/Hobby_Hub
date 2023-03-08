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
casablanca = City.create!(
  name: "Casablanca"
)

marrakech = City.create!(
  name: "Marrakech"
)

essaouira = City.create!(
  name: "Essaouira"
)

music = Category.create!(
  name: "Music"
)

skate = Category.create!(
  name: "Skate"
)

coding = Category.create!(
  name: "Coding"
)

someone = User.create!(
  nickname: "someone",
  first_name: "some",
  last_name: "one",
  email: "someone@gmail.com",
  bio: "I am someone",
  gender: "Some gender",
  birthdate: Time.now,
  password: "111111"
)

sometwo = User.create!(
  nickname: "sometwo",
  first_name: "some",
  last_name: "two",
  email: "sometwo@gmail.com",
  bio: "I am sometwo",
  gender: "two genders",
  birthdate: Time.now,
  password: "222222"
)

puts "creating groups"

coding_file = URI.open("https://i.pinimg.com/564x/c6/5d/41/c65d41095846c3ced34638f8d2009518.jpg")
coding_seed = Group.new(
  title: "Coding enthusiasts!",
  description: Faker::Lorem.sentence(word_count: 15),
  user: [someone, sometwo].sample,
  city: [casablanca, essaouira, marrakech].sample,
  category: coding
)
coding_seed.photo.attach(io: coding_file, filename: "coding.jpg", content_type: "image/jpg")
coding_seed.save

music_file = URI.open("https://i.pinimg.com/564x/bd/c0/70/bdc070b00b55ff63e2adde80ebcbea95.jpg")
music_seed = Group.new(
  title: "Just music",
  description: Faker::Lorem.sentence(word_count: 15),
  user: [someone, sometwo].sample,
  city: [casablanca, essaouira, marrakech].sample,
  category: music
)
music_seed.photo.attach(io: music_file, filename: "music.jpg", content_type: "image/jpg")
music_seed.save

skating_file = URI.open("https://i.pinimg.com/564x/98/9e/3a/989e3a460385b99d4a4e6a33dab44c6b.jpg")
skating_seed = Group.new(
  title: "Skating newbies",
  description: Faker::Lorem.sentence(word_count: 15),
  user: [someone, sometwo].sample,
  city: [casablanca, essaouira, marrakech].sample,
  category: skate
)
skating_seed.photo.attach(io: skating_file, filename: "skating.jpg", content_type: "image/jpg")
skating_seed.save

thisisatest = UserGroup.create!(
  user: sometwo,
  group_id: 1
)

thisisanothertest = UserGroup.create!(
  user: someone,
  group_id: 1
)

puts "seeds planted, users revived, and they all lived happily ever after"
