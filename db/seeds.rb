# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Place.create(name: "Klusteri", address: "Leppäsuonkatu 11, Helsinki")
Place.create(name: "Sivistys", address: "Leppäsuonkatu 11, Helsinki")
Place.create(name: "Alina", address: "Mannerheimintie 5A, Helsinki")

Type.create(name: "Narikka")
Type.create(name: "Lipunmyynti")
Type.create(name: "Juomanmyynti")
