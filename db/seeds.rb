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

batman = Duck.create(name: "Dark Night", description: 'This duck only works at night. If you need to debug your code when pulling an all-nighter, you should definitely rent this special rubberduck.', price: 150, location: 'London', user: user)
url = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1653387520/RubberDs/4_vmvazj.jpg')
batman.photo.attach(io: url, filename: '4.jpg', content_type: 'images/jpg')

devil = Duck.create(name: "Lucifer", description: 'This duck come straight from hell. it needs to be kept in hot temperatures. Should only be used for extreme situations and for a short period of time. Pro tip: can also be called Manuela.', price: 5, location: 'Madrid', user: user_two)
url = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1653387520/RubberDs/5_fqh8sz.jpg')
devil.photo.attach(io: url, filename: '4.jpg', content_type: 'images/jpg')

donald = Duck.create(name: "Moritz", description: "This duck is quite old and fat. It also works a a stressball.", price: 6, location: 'Washington DC', user: user)
url = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1653387521/RubberDs/6_dzzaul.jpg')
donald.photo.attach(io: url, filename: '4.jpg', content_type: 'images/jpg')

french = Duck.create(name: "Violette", description: 'This duck can only be fed with baguette or croissant. For better results, talk to this duck in French. ', price: 5, location: 'Toulon', user: user)
url = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1653387520/RubberDs/7_vwnasg.jpg')
french.photo.attach(io: url, filename: '4.jpg', content_type: 'images/jpg')

helicopter = Duck.create(name: "Ferdicopter", description: 'This duck is the only duck on the market that can actually fly. You need to be careful because it can easily escape.', price: 4, location: 'Hamburg', user: user_two)
url = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1653387521/RubberDs/8_hg37pf.png')
helicopter.photo.attach(io: url, filename: '4.jpg', content_type: 'images/jpg')

italian = Duck.create(name: "Michele", description: "Only eats pizza et pasta. If you show him pizza that doesn't come from Italy, he will insult you and give you the wrong debugging answers.", price: 3, location: 'Milan', user: user)
url = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1653387521/RubberDs/9_lggtif.jpg')
italian.photo.attach(io: url, filename: '4.jpg', content_type: 'images/jpg')

liberty = Duck.create(name: "Emi", description: 'This duck is made in France. Loves hanging with pigeons. Comes with a barking dog called Carlotta. ', price: 2, location: 'Madrid', user: user)
url = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1653387521/RubberDs/10_akjlxu.jpg')
liberty.photo.attach(io: url, filename: '4.jpg', content_type: 'images/jpg')

sun = Duck.create(name: "Tamara", description: 'This duck is always smiling and happy. Has a great energy and is one of the most effective ducks on the market. Limited summer edition.', price: 1, location: 'Valencia', user: user)
url = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1653387521/RubberDs/11_tzzlzn.jpg')
sun.photo.attach(io: url, filename: '4.jpg', content_type: 'images/jpg')

kingon = Duck.create(name: "KinGon", description: "Experienced and legendary rubberduck. Could force you to go to 100 Montaditos.", price: "10000000", location: 'London', user: user)
url = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1653639299/RubberDs/Screenshot_2022-05-26_at_17.24.44_teq7at.png')
kingon.photo.attach(io: url, filename: 'kingon.jpeg.jpg', content_type: 'images/jpg')


juan = Duck.create(name: "Juan", description: 'The Juan and only. This duck comes from india and has multiple wives. Be careful! This duck could mess up your branches.', price: "23", location: 'India', user: user)
url = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1653639299/RubberDs/juan_pt2p0t.jpg')
juan.photo.attach(io: url, filename: 'juan.jpeg', content_type: 'images/jpg')

fernando = Duck.create(name: "Fernando", description: 'Thinks he is pure backend but actually likes front-end. Looks like a dealer but is a hardworker. Becomes hulk when branches are messed up.', price: "50", location: 'Venezuela', user: user)
url = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1653639299/RubberDs/fernando_lr11ac.jpg')
fernando.photo.attach(io: url, filename: 'fernando.jpeg', content_type: 'images/jpg')

marcos = Duck.create(name: "Marcos", description: "Might come back with glitter the next morning. Will randomly shout 'Caralho' when cannot find the solution to a problem.", price: "78", location: 'Venezuela', user: user)
url = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1653639300/RubberDs/marcos_wklyyr.png')
marcos.photo.attach(io: url, filename: 'marcos.png', content_type: 'images/jpg')

# [drake, batman, devil, donald, french, helicopter, italian, liberty, sun].each do |attributes|
#   duck = Duck.create!(attributes)
#   puts "Created #(duck.name)"
# end
puts 'Finished!'
