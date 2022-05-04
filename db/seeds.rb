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

slingTv = Service.create(name: 'SlingTv', description: 'cheapest route', img_url: 'not yet')
hulu = Service.create(name: 'Hulu', description: 'meh', img_url: 'not yet')
youtubeTv = Service.create(name: 'YouTubeTv', description: 'good choice', img_url: 'not yet')

sports = Genre.create(name:'Sports')
news = Genre.create(name:'News')
drama = Genre.create(name:'Drama')
comedy = Genre.create(name:'Comedy')
action = Genre.create(name:'Action')

Channel.create(name: 'ESPN', genre_id: sports.id, img_url: 'data:image/png;base64,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', service_id: slingTv.id)
Channel.create(name: 'CNN', genre_id: news.id, img_url: 'https://1000logos.net/espn-logo/', service_id: slingTv.id)
Channel.create(name: 'Comedy Central', genre_id: comedy.id, img_url: 'https://1000logos.net/espn-logo/', service_id: hulu.id)
Channel.create(name: 'Lifetime', genre_id: drama.id, img_url: 'https://1000logos.net/espn-logo/', service_id: hulu.id)
Channel.create(name: 'FX', genre_id: action.id, img_url: 'https://1000logos.net/espn-logo/', service_id: youtubeTv.id)
Channel.create(name: 'Fox News', genre_id: comedy.id, img_url: 'https://1000logos.net/espn-logo/', service_id: youtubeTv.id)
Channel.create(name: 'CSPAN', genre_id: news.id, img_url: 'https://1000logos.net/espn-logo/', service_id: youtubeTv.id)