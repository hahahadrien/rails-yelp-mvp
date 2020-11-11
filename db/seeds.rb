# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# db/seeds.rb
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
nems_nems = { name: "Nems Nems 🥠", address: "7 Boundary St, Pekin E2 7JE", category: "chinese", phone_number: "0650932860" }
pizza_napoli =  { name: "Pizza Napoli 🍕", address: "56A Marcel High St, Rome E1 6PQ", category: "italian", phone_number: "0650932860" }
croque_mme =  { name: "Croque Madame 🥪", address: "15 A Tommy High St, Paris E1 6PQ", category: "french", phone_number: "0650932860" }
sushi_mania =  { name: "Sushi Mania 🍣", address: "18 Richard High St, Tokyo E1 6PQ", category: "japanese", phone_number: "0650932860" }
frites =  { name: "Frites 🍟", address: "34 Megan High St, Bruxelles E1 6PQ", category: "belgian", phone_number: "0650932860" }

[ nems_nems, pizza_napoli, croque_mme, sushi_mania, frites ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
