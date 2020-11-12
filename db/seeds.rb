# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# IGNORE SEEDS 
# require 'faker'
# Department.destroy_all
# User.destroy_all
# Client.destroy_all
# Appointment.destroy_all


# # Create two departments
# 2.times {
#   Department.create(
#     name: Faker::Job.field
#   )
# }

# # UNABLE TO CREATE USER
# # COULD DEVISE BE THE PROBLEM?

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

# Create client
3.times {
  Client.create(
    name: Faker::Name.unique.name,
    phone_number: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.email
  )
}

# # Set up appointments
# Appointment.create(
#   purpose: Faker::Lorem.word,
#   message: Faker::Lorem.sentence,
#   start_time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :long),
#   end_time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :long),
#   user_id: User.first.id,
#   client_id: Client.first.id
# )

# MODELS AND MIGRATIONS COMPLETE
# SET UP ASSOCIATIONS 

