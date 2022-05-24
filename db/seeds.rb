require "open-uri"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' ), { name: 'Lord of the Rings' )])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Duck.destroy_all
User.destroy_all

# create users
user = User.create(email: "duckman@duck.com", password: "123456")
user_two = User.create(email: "gon@duck.com", password: "123456")

# use created user to create ducks
puts 'Creating ducks...'
drake = Duck.create(name: "Drake", description: 'questionably sings', price: 3, location: 'usa', user: user)
url = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1653387520/RubberDs/4_vmvazj.jpg')
drake.photo.attach(io: url, filename: '4.jpg', content_type: 'images/jpg')

batman = Duck.create(name: "Batman Duck", description: 'goes out at night', price: 150, location: 'london', user: user)
url = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1653387520/RubberDs/4_vmvazj.jpg')
batman.photo.attach(io: url, filename: '4.jpg', content_type: 'images/jpg')

devil = Duck.create(name: "Devil Duck ", description: 'straight from hell', price: 5, location: 'madrid', user: user_two)
url = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1653387520/RubberDs/5_fqh8sz.jpg')
devil.photo.attach(io: url, filename: '4.jpg', content_type: 'images/jpg')

donald = Duck.create(name: "Donal Duck", description: 'works as a stressball', price: 6, location: 'usa', user: user)
url = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1653387521/RubberDs/6_dzzaul.jpg')
donald.photo.attach(io: url, filename: '4.jpg', content_type: 'images/jpg')

french = Duck.create(name: "French Duck", description: 'can only be fed with baguette', price: 5, location: 'paris', user: user)
url = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1653387520/RubberDs/7_vwnasg.jpg')
french.photo.attach(io: url, filename: '4.jpg', content_type: 'images/jpg')

helicopter = Duck.create(name: "Helicpoter Duck", description: 'can actually fly', price: 4, location: 'germany', user: user_two)
url = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1653387521/RubberDs/8_hg37pf.png')
helicopter.photo.attach(io: url, filename: '4.jpg', content_type: 'images/jpg')

italian = Duck.create(name: "Italian Duck", description: 'only eats pizza et pasta', price: 3, location: 'milan', user: user)
url = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1653387521/RubberDs/9_lggtif.jpg')
italian.photo.attach(io: url, filename: '4.jpg', content_type: 'images/jpg')

liberty = Duck.create(name: "Liberty Duck", description: 'vip duck ', price: 2, location: 'usa', user: user)
url = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1653387521/RubberDs/10_akjlxu.jpg')
liberty.photo.attach(io: url, filename: '4.jpg', content_type: 'images/jpg')

sun = Duck.create(name: "Sun Duck", description: 'limited summer edition', price: 1, location: 'ibiza', user: user)
url = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1653387521/RubberDs/11_tzzlzn.jpg')
sun.photo.attach(io: url, filename: '4.jpg', content_type: 'images/jpg')

# [drake, batman, devil, donald, french, helicopter, italian, liberty, sun].each do |attributes|
#   duck = Duck.create!(attributes)
#   puts "Created #(duck.name)"
# end
puts 'Finished!'
