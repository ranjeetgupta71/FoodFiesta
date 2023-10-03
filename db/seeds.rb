# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# db/seeds.rb

# Create 20 restaurants
20.times do |i|
   restaurant =  Restaurant.create(name: "Restaurant #{i + 1}", address: "Address #{i + 1}")

  10.times do |j|
    restaurant.foods.create(name: "Food #{j + 1}", description: "Description for Food #{j + 1}", price: rand(5.0..20.0))
  end
end
