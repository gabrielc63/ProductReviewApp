# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Product.delete_all
n = 0
4.times do
  name = "Product #{n + 1}"
  n += 1
  Product.create!(name: name,
                  description: Faker::Lorem.paragraph(sentence_count: 4),
                  overall_rating: 0,
                  image_url: 'prod.jpg')
end
