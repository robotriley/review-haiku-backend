# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Movie.destroy_all
puts "seeding...."

20.times do
  Movie.create!(title:Faker::Movie.unique.title, director:Faker::Name.name, genre:Faker::Book.genre, poster:Faker::LoremPixel.image, year:Faker::Number.between(from:1930, to:2022), length:Faker::Number.between(from:30, to:300) )
end

20.times do
  User.create!(user_name:Faker::Name.unique.first_name, bio:Faker::Quote.jack_handey)
end

puts "seeding done!"