# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Channel.destroy_all
Genre.destroy_all
Service.destroy_all

Service.create(name:'SlingTv', description: 'cheapest route', img_url: 'not yet')
Service.create(name:'Hulu', description: 'meh', img_url: 'not yet')
Service.create(name:'YouTubeTv', description: 'good choice', img_url: 'not yet')

Genre.create(name:'Sports')
Genre.create(name:'News')
Genre.create(name:'Drama')
Genre.create(name:'Comedy')
Genre.create(name:'Action')

Channel.create(name: 'ESPN', genre_id: 1, img_url: 'ub4dnA1C7ItTilR', service_id: 1)
Channel.create(name: 'CNN', genre_id: 2, img_url: 'https://1000logos.net/espn-logo/', service_id: 1)
Channel.create(name: 'Comedy Central', genre_id: 4, img_url: 'https://1000logos.net/espn-logo/', service_id: 2)
Channel.create(name: 'Lifetime', genre_id: 3, img_url: 'https://1000logos.net/espn-logo/', service_id: 2)
Channel.create(name: 'FX', genre_id: 5, img_url: 'https://1000logos.net/espn-logo/', service_id: 3)
Channel.create(name: 'Fox News', genre_id: 4, img_url: 'https://1000logos.net/espn-logo/', service_id: 3)
Channel.create(name: 'CSPAN', genre_id: 2, img_url: 'https://1000logos.net/espn-logo/', service_id: 3)