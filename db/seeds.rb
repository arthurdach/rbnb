# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
u = User.create(name: 'Arthur', email: 'arthur@sport-rbnb.com', address: '16 villa Gaudelet Paris 75011')
m = Material.create(user: 'u', description: 'Ski Salomon x-Stream en excellent état', available: false)
l = Location.create(type: 't', start_date: date.taday, end_date: date.today + 7.day, )
t = Type.create(name: 'SKI')
r = Reviews.create(content: 'excellente location de ski' , rating: '5', location: 'l')


u1 = User.create(name: 'Martin', email: 'martin@sport-rbnb.com', address: '69 rue de la Pompe Paris 75016')
