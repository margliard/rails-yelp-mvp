# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
table_de_grand_père = { name: "La table de mon grand père", address: "7 Boulevard des oliviers", category: 'italian' }
pizza_nord =  { name: "Pizza Nord", address: "201 rue du bel", category: 'french' }
amary =  { name: "Amary", address: "1 place du village", category: 'japanese' }
pied_dans_leau =  { name: "Les pieds dans l'eau", address: "route du fleuve", category: 'chinese' }
l_ancienne =  { name: "A l'ancienne", address: "94 avenue de Versailles", category: 'belgian' }

[ table_de_grand_père, pizza_nord, amary, pied_dans_leau, l_ancienne].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
