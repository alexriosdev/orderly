# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
Department.destroy_all
Employee.destroy_all
Client.destroy_all
Appointment.destroy_all

# Create admin

Admin.create(
  name: "Alex",
  username: "alx",
  password: "123"
)

# Create two departments
2.times {
  Department.create(
    name: Faker::Job.field,
    admin_id: Admin.first.id
  )
}

# Employees for first department
3.times {
  Employee.create(
    name: Faker::Name.unique.name,
    username: Faker::Internet.unique.username,
    password: nil,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.phone_number,
    title: Faker::Job.position,
    office: Faker::PhoneNumber.phone_number,
    department_id: Department.first.id,
    admin_id: Admin.first.id
  )
}

# Employees for second department
3.times {
  Employee.create(
    name: Faker::Name.unique.name,
    username: Faker::Internet.unique.username,
    password: nil,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.phone_number,
    title: Faker::Job.position,
    office: Faker::PhoneNumber.phone_number,
    department_id: Department.second.id,
    admin_id: Admin.first.id
  )
}

# Create client
3.times {
  Client.create(
    name: Faker::Name.unique.name,
    phone_number: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.email,
    admin_id: Admin.first.id
  )
}

# Set up appointments
Appointment.create(
  purpose: Faker::Lorem.word,
  message: Faker::Lorem.sentence,
  appointment_time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :long),
  employee_id: Employee.first.id,
  client_id: Client.first.id,
  admin_id: Admin.first.id
)

# MODELS AND MIGRATIONS COMPLETE
# SET UP ASSOCIATIONS 

