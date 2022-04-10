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

slingTv = Service.create(name: 'Sling', description: 'cheapest route', img_url: 'not yet')
hulu = Service.create(name: 'Hulu', description: 'meh', img_url: 'not yet')
youtubeTv = Service.create(name: 'YouTubeTv', description: 'good choice', img_url: 'not yet')

sports = Genre.create(name:'Sports')
news = Genre.create(name:'News')
drama = Genre.create(name:'Drama')
comedy = Genre.create(name:'Comedy')
action = Genre.create(name:'Action')

Channel.create(name: 'ESPN', genre_id: sports.id, img_url: 'https://1000logos.net/espn-logo/', service_id: slingTv)
Channel.create(name: 'CNN', genre_id: news.id, img_url: 'https://1000logos.net/espn-logo/', service_id: slingTv)
Channel.create(name: 'Comedy Central', genre_id: comedy.id, img_url: 'https://1000logos.net/espn-logo/', service_id: hulu)
Channel.create(name: 'Lifetime', genre_id: drama.id, img_url: 'https://1000logos.net/espn-logo/', service_id: hulu)
Channel.create(name: 'FX', genre_id: action.id, img_url: 'https://1000logos.net/espn-logo/', service_id: youtubeTv)
Channel.create(name: 'Fox News', genre_id: comedy.id, img_url: 'https://1000logos.net/espn-logo/', service_id: youtubeTv)
Channel.create(name: 'CSPAN', genre_id: news.id, img_url: 'https://1000logos.net/espn-logo/', service_id: youtubeTv)