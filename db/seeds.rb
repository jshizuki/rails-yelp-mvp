# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# puts 'Cleaning datebase...'
# Restaurant.destroy_all

# puts 'Creating restaurants...'

# 5.times do
#   restaurant = Restaurant.create(
#     name: Faker::Restaurant.name,
#     address: Faker::Address.full_address,
#     phone_number: Faker::PhoneNumber.phone_number,
#     category: ["chinese", "italian", "japanese", "french", "belgian"].sample
#   )
#   puts "Restaurant with id #{restaurant.id} has been created."
# end

Restaurant.all.each do |restaurant|
  2.times do
    Review.create(
      restaurant: restaurant,
      rating: rand(0..5),
      content: Faker::Lorem.sentence
    )
  end
end
