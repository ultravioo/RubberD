# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Duck.destroy_all
User.destroy_all


#create users
user = User.create(email: "duckman@duck.com", password: "123456")
user_two = User.create(email: "gon@duck.com", password: "123456")

#use created user to create ducks
puts 'Creating ducks...'
drake = { name: "Drake", description: 'questionably sings', price: 3, location: 'usa', user: user }
batman = { name: "Batman Duck", description: 'comes with a car and a motorbike', price: 150, location: 'london', user: user_two }
devil = { name: "Devil Duck ", description: 'straight from hell', price: 5, location: 'madrid', user: user_two }
donald = { name: "Donal Duck", description: 'works as a stressball', price: 6, location: 'usa', user: user }
french = { name: "French Duck", description: 'can only be fed with baguette', price: 5, location: 'paris', user: user_two }
helicopter = { name: "Helicpoter Duck", description: 'can actually fly', price: 4, location: 'germany', user: user_two }
italian = { name: "Italian Duck", description: 'only eats pizza et pasta', price: 3, location: 'milan', user: user }
liberty = { name: "Liberty Duck", description: 'vip duck ', price: 2, location: 'usa', user: user }
sun = { name: "Sun Duck", description: 'limited summer edition', price: 1, location: 'ibiza', user: user }

[drake, batman, devil, donald, french, helicopter, italian, liberty, sun].each do |attributes|
  duck = Duck.create!(attributes)
  puts "Created #{duck.name}"
end
puts 'Finished!'
