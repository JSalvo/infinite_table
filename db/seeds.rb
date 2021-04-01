# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require_relative '../lib/populator_fix.rb'

User.populate 10000 do |u|
    u.firstname = Faker::Name.first_name
    u.lastname = Faker::Name.last_name
    u.birthday = Faker::Date.birthday(min_age: 18, max_age: 81)
    u.birthplace = Faker::Address.city
end