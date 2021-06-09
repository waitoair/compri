# puts "Creating..."
# Book.destroy_all

# Book.create!(title: "Histórias Primordiais", author: "Edgar Allan Poe", language: "Portuguese", price: 29.90)
# Book.create!(title:"O Ladrão De Casaca", author: "Arsène Lupin", language:"Portuguese", price: 34.50)
# Book.create!(title: "A Revolução Dos Bichos", author: "George Orwell", language: "Portuguese", price: 45.90)
# Book.create!(title: "Drácula - Edição De Luxo", author: "Bram Stoker", language: "Portguese", price: 69.90)

# puts "Finish!"

require 'open-uri'
require 'nokogiri'
puts "Cleaning database..."
Book.destroy_all
puts "Database cleaned"
url = 'http://books.toscrape.com/index.html'
html_file = URI.open(url).read
html_doc = Nokogiri::HTML(html_file)
authors = ['Shel Silverstein', 'Sarah Waters','Michel Houellebecq', 'Gillian Flynn', 'Yuval Harari', 'IMA J. PASTULA PhD', 'Don Raskin', 'Karen J. Hicks', 'Daniel James Brown', 'Aracelis Girmay', 'Janine Mendenhall', 'Katherine Duncan-Jones', 'Hina Belitz', 'Bryan Lee O malley', 'Siimon Reynolds', 'Michael Azerrad', 'Tyehimba Jess', 'Edgar Allan Poe', 'Todd Seavey', 'S. Bedford']
prices = []
titles = []
html_doc.search('.product_pod h3 a').to_a.each do |element|
  title = element.attribute('title').value
  titles << title
end
html_doc.search('.product_pod .product_price .price_color').to_a.each do |element|
  price = element.text.delete('£').to_f
  prices << price
end
books = [titles, prices, authors]
20.times do |i|
  book = Book.create!(
    title: books[0][i - 1],
    language: 'english',
    price: books[1][i - 1],
    author: books[2][i - 1]
  )
  puts "book #{book.id} is created."
end
