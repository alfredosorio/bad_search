# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
book_list = []

5.times do
title = Faker::Book.title
book_list << {name: title}
end
Product.create(book_list)
# book_list.each {|book_title| Product.create}

author_list = []
5.times do
  author = Faker::Book.author
  author_list << {name: author}
end
Category.create(author_list)
