# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.create(email:"user3@example.com", password: "12345678", password_confirmation: "12345678")
User.create(email:"user1@example.com", password: "12345678", password_confirmation: "12345678")
User.create(email:"user2@example.com", password: "12345678", password_confirmation: "12345678")
Category.create(name: "Work", description: "Organize tasks related to work or professional responsibilities.", user_id: 1)
Category.create(name: "Personal Goals", description: "Keep track of personal goals and milestones.", user_id: 2)
Category.create(name: "Shopping List", description: "Manage items to buy during shopping trips.", user_id: 3 )
Category.create(name: "Fitness Routine", description: "Plan and monitor your fitness activities and workouts.", user_id: 3)
Category.create(name: "Project Ideas", description: "Store and organize ideas for future projects or activities.", user_id: 3)
 
