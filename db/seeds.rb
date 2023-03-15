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
group1.save!

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

puts "making up posts"

# post 1
user = User.find(rand(1..User.count))
Post.create!(
  content: "Hey everyone,
  I hope you're all doing well. I just wanted to remind everyone that our next Dev Meetup is coming up soon!
  This time, we'll be focusing on the latest front-end development trends and techniques.
  We have a great lineup of speakers who will be sharing their insights and experiences.
  It's going to be a fantastic opportunity to learn and network with other developers in the community.
  So mark your calendars and don't miss out! See you all there.
  Best regards,
  #{user.nickname}",
  user_id: user.id,
  group_id: group1.id
)

# post 2
user = User.find(rand(1..User.count))
Post.create!(
  content: "Hey everyone,
  I just wanted to share a new coding challenge that I came across recently.
  It's a fun little project that involves building a simple game using React.
  I've been working on it for a few days now and it's been a great way to improve my skills.
  If anyone is interested, I'd be happy to share the details and maybe we can even work on it together.
  Let me know what you think!
  Best,
  #{user.nickname}",
  user_id: user.id,
  group_id: group1.id
)

# post 3
user = User.find(rand(1..User.count))
Post.create!(
  content: "Hi everyone,
  I'm excited to announce that I just landed my first job as a software developer!
  I wanted to share my experience with you all and thank this community for all the support and resources that helped me get here.
  It was a long and sometimes challenging journey, but it was all worth it in the end.
  I'm looking forward to this new chapter in my life and can't wait to see what the future holds.
  If anyone has any advice or words of wisdom to share, I'd love to hear it!
  Best regards,
  #{user.nickname}",
  user_id: user.id,
  group_id: group1.id
)

# post 4
user = User.find(rand(1..User.count))
Post.create!(
  content: "Hello everyone,
  I just wanted to share a new board game that I recently discovered called Azul.
  It's a tile-laying game that's easy to learn but still offers a good challenge.
  If anyone is interested, I'd love to bring it to our next meetup and teach it to those who haven't played it before.
  Let me know if you're interested!
  Best,
  #{user.nickname}",
  user_id: user.id,
  group_id: group2.id
)

# post 5
user = User.find(rand(1..User.count))
Post.create!(
  content: "Hey everyone,
  I wanted to give a shoutout to all the new members who have joined our group recently.
  Welcome to the Boarding club! We're excited to have you and can't wait to play some games together.
  If you're looking for recommendations on games to try, feel free to ask.
  And if anyone has any suggestions for events or meetups, let us know!
  Best regards,
  #{user.nickname}",
  user_id: user.id,
  group_id: group2.id
)

# post 6
user = User.find(rand(1..User.count))
Post.create!(
  content: "Hi everyone,
  I wanted to remind everyone about our upcoming Boarding club meetup this weekend.
  We'll be meeting at the usual spot at 2 pm and playing some of our favorite games.
  If you're planning on coming, please let us know so we can get an idea of how many people to expect.
  And if you have any games you'd like to bring or suggestions for what we should play, feel free to share them.
  Looking forward to seeing you all there!
  Best regards,
  #{user.nickname}",
  user_id: user.id,
  group_id: group2.id
)

# post 7
image_url = "https://res.cloudinary.com/dlgrirjkk/image/upload/v1678784782/photography_post_vdh06e.jpg"
image_file = URI.open(image_url)
user = User.find(rand(1..User.count))
post = Post.new(
  content: "Hi everyone,
  I just wanted to share a photo I took recently while out on a photo walk.
  It's a shot of the sunset over the ocean, and I'm really happy with how it turned out.
  I'd love to see some of your photos too, so feel free to share them in the comments.
  Looking forward to our next meetup!
  Best,
  #{user.nickname}",
  user_id: user.id,
  group_id: group3.id
)
post.photo.attach(io: image_file, filename: "sunset.jpg", content_type: "image/jpg")
post.save

# post 8
user = User.find(rand(1..User.count))
Post.create!(
  content: "Hello fellow photographers,
  I wanted to remind everyone about our upcoming workshop on portrait photography.
  We'll be meeting at the park this Saturday at 10 am and going over some tips and techniques for taking great portraits.
  If you're interested in attending, please let us know so we can get an idea of how many people to expect.
  And if you have any questions or suggestions for future workshops, feel free to share them.
  Best regards,
  #{user.nickname}",
  user_id: user.id,
  group_id: group3.id
)

# post 9
user = User.find(rand(1..User.count))
Post.create!(
  content: "Hey everyone,
  I wanted to share a photo challenge with you all.
  This week's theme is 'reflections', so I challenge you to take a photo that features reflections in some way.
  It can be anything from a puddle to a mirror to a shiny surface.
  Feel free to interpret the theme however you'd like.
  I can't wait to see what you all come up with!
  Best regards,
  #{user.nickname}",
  user_id: user.id,
  group_id: group3.id
)

# post 10
Post.create!(
  content: "Yesterday's hike with Trailblazers was amazing!
  We explored the beautiful Rif Mountains and saw stunning views of the surrounding valleys.
  The trail was challenging but our group was supportive and helped each other through the tougher parts.
  I can't wait for our next adventure!",
  user_id: rand(1..User.count),
  group_id: group4.id
)

# post 11
Post.create!(
  content: "Hey Trailblazers, I'm planning a hike for next weekend and I'd love some company!
  We'll be exploring the Akchour Waterfalls and it's going to be a moderate level trek.
  Let me know if you're interested in joining and we'll coordinate logistics!",
  user_id: rand(1..User.count),
  group_id: group4.id
)

# post 12
Post.create!(
  content: "I just wanted to share a quick thank you to the Trailblazers community!
  When I first joined the group, I was nervous about joining hikes because I'm not the most experienced hiker.
  But everyone has been so welcoming and supportive, and I've learned so much from our group outings.
  I feel more confident in my abilities now and I'm grateful for the friendships I've made.
  Here's to more adventures together!",
  user_id: rand(1..User.count),
  group_id: group4.id
)

# post 13
Post.create!(
  content: "Hey Tangier Tasters! I just tried the most amazing seafood paella at a local restaurant and I can't stop thinking about it.
            Who's up for trying it out together this weekend? Let's make it a group outing!",
  user_id: rand(1...User.count),
  group_id: group5.id
)

# post 14
Post.create!(
  content: "I've been experimenting with Moroccan cuisine lately and I just made the best tagine I've ever had!
            I used a mix of spices I bought from the souk and slow-cooked it for hours.
            If anyone's interested, I'm happy to share the recipe and maybe we can try cooking it together sometime.",
  user_id: rand(1..User.count),
  group_id: group5.id
)

puts "making up fak- I mean actual comments for the first post"
# Comment 1:
user = User.find(rand(1..User.count))
Comment.create!(
  content: "Thanks for sharing this update! Looking forward to attending the meetup and learning about the latest front-end development trends and techniques.",
  user_id: user.id,
  post_id: 1
)

# Comment 2:
user = User.find(rand(1..User.count))
Comment.create!(
  content: "This sounds like a great opportunity to connect with other developers in the community and learn from experts in the field. Thanks for organizing!",
  user_id: user.id,
  post_id: 1
)

# Comment 3:
user = User.find(rand(1..User.count))
Comment.create!(
  content: "I've been waiting for an event like this! Can't wait to hear from the speakers and network with other developers. Thanks for the update!",
  user_id: user.id,
  post_id: 1
)

puts "making up actual comments for the second post"

# Comment 1:
user = User.find(rand(1..User.count))
Comment.create!(
  content: "This sounds like a really interesting challenge! I've been looking for a new project to work on, so I would definitely be interested in hearing more about it.",
  user_id: user.id,
  post_id: 2
)

# Comment 2:
user = User.find(rand(1..User.count))
Comment.create!(
content: "I've been trying to learn React, and this seems like a fun way to practice my skills. Would love to hear more about the challenge!",
user_id: user.id,
post_id: 2
)

# Comment 3:
user = User.find(rand(1..User.count))
  Comment.create!(
  content: "Thanks for sharing this! I'm always on the lookout for new coding challenges, and this one seems really interesting.",
  user_id: user.id,
  post_id: 2
)
puts "making up actual comments for the third post"

# Comment 1:
user = User.find(rand(1..User.count))
Comment.create!(
  content: "Congratulations on landing your first job! It's always great to hear success stories like yours. Do you have any tips for someone who's just starting out in their job search?",
  user_id: user.id,
  post_id: 3
)

# Comment 2:
user = User.find(rand(1..User.count))
Comment.create!(
  content: "That's amazing news! I remember how exciting it was when I landed my first job in software development. Enjoy the ride!",
  user_id: user.id,
  post_id: 3
)

# Comment 3:
user = User.find(rand(1..User.count))
Comment.create!(
  content: "Congratulations on this major milestone! It takes a lot of hard work and dedication to make it in this field, and you should be proud of yourself. Best of luck in your new job!",
  user_id: user.id,
  post_id: 3
)

puts "Making up 4 comments 4 the 4th post!!!!"

# Comment 1:
user = User.find(rand(1..User.count))
Comment.create!(
  content: "I've heard a lot of good things about Azul! I've never played it before, but I'd be interested in learning.",
  user_id: user.id,
  post_id: 4
)

# Comment 2:
user = User.find(rand(1..User.count))
Comment.create!(
  content: "Sounds like a fun game! I'm always up for trying new board games, so count me in!",
  user_id: user.id,
  post_id: 4
)

# Comment 3:
user = User.find(rand(1..User.count))
Comment.create!(
  content: "Thanks for sharing! I'm not really into board games, but I appreciate the invite. Hope you all have fun!",
  user_id: user.id,
  post_id: 4
)

# Comment 4:
user = User.find(rand(1..User.count))
Comment.create!(
  content: "I've played Azul before and it's a great game! I'd love to play it again and teach others how to play.",
  user_id: user.id,
  post_id: 4
)

puts "making up comments for the 5th post..."
# comment 1
user = User.find(rand(1..User.count))
Comment.create!(
  content: "Thank you for the warm welcome! I'm really looking forward to meeting everyone and trying out some new games.",
  user_id: user.id,
  post_id: 5
)

# comment 2
user = User.find(rand(1..User.count))
Comment.create!(
  content: "I second that! I'm excited to be a part of this group and can't wait to see what games everyone recommends.",
  user_id: user.id,
  post_id: 5
)
puts "comments for post 6..."
# Comment 1:
user = User.find(rand(1..User.count))
Comment.create!(
  content: "Welcome to the group! I'm glad you found us and I hope you enjoy playing some games with us soon.",
  user_id: user.id,
  post_id: 6
)

# Comment 2:
user = User.find(rand(1..User.count))
Comment.create!(
  content: "I'll definitely be there this weekend! I'm bringing my copy of Settlers of Catan if anyone wants to play.",
  user_id: user.id,
  post_id: 6
)

puts "comments for post 7?.."

# Comment 1:
user = User.find(rand(1..User.count))
Comment.create!(
  content: "Wow, that's a beautiful photo! The colors are so vibrant and the composition is great. Thanks for sharing!",
  user_id: user.id,
  post_id: 7
)

# Comment 2:
user = User.find(rand(1..User.count))
Comment.create!(
  content: "I love sunsets, and this one is amazing! I especially like how you captured the reflection of the sun on the water. Great job!",
  user_id: user.id,
  post_id: 7
)

# Comment 3:
user = User.find(rand(1..User.count))
Comment.create!(
  content: "Thanks for sharing this beautiful photo! It's inspiring me to get out and take some photos myself. Can't wait to see more of your work!",
  user_id: user.id,
  post_id: 7
)

puts "making up comments for post number:"
puts "8"

# Comment 1:
user = User.find(rand(1..User.count))
Comment.create!(
  content: "I'm really looking forward to this workshop! I've been wanting to improve my portrait photography skills for a while now.",
  user_id: user.id,
  post_id: 8
)

# Comment 2:
user = User.find(rand(1..User.count))
Comment.create!(
  content: "Thanks for organizing this workshop! I'm still fairly new to photography, so I'm excited to learn some new techniques.",
  user_id: user.id,
  post_id: 8
)

puts "9"

# Comment 1:
user = User.find(rand(1..User.count))
Comment.create!(
  content: "This sounds like a fun challenge! I love finding reflections in unexpected places, so I'm excited to participate.",
  user_id: user.id,
  post_id: 9
)

# Comment 2:
user = User.find(rand(1..User.count))
Comment.create!(
  content: "Thanks for the challenge! I'm not the most skilled photographer, but I'll give it a shot. Looking forward to seeing everyone's photos!",
  user_id: user.id,
  post_id: 9
)

puts "1 comment for the 10th post because 0s don't exist"
# comment 1
user = User.find(rand(1..User.count))
Comment.create!(
  content: "Wow, that sounds like an incredible experience! I've always wanted to go hiking in the mountains, especially somewhere as beautiful as the Rif Mountains. I'll have to check out Trailblazers and see if I can join you all on the next hike!",
  user_id: user.id,
  post_id: 10
)

puts "creating comments for the post 11"
# Comment 1:
user = User.find(rand(1..User.count))
Comment.create!(
  content: "I've always wanted to visit the Akchour Waterfalls! Count me in, I'm excited for this hike.",
  user_id: user.id,
  post_id: 11
)

# Comment 2:
user = User.find(rand(1..User.count))
Comment.create!(
  content: "I'm definitely interested in joining! Just let me know what time and where to meet.",
  user_id: user.id,
  post_id: 11
)

# Comment 3:
user = User.find(rand(1..User.count))
Comment.create!(
  content: "Sounds like a great hike, but unfortunately I won't be able to make it this time. Have fun everyone!",
  user_id: user.id,
  post_id: 11
)
# thisisatest = UserGroup.create!(
#   user: sometwo,
#   group_id: 1
# )

# thisisanothertest = UserGroup.create!(
#   user: someone,
#   group_id: 1
# )

puts "seeds planted, users revived, and they all lived happily ever after"
