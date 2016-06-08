# Users
User.create!(name:  "Example User",
             email: "example@mail.com",
             password:              "password",
             password_confirmation: "password")

10.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@mail.com"
  avatar =  'sankayou_flr.jpg'
  password = "password"
  User.create!(name: name,
              email: email,
              password:              password,
              password_confirmation: password)
end

#Tags 
# Menus
#Comments
# Following relationships
users = User.all
user  = users.first
following = users[2..5]
followers = users[3..9]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }

