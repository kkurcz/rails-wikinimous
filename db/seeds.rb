# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'



5.times do
  article = Article.create!(
    title: Faker::Fantasy::Tolkien.poem,
    content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
    )
  puts "Title: #{article.title} was created #{article.content}"
end
