# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
slingTv = Service.create(name: 'Sling', description: 'cheapest route', img_url: 'not yet')
hulu = Service.create(name: 'Hulu', description: 'meh', img_url: 'not yet')
youtubeTv = Service.create(name: 'YouTubeTv', description: 'good choice', img_url: 'not yet')

sports = Genre.create(name:'Sports')
news = Genre.create(name:'News')
drama = Genre.create(name:'Drama')
comedy = Genre.create(name:'Comedy')
action = Genre.create(name:'Action')

Channel.create(name: 'ESPN', genre_id: sports.id, img_url: 'not yet', service_id: slingTv)