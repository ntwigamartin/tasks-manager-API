# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Seeding"

Todo.create(title: "Add todo Endpoint", description: "Make sure you add todo endpoint", status: "CREATED", priority: "LOW", user_id: 2)
Todo.create(title: "Add todo Endpoint", description: "Make sure you add todo endpoint", status: "STARTED", priority: "MEDIUM", user_id: 2)
Todo.create(title: "Add new Endpoint", description: "Make sure you add todo endpoint", status: "CREATED", priority: "HIGH", user_id: 2)

puts "Done Seeding"