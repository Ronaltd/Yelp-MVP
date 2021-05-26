# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
macau = { name: "Macau", address: "Av. Olegário Maciel, 1767 Lourdes, Belo Horizonte, Minas Gerais", category: "Chinese" }
anella =  { name: "Anella", address: "R Min Guilhermino De Oliveira, 325 Santa Amélia, Belo Horizonte, Minas Gerais", category: "Italian" }
est =  { name: "Est! Est!! Est!!!", address: "Avenida Getúlio Vargas, 107, Belo Horizonte, Minas Gerais", category: "Italian" }
udon =  { name: "Udon", address: "Rua Gonçalves Dias, 1965, Belo Horizonte, Minas Gerais", category: "Japanese" }
vivant =  { name: "Au Bon Vivant", address: "Rua Pium-í 229, Belo Horizonte, Minas Gerais", category: "French" }

[ macau, anella, est, udon, vivant ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
