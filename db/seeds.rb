# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = Restaurant.create!( name:'Dishoom', address: '7 Boundary St, London E2 7JE', category: 'belgian', phone_number:'0245-6976-443' )
pizza_east = Restaurant.create!( name:'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', category: 'italian', phone_number:'0245-6976-443' )
youshi = Restaurant.create!( name:'Youshi', address: '5 Haringey High St, London N9 ORP', category: 'japanese', phone_number:'0245-6976-443' )
le_rouge = Restaurant.create!( name:'Le rouge', address: '34 Green Park High St, London E3 5GT', category: 'french', phone_number:'0245-6976-443' )
taste_of_china = Restaurant.create!( name:'Taste of Cina', address: '14 Crouch End High St, London N6 9sQ', category: 'chinese', phone_number:'0245-6976-443' )

# [dishoom, pizza_east].each do |attributes|
#   restaurant = Restaurant.create!(attributes)
#   puts "Created #{restaurant.name}"
# end
puts "Finished!"
