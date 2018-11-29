require 'faker'

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
  address: "3 rue de la Pompe, 75016 Paris, France"
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
  name: "surf factory",
  description: "surf 7.1 idéal pour débutant",
  # available = true,
  category: "surf",
  price: "16.00"
)
matOne.user_id = vincent.id
matOne.remote_photo_url = "https://res.cloudinary.com/dscu7dmwa/image/upload/v1543414845/tyler-nix-711169-unsplash.jpg"

matOne.save!

matTwo = Material.new(
  name: "surf bestfactory",
  description: "surf 6 idéal pour expert",
  # available = true,
  category: "surf",
  price: "17.00"
)
matTwo.user_id = arthur.id
matTwo.remote_photo_url = "http://glisse-proshop.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/f/i/firewire-carbo-hydro.jpg"


matTwo.save!

matThree = Material.new(
  name: "ski salomon 2010",
  description: "ski utilisé environ 2 mois",
  # available = true,
  category: "ski",
  price: "18.00"
)
matThree.user_id = martin.id
matThree.remote_photo_url = "https://res.cloudinary.com/dscu7dmwa/image/upload/v1543405478/ac9gk9p9qpiamitlmztz.jpg"

matThree.save!

matFour = Material.new(
  name: "skateboard princess",
  description: "skakeboard en bonne état ayant servi environ 50h",
  # available = true,
  category: "skateboard",
  price: "19.00"
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

locationTwo.material_id = matTwo.id

locationTwo.user_id = martin.id
locationTwo.save!




review1 = MaterialReview.new(
  rating: 5
  description: "Excellent matos, et très bon état, proprio au top"
  material_id: 1
  )
review2 = MaterialReview.new(
  rating: 4
  description: "Matériel en bon état d'usage, en revanche voir a affuter les ski, propiétaire charmante"
  material_id: 1
  )
review3 = MaterialReview.new(
  rating: 3
  description: "Un peu déçu par ces skis, il manque de rigidité, pour debutant. Le propriétaire avait oublié de me le dire"
  material_id: 2
  )
review4 = MaterialReview.new(
  rating: 5
  description: "Très bon surf, la neige en plus était au top, l'expertise de son propriétaire m'a été utile. Un grand merci je reviendrai"
  material_id: 2
  )
review5 = MaterialReview.new(
  rating: 2
  description: "Matos en état d'usure assez avancé !! dommage !! cela gâche tout"
  material_id: 3
  )
review6 = MaterialReview.new(
  rating: 1
  description: "Horrible !!!  le propietaire n'est pas du tout sympa et son matériel est hors d'usage !!! A FUIR !!!!!"
  material_id: 3
  )
review7 = MaterialReview.new(
  rating: 4
  description: "Excellent matos, la propriétaire est de plus très agréable"
  material_id: 4
  )
review8 = MaterialReview.new(
  rating: 5
  description: "Très content de ma location, je suis très content, A RECOMMANDER les yeux fermés."
  material_id: 4
  )















