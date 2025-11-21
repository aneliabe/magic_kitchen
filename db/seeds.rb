# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# 1. Clean the database 🗑️
puts "Cleaning database..."
Recipe.destroy_all

# 2. Create the instances 🏗️
puts "Creating recipes..."
Recipe.create!(name: "Galinhada", ingredient: "Frango desfiado, milho, arroz, cenoura", rating: 5)
puts "Created Galinhada"
Recipe.create!(name: "Pizza de calabresa", ingredient: "Mussarela, calabresa, molho de tomate, azeitona", rating: 4)
puts "Created Pizza de calabresa"

# 3. Display a message 🎉
puts "Finished! Created #{Recipe.count} recipes."