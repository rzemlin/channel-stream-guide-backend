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

Channel.create(name: 'ESPN', genre: 'Sports', img_url: 'not yet', service_id: slingTv.id)