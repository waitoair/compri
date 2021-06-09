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

require 'open-uri'
require 'nokogiri'

url = 'http://books.toscrape.com/index.html'
url = 'https://www.amazon.com.br/ref=nav_logo'

html_file = URI.open(url).read
html_doc = Nokogiri::HTML(html_file)

html_doc.search('.product_pod h3 a').to_a.each do |element|
  title = element.attribute('title')
end

html_doc.search('.product_pod .product_price .price_color').to_a.each do |element|
  price = element.text
end

# p html_doc.search('.container-fluid .page_inner .breadcrumb li a').to_a
  # category = element.text
  # puts category
# end

# html_doc.search('.celwidget .a-section a-spacing-micro bylineHidden feature .author notFaded .a-declarative .a-link-normal contributorNameID').class
#   author = element.text
#   puts author
# end

# html_doc.search('.detailBullets_feature_div .a-unordered-list a-nostyle a-vertical a-spacing-none detail-bullet-list .a-list-item .a-text-bold').to_a.each do |element|
#   language = element.text
#   puts language
# end

html_doc.search('.product_page p').to_a.each do |element|
  description = element.text
  puts description
end

# 20.times do
#   Book.new(
#     title: title,
#     category: category,
#     rating: rating,
#     language: 'english',
#     price: price, # o unico valor diferente
#     author: author,
#     description: description
#     )
# end
