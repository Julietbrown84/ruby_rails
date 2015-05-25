require 'faker'

10.times { Animal.create(name: Faker::Name.name, life_story: Faker::Lorem.paragraph, image_url: Faker::Avatar.image)}

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
