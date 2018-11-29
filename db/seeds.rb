require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# puts "Destroying users"
# User.destroy_all

# puts "Creating users..."

# user_1 = User.create(email: 'arthur@sport-rbnb.com', password: '123456')
# user_2 = User.create(email: 'martin@sport-rbnb.com', password: '123456')

# puts "Creating materials..."
# # CATEGORIES = %w[ski surf kite velo snowboard skateboard paddle].freeze
# material = Material.create!(
#   user: user_1,
#   name: "Arthur Martin Electrolux",
#   description: 'Ski Salomon x-Stream en excellent état',
#   category: CATEGORIES.sample,
#   available: false
# )

# puts "Creating locations"
# l = Location.create!(
#   user: user_2,
#   material: material,
#   start_date: Date.today,
#   end_date: Date.today + 7.days,
#   rating: 5
# )

# puts "seeds are done"

# url = "http://static.giantbomb.com/uploads/original/9/99864/2419866-nes_console_set.png"
# material = Material.new(name: 'NES', description: "A great console")
# material.remote_photo_url = url
# material.save

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database of users...'
User.destroy_all
puts 'Cleaning database of material...'
Material.destroy_all
puts 'Cleaning database of location...'
Location.destroy_all
# puts 'Cleaning database of Reviews...'
# Review.destroy_all

puts 'generating the best users with password 123456 '
vincent = User.create!(
  email: "vincent@sport-rbnb.com",
  password: "123456",
  address: "26 rue Edouard Vaillant, 93140 Bondy, France"
 )
arthur = User.create!(
  email: "arthur@sport-rbnb.com",
  password: "123456",
  address: "3 rue de la Joncquiere, 75017 Paris, France"
)
martin = User.create!(
  email: "martin@sport-rbnb.com",
  password: "123456",
  address: "6 rue Euryale Dehaynin, 75019 Paris, France"
)

thibault = User.create!(
  email: "thibault@sport-rbnb.com",
  password: "123456",
  address: "16 villa Gaudelet, 75011 Paris, France"
)

puts "4 users created"

puts "creating 1 material for each user"
CATEGORIES = %w[ski surf kite velo snowboard skateboard paddle].freeze

matOne = Material.new(
  name: "surf surfactory",
  description: "surf 7.1 idéal pour débutant",
  # available = true,
  category: "surf"
)
matOne.user_id = vincent.id
matOne.remote_photo_url = "https://res.cloudinary.com/dscu7dmwa/image/upload/v1543414845/tyler-nix-711169-unsplash.jpg"

matOne.save!

matTwo = Material.new(
  name: "surf surfactory",
  description: "surf 6 idéal pour expert",
  # available = true,
  category: "surf"
)
matTwo.user_id = arthur.id

matTwo.remote_photo_url = "http://glisse-proshop.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/f/i/firewire-carbo-hydro.jpg"

matTwo.save!

matThree = Material.new(
  name: "ski salomon 2010",
  description: "ski utilisé environ 2 mois",
  # available = true,
  category: "ski"
)
matThree.user_id = martin.id
matThree.remote_photo_url = "https://res.cloudinary.com/dscu7dmwa/image/upload/v1543405478/ac9gk9p9qpiamitlmztz.jpg"

matThree.save!

matFour = Material.new(
  name: "skateboard princess",
  description: "skakeboard en bonne état ayant servi environ 50h",
  # available = true,
  category: "skateboard"
)
matFour.user_id = thibault.id
matFour.remote_photo_url = "https://res.cloudinary.com/dscu7dmwa/image/upload/v1543414749/max-tarkhov-737999-unsplash.jpg"

matFour.save!

puts "4 materials saved"


puts 'Creating a locations from vincent materials to arthur.'

locationOne = Location.new(
  start_date: Date.today,
  end_date: Date.today
)
# locationOne.duration = (locationOne.maxDate - locationOne.minDate).to_i
locationOne.material_id = matOne.id
# locationOne.total_price = (matOne.daily_price * locationOne.duration).to_i
locationOne.user_id = vincent.id
locationOne.save!
# puts "Wow vincent a loué son matériel à arthur from #{locationOne.minDate} to #{locationOne.maxDate}"
 # for #{bookingOne.total_price}


puts 'Creating a locations from martin materials to thibault.'

locationTwo = Location.new(
  start_date: Date.today,
  end_date: Date.today
)
# locationTwo.duration = (locationTwo.maxDate - locationTwo.minDate).to_i
locationTwo.material_id = matTwo.id
# locationOne.total_price = (matOne.daily_price * locationOne.duration).to_i
locationTwo.user_id = martin.id
locationTwo.save!
# puts "Wow martin a loué son matériel à thibault from #{locationOne.minDate} to #{locationOne.maxDate}"
 # for #{bookingOne.total_price}


# puts "Creating a review from Benoit about jeremy phone"
# reviewOne = Review.new(
#   content: "#{Faker::FamousLastWords.last_words} Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos, corporis, commodi pariatur autem sunt earum vitae accusantium deleniti illo architecto non dolor necessitatibus omnis, tempora voluptatem aliquid quibusdam. Eius, vero! ",
#   star: 4
#   )
# reviewOne.booking_id = mobOne.user_id
# reviewOne.save!

# puts "Review created by Benoit"

# puts "Creating a booking from Chris phones to Cecile."
# reviewTwo = Review.new(
#   content: "#{Faker::FamousLastWords.last_words} Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos, corporis, commodi pariatur autem sunt earum vitae accusantium deleniti illo architecto non dolor necessitatibus omnis, tempora voluptatem aliquid quibusdam. Eius, vero! ",
#   star: 5
#   )
# reviewTwo.booking_id = mobTwo.user_id
# reviewTwo.save!
# puts "Review created by Cecile "
