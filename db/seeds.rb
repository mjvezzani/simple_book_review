# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
authors = Author.create([{first_name: 'Author', last_name: 'One'}, {first_name: 'Author', last_name: 'Two'}, {first_name: 'Author', last_name: 'Three'}])
books = Book.create([{title: 'Book 1', author: authors[0]}, {title: 'Book 2', author: authors[1]}, {title: 'Book 3', author: authors[2]}, {title: 'Book 4', author: authors[0]}, {title: 'Book 5', author: authors[1]}, {title: 'Book 6', author: authors[2]}])
