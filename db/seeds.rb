# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', phone_number: '01-01-01-01-01', category: 'chinese' }
pizza_east = { name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', category: 'italian' }
pi_r = { name: 'Pi R', address: '10 rue de Metz, 31000 Toulouse', phone_number: '+33202020202', category: 'french' }
charlotte_coffee = { name: 'Charlotte coffee', address: '3 rue de la cossonnerie, 75001 Paris', category: 'belgian' }
yoyo_maxence = { name: 'YoYo Maxence', address: '25 rue de la Paix, 13000 Marseille', category: 'japanese' }

[dishoom, pizza_east, pi_r, charlotte_coffee, yoyo_maxence].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'

# romain = { rating: 5, content: 'Coeur avec les doigts' }
# romain.restaurant = charlotte_coffee
# pauline = { rating: 3, content: 'Moki a pas trop aimé' }
# pauline.restaurant = pi_r
# emeline = { rating: 1, content: 'Beurk!' }
# emeline.restaurant = yoyo_maxence

# [romain, pauline, emeline].each do |attributes|
#   review = Review.create!(attributes)
#   puts "Created #{review.content}"
# end
# puts 'Finished!'
