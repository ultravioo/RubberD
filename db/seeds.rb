# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Duck.destroy_all


puts 'Creating ducks...'
drake = { name: "Drake", description: 'questionqbly sings', price: 3, location: 'usa', user_id: 1 }
tupac = { name: "2pac", description: 'master singer', price: 5, location: 'californication', user_id: 1 }
batman =
devil =
donald =
french =
helicopter =
italian =
liberty =
sun=

[drake, tupac].each do |attributes|
  duck = Duck.create!(attributes)
  puts "Created #{duck.name}"
end
puts 'Finished!'
