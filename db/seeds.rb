require "open-uri"

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

url1 = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1653387520/RubberDs/4_vmvazj.jpg')
url2 = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1653387520/RubberDs/5_fqh8sz.jpg')
url3 = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1653387521/RubberDs/6_dzzaul.jpg')
url4 = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1653387520/RubberDs/7_vwnasg.jpg')
url5 = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1653387521/RubberDs/8_hg37pf.png')
url6 = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1653387521/RubberDs/9_lggtif.jpg')
url7 = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1653387521/RubberDs/10_akjlxu.jpg')
url8 = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1653387521/RubberDs/11_tzzlzn.jpg')

# create users
user = User.create(email: "duckman@duck.com", password: "123456")
user_two = User.create(email: "gon@duck.com", password: "123456")

# use created user to create ducks
puts 'Creating ducks...'
drake = { name: "Drake", description: 'questionably sings', price: 3, location: 'usa', user: user }
drake.photo.attach(io: url1, filename: '4.jpg', content_type: 'images/jpg')
batman = { name: "Batman Duck", description: 'goes out at night', price: 150, location: 'london', user: user }
batman.photo.attach(io: url1, filename: '4.jpg', content_type: 'images/jpg')
devil = { name: "Devil Duck ", description: 'straight from hell', price: 5, location: 'madrid', user: user_two }
devil.photo.attach(io: url2, filename: '4.jpg', content_type: 'images/jpg')
donald = { name: "Donal Duck", description: 'works as a stressball', price: 6, location: 'usa', user: user }
donald.photo.attach(io: url3, filename: '4.jpg', content_type: 'images/jpg')
french = { name: "French Duck", description: 'can only be fed with baguette', price: 5, location: 'paris', user: user }
french.photo.attach(io: url4, filename: '4.jpg', content_type: 'images/jpg')
helicopter = { name: "Helicpoter Duck", description: 'can actually fly', price: 4, location: 'germany', user: user_two }
helicopter.photo.attach(io: url5, filename: '4.jpg', content_type: 'images/jpg')
italian = { name: "Italian Duck", description: 'only eats pizza et pasta', price: 3, location: 'milan', user: user }
italian.photo.attach(io: url6, filename: '4.jpg', content_type: 'images/jpg')
liberty = { name: "Liberty Duck", description: 'vip duck ', price: 2, location: 'usa', user: user }
liberty.photo.attach(io: url7, filename: '4.jpg', content_type: 'images/jpg')
sun = { name: "Sun Duck", description: 'limited summer edition', price: 1, location: 'ibiza', user: user }
sun.photo.attach(io: url8, filename: '4.jpg', content_type: 'images/jpg')

[drake, batman, devil, donald, french, helicopter, italian, liberty, sun].each do |attributes|
  duck = Duck.create!(attributes)
  puts "Created #{duck.name}"
end
puts 'Finished!'
