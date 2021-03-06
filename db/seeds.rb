# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Tarea.delete_all
User.delete_all

User.create(name: 'Denisse Noemí Velásquez Salazar', email: 'denissev@gmail.com', foto: Faker::Avatar.image("natusomnisquos"), password: '123456')

10.times do
    User.create(name: Faker::Name.name_with_middle, email: Faker::Internet.email, foto: Faker::Avatar.image, password: '123456')
end

10.times do
    Tarea.create(title: Faker::Company.name, description: Faker::Company.catch_phrase, ubicacion: Faker::Company.logo)
end
