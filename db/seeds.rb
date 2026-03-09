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
Recipe.destroy_all
User.destroy_all

puts "Creating user..."

user = User.create!(
  email: "demo@magickitchen.com",
  password: "123456"
)

puts "Creating recipes..."

Recipe.create!(
  name: "Pasta",
  ingredient: "pasta, tomato sauce, garlic",
  content: "1. Boil water in a large pot. 2. Add pasta and cook for 8–10 minutes. 3. Heat tomato sauce with garlic. 4. Drain pasta and mix with sauce. 5. Serve warm.",
  rating: 4,
  user: user
)

Recipe.create!(
  name: "Omelette",
  ingredient: "eggs, cheese, salt",
  content: "1. Beat the eggs in a bowl. 2. Heat a pan with a little oil. 3. Pour the eggs into the pan. 4. Add cheese and cook until set. 5. Fold and serve.",
  rating: 5,
  user: user
)

puts "Seeds created!"
