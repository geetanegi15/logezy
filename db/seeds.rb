# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
AdminUser.create!(email: 'admin1@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
Merchant.create(first_name: "merchant", last_name:"merchant", email: "merchant@gmail.com", password: "merchant@123", confirm_password: "merchant@123", phone_number: "9068778609", address: "India", postcode: 5432 )
Client.create(first_name: "client", last_name:"client", email: "client@gmail.com", password: "client@123", confirm_password: "client@123", phone_number: "9068778608", address: "India", postcode: 5431 )
BusinessUnit.create!(client_id: 1, name: "Business unit", address: "India",phone_number: "9068778609",email: "businessunit@yopmail.com")
Shift.create(start_time: "10:00 AM", end_time: "10:00 PM", shift_name: 0)
Shift.create(start_time: "10:00 PM", end_time: "10:00 AM", shift_name: 1)
Shift.create(start_time: "10:00 AM", end_time: "10:00 PM", shift_name: 2)
Shift.create(start_time: "10:00 PM", end_time: "10:00 AM", shift_name: 3)
