# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroying users"
User.destroy_all

puts "Creating users..."

user_1 = User.create(email: 'arthur@sport-rbnb.com', password: '123456')
user_2 = User.create(email: 'martin@sport-rbnb.com', password: '123456')

puts "Creating materials..."
CATEGORIES = %w[ski surf kite velo snowboard skateboard paddle].freeze
material = Material.create!(
  user: user_1,
  name: "Arthur Martin Electrolux",
  description: 'Ski Salomon x-Stream en excellent état',
  category: CATEGORIES.sample,
  available: false
)

puts "Creating locations"
l = Location.create!(
  user: user_2,
  material: material,
  start_date: Date.today,
  end_date: Date.today + 7.days,
  rating: 5
)

puts "seeds are done"

url = "http://static.giantbomb.com/uploads/original/9/99864/2419866-nes_console_set.png"
material = Material.new(name: 'NES', description: "A great console")
# material.remote_photo_urls = url
material.save
