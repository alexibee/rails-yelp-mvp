# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

(1..5).each do |n|
  puts "Creating restaurant #{n}"
  rest = Restaurant.new(
    name: "restaurant #{n}",
    address: "#{n} totally valid address",
    category: Restaurant::CATEGORIES.sample
  )
  rest.save!
end

puts 'All done!'
