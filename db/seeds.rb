# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

actor = Actor.create(first_name: "Nathan", last_name: "Fillion", known_for: "Firefly")

actor = Actor.create(first_name: "Marilyn", last_name: "Monroe", known_for: "Some Like It Hot")

actor = Actor.create(first_name: "James", last_name: "Dean", known_for: "East of Eden")

actor = Actor.create(first_name: "Charlie", last_name: "Hunnam", known_for: "Sons of Anarchy")

actor = Actor.create(first_name: "Matt", last_name: "Damon", known_for: "Bourne Identity")

actor = Actor.create(first_name: "Bradley", last_name: "Cooper", known_for: "The Hangover")

actor = Actor.create(first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock")

actor = Actor.create(first_name: "Christina",
                     last_name: "Hendricks",
                     known_for: "Mad Men",
                     gender: "F",
                     age: 45)

actor = Actor.create(first_name: "Kelly",
                     last_name: "Kaufman",
                     known_for: "Kelly's Ladder", gender: "F",
                     age: 30)

actor = Actor.create(first_name: "Winona",
                     last_name: "Ryder",
                     known_for: "Heathers",
                     gender: "F",
                     age: 50)
