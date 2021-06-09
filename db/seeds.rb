puts "Creating..."
watchlistcontroller
Book.destroy_all

User.create!(email:"teste@teste.com", password: "123456")

store_names = ["amazon", "saraiva", "cultura", "leitura", "travessa", "submarino", "americanas"]

Book.create!(title: "Histórias Primordiais", author: "Edgar Allan Poe", language: "Portuguese")
Book.create!(title:"O Ladrão De Casaca", author: "Arsène Lupin", language:"Portuguese")
Book.create!(title: "A Revolução Dos Bichos", author: "George Orwell", language: "Portuguese")
Book.create!(title: "Drácula - Edição De Luxo", author: "Bram Stoker", language: "Portguese")

Book.all.each do |book|
  rand(3..7).times do 
    Deal.create!(store: store_names.sample, book: book, price: rand(14.9..62.5).round(2) )
  end
end

puts "Finish!"

# require 'open-uri'
# require 'nokogiri'

# puts "Cleaning database..."
# Book.destroy_all

Deal.destroy_all
 master

Deal.create(store: 'leitura', price: 46.45, book_id: 1)
Deal.create(store: 'travessa', price: 52.45, book_id: 2)
Deal.create(store: 'cultura', price: 54.45, book_id: 3)
Deal.create(store: 'amazon', price: 51.45, book_id: 4)

puts "Finish!"

# require 'open-uri'
# require 'nokogiri'
# puts "Cleaning database..."
# Book.destroy_all
# puts "Database cleaned"
# url = 'http://books.toscrape.com/index.html'
# html_file = URI.open(url).read
# html_doc = Nokogiri::HTML(html_file)
# authors = ['Shel Silverstein', 'Sarah Waters','Michel Houellebecq', 'Gillian Flynn', 'Yuval Harari', 'IMA J. PASTULA PhD', 'Don Raskin', 'Karen J. Hicks', 'Daniel James Brown', 'Aracelis Girmay', 'Janine Mendenhall', 'Katherine Duncan-Jones', 'Hina Belitz', 'Bryan Lee O malley', 'Siimon Reynolds', 'Michael Azerrad', 'Tyehimba Jess', 'Edgar Allan Poe', 'Todd Seavey', 'S. Bedford']
# prices = []
# titles = []
# html_doc.search('.product_pod h3 a').to_a.each do |element|
#   title = element.attribute('title').value
#   titles << title
# end
# html_doc.search('.product_pod .product_price .price_color').to_a.each do |element|
#   price = element.text.delete('£').to_f
#   prices << price
# end
# books = [titles, prices, authors]
# 20.times do |i|
#   book = Book.create!(
#     title: books[0][i - 1],
#     language: 'english',
#     price: books[1][i - 1],
#     author: books[2][i - 1]
#   )
#   puts "book #{book.id} is created."
# end
