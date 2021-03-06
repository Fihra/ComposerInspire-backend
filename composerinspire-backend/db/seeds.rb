# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Composition.destroy_all
Songreference.destroy_all

user1 = User.create(name: "Fabian")

comp1 = Composition.create(title: "New Piece", user: user1)
comp2 = Composition.create(title: "My second Piece", user: user1)

song1 = Songreference.create(song_title: "New Stranger", artist: "Sora Tob Sakana", youtube_url: "https://www.youtube.com/watch?v=Q2yMktQ6OUo", composition: comp1)
song2 = Songreference.create(song_title: "Fable", artist: "Mili", youtube_url: "https://www.youtube.com/watch?v=kpi3tCU2Clc", composition: comp1)
song3 = Songreference.create(song_title: "Reverence", artist: "Vospi", youtube_url: "https://www.youtube.com/watch?v=Q3qd04qLFXk", composition: comp2)


