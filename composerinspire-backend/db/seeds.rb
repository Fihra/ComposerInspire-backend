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
Scale.destroy_all
Jot.destroy_all

user1 = User.create(name: "Fabian")

comp1 = Composition.create(title: "New Piece", user: user1)
comp2 = Composition.create(title: "Fast Piece", user: user1)
comp3 = Composition.create(title: "Jazz-Rock Fusion", user: user1)
comp4 = Composition.create(title: "Something Jazzy", user: user1)

song1 = Songreference.create(song_title: "New Stranger", artist: "Sora Tob Sakana", youtube_url: "https://www.youtube.com/watch?v=Q2yMktQ6OUo", composition: comp1)
song2 = Songreference.create(song_title: "Fable", artist: "Mili", youtube_url: "https://www.youtube.com/watch?v=kpi3tCU2Clc", composition: comp1)
song3 = Songreference.create(song_title: "Reverence", artist: "Vospi", youtube_url: "https://www.youtube.com/watch?v=Q3qd04qLFXk", composition: comp2)
song4 = Songreference.create(song_title: "Contemporary Disease", artist: "LITE", youtube_url: "https://www.youtube.com/watch?v=JBgRKh5ZI3c", composition: comp3)
song5 = Songreference.create(song_title: "Spectres de mouse", artist: "Mouse on the Keys", youtube_url: "https://www.youtube.com/watch?v=16g0M3lJvio", composition: comp3)

scale1 = Scale.create(scale_name: "g-minor", composition: comp2)
scale2 = Scale.create(scale_name: "c-minor", composition: comp3)
scale3 = Scale.create(scale_name: "f-minor", composition: comp3)

jot1 = Jot.create(content: "THis is a test piece to work with", composition: comp1)
jot2 = Jot.create(content: "Planning to add trumpets and horns", composition: comp1)
jot3 = Jot.create(content: "Needs some synthesizers", composition: comp2)
jot4 = Jot.create(content: "Add some time meter changes", composition: comp3)
