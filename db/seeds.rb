# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create{[
    { user_name: "john", first_name: "John", last_name: "Doe", email: "johndoe@exxample.com", password: "password"},
    { user_name: "jane", first_name: "jane", last_name: "smith", email: "janesmith@exxample.com", password: "password"},
    { user_name: "susan", first_name: "susan", last_name: "baker", email: "susanbaker@exxample.com", password: "password"}
]}