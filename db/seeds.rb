# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Create users
Product.destroy_all
puts "Creating products..."

# User.create!(first_name: "Danielle", last_name: "Rose", email: 'danielle@danielle.com', password: "123456")

User.all.each do |user|
  3.times.each do
    Product.create!(user: user, name: "Moonshine - Skateboard", description: "Beautiful skateboard from the 90s", price: 20)
  end
end

puts "Done!"
