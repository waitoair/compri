# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating..."
Book.destroy_all

Book.create!(title: "Histórias Primordiais", author: "Edgar Allan Poe", language: "Portuguese", rating: 2, category: " horror")
Book.create!(title:"O Ladrão De Casaca", author: "Arsène Lupin", language:"Portuguese", rating: 5, category: "thriller")
Book.create!(title: "A Revolução Dos Bichos", author: "George Orwell", language: "Portuguese", rating: 5, category: "romance")
Book.create!(title: "Drácula - Edição De Luxo", author: "Bram Stoker", language: "Portguese", rating: 4, category: "horror")

puts "Finish!"