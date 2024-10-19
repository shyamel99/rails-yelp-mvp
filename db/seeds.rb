# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category:"french", phone_number: "971345673456"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "chinese", phone_number:"845837456"}
pizzahut = {name: "Pizza Hut", address: "70A ditch High St, London E1 6PQ", category: "chinese",  phone_number:"795132454"}
crumble = {name: "Crumble", address: "5B oredit Low St, Cape Town ", category:"italian", phone_number:"72139465734650"}
lecker = {name: "Lecker", address: "23 Shotch medium Str., Berlin", category:"chinese",  phone_number:"1284956034561389"}


[dishoom, pizza_east, pizzahut, crumble, lecker].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"