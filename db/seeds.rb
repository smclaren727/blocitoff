require 'faker'

# Create Users
user = User.new(
  name:     "Sean McLaren",
  email:    "smclaren727@gmail.com1",
  password: "helloworld"
  )
user.skip_confirmation!
user.save!

# Create Items
5.times do
  Item.create!(
    name:  Faker::Lorem.sentence,
    user: user
  )
end

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Item.count} items created"