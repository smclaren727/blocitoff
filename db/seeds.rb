require 'faker'

# Create Users
1.times do
  user = User.new(
    name:     Faker::Name.name,
    email:    Faker::Internet.email,
    password: Faker::Lorem.characters(10)
    )
  user.skip_confirmation!
  user.save!
end
users = User.all

 # Create Items
 5.times do
   Item.create!(
     name:  Faker::Lorem.sentence,
   )
 end
 items = Item.all

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Item.count} items created"