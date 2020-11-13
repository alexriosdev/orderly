# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
Client.destroy_all

# Create Random Clients 
5.times {
  Client.create(
    name: Faker::Name.unique.name,
    phone_number: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.email
  )
}

# user = User.new(
#   name: "Alex Dynamite",
#   email: "alx@gmail.com",
#   password: "123456789",
#   password_confirmation: "123456789",
#   phone_number: Faker::PhoneNumber.phone_number,
#   title: Faker::Job.position,
#   office: Faker::PhoneNumber.phone_number,
#   department_id: Department.first.id
# )
# # user.skip_confirmation!
# user.save!