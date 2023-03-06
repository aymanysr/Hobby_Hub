# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
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
10.times do
  Group.create!(
    title: Faker::Hobby.activity,
    description: Faker::Lorem.sentence(word_count: 15),
    user: [someone, sometwo].sample,
    city: [casablanca, essaouira, marrakech].sample,
    category: [music, skate, coding].sample
  )
end

thisisatest = UserGroup.create!(
  user: sometwo,
  group_id: 1
)

thisisanothertest = UserGroup.create!(
  user: someone,
  group_id: 1
)

puts "seeds planted, users revived, and they all lived happily ever after"
