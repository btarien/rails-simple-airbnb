# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

pictures = [
  'https://images.unsplash.com/photo-1561401421-ce0aa428a6ff?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjF9',
  'https://images.unsplash.com/photo-1583040719700-92d3dc3262bb?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjF9',
  'https://images.unsplash.com/photo-1596601397825-f46ba5158429?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjF9',
  'https://images.unsplash.com/photo-1573402095300-ec8ae322a192?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjF9'
]
puts 'Creating 4 flats...'
4.times do
  flat = Flat.create!(
    name: Faker::Beer.name,
    address: Faker::Address.full_address,
    description: Faker::Beer.style,
    price_per_night: Faker::Number.within(range: 50..500),
    number_of_guests: Faker::Number.within(range: 1..10),
    picture_url: pictures.pop
  )
  puts flat
end
puts 'Finished'
