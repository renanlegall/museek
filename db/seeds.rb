# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# renan = User.create!(email: "renan@renan.fr", password: "password")

karaoke = Playlist.create(user_id: 1, name: "Karaoke with friends", description: "Awesome songs for Wednesday night")
summer = Playlist.create(user_id: 1, name: "Summer 2017", description: "Awesome songs for Wednesday night")
Playlist.create(user_id: 1, name: "Playlist for John's birthday", description: "Gonna dance all night !")
