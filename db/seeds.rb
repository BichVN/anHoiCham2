# Users
User.create!(name:  "Example User",
             email: "example@mail.com",
             password:              "password",
             password_confirmation: "password")

10.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@mail.com"
  password = "password"
  User.create!(name: name,
              email: email,
              password:              password,
              password_confirmation: password)
end

#Tags
Tag.create!(tag: "#tag1",
            user_id: "1")
# Menus
users = User.order(:created_at).take(6)
11.times do
  typeOfMenu = Faker::Lorem.sentence(2)
  content = Faker::Lorem.sentence(5)
  tag_id  = "1"
  users.each {|user| user.menus.create!(typeOfMenu:typeOfMenu,content: content,tag_id: tag_id) }

end

#Comments
Comment.create!(content: "comment1",
                user_id: "1",
                menu_id: "1")
# Following relationships
users = User.all
user  = users.first
following = users[2..5]
followers = users[3..9]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }
