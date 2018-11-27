# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
u1 = User.create(email: 'arthur@sport-rbnb.com', password: '123456')
u2 = User.create(email: 'martin@sport-rbnb.com', password: '123456')
t = Type.create(name: 'SKI')
m = Material.create(user: u1, description: 'Ski Salomon x-Stream en excellent état', type: Type.first, available: false)

l = Location.create(user: u2, material: m, start_date: Date.today, end_date: Date.today + 7.days, rating: 5)


